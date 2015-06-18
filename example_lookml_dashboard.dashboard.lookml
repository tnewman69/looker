- dashboard: example_lookml_dashboard
  title: Example Lookml Dashboard
  layout: tile
  tile_size: 100

#  filters:

  elements:

  - name: trans_monthly_cohort
    title: "Transactions Layered by Monthly Cohort"
    type: looker_column
    model: test
    explore: b2b_sales_analysis
    dimensions: [b2b_sales_analysis.cohort_month, b2b_sales_analysis.trans_month]
    pivots: [b2b_sales_analysis.cohort_month]
    measures: [b2b_sales_analysis.count]
    filters:
      b2b_sales_analysis.cohort_month: '2015'
    sorts: [b2b_sales_analysis.trans_month]
    limit: 500
    column_limit: ''
    query_timezone: America/Los_Angeles
    stacking: normal
    show_value_labels: false
    label_density: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false

