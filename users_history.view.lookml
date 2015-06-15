- view: users_history
  sql_table_name: salesforce_b2b.users_history
  fields:

  - dimension: account_id
    # hidden: true
    sql: ${TABLE}."Account ID"

  - dimension: active
    sql: ${TABLE}.Active

  - dimension: admin_info_emails
    sql: ${TABLE}."Admin Info Emails"

  - dimension: alias
    sql: ${TABLE}.Alias

  - dimension: call_center_id
    sql: ${TABLE}."Call Center ID"

  - dimension: cell
    sql: ${TABLE}.Cell

  - dimension: city
    sql: ${TABLE}.City

  - dimension: community_nickname
    sql: ${TABLE}."Community Nickname"

  - dimension: company_name
    sql: ${TABLE}."Company Name"

  - dimension: contact_id
    # hidden: true
    sql: ${TABLE}."Contact ID"

  - dimension: country
    sql: ${TABLE}.Country

  - dimension: created_by_id
    sql: ${TABLE}."Created By ID"

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Created Date"

  - dimension: currency_iso_code
    sql: ${TABLE}."Currency ISO Code"

  - dimension: current_status
    sql: ${TABLE}."Current Status"

  - dimension: delegated_approver_id
    sql: ${TABLE}."Delegated Approver ID"

  - dimension: department
    sql: ${TABLE}.Department

  - dimension: division
    sql: ${TABLE}.Division

  - dimension: email
    sql: ${TABLE}.E-mail

  - dimension: email_encoding
    sql: ${TABLE}."Email Encoding"

  - dimension: employee_number
    sql: ${TABLE}."Employee Number"

  - dimension: extension
    sql: ${TABLE}.Extension

  - dimension: fax
    sql: ${TABLE}.Fax

  - dimension: first_name
    sql: ${TABLE}."First Name"

  - dimension: full_name
    sql: ${TABLE}."Full Name"

  - dimension_group: history
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.history_date

  - dimension: info_emails
    sql: ${TABLE}."Info Emails"

  - dimension: language
    sql: ${TABLE}."Language"

  - dimension_group: last_login
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Last Login"

  - dimension: last_modified_by_id
    sql: ${TABLE}."Last Modified By ID"

  - dimension_group: last_modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Last Modified Date"

  - dimension: last_name
    sql: ${TABLE}."Last Name"

  - dimension_group: last_password_change_or_reset
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Last Password Change or Reset"

  - dimension: locale
    sql: ${TABLE}.Locale

  - dimension: manager_id
    sql: ${TABLE}."Manager ID"

  - dimension: phone
    sql: ${TABLE}.Phone

  - dimension: profile_id
    sql: ${TABLE}."Profile ID"

  - dimension: role_id
    # hidden: true
    sql: ${TABLE}."Role ID"

  - dimension: saml_federation_id
    sql: ${TABLE}."SAML Federation ID"

  - dimension: stateprovince
    sql: ${TABLE}.State/Province

  - dimension: street
    sql: ${TABLE}.Street

  - dimension_group: system_modstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."System Modstamp"

  - dimension: time_zone
    sql: ${TABLE}."Time Zone"

  - dimension: title
    sql: ${TABLE}.Title

  - dimension: user_id
    # hidden: true
    sql: ${TABLE}."User ID"

  - dimension: user_type
    sql: ${TABLE}."User Type"

  - dimension: user_type2
    sql: ${TABLE}."User Type2"

  - dimension: username
    sql: ${TABLE}.Username

  - dimension: zippostal_code
    sql: ${TABLE}."Zip/Postal Code"

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - community_nickname
    - company_name
    - full_name
    - first_name
    - last_name
    - username
    - accounts.dpm_name
    - accounts.account_name
    - accounts.account_id
    - contacts.assistants_name
    - contacts.full_name
    - contacts.first_name
    - contacts.last_name
    - contacts.contact_id
    - roles.name
    - roles.role_id
    - users.community_nickname
    - users.company_name
    - users.full_name
    - users.first_name
    - users.last_name
    - users.username
    - users.user_id

