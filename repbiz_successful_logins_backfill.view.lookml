- view: repbiz_successful_logins_backfill
  sql_table_name: r4e_general.repbiz_successful_logins_backfill
  fields:

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.creation_time

  - dimension_group: date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."date"

  - dimension: ip_address
    sql: ${TABLE}.ip_address

  - dimension: tenant
    sql: ${TABLE}.tenant

  - dimension: tenant_id
    sql: ${TABLE}.tenant_id

  - dimension: user_id
    sql: ${TABLE}.user_id

  - dimension: user_name
    sql: ${TABLE}.user_name

  - measure: count
    type: count
    drill_fields: [user_name]

