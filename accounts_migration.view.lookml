- view: accounts_migration
  sql_table_name: salesforce_b2b.accounts_migration
  fields:

  - dimension: new_account_id
    sql: ${TABLE}."New Account ID"

  - dimension: old_account_id
    sql: ${TABLE}."Old Account ID"

  - measure: count
    type: count
    drill_fields: []

