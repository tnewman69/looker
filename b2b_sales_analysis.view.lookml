- view: b2b_sales_analysis
  sql_table_name: salesforce_b2b.b2b_sales_analysis
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

  - dimension_group: cohort
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."cohort date"

  - dimension: currency_code
    sql: ${TABLE}.currency_code

  - dimension: industry
    sql: ${TABLE}.industry

  - dimension: list_price
    sql: ${TABLE}.list_price

  - dimension: opp_id
    sql: ${TABLE}.opp_id

  - dimension: opp_prod_id
    sql: ${TABLE}.opp_prodID

  - dimension: prod_name
    sql: ${TABLE}.prod_name

  - dimension: product_category
    sql: ${TABLE}.product_category

  - dimension: product_family
    sql: ${TABLE}.product_family

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

  - dimension: tenant_id
    sql: ${TABLE}."tenant id"

  - dimension_group: trans
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.trans_date

  - dimension: transaction_type
    sql: ${TABLE}."transaction type"

  
# Measures #  

  - measure: count
    type: count
    drill_fields: [prod_name, accounts.dpm_name, accounts.account_name, accounts.account_id]

