- view: dated_conversion_rate
  sql_table_name: salesforce_b2b.dated_conversion_rate
  fields:

  - dimension: dated_conversion_rate_id
    primary_key: true
    sql: ${TABLE}."DatedConversion Rate ID"

  - dimension: created_by_id
    sql: ${TABLE}."Created By ID"

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Created Date"

  - dimension: currency_code
    sql: ${TABLE}."Currency Code"

  - dimension_group: date
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Date"

  - dimension: exchange_rate
    type: number
    sql: ${TABLE}."Exchange Rate"

  - dimension: last_modified_by_id
    sql: ${TABLE}."Last Modified By ID"

  - dimension_group: last_modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Last Modified Date"

  - dimension_group: next_start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Next Start Date"

  - dimension_group: system_modstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."System Modstamp"

  - measure: count
    type: count
    drill_fields: [dated_conversion_rate_id, dated_conversion_rate_history.count]

