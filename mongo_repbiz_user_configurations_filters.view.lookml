- view: mongo_repbiz_user_configurations_filters
  sql_table_name: r4e_mongo.mongo_repbiz_user_configurations_filters
  fields:

  - dimension: id
    primary_key: true
    sql: ${TABLE}.id

  - dimension: name
    sql: ${TABLE}."name"

  - dimension: values
    sql: ${TABLE}."values"

  - measure: count
    type: count
    drill_fields: [id, name]

