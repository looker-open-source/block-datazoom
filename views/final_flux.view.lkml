#should only look at views with playback start

view: final_flux {
  derived_table: {
    persist_for: "1 hour"
    sql:
      SELECT S.event_id, S.content_session_id, timestamp, event_type, buffer_duration_content_ms, playback_duration_content_ms, stall_duration_content_ms,
      media_type
      from `jwplayerproject.jwplayerdataset.sinclair_debug` T
      join (SELECT
          content_session_id,
          max(event_id) as event_id
          from `jwplayerproject.jwplayerdataset.sinclair_debug`
      GROUP BY content_session_id) S
      on T.event_id = S.event_id
      ;;
  }
  dimension: event_id {
    sql: ${TABLE}.event_id ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      minute,
      hour,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: content_session_id {
    sql: ${TABLE}.content_session_id ;;
  }

  dimension: event_type {
    sql: ${TABLE}.event_type ;;
  }

  dimension: media_type {
    sql: ${TABLE}.media_type ;;
  }

  measure: Content_Views{
    sql: ${content_session_id} ;;
    type: count_distinct
  }

  dimension: buffer_duration_content_ms {
    sql: ${TABLE}.buffer_duration_content_ms ;;
  }

  dimension: playback_duration_content_ms {
    sql: ${TABLE}.playback_duration_content_ms ;;
  }

  dimension: stall_duration_content_ms {
    sql: ${TABLE}.stall_duration_content_ms ;;
  }

  measure: Views_with_error{
    type: count_distinct
    sql: ${content_session_id} ;;
    filters: [
      event_type: "error",
      media_type: "content"]
  }

  measure: Fatal_video_Error_Rate{
    description: "To be used only with final_flux view. The percent of views that end in an error"
    type: number
    value_format_name: percent_2
    sql: (${Views_with_error}/NULLIF(${Content_Views}, 0)) ;;
    }

  measure: Total_buffering_minutes{
    type: sum
    value_format: "#;(#)"
    sql: (${buffer_duration_content_ms}/60000) ;;
  }

  measure: Total_content_playback_minutes{
    type: sum
    value_format: "#;(#)"
    sql: (${playback_duration_content_ms}/60000) ;;
  }

  measure: Total_content_stall_minutes{
    type: sum
    value_format: "#;(#)"
    sql: (${stall_duration_content_ms}/60000) ;;
  }

  measure: Buffer_ratio{
    type: number
    value_format_name: percent_2
    sql: (${Total_buffering_minutes}/NULLIF((${Total_content_playback_minutes}+${Total_buffering_minutes}),0)) ;;
  }

  measure: Stall_ratio{
    description: "The amount of time users spend waiting for the buffer to fill"
    type: number
    value_format_name: percent_2
    sql: (${Total_content_stall_minutes}/NULLIF((${Total_content_playback_minutes}+${Total_content_stall_minutes}),0)) ;;
  }

  ##end final flux dimensions and measures
}
