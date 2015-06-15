- view: accounts
  sql_table_name: salesforce_b2b.accounts
  fields:

  - dimension: account_id
    primary_key: true
    sql: ${TABLE}."Account ID"

  - dimension: account_18_digit_id
    sql: ${TABLE}."Account 18 digit ID"

  - dimension_group: account_cancel
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Account Cancel Date"

  - dimension: account_currency
    sql: ${TABLE}."Account Currency"

  - dimension: account_description
    sql: ${TABLE}."Account Description"

  - dimension: account_fax
    sql: ${TABLE}."Account Fax"

  - dimension: account_id_old__ue
    sql: ${TABLE}."Account ID (Old - UE)"

  - dimension: account_name
    sql: ${TABLE}."Account Name"

  - dimension: account_phone
    sql: ${TABLE}."Account Phone"

  - dimension: account_rating
    sql: ${TABLE}."Account Rating"

  - dimension: account_source
    sql: ${TABLE}."Account Source"

  - dimension: account_type
    sql: ${TABLE}."Account Type"

  - dimension: active
    sql: ${TABLE}.Active

  - dimension: annual_revenue
    sql: ${TABLE}."Annual Revenue"

  - dimension: assigned_account_manager
    sql: ${TABLE}."Assigned Account Manager"

  - dimension: autenticom_order
    sql: ${TABLE}."Autenticom Order"

  - dimension: billing_city
    sql: ${TABLE}."Billing City"

  - dimension: billing_country
    sql: ${TABLE}."Billing Country"

  - dimension: billing_stateprovince
    sql: ${TABLE}."Billing State/Province"

  - dimension: billing_street
    sql: ${TABLE}."Billing Street"

  - dimension: billing_zippostal_code
    sql: ${TABLE}."Billing Zip/Postal Code"

  - dimension: created_by_id
    sql: ${TABLE}."Created By ID"

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Created Date"

  - dimension_group: created_date_custom
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Created Date Custom"

  - dimension: credential_collection_complete
    sql: ${TABLE}."Credential Collection Complete"

  - dimension: current_crm
    sql: ${TABLE}."Current CRM"

  - dimension: datacom_key
    sql: ${TABLE}."Data.com Key"

  - dimension: deleted
    sql: ${TABLE}.Deleted

  - dimension: dms_integration_complete
    sql: ${TABLE}."DMS Integration Complete"

  - dimension: dms_notes
    sql: ${TABLE}."DMS Notes"

  - dimension: dms_status
    sql: ${TABLE}."DMS Status"

  - dimension: dms_system
    sql: ${TABLE}."DMS System"

  - dimension: do_not_contact
    sql: ${TABLE}."Do Not Contact"

  - dimension: dpm_name
    sql: ${TABLE}."DPM Name"

  - dimension: email_opt_out
    sql: ${TABLE}."Email Opt Out"

  - dimension: employees
    sql: ${TABLE}.Employees

  - dimension: fortune_500_rank
    sql: ${TABLE}."Fortune 500 Rank"

  - dimension: free_month
    sql: ${TABLE}."Free Month"

  - dimension: high_touch
    sql: ${TABLE}."High Touch"

  - dimension: industry
    sql: ${TABLE}.Industry

  - dimension: is_ford_account
    sql: ${TABLE}."Is Ford Account"

  - dimension: jigsaw_company_id
    sql: ${TABLE}."Jigsaw Company ID"

  - dimension_group: last_activity
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Last Activity"

  - dimension: last_modified_by_id
    sql: ${TABLE}."Last Modified By ID"

  - dimension_group: last_modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Last Modified Date"

  - dimension_group: last_modified_date_custom
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Last Modified Date Custom"

  - dimension: locations
    sql: ${TABLE}.locations

  - dimension: logo_at_location_level
    sql: ${TABLE}."Logo at Location Level"

  - dimension: master_record_id
    sql: ${TABLE}."Master Record ID"

  - dimension: notes
    sql: ${TABLE}.Notes

  - dimension: onboarding_call_complete
    sql: ${TABLE}."Onboarding Call Complete"

  - dimension: opt_out_of_surveys
    sql: ${TABLE}."Opt out of Surveys"

  - dimension: other_phone
    sql: ${TABLE}."Other Phone"

  - dimension: owner_id
    sql: ${TABLE}."Owner ID"

  - dimension: parent_account_id
    sql: ${TABLE}."Parent Account ID"

  - dimension: payment_term
    sql: ${TABLE}."Payment Term"

  - dimension: product_type
    sql: ${TABLE}."Product Type"

  - dimension: publish_social_content
    sql: ${TABLE}."Publish Social Content"

  - dimension: record_type_id
    sql: ${TABLE}."Record Type ID"

  - dimension: request_process
    sql: ${TABLE}."Request Process"

  - dimension: request_reviews
    sql: ${TABLE}."Request Reviews"

  - dimension: respond_to_negative_social_posts
    sql: ${TABLE}."Respond to Negative Social Posts"

  - dimension: respond_to_positive_reviews
    sql: ${TABLE}."Respond to Positive Reviews"

  - dimension: review_response
    sql: ${TABLE}."Review Response"

  - dimension: shipping_city
    sql: ${TABLE}."Shipping City"

  - dimension: shipping_country
    sql: ${TABLE}."Shipping Country"

  - dimension: shipping_stateprovince
    sql: ${TABLE}."Shipping State/Province"

  - dimension: shipping_street
    sql: ${TABLE}."Shipping Street"

  - dimension: shipping_zippostal_code
    sql: ${TABLE}."Shipping Zip/Postal Code"

  - dimension: sic_description
    sql: ${TABLE}."SIC Description"

  - dimension: stage
    sql: ${TABLE}.Stage

  - dimension: store_number
    sql: ${TABLE}."Store Number"

  - dimension: sub_industry
    sql: ${TABLE}."Sub Industry"

  - dimension_group: system_modstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."System Modstamp"

  - dimension: tenant_id
    sql: ${TABLE}."Tenant ID"

  - dimension: vip_dealer
    sql: ${TABLE}."VIP Dealer"

  - dimension: website
    sql: ${TABLE}.Website

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - account_id
    - dpm_name
    - account_name
    - accounts_history.count
    - activities.count
    - activities_history.count
    - contacts.count
    - contacts_history.count
    - contracts.count
    - contracts_history.count
    - contracts_history_old.count
    - opportunities.count
    - opportunities_history.count
    - opportunities_history_old.count
    - roles.count
    - users.count
    - users_history.count

