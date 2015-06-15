- view: product_history
  sql_table_name: salesforce_b2b.product_history
  fields:

  - dimension: 18_digit_product_id
    sql: ${TABLE}."18 digit Product ID"

  - dimension: active
    sql: ${TABLE}.Active

  - dimension: billing_type
    sql: ${TABLE}."Billing Type"

  - dimension: core_product
    sql: ${TABLE}."Core Product"

  - dimension: cost_method
    sql: ${TABLE}."Cost Method"

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

  - dimension: duration
    type: number
    sql: ${TABLE}.Duration

  - dimension: gl_group
    sql: ${TABLE}."GL Group"

  - dimension: group_by_product
    sql: ${TABLE}."Group By Product"

  - dimension_group: history
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.history_date

  - dimension: intacct_business_unit
    sql: ${TABLE}."Intacct Business Unit"

  - dimension: item_type
    sql: ${TABLE}."Item Type"

  - dimension: last_modified_by_id
    sql: ${TABLE}."Last Modified By ID"

  - dimension_group: last_modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Last Modified Date"

  - dimension: link_updates
    type: number
    sql: ${TABLE}."Link Updates"

  - dimension: product_code
    sql: ${TABLE}."Product Code"

  - dimension: product_description
    sql: ${TABLE}."Product Description"

  - dimension: product_family
    sql: ${TABLE}."Product Family"

  - dimension: product_id
    # hidden: true
    sql: ${TABLE}."Product ID"

  - dimension: product_name
    sql: ${TABLE}."Product Name"

  - dimension: product_sub_family
    sql: ${TABLE}."Product Sub Family"

  - dimension: product_type
    sql: ${TABLE}."Product Type"

  - dimension: profiles
    type: number
    sql: ${TABLE}.Profiles

  - dimension: purchasing_unit
    sql: ${TABLE}."Purchasing Unit"

  - dimension: ratio_to_oe_standard
    type: number
    sql: ${TABLE}."Ratio to OE Standard"

  - dimension: ratio_to_po_standard
    type: number
    sql: ${TABLE}."Ratio to PO Standard"

  - dimension: sales_unit
    sql: ${TABLE}."Sales Unit"

  - dimension: site_updates
    type: number
    sql: ${TABLE}."Site Updates"

  - dimension: standard_unit
    sql: ${TABLE}."Standard Unit"

  - dimension_group: system_modstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."System Modstamp"

  - measure: count
    type: count
    drill_fields: [product_name, product.product_name, product.product_id]

