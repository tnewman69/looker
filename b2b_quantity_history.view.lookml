- view: b2b_quantity_history
  sql_table_name: salesforce_b2b.b2b_quantity_history
  fields:

  - dimension: line_item_id
    sql: ${TABLE}."Line Item ID"

  - dimension: opportunity_id
    sql: ${TABLE}."Opportunity ID"

  - dimension: quantity
    type: int
    sql: ${TABLE}.quantity

  - dimension_group: valid_from
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."valid from"

  - dimension_group: valid_to
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."valid to"

  - measure: count
    type: count
    drill_fields: []

