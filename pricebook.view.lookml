- view: pricebook
  sql_table_name: salesforce_b2b.pricebook
  fields:

  - dimension: active
    sql: ${TABLE}.Active

  - dimension: created_by_id
    sql: ${TABLE}."Created By ID"

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Created Date"

  - dimension: currency_iso_code
    sql: ${TABLE}."Currency ISO Code"

  - dimension: deleted
    sql: ${TABLE}.Deleted

  - dimension: description
    sql: ${TABLE}.Description

  - dimension: is_standard_price_book
    sql: ${TABLE}."Is Standard Price Book"

  - dimension: last_modified_by_id
    sql: ${TABLE}."Last Modified By ID"

  - dimension_group: last_modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Last Modified Date"

  - dimension: price_book_id
    sql: ${TABLE}."Price Book ID"

  - dimension: price_book_name
    sql: ${TABLE}."Price Book Name"

  - dimension_group: system_modstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."System Modstamp"

  - measure: count
    type: count
    drill_fields: [price_book_name]

