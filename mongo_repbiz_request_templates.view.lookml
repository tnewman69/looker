- view: templates
  sql_table_name: r4e_mongo.mongo_repbiz_request_templates
  fields:

  - dimension: id
    primary_key: true
    sql: ${TABLE}.id

  - dimension: active
    sql: ${TABLE}.active

  - dimension: class
    sql: ${TABLE}."class"

  - dimension: code_html
    sql: ${TABLE}.code_html

  - dimension: code_text
    sql: ${TABLE}.code_text

  - dimension: from_email
    sql: ${TABLE}.from_email

  - dimension: from_name
    sql: ${TABLE}.from_name

  - dimension: is_removed
    sql: ${TABLE}.is_removed

  - dimension: location_id
    sql: ${TABLE}.location_id

  - dimension: name
    sql: ${TABLE}."name"

  - dimension: parent_id
    sql: ${TABLE}.parent_id

  - dimension: source_selection
    sql: ${TABLE}.source_selection

  - dimension: subject
    sql: ${TABLE}.subject

  - dimension: tenant_id
    sql: ${TABLE}.tenant_id

  - dimension: type
    sql: ${TABLE}."type"

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_date

  - measure: count
    type: count
    drill_fields: [id, from_name, name]

