- dashboard: qoe
  title: QoE
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Daily video error rate
    name: Daily video error rate
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: looker_line
    fields: [datazoom_raw.timestamp_date, datazoom_raw.Video_Error_Rate]
    fill_fields: [datazoom_raw.timestamp_date]
    filters:
      datazoom_raw.timestamp_date: 7 days ago for 7 days
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
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
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
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    hidden_fields: []
    y_axes: []
    row: 24
    col: 0
    width: 8
    height: 6
  - title: Video error rate by content
    name: Video error rate by content
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: looker_grid
    fields: [datazoom_raw.Video_Error_Rate, datazoom_raw.title, datazoom_raw.Content_Views]
    filters:
      datazoom_raw.title: ''
      datazoom_raw.Content_Views: ">=100"
      datazoom_raw.timestamp_date: 24 hours ago for 24 hours
    sorts: [datazoom_raw.Video_Error_Rate desc]
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
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 18
    col: 0
    width: 8
    height: 6
  - title: Hourly fatal video error rate
    name: Hourly fatal video error rate
    model: "@{LOOKER_MODEL_NAME}"
    explore: final_flux
    type: looker_line
    fields: [final_flux.timestamp_hour, final_flux.Fatal_video_Error_Rate]
    fill_fields: [final_flux.timestamp_hour]
    filters:
      final_flux.timestamp_date: 24 hours
    sorts: [final_flux.timestamp_hour desc]
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
    defaults_version: 1
    hidden_fields:
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Hourly buffer vs stall ratio
    name: Hourly buffer vs stall ratio
    model: "@{LOOKER_MODEL_NAME}"
    explore: final_flux
    type: looker_line
    fields: [final_flux.Buffer_ratio, final_flux.timestamp_hour, final_flux.timestamp_date,
      final_flux.Stall_ratio]
    filters:
      final_flux.timestamp_date: 24 hours
    sorts: [final_flux.timestamp_hour desc]
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
    defaults_version: 1
    hidden_fields: [final_flux.timestamp_date]
    row: 14
    col: 16
    width: 8
    height: 6
  - title: 24h stall ratio by content
    name: 24h stall ratio by content
    model: "@{LOOKER_MODEL_NAME}"
    explore: final_flux
    type: looker_grid
    fields: [final_flux.Stall_ratio, final_flux.title]
    filters:
      final_flux.timestamp_date: 24 hours
    sorts: [final_flux.Stall_ratio desc]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      final_flux.Stall_ratio:
        is_active: true
      final_flux.Buffer_ratio:
        is_active: true
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
    defaults_version: 1
    hidden_fields: []
    series_types: {}
    listen: {}
    row: 0
    col: 8
    width: 8
    height: 6
  - title: 24h time to first frame by content
    name: 24h time to first frame by content
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: looker_grid
    fields: [datazoom_raw.median_TTFF_startup_duration_total, datazoom_raw.title]
    filters:
      datazoom_raw.timestamp_date: 24 hours
    sorts: [datazoom_raw.median_TTFF_startup_duration_total desc]
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 6
    col: 8
    width: 8
    height: 6
  - title: Hourly Time to first frame over 5 seconds
    name: Hourly Time to first frame over 5 seconds
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: looker_line
    fields: [datazoom_raw.median_TTFF_startup_duration_total, datazoom_raw.site_domain,
      datazoom_raw.timestamp_hour]
    pivots: [datazoom_raw.site_domain]
    filters:
      datazoom_raw.median_TTFF_startup_duration_total: ">=5000"
      datazoom_raw.timestamp_date: 24 hours
      datazoom_raw.Unique_Devices: ">=100"
    sorts: [datazoom_raw.median_TTFF_startup_duration_total desc 0, datazoom_raw.site_domain]
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
    value_labels: labels
    label_type: labVal
    inner_radius: 50
    defaults_version: 1
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    hidden_fields: []
    y_axes: []
    row: 20
    col: 16
    width: 8
    height: 6
  - title: Time to first frame by location
    name: Time to first frame by location
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: looker_map
    fields: [datazoom_raw.median_TTFF_startup_duration_total, datazoom_raw.geolocation]
    filters:
      datazoom_raw.geolocation: inside box from 66.51326044311188, -180 to -21.94304553343818,
        0
      datazoom_raw.timestamp_date: 24 hours
      datazoom_raw.Unique_Devices: ">=100"
      datazoom_raw.geolocation_bin_level: '7'
    sorts: [datazoom_raw.median_TTFF_startup_duration_total desc]
    limit: 5000
    query_timezone: America/New_York
    map_plot_mode: automagic_heatmap
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
    map_latitude: 32.694865977875075
    map_longitude: -91.8896484375
    map_zoom: 4
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
    show_null_points: true
    interpolation: linear
    value_labels: labels
    label_type: labVal
    inner_radius: 50
    defaults_version: 1
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 12
    col: 8
    width: 8
    height: 12
  - title: 24 hour Fatal video errror rate by content
    name: 24 hour Fatal video errror rate by content
    model: "@{LOOKER_MODEL_NAME}"
    explore: final_flux
    type: looker_grid
    fields: [final_flux.Fatal_video_Error_Rate, final_flux.title]
    filters:
      final_flux.timestamp_date: 24 hours
    sorts: [final_flux.Fatal_video_Error_Rate desc]
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
    defaults_version: 1
    hidden_fields:
    series_types: {}
    listen: {}
    row: 12
    col: 0
    width: 8
    height: 6
  - title: Fatal video error messages
    name: Fatal video error messages
    model: "@{LOOKER_MODEL_NAME}"
    explore: final_flux
    type: looker_line
    fields: [final_flux.timestamp_hour, final_flux.error_msg, final_flux.Views_with_error]
    pivots: [final_flux.error_msg]
    fill_fields: [final_flux.timestamp_hour]
    filters:
      final_flux.timestamp_date: 24 hours
    sorts: [final_flux.timestamp_hour desc, final_flux.error_msg]
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
    defaults_version: 1
    hidden_fields:
    row: 8
    col: 16
    width: 8
    height: 6
  - name: "!! Click on a Fatal video error message to identify the culprit !!"
    type: text
    title_text: "!! Click on a Fatal video error message to identify the culprit !!"
    subtitle_text: ''
    body_text: ''
    row: 6
    col: 16
    width: 8
    height: 2
  - name: README
    type: text
    title_text: README
    subtitle_text: Used by Video Engineering and Incident Management
    body_text: |-
      This dashboard displays various playback quality indicators. It is used to help the engineering teams identify and debug video issues.

      Click on the bell icon on any of the time series charts to get alerts sent to slack or email should incident indicators pass a certain threshold.

      **Suggested Monitoring**

      * Realtime Error Rate. Video error rate should not surpass 20% and ad error rate should not surpass 30%.
      * EBVS should stay below 10%
      * Buffer Recovery rate should be above 90%


      **Issue Investigation**

      1. Are there any abnormalities in the time series charts? Look for spikes and flat lines.
      2. Is there a correlation between spikes in the real time charts? Increase in error rate can be attributed to a specific error message.
      3. Click on the error message charts to see what content titles contributed to that error. Perhaps there is a certain title that needs attention.
      4. Use the country and OS filters to see if there is a disproportionate number of errors, and prioritise fixing these platforms accordingly.

      **Definitions**

      EBVS - Exit before video start. Users may not be able to playback video and also don't generate an error. EBVS will increase under these circumstances. <br>
      Buffer Recovery Rate - The percentage of buffer starts that have a resulting buffer end. Those buffers that do not have an end, either got stuck or the user did not tolerate the buffer duration.<br>
      TTFF - Time to first frame. How long it takes to start video playback. Ideally the video should be quick to start, but the delay in starting can be tolerated more depending on the user's circumstances.
    row: 0
    col: 0
    width: 8
    height: 12
  - title: QOE required events
    name: QOE required events
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: looker_grid
    fields: [datazoom_raw.event_type, datazoom_raw.count]
    filters:
      datazoom_raw.event_type: '"media_request","media_loaded",error,heartbeat,"stall_end","stall_start","buffer_end","buffer_start"'
      datazoom_raw.timestamp_date: 1 days ago for 1 days
    sorts: [datazoom_raw.count desc]
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
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: true
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      sinclair_debug.count:
        is_active: false
        palette:
          palette_id: 4a543302-b64d-409c-9863-679b5b230aac
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
    series_text_format:
      sinclair_debug.count: {}
    conditional_formatting: [{type: greater than, value: 0, background_color: "#72D16D",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: equal to, value: 0, background_color: "#B32F37",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    row:
    col:
    width:
    height:
