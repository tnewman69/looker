- view: quote_line_item_history
  sql_table_name: salesforce_b2b.quote_line_item_history
  fields:

  - dimension: billing_type
    sql: ${TABLE}."Billing Type"

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

  - dimension: discount
    sql: ${TABLE}.Discount

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

  - dimension: line_item_description
    sql: ${TABLE}."Line Item Description"

  - dimension: line_item_number
    sql: ${TABLE}."Line Item Number"

  - dimension: list_price
    sql: ${TABLE}."List Price"

  - dimension: price_book_entry_id
    sql: ${TABLE}."Price Book Entry ID"

  - dimension: quantity
    type: number
    sql: ${TABLE}.Quantity

  - dimension: quote_id
    # hidden: true
    sql: ${TABLE}."Quote ID"

  - dimension: quote_line_item_id
    # hidden: true
    sql: ${TABLE}."Quote Line Item ID"

  - dimension: sales_price
    sql: ${TABLE}."Sales Price"

  - dimension_group: service
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Service Date"

  - dimension: sort_order
    sql: ${TABLE}."Sort Order"

  - dimension: subtotal
    sql: ${TABLE}.Subtotal

  - dimension_group: system_modstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."System Modstamp"

  - dimension: total_price
    sql: ${TABLE}."Total Price"

  - dimension: total_price2
    sql: ${TABLE}."Total Price2"

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - quotes.additional_to_name
    - quotes.quote_to_name
    - quotes.ship_to_name
    - quotes.bill_to_name
    - quotes.quote_name
    - quotes.quote_id
    - quote_line_item.quote_line_item_id

