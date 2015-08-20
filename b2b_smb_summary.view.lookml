- view: b2b_smb_summary
  sql_table_name: salesforce_b2b_staging.b2b_smb_summary
  fields:

  - dimension: account_id
    # hidden: true
    sql: ${TABLE}."Account Id"

  - dimension: account_owner
    sql: ${TABLE}."Account Owner"

  - dimension: account_source
    sql: ${TABLE}.account_source

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension: cancel_date
    sql: ${TABLE}.cancel_date

  - dimension_group: cohort
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."cohort date"

  - dimension: currency_code
    sql: ${TABLE}.currency_code

  - dimension: duration
    type: number
    sql: ${TABLE}.duration

  - dimension: industry
    sql: ${TABLE}.industry

  - dimension: list_price
    sql: ${TABLE}.list_price

  - dimension: opp_id
    sql: ${TABLE}.opp_id

  - dimension: opp_prod_id
    sql: ${TABLE}.opp_prodID

  - dimension: price_change_date
    sql: ${TABLE}.price_change_date

  - dimension: prod_name
    sql: ${TABLE}.prod_name

  - dimension: product_category
    sql: ${TABLE}.product_category

  - dimension: product_family
    sql: ${TABLE}.product_family

  - dimension: quanity_change_date
    sql: ${TABLE}.quanity_change_date

  - dimension: quantity
    type: number
    sql: ${TABLE}.quantity

  - dimension: record_id
    sql: ${TABLE}."Record ID"

  - dimension_group: renewal
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Renewal Date"

  - dimension: sales_price
    sql: ${TABLE}.sales_price

  - dimension: salesperson
    sql: ${TABLE}.salesperson

  - dimension_group: start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.start_date

  - dimension: tenant_id
    sql: ${TABLE}."tenant id"

  - dimension_group: trans
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.trans_date

  - dimension: transaction_type
    sql: ${TABLE}."transaction type"

  - measure: count
    type: count
    drill_fields: [prod_name, accounts.dpm_name, accounts.account_name, accounts.account_id]

