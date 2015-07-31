- view: mongo_repbiz_tenant_configurations_attr
  sql_table_name: r4e_mongo.mongo_repbiz_tenant_configurations_attr
  fields:

  - dimension: id
    primary_key: true
    sql: ${TABLE}.id

  - dimension: is_custom
    sql: ${TABLE}.is_custom

  - dimension: is_multiselect
    sql: ${TABLE}.is_multiselect

  - dimension: is_sortable
    sql: ${TABLE}.is_sortable

  - dimension: label
    sql: ${TABLE}.label

  - dimension: name
    sql: ${TABLE}."name"

  - dimension: order
    sql: ${TABLE}."order"

  - dimension: visible
    sql: ${TABLE}.visible

  - measure: count
    type: count
    drill_fields: [id, name]

