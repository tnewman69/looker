- view: quotes_history
  sql_table_name: salesforce_b2b.quotes_history
  fields:

  - dimension: additional_to_city
    sql: ${TABLE}."Additional To City"

  - dimension: additional_to_country
    sql: ${TABLE}."Additional To Country"

  - dimension: additional_to_name
    sql: ${TABLE}."Additional To Name"

  - dimension: additional_to_stateprovince
    sql: ${TABLE}."Additional To State/Province"

  - dimension: additional_to_street
    sql: ${TABLE}."Additional To Street"

  - dimension: additional_to_zippostal_code
    sql: ${TABLE}."Additional To Zip/Postal Code"

  - dimension: bill_to_city
    sql: ${TABLE}."Bill To City"

  - dimension: bill_to_country
    sql: ${TABLE}."Bill To Country"

  - dimension: bill_to_name
    sql: ${TABLE}."Bill To Name"

  - dimension: bill_to_stateprovince
    sql: ${TABLE}."Bill To State/Province"

  - dimension: bill_to_street
    sql: ${TABLE}."Bill To Street"

  - dimension: bill_to_zippostal_code
    sql: ${TABLE}."Bill To Zip/Postal Code"

  - dimension: comments
    sql: ${TABLE}.Comments

  - dimension: contact_id
    # hidden: true
    sql: ${TABLE}."Contact ID"

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

  - dimension: discount
    sql: ${TABLE}.Discount

  - dimension: email
    sql: ${TABLE}.Email

  - dimension_group: expiration
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Expiration Date"

  - dimension: fax
    sql: ${TABLE}.Fax

  - dimension: grand_total
    sql: ${TABLE}."Grand Total"

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

  - dimension: line_items
    type: int
    sql: ${TABLE}."Line Items"

  - dimension: opportunity_id
    sql: ${TABLE}."Opportunity ID"

  - dimension: phone
    sql: ${TABLE}.Phone

  - dimension: price_book_id
    sql: ${TABLE}."Price Book ID"

  - dimension: quote_id
    # hidden: true
    sql: ${TABLE}."Quote ID"

  - dimension: quote_name
    sql: ${TABLE}."Quote Name"

  - dimension: quote_number
    sql: ${TABLE}."Quote Number"

  - dimension: quote_to_city
    sql: ${TABLE}."Quote To City"

  - dimension: quote_to_country
    sql: ${TABLE}."Quote To Country"

  - dimension: quote_to_name
    sql: ${TABLE}."Quote To Name"

  - dimension: quote_to_stateprovince
    sql: ${TABLE}."Quote To State/Province"

  - dimension: quote_to_street
    sql: ${TABLE}."Quote To Street"

  - dimension: quote_to_zippostal_code
    sql: ${TABLE}."Quote To Zip/Postal Code"

  - dimension: ship_to_city
    sql: ${TABLE}."Ship To City"

  - dimension: ship_to_country
    sql: ${TABLE}."Ship To Country"

  - dimension: ship_to_name
    sql: ${TABLE}."Ship To Name"

  - dimension: ship_to_stateprovince
    sql: ${TABLE}."Ship To State/Province"

  - dimension: ship_to_street
    sql: ${TABLE}."Ship To Street"

  - dimension: ship_to_zippostal_code
    sql: ${TABLE}."Ship To Zip/Postal Code"

  - dimension: shipping_and_handling
    sql: ${TABLE}."Shipping and Handling"

  - dimension: status
    sql: ${TABLE}.Status

  - dimension: subtotal
    sql: ${TABLE}.Subtotal

  - dimension: syncing
    sql: ${TABLE}.Syncing

  - dimension_group: system_modstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."System Modstamp"

  - dimension: tax
    sql: ${TABLE}.Tax

  - dimension: total_price
    sql: ${TABLE}."Total Price"

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - additional_to_name
    - quote_to_name
    - ship_to_name
    - bill_to_name
    - quote_name
    - contacts.assistants_name
    - contacts.full_name
    - contacts.first_name
    - contacts.last_name
    - contacts.contact_id
    - quotes.additional_to_name
    - quotes.quote_to_name
    - quotes.ship_to_name
    - quotes.bill_to_name
    - quotes.quote_name
    - quotes.quote_id

