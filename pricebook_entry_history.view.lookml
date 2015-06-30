- view: pricebook_entry_history
  sql_table_name: salesforce_b2b.pricebook_entry_history
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

  - dimension_group: history
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.history_date

  - dimension: last_modified_by_id
    sql: ${TABLE}."Last Modified By ID"

  - dimension_group: last_modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Last Modified Date"

  - dimension: list_price
    sql: ${TABLE}."List Price"

  - dimension: price_book_entry_id
    sql: ${TABLE}."Price Book Entry ID"

  - dimension: price_book_id
    sql: ${TABLE}."Price Book ID"

  - dimension: product_code
    sql: ${TABLE}."Product Code"

  - dimension: product_id
    # hidden: true
    sql: ${TABLE}."Product ID"

  - dimension: product_name
    sql: ${TABLE}."Product Name"

  - dimension_group: system_modstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."System Modstamp"

  - dimension: use_standard_price
    sql: ${TABLE}."Use Standard Price"

  - measure: count
    type: count
    drill_fields: [product_name, product.product_name, product.product_id]

