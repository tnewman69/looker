- view: mongo_repbiz_location_attr
  sql_table_name: r4e_mongo.mongo_repbiz_location_attr
  fields:

  - dimension: id
    primary_key: true
    sql: ${TABLE}.id

  - dimension: name
    sql: ${TABLE}."name"

  - dimension: value
    sql: ${TABLE}."value"

  - measure: count
    type: count
    drill_fields: [id, name]

