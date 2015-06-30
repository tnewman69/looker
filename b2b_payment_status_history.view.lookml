- view: b2b_payment_status_history
  sql_table_name: salesforce_b2b.b2b_payment_status_history
  fields:

  - dimension: opportunity_id
    sql: ${TABLE}."Opportunity ID"

  - dimension: payment_status
    sql: ${TABLE}."payment status"

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

