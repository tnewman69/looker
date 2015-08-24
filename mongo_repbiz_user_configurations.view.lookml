- view: user_configurations
  sql_table_name: r4e_mongo.mongo_repbiz_user_configurations
  fields:

  - dimension: id
    primary_key: true
    sql: ${TABLE}.id

  - dimension: active
    sql: ${TABLE}.active

  - dimension: class
    sql: ${TABLE}."class"

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_date

  - dimension: email
    sql: ${TABLE}.email

  - dimension: external_id
    sql: ${TABLE}.external_id

  - dimension: first_name
    sql: ${TABLE}.first_name

  - dimension: is_removed
    sql: ${TABLE}.is_removed

  - dimension: last_name
    sql: ${TABLE}.last_name

  - dimension: role_id
    # hidden: true
    sql: ${TABLE}.role_id

  - dimension: tenant_id
    sql: ${TABLE}.tenant_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_date

  - dimension: user_id
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - last_name
    - first_name
    - roles.name
    - roles.role_id
    - users.community_nickname
    - users.company_name
    - users.full_name
    - users.first_name
    - users.last_name
    - users.username
    - users.user_id

