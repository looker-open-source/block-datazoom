- dashboard: high_level_kpi
  title: High level KPI
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Daily viewing users
    name: Daily viewing users
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: looker_line
    fields: [datazoom_raw.Unique_Devices, datazoom_raw.timestamp_date]
    fill_fields: [datazoom_raw.timestamp_date]
    filters:
      datazoom_raw.timestamp_date: 60 days ago for 60 days
    sorts: [datazoom_raw.Unique_Devices desc]
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
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 12
    col: 0
    width: 8
    height: 6
  - title: Monthly viewing users
    name: Monthly viewing users
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: single_value
    fields: [datazoom_raw.Unique_Devices, datazoom_raw.30_day_window]
    pivots: [datazoom_raw.30_day_window]
    filters:
      datazoom_raw.30_day_window: "-Historical"
    sorts: [datazoom_raw.Unique_Devices desc 0, datazoom_raw.30_day_window]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "(${datazoom_raw.Unique_Devices}\
          \ / pivot_offset(${datazoom_raw.Unique_Devices}, 1)) - 1", label: Change
          from previous, value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        table_calculation: change_from_previous, _type_hint: number}]
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Monthly content minutes
    name: Monthly content minutes
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: single_value
    fields: [datazoom_raw.minutes_from_heartbeat, datazoom_raw.30_day_window]
    pivots: [datazoom_raw.30_day_window]
    filters:
      datazoom_raw.30_day_window: "-Historical"
    sorts: [datazoom_raw.30_day_window]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "(${datazoom_raw.minutes_from_heartbeat}\
          \ / pivot_offset(${datazoom_raw.minutes_from_heartbeat}, 1)) - 1", label: Change
          from previous, value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        table_calculation: change_from_previous, _type_hint: number}]
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Monthly ad impressions
    name: Monthly ad impressions
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: single_value
    fields: [datazoom_raw.Ad_Impressions, datazoom_raw.30_day_window]
    pivots: [datazoom_raw.30_day_window]
    filters:
      datazoom_raw.30_day_window: "-Historical"
    sorts: [datazoom_raw.30_day_window]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "(${datazoom_raw.Ad_Impressions}\
          \ / pivot_offset(${datazoom_raw.Ad_Impressions}, 1)) - 1", label: Change
          from previous, value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        table_calculation: change_from_previous, _type_hint: number}]
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Daily ad impressions
    name: Daily ad impressions
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: looker_line
    fields: [datazoom_raw.Ad_Impressions, datazoom_raw.timestamp_date]
    fill_fields: [datazoom_raw.timestamp_date]
    filters:
      datazoom_raw.timestamp_date: 30 days ago for 30 days
    sorts: [datazoom_raw.timestamp_date desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "(${datazoom_raw.Ad_Impressions}\
          \ / pivot_offset(${datazoom_raw.Ad_Impressions}, 1)) - 1", label: Change
          from previous, value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        table_calculation: change_from_previous, _type_hint: number, is_disabled: true}]
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
    show_comparison: true
    comparison_type: change
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
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    row: 12
    col: 16
    width: 8
    height: 6
  - title: Daily content minutes consumed
    name: Daily content minutes consumed
    model: "@{LOOKER_MODEL_NAME}"
    explore: datazoom_raw
    type: looker_line
    fields: [datazoom_raw.timestamp_date, datazoom_raw.minutes_from_heartbeat]
    fill_fields: [datazoom_raw.timestamp_date]
    filters:
      datazoom_raw.timestamp_date: 30 days ago for 30 days
    sorts: [datazoom_raw.timestamp_date desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "(${datazoom_raw.Ad_Impressions}\
          \ / pivot_offset(${datazoom_raw.Ad_Impressions}, 1)) - 1", label: Change
          from previous, value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        table_calculation: change_from_previous, _type_hint: number, is_disabled: true}]
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
    show_comparison: true
    comparison_type: change
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
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    row: 12
    col: 8
    width: 8
    height: 6
  - title: Viewing user stickiness
    name: Viewing user stickiness
    model: "@{LOOKER_MODEL_NAME}"
    explore: viewing_users
    type: looker_scatter
    fields: [viewing_users.user_count_active_30_days, viewing_users.user_count_active_this_day,
      viewing_users.date_date]
    fill_fields: [viewing_users.date_date]
    filters:
      viewing_users.date_date: 30 days ago for 30 days
    sorts: [viewing_users.date_date desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "(${datazoom_raw.Ad_Impressions}\
          \ / pivot_offset(${datazoom_raw.Ad_Impressions}, 1)) - 1", label: Change
          from previous, value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        table_calculation: change_from_previous, _type_hint: number, is_disabled: true},
      {category: table_calculation, expression: "${viewing_users.user_count_active_this_day}/${viewing_users.user_count_active_30_days}",
        label: Stickiness, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: stickiness, _type_hint: number}]
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
    series_types: {}
    reference_lines: [{reference_type: range, line_value: mean, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: left, color: "#B32F37",
        range_end: '0', range_start: ".1", label: Bad}, {reference_type: range, line_value: mean,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: left,
        color: "#FFD95F", range_start: ".2", range_end: ".1", label: Okay}, {reference_type: range,
        line_value: mean, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: left, color: "#72D16D", range_start: '1', range_end: ".2",
        label: Good}]
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
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
    defaults_version: 1
    hidden_fields: [viewing_users.user_count_active_30_days, viewing_users.user_count_active_this_day]
    y_axes: []
    row: 6
    col: 16
    width: 8
    height: 6
  - title: Weekly viewing users
    name: Weekly viewing users
    model: "@{LOOKER_MODEL_NAME}"
    explore: viewing_users
    type: looker_line
    fields: [viewing_users.date_date, viewing_users.user_count_active_7_days]
    fill_fields: [viewing_users.date_date]
    filters:
      viewing_users.date_date: 4 weeks ago for 8 weeks
    sorts: [viewing_users.date_date desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "(${datazoom_raw.Ad_Impressions}\
          \ / pivot_offset(${datazoom_raw.Ad_Impressions}, 1)) - 1", label: Change
          from previous, value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        table_calculation: change_from_previous, _type_hint: number, is_disabled: true},
      {category: table_calculation, expression: "${viewing_users.user_count_active_this_day}/${viewing_users.user_count_active_30_days}",
        label: Stickiness, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: stickiness, _type_hint: number, is_disabled: true},
      {category: table_calculation, expression: 'diff_days(${viewing_users.date_date},now())',
        label: Day index, value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        table_calculation: day_index, _type_hint: number}, {category: table_calculation,
        expression: 'slope(${viewing_users.user_count_active_7_days}, ${day_index})',
        label: Slope, value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        table_calculation: slope, _type_hint: number}, {category: table_calculation,
        expression: 'intercept(${viewing_users.user_count_active_7_days}, ${day_index})',
        label: Intercept, value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        table_calculation: intercept, _type_hint: number}, {category: table_calculation,
        expression: "${slope} * ${day_index} + ${intercept}", label: Forecast, value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, table_calculation: forecast,
        _type_hint: number}]
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
    show_null_points: false
    interpolation: linear
    series_types: {}
    reference_lines: []
    trend_lines: []
    discontinuous_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
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
    defaults_version: 1
    hidden_fields: [slope, day_index, intercept]
    y_axes: []
    row: 6
    col: 0
    width: 8
    height: 6
  - name: README
    type: text
    title_text: README
    subtitle_text: Used by Execs for a high level overview
    body_text: |-
      This dashboard only shows general platform performance, including growth, engagement, and revenue indicators.

      Click on any of the top line measures to dive into the relevant granular dashboards.
    row: 6
    col: 8
    width: 8
    height: 6
