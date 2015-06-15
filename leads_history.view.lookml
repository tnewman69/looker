- view: leads_history
  sql_table_name: salesforce_b2b.leads_history
  fields:

  - dimension: act_on_lead_source
    type: number
    sql: ${TABLE}."Act on Lead Source"

  - dimension: annual_revenue
    sql: ${TABLE}."Annual Revenue"

  - dimension: bac
    sql: ${TABLE}.BAC

  - dimension: city
    sql: ${TABLE}.City

  - dimension: company
    sql: ${TABLE}.Company

  - dimension: converted
    sql: ${TABLE}.Converted

  - dimension: converted_account_id
    sql: ${TABLE}."Converted Account ID"

  - dimension: converted_contact_id
    sql: ${TABLE}."Converted Contact ID"

  - dimension_group: converted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Converted Date"

  - dimension: converted_opportunity_id
    sql: ${TABLE}."Converted Opportunity ID"

  - dimension: country
    sql: ${TABLE}.Country

  - dimension: created_by_id
    sql: ${TABLE}."Created By ID"

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Created Date"

  - dimension_group: created_date_custom
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Created Date Custom"

  - dimension: current_reputation_solution
    sql: ${TABLE}."Current Reputation Solution"

  - dimension: deleted
    sql: ${TABLE}.Deleted

  - dimension: description
    sql: ${TABLE}.Description

  - dimension: do_not_follow_up
    sql: ${TABLE}."Do Not Follow Up"

  - dimension: email
    sql: ${TABLE}.Email

  - dimension_group: email_bounced
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Email Bounced Date"

  - dimension: email_bounced_reason
    sql: ${TABLE}."Email Bounced Reason"

  - dimension: email_opt_out
    sql: ${TABLE}."Email Opt Out"

  - dimension: employees
    type: int
    sql: ${TABLE}.Employees

  - dimension: first_name
    sql: ${TABLE}."First Name"

  - dimension: full_name
    sql: ${TABLE}."Full Name"

  - dimension_group: history
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.history_date

  - dimension: industry
    sql: ${TABLE}.Industry

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

  - dimension: last_name
    sql: ${TABLE}."Last Name"

  - dimension: lead_currency
    sql: ${TABLE}."Lead Currency"

  - dimension: lead_id
    # hidden: true
    sql: ${TABLE}."Lead ID"

  - dimension: lead_score
    type: number
    sql: ${TABLE}."Lead Score"

  - dimension: lead_source
    sql: ${TABLE}."Lead Source"

  - dimension: lead_source_1
    sql: ${TABLE}."Lead Source 1"

  - dimension: lead_status_1
    sql: ${TABLE}."Lead Status 1"

  - dimension: locations
    type: number
    sql: ${TABLE}.Locations

  - dimension: master_record_id
    sql: ${TABLE}."Master Record ID"

  - dimension: mobile_phone
    sql: ${TABLE}."Mobile Phone"

  - dimension: notes
    sql: ${TABLE}.Notes

  - dimension: owner_id
    sql: ${TABLE}."Owner ID"

  - dimension: package_id
    sql: ${TABLE}."Package ID"

  - dimension: phone
    sql: ${TABLE}.Phone

  - dimension: product_interest
    sql: ${TABLE}."Product Interest"

  - dimension: rating
    sql: ${TABLE}.Rating

  - dimension: record_type_id
    sql: ${TABLE}."Record Type ID"

  - dimension: salutation
    sql: ${TABLE}.Salutation

  - dimension: source
    sql: ${TABLE}."Source"

  - dimension: source_description
    sql: ${TABLE}."Source Description"

  - dimension: source_detail
    sql: ${TABLE}."Source Detail"

  - dimension: stateprovince
    sql: ${TABLE}.State/Province

  - dimension: status
    sql: ${TABLE}.Status

  - dimension: street
    sql: ${TABLE}.Street

  - dimension: subindustry
    sql: ${TABLE}.Sub-Industry

  - dimension_group: system_modstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."System Modstamp"

  - dimension: time_zone
    sql: ${TABLE}."Time Zone"

  - dimension: title
    sql: ${TABLE}.Title

  - dimension: to_convert
    sql: ${TABLE}."To Convert"

  - dimension: unread_by_owner
    sql: ${TABLE}."Unread By Owner"

  - dimension: website
    sql: ${TABLE}.Website

  - dimension: zippostal_code
    sql: ${TABLE}."Zip/Postal Code"

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - full_name
    - first_name
    - last_name
    - leads.full_name
    - leads.first_name
    - leads.last_name
    - leads.lead_id

