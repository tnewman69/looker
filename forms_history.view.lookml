- view: forms_history
  sql_table_name: salesforce_b2b.forms_history
  fields:

  - dimension: additional_comments
    sql: ${TABLE}."Additional Comments"

  - dimension: apartment_ratings
    sql: ${TABLE}."Apartment Ratings"

  - dimension_group: approval
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Approval Date"

  - dimension: attention_to
    sql: ${TABLE}."Attention To"

  - dimension: business_name
    sql: ${TABLE}."Business Name"

  - dimension: cancel_account
    sql: ${TABLE}."Cancel Account"

  - dimension: cancellation_reason
    sql: ${TABLE}."Cancellation Reason"

  - dimension: carscom
    sql: ${TABLE}.Cars.com

  - dimension: community_management_included
    sql: ${TABLE}."Community Management included"

  - dimension: company_name
    sql: ${TABLE}."Company Name"

  - dimension: created_by_id
    sql: ${TABLE}."Created By ID"

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Created Date"

  - dimension: currency_iso_code
    sql: ${TABLE}."Currency ISO Code"

  - dimension: dealer_rater
    sql: ${TABLE}.DealerRater

  - dimension: deleted
    sql: ${TABLE}.Deleted

  - dimension: did_we_do_everything_we_could
    sql: ${TABLE}."Did we do everything we could"

  - dimension: dms_contact_name
    sql: ${TABLE}."DMS Contact Name"

  - dimension: dms_system
    sql: ${TABLE}."DMS System"

  - dimension: edmunds
    sql: ${TABLE}.Edmunds

  - dimension_group: expected_completion
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Expected Completion Date"

  - dimension: facebook
    sql: ${TABLE}.Facebook

  - dimension: filter_name_1
    sql: ${TABLE}."Filter name 1"

  - dimension: filter_name_2
    sql: ${TABLE}."Filter name 2"

  - dimension: filter_name_3
    sql: ${TABLE}."Filter name 3"

  - dimension: form_name
    sql: ${TABLE}."Form Name"

  - dimension: google
    sql: ${TABLE}.Google

  - dimension_group: history
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.history_date

  - dimension: industry
    sql: ${TABLE}.Industry

  - dimension: last_modified_by_id
    sql: ${TABLE}."Last Modified By ID"

  - dimension_group: last_modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Last Modified Date"

  - dimension: notescomments
    sql: ${TABLE}.Notes/Comments

  - dimension: number_locations
    type: number
    sql: ${TABLE}."Number Locations"

  - dimension: number_tablets
    type: number
    sql: ${TABLE}."Number Tablets"

  - dimension: opportunity
    sql: ${TABLE}.Opportunity

  - dimension: opportunity_owner
    sql: ${TABLE}."Opportunity Owner"

  - dimension: opportunity_type
    sql: ${TABLE}."Opportunity Type"

  - dimension: pa_codes
    sql: ${TABLE}."PA Codes"

  - dimension: poc_email
    sql: ${TABLE}."POC Email"

  - dimension: point_of_contact
    sql: ${TABLE}."Point of Contact"

  - dimension: primary_contact
    sql: ${TABLE}."Primary Contact"

  - dimension: primary_email
    sql: ${TABLE}."Primary Email"

  - dimension: reason_for_change
    sql: ${TABLE}."Reason for Change"

  - dimension: record_id
    sql: ${TABLE}."Record ID"

  - dimension: record_type_id
    sql: ${TABLE}."Record Type ID"

  - dimension: refund_amount
    sql: ${TABLE}."Refund Amount"

  - dimension: refund_method
    sql: ${TABLE}."Refund Method"

  - dimension: refund_product
    sql: ${TABLE}."Refund Product"

  - dimension: refund_sub_product
    sql: ${TABLE}."Refund Sub Product"

  - dimension_group: setup_completed
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Setup Completed Date"

  - dimension_group: setup_requested
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Setup Requested Date"

  - dimension: setup_type
    sql: ${TABLE}."Setup Type"

  - dimension: status
    sql: ${TABLE}.Status

  - dimension: summary_of_customer_experience
    sql: ${TABLE}."Summary of Customer Experience"

  - dimension_group: system_modstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."System Modstamp"

  - dimension: tenant_and_location_code
    sql: ${TABLE}."Tenant and Location Code"

  - dimension: tenant_id
    sql: ${TABLE}."Tenant ID"

  - dimension: twitter
    sql: ${TABLE}.Twitter

  - dimension: when_were_we_first_notified
    sql: ${TABLE}."When were we first notified"

  - dimension: who_handled_the_escalation_call
    sql: ${TABLE}."Who handled the escalation call"

  - dimension: yelp
    sql: ${TABLE}.Yelp

  - measure: count
    type: count
    drill_fields: [dms_contact_name, company_name, business_name, form_name]

