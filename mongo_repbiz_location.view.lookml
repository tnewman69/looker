- view: location
  sql_table_name: r4e_mongo.mongo_repbiz_location
  fields:

  - dimension: id
    primary_key: true
    sql: ${TABLE}.id

  - dimension: address_line
    sql: ${TABLE}.address_line

  - dimension: address_line2
    sql: ${TABLE}.address_line2

  - dimension: city
    sql: ${TABLE}.city

  - dimension: class
    sql: ${TABLE}."class"

  - dimension: code
    sql: ${TABLE}.code

  - dimension: country
    sql: ${TABLE}.country

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_date

  - dimension: description
    sql: ${TABLE}.description

  - dimension: emails
    sql: ${TABLE}.emails

  - dimension: enabled
    sql: ${TABLE}."enabled"

  - dimension: identifier
    sql: ${TABLE}.identifier

  - dimension: industry
    sql: ${TABLE}.industry

  - dimension: inherit_publish
    sql: ${TABLE}.inheritPublish

  - dimension: is_removed
    sql: ${TABLE}.is_removed

  - dimension: large_logo_path
    sql: ${TABLE}.large_logo_path

  - dimension: lat
    sql: ${TABLE}.lat

  - dimension: links
    sql: ${TABLE}.links

  - dimension: lng
    sql: ${TABLE}.lng

  - dimension: location_key
    sql: ${TABLE}.locationKey

  - dimension: longname
    sql: ${TABLE}.longname

  - dimension: managed_by
    sql: ${TABLE}.managed_by

  - dimension: name
    sql: ${TABLE}."name"

  - dimension: phone
    sql: ${TABLE}.phone

  - dimension: photos
    sql: ${TABLE}.photos

  - dimension: program_id
    sql: ${TABLE}.program_id

  - dimension: small_logo_path
    sql: ${TABLE}.small_logo_path

  - dimension: state
    sql: ${TABLE}.state

  - dimension: tenant_id
    hidden: true
    sql: ${TABLE}.tenant_id

  - dimension: web
    sql: ${TABLE}.web

  - dimension: zip_code
    sql: ${TABLE}.zip_code

  - measure: count
    type: count
    drill_fields: [id, longname, name]
    

