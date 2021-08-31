- dashboard: content_performance
  title: Content performance
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Minutes per title
    name: Minutes per title
    model: datazoomv3
    explore: datazoom_raw
    type: looker_grid
    fields: [datazoom_raw.title, datazoom_raw.minutes_from_heartbeat]
    filters:
      datazoom_raw.title: "-EMPTY,-NULL"
      datazoom_raw.timestamp_date: 7 days ago for 7 days
    sorts: [datazoom_raw.minutes_from_heartbeat desc]
    limit: 500
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    value_labels: labels
    label_type: labVal
    inner_radius: 50
    defaults_version: 1
    series_types: {}
    truncate_column_names: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    y_axes: []
    row: 6
    col: 0
    width: 8
    height: 6
  - title: Content popularity
    name: Content popularity
    model: datazoomv3
    explore: datazoom_raw
    type: looker_grid
    fields: [datazoom_raw.title, datazoom_raw.Unique_Devices, datazoom_raw.Ad_Impressions]
    filters:
      datazoom_raw.title: "-NULL,-EMPTY"
      datazoom_raw.timestamp_date: 7 days
    sorts: [datazoom_raw.Unique_Devices desc]
    limit: 500
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    row: 0
    col: 8
    width: 8
    height: 12
  - title: Average minutes per device
    name: Average minutes per device
    model: datazoomv3
    explore: datazoom_raw
    type: looker_map
    fields: [datazoom_raw.minutes_per_device, datazoom_raw.country]
    filters:
      datazoom_raw.timestamp_date: 7 days
      datazoom_raw.Unique_Devices: ">100"
    sorts: [datazoom_raw.minutes_per_device desc]
    limit: 500
    query_timezone: America/New_York
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    map_latitude: 31.80289258670676
    map_longitude: 17.753906250000004
    map_zoom: 2
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    row: 12
    col: 0
    width: 16
    height: 11
  - title: Views per hour
    name: Views per hour
    model: datazoomv3
    explore: datazoom_raw
    type: looker_line
    fields: [datazoom_raw.Content_Views, datazoom_raw.timestamp_hour]
    filters:
      datazoom_raw.timestamp_date: 7 days
      datazoom_raw.Unique_Devices: ">100"
    limit: 500
    query_timezone: America/New_York
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_latitude: 31.80289258670676
    map_longitude: 17.753906250000004
    map_zoom: 2
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Average viewing duration
    name: Average viewing duration
    model: datazoomv3
    explore: datazoom_raw
    type: looker_line
    fields: [datazoom_raw.timestamp_date, datazoom_raw.minutes_per_session]
    filters:
      datazoom_raw.timestamp_date: 7 days
      datazoom_raw.Unique_Devices: ">100"
    sorts: [datazoom_raw.timestamp_date desc]
    limit: 500
    query_timezone: America/New_York
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_latitude: 31.80289258670676
    map_longitude: 17.753906250000004
    map_zoom: 2
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    row: 6
    col: 16
    width: 8
    height: 6
  - title: Content drop off 5 minute blocks
    name: Content drop off 5 minute blocks
    model: datazoomv3
    explore: datazoom_raw
    type: looker_column
    fields: [datazoom_raw.playhead_position_bucket, datazoom_raw.count]
    filters:
      datazoom_raw.playhead_position_bucket: -"T00 (-inf,0.0)"
      datazoom_raw.timestamp_date: 7 days
      datazoom_raw.Unique_Devices: ">100"
      datazoom_raw.event_type: heartbeat
      datazoom_raw.media_type: content
      datazoom_raw.streaming_type: VOD
    sorts: [datazoom_raw.playhead_position_bucket]
    limit: 500
    query_timezone: America/New_York
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Content drop off
    series_types: {}
    show_null_points: true
    interpolation: linear
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_latitude: 31.80289258670676
    map_longitude: 17.753906250000004
    map_zoom: 2
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    row: 12
    col: 16
    width: 8
    height: 6
  - name: README
    type: text
    title_text: README
    subtitle_text: Used by content producers and curators
    body_text: |
      This dashboard communicates how users are consuming specific content titles.

      Click on the *Content popularity* to filter by title, or click a country to filter all metrics by the country selected

      **What can we learn?**

      For a specific content title, we can:

      * Understand at what point during playback, users abandoned playback. Use this information to create content that keeps users watching.
      * See on the map, how many minutes on average are being consumed. Use this to target curation to the regions most appropriate.
      * Time and date the content was most frequently viewed. Use this to time content release and marketing.
    row: 0
    col: 0
    width: 8
    height: 6
