- view: contacts_history
  sql_table_name: salesforce_b2b.contacts_history
  fields:

  - dimension: account_id
    # hidden: true
    sql: ${TABLE}."Account ID"

  - dimension: assistants_name
    sql: ${TABLE}."Assistants Name"

  - dimension: asst_phone
    sql: ${TABLE}."Asst. Phone"

  - dimension_group: birthdate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.Birthdate

  - dimension: business_fax
    sql: ${TABLE}."Business Fax"

  - dimension: business_phone
    sql: ${TABLE}."Business Phone"

  - dimension: contact_18_digit_id
    sql: ${TABLE}."Contact 18 digit ID"

  - dimension: contact_currency
    sql: ${TABLE}."Contact Currency"

  - dimension: contact_description
    sql: ${TABLE}."Contact Description"

  - dimension: contact_id
    # hidden: true
    sql: ${TABLE}."Contact ID"

  - dimension: created_by_id
    sql: ${TABLE}."Created By ID"

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Created Date"

  - dimension: deleted
    sql: ${TABLE}.Deleted

  - dimension: department
    sql: ${TABLE}.Department

  - dimension: email
    sql: ${TABLE}.Email

  - dimension_group: email_bounced
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Email Bounced Date"

  - dimension: email_bounced_reason
    sql: ${TABLE}."Email Bounced Reason"

  - dimension: first_name
    sql: ${TABLE}."First Name"

  - dimension: full_name
    sql: ${TABLE}."Full Name"

  - dimension_group: history
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.history_date

  - dimension: home_phone
    sql: ${TABLE}."Home Phone"

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

  - dimension: last_name
    sql: ${TABLE}."Last Name"

  - dimension_group: last_stayintouch_request
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Last Stay-in-Touch Request Date"

  - dimension_group: last_stayintouch_save
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Last Stay-in-Touch Save Date"

  - dimension: lead_source
    sql: ${TABLE}."Lead Source"

  - dimension: mailing_city
    sql: ${TABLE}."Mailing City"

  - dimension: mailing_country
    sql: ${TABLE}."Mailing Country"

  - dimension: mailing_stateprovince
    sql: ${TABLE}."Mailing State/Province"

  - dimension: mailing_street
    sql: ${TABLE}."Mailing Street"

  - dimension: mailing_zippostal_code
    sql: ${TABLE}."Mailing Zip/Postal Code"

  - dimension: master_record_id
    sql: ${TABLE}."Master Record ID"

  - dimension: mobile_phone
    sql: ${TABLE}."Mobile Phone"

  - dimension: occupation
    sql: ${TABLE}.Occupation

  - dimension: other_city
    sql: ${TABLE}."Other City"

  - dimension: other_country
    sql: ${TABLE}."Other Country"

  - dimension: other_phone
    sql: ${TABLE}."Other Phone"

  - dimension: other_stateprovince
    sql: ${TABLE}."Other State/Province"

  - dimension: other_street
    sql: ${TABLE}."Other Street"

  - dimension: other_zippostal_code
    sql: ${TABLE}."Other Zip/Postal Code"

  - dimension: owner_id
    sql: ${TABLE}."Owner ID"

  - dimension: reports_to_id
    sql: ${TABLE}."Reports To ID"

  - dimension: salutation
    sql: ${TABLE}.Salutation

  - dimension_group: system_modstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."System Modstamp"

  - dimension: title
    sql: ${TABLE}.Title

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - assistants_name
    - full_name
    - first_name
    - last_name
    - accounts.dpm_name
    - accounts.account_name
    - accounts.account_id
    - contacts.assistants_name
    - contacts.full_name
    - contacts.first_name
    - contacts.last_name
    - contacts.contact_id

