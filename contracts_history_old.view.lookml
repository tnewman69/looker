- view: contracts_history_old
  sql_table_name: salesforce_b2b.contracts_history_old
  fields:

  - dimension: account_id
    # hidden: true
    sql: ${TABLE}."Account ID"

  - dimension: activated_by_id
    sql: ${TABLE}."Activated By ID"

  - dimension_group: activated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Activated Date"

  - dimension: billing_city
    sql: ${TABLE}."Billing City"

  - dimension: billing_country
    sql: ${TABLE}."Billing Country"

  - dimension: billing_stateprovince
    sql: ${TABLE}."Billing State/Province"

  - dimension: billing_street
    sql: ${TABLE}."Billing Street"

  - dimension: billing_zippostal_code
    sql: ${TABLE}."Billing Zip/Postal Code"

  - dimension: company_signed_by_id
    sql: ${TABLE}."Company Signed By ID"

  - dimension_group: company_signed
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Company Signed Date"

  - dimension_group: contract_end
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Contract End Date"

  - dimension: contract_id
    # hidden: true
    sql: ${TABLE}."Contract ID"

  - dimension: contract_number
    sql: ${TABLE}."Contract Number"

  - dimension_group: contract_start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Contract Start Date"

  - dimension: contract_term
    type: int
    sql: ${TABLE}."Contract Term"

  - dimension: created_by_id
    sql: ${TABLE}."Created By ID"

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Created Date"

  - dimension: currency_iso_code
    sql: ${TABLE}."Currency ISO Code"

  - dimension: customer_signed_by_id
    sql: ${TABLE}."Customer Signed By ID"

  - dimension_group: customer_signed
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Customer Signed Date"

  - dimension: customer_signed_title
    sql: ${TABLE}."Customer Signed Title"

  - dimension: description
    sql: ${TABLE}.Description

  - dimension_group: history
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.history_date

  - dimension: is_deleted
    sql: ${TABLE}.isDeleted

  - dimension_group: last_activity
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Last Activity"

  - dimension_group: last_approved
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Last Approved Date"

  - dimension: last_modified_by_id
    sql: ${TABLE}."Last Modified By ID"

  - dimension_group: last_modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Last Modified Date"

  - dimension: owner_expiration_notice
    sql: ${TABLE}."Owner Expiration Notice"

  - dimension: owner_id
    sql: ${TABLE}."Owner ID"

  - dimension: price_book_id
    sql: ${TABLE}."Price Book ID"

  - dimension: shipping_city
    sql: ${TABLE}."Shipping City"

  - dimension: shipping_country
    sql: ${TABLE}."Shipping Country"

  - dimension: shipping_stateprovince
    sql: ${TABLE}."Shipping State/Province"

  - dimension: shipping_street
    sql: ${TABLE}."Shipping Street"

  - dimension: shipping_zippostal_code
    sql: ${TABLE}."Shipping Zip/Postal Code"

  - dimension: special_terms
    sql: ${TABLE}."Special Terms"

  - dimension: status
    sql: ${TABLE}.Status

  - dimension: status_category
    sql: ${TABLE}."Status Category"

  - dimension_group: system_modstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."System Modstamp"

  - measure: count
    type: count
    drill_fields: [accounts.dpm_name, accounts.account_name, accounts.account_id, contracts.contract_id]

