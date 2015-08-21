- view: mongo_repbiz_request_reviews
  sql_table_name: r4e_mongo.mongo_repbiz_request_reviews
  fields:

  - dimension: id
    primary_key: true
    sql: ${TABLE}.id

  - dimension: active
    sql: ${TABLE}.active

  - dimension: block
    type: int
    sql: ${TABLE}.block

  - dimension: bounce
    type: int
    sql: ${TABLE}.bounce

  - dimension: class
    sql: ${TABLE}."class"

  - dimension: click
    type: int
    sql: ${TABLE}.click

  - dimension: comment
    sql: ${TABLE}."comment"

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_date

  - dimension: delivered
    type: int
    sql: ${TABLE}.delivered

  - dimension: dropped
    type: int
    sql: ${TABLE}.dropped

  - dimension: from_email
    sql: ${TABLE}.from_email

  - dimension: from_name
    sql: ${TABLE}.from_name

  - dimension: home_address
    sql: ${TABLE}.home_address

  - dimension: is_removed
    sql: ${TABLE}.is_removed

  - dimension: last_request_review_id
    sql: ${TABLE}.last_request_review_id

  - dimension: location_address_line1
    sql: ${TABLE}.location_address_line1

  - dimension: location_id
    sql: ${TABLE}.location_id

  - dimension: open
    type: int
    sql: ${TABLE}.open
    
  - dimension: is_opened
    type: yesno
    sql: case when ${open} >0 then 1 else 0 end

  - dimension: request_template_id
    sql: ${TABLE}.request_template_id

  - dimension_group: sent
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.sent_date

  - dimension: source_selection
    sql: ${TABLE}.source_selection

  - dimension: spam
    type: int
    sql: ${TABLE}.spam

  - dimension: tenant_id
    sql: ${TABLE}.tenant_id

  - dimension: to_email
    sql: ${TABLE}.to_email

  - dimension: to_name
    sql: ${TABLE}.to_name

  - dimension: type
    sql: ${TABLE}."type"

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_date

# Measures #
  - measure: reviews_count
    type: count
    drill_fields: [id, to_name, from_name]
    
  - measure: delivered_count
    type: sum
    sql: ${delivered} 
  
  - measure: open_count
    type: sum
    sql: case when ${open} > 0 then 1 else 0 end
  
  - measure: click_count
    type: sum
    sql: case when ${click} > 0 then 1 else 0 end
    
  - measure: open_rate
    type: number
    decimals: 2
    value_format: '0.00%'
    sql: ${open_count}/NULLIF(${delivered_count}, 0)
  
  - measure: click_thru_rate
    type: number
    decimals: 2
    value_format: '0.00%'
    sql: ${click_count}/NULLIF(${delivered_count},0)
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

