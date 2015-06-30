- view: mongo_repbiz_tenant_configurations
  sql_table_name: r4e_mongo.mongo_repbiz_tenant_configurations
  fields:

  - dimension: id
    primary_key: true
    sql: ${TABLE}.id

  - dimension: account_type
    sql: ${TABLE}.account_type

  - dimension: active
    sql: ${TABLE}.active

  - dimension: autopublish_enabled
    sql: ${TABLE}.autopublish_enabled

  - dimension: autopublish_threshold
    type: number
    sql: ${TABLE}.autopublish_threshold

  - dimension: autorequest_enabled
    sql: ${TABLE}.autorequest_enabled

  - dimension: autorequest_threshold
    type: number
    sql: ${TABLE}.autorequest_threshold

  - dimension: background_path
    sql: ${TABLE}.background_path

  - dimension: class
    sql: ${TABLE}."class"

  - dimension: complete
    sql: ${TABLE}.complete

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_date

  - dimension: default_role_id
    sql: ${TABLE}.default_role_id

  - dimension: description
    sql: ${TABLE}.description

  - dimension: enabled
    sql: ${TABLE}."enabled"

  - dimension: industry
    sql: ${TABLE}.industry

  - dimension: inherit_publish
    sql: ${TABLE}.inheritPublish

  - dimension: internal_name
    sql: ${TABLE}.internal_name

  - dimension: is_removed
    sql: ${TABLE}.is_removed

  - dimension: key
    sql: ${TABLE}."key"

  - dimension: large_logo_path
    sql: ${TABLE}.large_logo_path

  - dimension_group: license_end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.license_end_date

  - dimension: license_payment_method
    sql: ${TABLE}.license_payment_method

  - dimension: license_renewal_type
    sql: ${TABLE}.license_renewal_type

  - dimension_group: license_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.license_start_date

  - dimension: license_term
    sql: ${TABLE}.license_term

  - dimension: links
    sql: ${TABLE}.links

  - dimension: login_url
    sql: ${TABLE}.login_url

  - dimension: managed_by
    sql: ${TABLE}.managed_by

  - dimension: managed_by_user_ids
    sql: ${TABLE}.managedByUserIDs

  - dimension: name
    sql: ${TABLE}."name"

  - dimension: next_expression
    sql: ${TABLE}.next_expression

  - dimension: packages
    sql: ${TABLE}.packages

  - dimension: photos
    sql: ${TABLE}.photos

  - dimension: program_id
    sql: ${TABLE}.program_id

  - dimension: small_logo_path
    sql: ${TABLE}.small_logo_path

  - dimension: source_groups
    sql: ${TABLE}.source_groups

  - dimension: support_email
    sql: ${TABLE}.support_email

  - dimension: support_via_email
    sql: ${TABLE}.support_via_email

  - dimension: support_via_phone
    sql: ${TABLE}.support_via_phone

  - dimension: tenant_type
    sql: ${TABLE}.tenant_type

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_date

  - measure: count
    type: count
    drill_fields: [id, internal_name, name]

