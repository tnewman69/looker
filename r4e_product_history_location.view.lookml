- view: r4e_product_history_location
  sql_table_name: r4e_general.r4e_product_history_location
  fields:

  - dimension_group: date
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."date"

  - dimension: kiosk_reviews_count
    type: int
    sql: ${TABLE}.kiosk_reviews_count

  - dimension: location_id
    sql: ${TABLE}.location_id

  - dimension: reputation_score
    type: number
    sql: ${TABLE}.reputation_score

  - dimension: review_request_clicked_count
    type: int
    sql: ${TABLE}.review_request_clicked_count

  - dimension: review_request_count
    type: int
    sql: ${TABLE}.review_request_count

  - dimension: review_request_delivered_count
    type: int
    sql: ${TABLE}.review_request_delivered_count

  - dimension: review_request_opened_count
    type: int
    sql: ${TABLE}.review_request_opened_count

  - dimension: tenant_id
    sql: ${TABLE}.tenant_id

  - dimension: third_party_reviews_count
    type: int
    sql: ${TABLE}.third_party_reviews_count

  - measure: count
    type: count
    drill_fields: []

