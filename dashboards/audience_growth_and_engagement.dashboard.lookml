- dashboard: audience_growth_and_engagement
  title: Audience growth and engagement
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: Engagement category distribution
    name: Engagement category distribution
    model: datazoomv3
    explore: viewing_users
    type: looker_pie
    fields: [viewing_users.weekly_engagement_category, datazoom_raw.Unique_Devices]
    filters:
      viewing_users.weekly_engagement_category: "-Historical Churn"
      datazoom_raw.timestamp_date: yesterday
    sorts: [datazoom_raw.Unique_Devices desc]
    limit: 500
    query_timezone: America/New_York
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Engagement category growth
    name: Engagement category growth
    model: datazoomv3
    explore: viewing_users
    type: looker_area
    fields: [viewing_users.weekly_engagement_category, datazoom_raw.Unique_Devices,
      datazoom_raw.timestamp_date]
    pivots: [viewing_users.weekly_engagement_category]
    fill_fields: [datazoom_raw.timestamp_date]
    filters:
      viewing_users.weekly_engagement_category: "-Historical Churn"
      datazoom_raw.timestamp_date: 30 days
    sorts: [datazoom_raw.Unique_Devices desc 0, viewing_users.weekly_engagement_category]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    row: 6
    col: 8
    width: 8
    height: 6
  - title: Audience OS distribution
    name: Audience OS distribution
    model: datazoomv3
    explore: viewing_users
    type: looker_pie
    fields: [datazoom_raw.Unique_Devices, datazoom_raw.os_name]
    filters:
      viewing_users.weekly_engagement_category: "-Historical Churn"
      datazoom_raw.os_name: -"-",-OS/2
      datazoom_raw.timestamp_date: yesterday
    sorts: [datazoom_raw.Unique_Devices desc]
    limit: 500
    query_timezone: America/New_York
    value_labels: legend
    label_type: labPer
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    inner_radius: 40
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Stickiness
    name: Stickiness
    model: datazoomv3
    explore: viewing_users
    type: single_value
    fields: [viewing_users.user_count_active_this_day, viewing_users.user_count_active_30_days,
      viewing_users.date_date]
    fill_fields: [viewing_users.date_date]
    filters:
      viewing_users.date_date: 8 days ago for 7 days
    sorts: [viewing_users.date_date desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${viewing_users.user_count_active_this_day}/${viewing_users.user_count_active_30_days}",
        label: Stickiness, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: stickiness, _type_hint: number}, {
        args: [stickiness], calculation_type: rank_of_column, category: table_calculation,
        based_on: stickiness, label: Rank of  Stickiness, source_field: stickiness,
        table_calculation: rank_of_stickiness, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, is_disabled: true}, {category: table_calculation,
        expression: 'mean(${stickiness})', label: Stickiness, value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, table_calculation: stickiness_1,
        _type_hint: number}]
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: "<10% = BAD, 10%-20% = OKAY, >20% = GOOD"
    conditional_formatting: [{type: greater than, value: 0.2, background_color: "#72D16D",
        font_color: '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: between, value: [0.1, 0.2],
        background_color: "#FFD95F", font_color: '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0.1, background_color: "#B32F37",
        font_color: '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    series_types: {}
    defaults_version: 1
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
    hidden_fields: [stickiness, viewing_users.user_count_active_30_days, viewing_users.user_count_active_this_day]
    row: 9
    col: 0
    width: 8
    height: 6
  - title: Engagement category distribution over time
    name: Engagement category distribution over time
    model: datazoomv3
    explore: viewing_users
    type: looker_area
    fields: [viewing_users.weekly_engagement_category, datazoom_raw.Unique_Devices,
      datazoom_raw.timestamp_date]
    pivots: [viewing_users.weekly_engagement_category]
    fill_fields: [datazoom_raw.timestamp_date]
    filters:
      viewing_users.weekly_engagement_category: "-Historical Churn"
      datazoom_raw.timestamp_date: 30 days
    sorts: [datazoom_raw.Unique_Devices desc 0, viewing_users.weekly_engagement_category]
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
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    row: 12
    col: 8
    width: 8
    height: 6
  - title: Average session duration in minutes
    name: Average session duration in minutes
    model: datazoomv3
    explore: viewing_users
    type: single_value
    fields: [datazoom_raw.minutes_per_session, datazoom_raw.timestamp_date]
    fill_fields: [datazoom_raw.timestamp_date]
    filters:
      viewing_users.date_date: 12 hours
    sorts: [datazoom_raw.timestamp_date desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${viewing_users.user_count_active_this_day}/${viewing_users.user_count_active_30_days}",
        label: Stickiness, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: stickiness, _type_hint: number, is_disabled: true},
      {args: [stickiness], calculation_type: rank_of_column, category: table_calculation,
        based_on: stickiness, label: Rank of  Stickiness, source_field: stickiness,
        table_calculation: rank_of_stickiness, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, is_disabled: true}, {category: table_calculation,
        expression: 'mean(${stickiness})', label: Stickiness, value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, table_calculation: stickiness_1,
        _type_hint: number, is_disabled: true}]
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: ''
    conditional_formatting: [{type: greater than, value: 0.2, background_color: "#72D16D",
        font_color: '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: between, value: [0.1, 0.2],
        background_color: "#FFD95F", font_color: '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0.1, background_color: "#B32F37",
        font_color: '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    series_types: {}
    defaults_version: 1
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
    hidden_fields: []
    y_axes: []
    row: 6
    col: 16
    width: 8
    height: 6
  - title: Playbck concurrency Users
    name: Playbck concurrency Users
    model: datazoomv3
    explore: viewing_users
    type: looker_line
    fields: [datazoom_raw.Unique_Devices, datazoom_raw.timestamp_hour]
    fill_fields: [datazoom_raw.timestamp_hour]
    filters:
      datazoom_raw.timestamp_date: 7 days
    sorts: [datazoom_raw.timestamp_hour desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${viewing_users.user_count_active_this_day}/${viewing_users.user_count_active_30_days}",
        label: Stickiness, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: stickiness, _type_hint: number, is_disabled: true},
      {args: [stickiness], calculation_type: rank_of_column, category: table_calculation,
        based_on: stickiness, label: Rank of  Stickiness, source_field: stickiness,
        table_calculation: rank_of_stickiness, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, is_disabled: true}, {category: table_calculation,
        expression: 'mean(${stickiness})', label: Stickiness, value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, table_calculation: stickiness_1,
        _type_hint: number, is_disabled: true}]
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: ''
    enable_conditional_formatting: false
    conditional_formatting: [{type: greater than, value: 0.2, background_color: "#72D16D",
        font_color: '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: between, value: [0.1, 0.2],
        background_color: "#FFD95F", font_color: '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0.1, background_color: "#B32F37",
        font_color: '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    row: 12
    col: 16
    width: 8
    height: 6
  - title: Location density by country
    name: Location density by country
    model: datazoomv3
    explore: viewing_users
    type: looker_map
    fields: [datazoom_raw.Unique_Devices, datazoom_raw.country]
    filters:
      datazoom_raw.timestamp_date: 7 days
    sorts: [datazoom_raw.Unique_Devices desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${viewing_users.user_count_active_this_day}/${viewing_users.user_count_active_30_days}",
        label: Stickiness, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: stickiness, _type_hint: number, is_disabled: true},
      {args: [stickiness], calculation_type: rank_of_column, category: table_calculation,
        based_on: stickiness, label: Rank of  Stickiness, source_field: stickiness,
        table_calculation: rank_of_stickiness, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, is_disabled: true}, {category: table_calculation,
        expression: 'mean(${stickiness})', label: Stickiness, value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, table_calculation: stickiness_1,
        _type_hint: number, is_disabled: true}]
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
    map_latitude: 30.44867367928756
    map_longitude: 0
    map_zoom: 1
    map_value_scale_clamp_max: 10000
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: ''
    enable_conditional_formatting: false
    conditional_formatting: [{type: greater than, value: 0.2, background_color: "#72D16D",
        font_color: '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: between, value: [0.1, 0.2],
        background_color: "#FFD95F", font_color: '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0.1, background_color: "#B32F37",
        font_color: '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    series_types: {}
    defaults_version: 1
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
    hidden_fields: []
    y_axes: []
    row: 15
    col: 0
    width: 8
    height: 10
  - title: Population density granular
    name: Population density granular
    model: datazoomv3
    explore: viewing_users
    type: looker_map
    fields: [datazoom_raw.Unique_Devices, datazoom_raw.geolocation]
    filters:
      datazoom_raw.geolocation: inside box from 66.51326044311188, -225.00000000000003
        to 0, 45
      datazoom_raw.timestamp_date: 2 days
      datazoom_raw.geolocation_bin_level: '7'
    sorts: [datazoom_raw.Unique_Devices desc]
    limit: 5000
    dynamic_fields: [{category: table_calculation, expression: "${viewing_users.user_count_active_this_day}/${viewing_users.user_count_active_30_days}",
        label: Stickiness, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: stickiness, _type_hint: number, is_disabled: true},
      {args: [stickiness], calculation_type: rank_of_column, category: table_calculation,
        based_on: stickiness, label: Rank of  Stickiness, source_field: stickiness,
        table_calculation: rank_of_stickiness, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, is_disabled: true}, {category: table_calculation,
        expression: 'mean(${stickiness})', label: Stickiness, value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, table_calculation: stickiness_1,
        _type_hint: number, is_disabled: true}]
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
    map_latitude: 45.460130637921004
    map_longitude: -103.79882812500001
    map_zoom: 3
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: ''
    enable_conditional_formatting: false
    conditional_formatting: [{type: greater than, value: 0.2, background_color: "#72D16D",
        font_color: '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: between, value: [0.1, 0.2],
        background_color: "#FFD95F", font_color: '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0.1, background_color: "#B32F37",
        font_color: '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    series_types: {}
    defaults_version: 1
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
    hidden_fields: []
    y_axes: []
    row: 18
    col: 8
    width: 8
    height: 7
  - title: Weekly users by referrer
    name: Weekly users by referrer
    model: datazoomv3
    explore: viewing_users
    type: looker_grid
    fields: [datazoom_raw.Unique_Devices, datazoom_raw.referrer_url]
    filters:
      datazoom_raw.referrer_url: "-EMPTY"
      datazoom_raw.timestamp_date: 7 days
    sorts: [datazoom_raw.Unique_Devices desc]
    limit: 5000
    dynamic_fields: [{category: table_calculation, expression: "${viewing_users.user_count_active_this_day}/${viewing_users.user_count_active_30_days}",
        label: Stickiness, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: stickiness, _type_hint: number, is_disabled: true},
      {args: [stickiness], calculation_type: rank_of_column, category: table_calculation,
        based_on: stickiness, label: Rank of  Stickiness, source_field: stickiness,
        table_calculation: rank_of_stickiness, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, is_disabled: true}, {category: table_calculation,
        expression: 'mean(${stickiness})', label: Stickiness, value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, table_calculation: stickiness_1,
        _type_hint: number, is_disabled: true}]
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
    map_plot_mode: automagic_heatmap
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_latitude: 45.521743896993634
    map_longitude: -103.79882812500001
    map_zoom: 3
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: ''
    conditional_formatting: [{type: greater than, value: 0.2, background_color: "#72D16D",
        font_color: '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: between, value: [0.1, 0.2],
        background_color: "#FFD95F", font_color: '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0.1, background_color: "#B32F37",
        font_color: '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    series_types: {}
    defaults_version: 1
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
    hidden_fields: []
    y_axes: []
    row: 18
    col: 16
    width: 8
    height: 7
  - name: README
    type: text
    title_text: README
    subtitle_text: Product and marketing teams.
    body_text: |-
      This dashboard describes when, where, what frequency, and for how long users are watching content on our platform. It categorizes users by their location, device and behavior.

      Click on any pie chart or map to filter the entire dashboard by that user cohort.

      <br /><br />
      **Definitions**

      * Stickiness: the percentage of the monthly user base that is active each day.
      * New Users: first active in the past week.
      * Engaged Users: active both in the past week and two weeks ago.
      * Dormant Users: Active two weeks ago but not active in the past week.

      <br />

      **Tips for success**

      1. Engaged users are the most valuable, we want the ratio of Engaged users to increase. A good goal is 50%
      2. Stickiness is another indicator of engagement level, a good goal is 20%
      3. Try various filters to see which countries and device types could use additional marketing, and what time is preferable to drive growth, or existing users back to the platform.
    row: 0
    col: 0
    width: 8
    height: 9
