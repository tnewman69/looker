- view: roles
  sql_table_name: salesforce_b2b."roles"
  fields:

  - dimension: role_id
    primary_key: true
    sql: ${TABLE}."Role ID"

  - dimension: account_id
    # hidden: true
    sql: ${TABLE}."Account ID"

  - dimension: descrption
    sql: ${TABLE}.Descrption

  - dimension: developer_nmae
    sql: ${TABLE}."Developer Nmae"

  - dimension: last_modified_by_id
    sql: ${TABLE}."Last Modified By ID"

  - dimension_group: last_modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Last Modified Date"

  - dimension: name
    sql: ${TABLE}."Name"

  - dimension: parent_role_id
    sql: ${TABLE}."Parent Role ID"

  - dimension: portal_role
    sql: ${TABLE}."Portal Role"

  - dimension: portal_type
    sql: ${TABLE}."Portal Type"

  - dimension_group: system_modstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."System Modstamp"

  - dimension: user_id
    # hidden: true
    sql: ${TABLE}."User ID"

  - dimension: user_type2
    sql: ${TABLE}."User Type2"

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - role_id
    - name
    - accounts.dpm_name
    - accounts.account_name
    - accounts.account_id
    - users.community_nickname
    - users.company_name
    - users.full_name
    - users.first_name
    - users.last_name
    - users.username
    - users.user_id
    - users.count
    - users_history.count

