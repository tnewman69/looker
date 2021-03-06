- view: opportunity_line_item
  sql_table_name: salesforce_b2b.opportunity_line_item
  fields:

  - dimension: created_by_id
    sql: ${TABLE}."Created By ID"

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Created Date"

  - dimension: currency_iso_code
    sql: ${TABLE}."Currency ISO Code"

  - dimension: deleted
    sql: ${TABLE}.Deleted

  - dimension: last_modified_by_id
    sql: ${TABLE}."Last Modified By ID"

  - dimension_group: last_modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Last Modified Date"

  - dimension: line_description
    sql: ${TABLE}."Line Description"

  - dimension: line_item_id
    primary_key: true
    sql: ${TABLE}."Line Item ID"

  - dimension: list_price
    sql: ${TABLE}."List Price"

  - dimension: opp_product_tcv
    type: number
    sql: ${TABLE}."Opp Product TCV"

  - dimension: opportunity_id
    sql: ${TABLE}."Opportunity ID"

  - dimension: price_book_entry_id
    sql: ${TABLE}."Price Book Entry ID"

  - dimension: product_family
    sql: ${TABLE}."Product Family"

  - dimension: quantity
    type: number
    sql: ${TABLE}.Quantity

  - dimension: sales_price
    sql: (${TABLE}."Sales Price"::DECIMAL)

  - dimension_group: service
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Service Date"

  - dimension: sort_order
    type: number
    sql: ${TABLE}."Sort Order"

  - dimension_group: system_modstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."System Modstamp"

  - dimension: term_months
    type: number
    sql: ${TABLE}."Term (Months)"

  - dimension: total_price
    value_format: '$#,##0.00'
    sql: (${TABLE}."Total Price"::DECIMAL)

  - dimension: total_price_contract
    value_format: '$#,##0.00'
    sql: ${TABLE}."Total Price (Contract)"
  
  - dimension: mrr
    value_format: '$#,##0.00'
    sql: |
        CASE
          WHEN ${term_months} <= 1
          THEN 0
          WHEN ${term_months} IS NULL
          THEN 0
          ELSE ${total_price}/${term_months}
        END  
        
  - dimension: arr
    value_format: '$#,##0.00'
    sql: 12*${mrr}
  

  - measure: count
    type: count
    drill_fields: []
  
  - measure: sum_of_total_price
    type: sum
    value_format: '$#,##0.00'
    sql: ${total_price}
    
  - measure: total_mrr
    type: sum
    value_format: '[>=1000000]$0.00,,"M";[>=1000]$0.00,"K";$0.00'
    sql: ${mrr}
    
  - measure: total_arr
    type: sum
    value_format: '[>=1000000]$0.00,,"M";[>=1000]$0.00,"K";$0.00'
    sql: ${arr}  
    
  - measure: avg_sale_price
    type: avg
    value_format: '[>=1000000]$0.00,,"M";[>=1000]$0.00,"K";$0.00'
    sql: ${sales_price}

