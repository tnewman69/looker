- view: account_facts
  derived_table:
    sql: |
      SELECT "Account Id" as account_id
        , DATEDIFF(day, DATE(MAX(trans_date)), CURRENT_DATE) AS days_since_last_transaction
      FROM salesforce_b2b.b2b_sales_analysis
      GROUP BY 1

  fields:

  - dimension: account_id
    primary_key: true
    hidden: true
    sql: ${TABLE}.account_id

  - dimension: days_since_last_transaction
    type: number
    sql: ${TABLE}.days_since_last_transaction
    
  - dimension: is_active
    type: yesno
    sql: ${days_since_last_transaction} <= 60

