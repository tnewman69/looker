- view: campaigns
  sql_table_name: salesforce_b2b.campaigns
  fields:

  - dimension: campaign_id
    primary_key: true
    sql: ${TABLE}."Campaign ID"

  - dimension: 18_digit_campaign_id
    sql: ${TABLE}."18 digit campaign id"

  - dimension: active
    sql: ${TABLE}.Active

  - dimension: actual_cost
    sql: ${TABLE}."Actual Cost"

  - dimension: budgeted_cost
    sql: ${TABLE}."Budgeted Cost"

  - dimension: converted_leads
    type: int
    sql: ${TABLE}."Converted Leads"

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

  - dimension: description
    sql: ${TABLE}.Description

  - dimension_group: end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."End Date"

  - dimension: expected_response_
    sql: ${TABLE}."Expected Response (%)"

  - dimension: expected_revenue
    sql: ${TABLE}."Expected Revenue"

  - dimension_group: last_activity
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Last Activity"

  - dimension: last_modified_by_id
    sql: ${TABLE}."Last Modified By ID"

  - dimension_group: last_modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Last Modified Date"

  - dimension: name
    sql: ${TABLE}."Name"

  - dimension: num_sent
    type: number
    sql: ${TABLE}."Num Sent"

  - dimension: num_total_opportunities
    type: int
    sql: ${TABLE}."Num Total Opportunities"

  - dimension: num_won_opportunities
    type: int
    sql: ${TABLE}."Num Won Opportunities"

  - dimension: owner_id
    sql: ${TABLE}."Owner ID"

  - dimension: parent_campaign_id
    sql: ${TABLE}."Parent Campaign ID"

  - dimension: record_type_id
    sql: ${TABLE}."Record Type ID"

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Start Date"

  - dimension: status
    sql: ${TABLE}.Status

  - dimension_group: system_modstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."System Modstamp"

  - dimension: total_contacts
    type: int
    sql: ${TABLE}."Total Contacts"

  - dimension: total_leads
    type: int
    sql: ${TABLE}."Total Leads"

  - dimension: total_responses
    type: int
    sql: ${TABLE}."Total Responses"

  - dimension: total_value_opportunities
    sql: ${TABLE}."Total Value Opportunities"

  - dimension: total_value_won_opportunities
    sql: ${TABLE}."Total Value Won Opportunities"

  - dimension: type
    sql: ${TABLE}."Type"

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - campaign_id
    - name
    - campaigns_history.count
    - opportunities.count
    - opportunities_history.count
    - opportunities_history_old.count

