- view: r4e_product_history_tenant
  sql_table_name: r4e_general.r4e_product_history_tenant
  fields:

  - dimension: account_owner
    sql: ${TABLE}.account_owner

  - dimension_group: date
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."date"

  - dimension: locations_count
    type: int
    sql: ${TABLE}.locations_count

  - dimension: opportunity_owner_id
    sql: ${TABLE}.opportunity_owner_id

  - dimension: packages_list
    sql: ${TABLE}.packages_list

  - dimension: successful_logins
    type: int
    sql: ${TABLE}.successful_logins

  - dimension: tenant_id
    sql: ${TABLE}.tenant_id

  - measure: count
    type: count
    drill_fields: []

