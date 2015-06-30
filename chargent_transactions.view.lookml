- view: chargent_transactions
  sql_table_name: salesforce_b2b.chargent_transactions
  fields:

  - dimension: 1st_approved_transaction
    sql: ${TABLE}."1st Approved Transaction"

  - dimension: amount
    type: number
    sql: ${TABLE}.Amount

  - dimension: authorization
    sql: ${TABLE}."Authorization"

  - dimension: avs_address
    sql: ${TABLE}."AVS Address"

  - dimension: avs_international
    sql: ${TABLE}."AVS International"

  - dimension: avs_zip
    sql: ${TABLE}."AVS Zip"

  - dimension: bank_account_name
    sql: ${TABLE}."Bank Account Name"

  - dimension: bank_account_number
    sql: ${TABLE}."Bank Account Number"

  - dimension: bank_account_type
    sql: ${TABLE}."Bank Account Type"

  - dimension: bank_name
    sql: ${TABLE}."Bank Name"

  - dimension: bank_routing_number
    sql: ${TABLE}."Bank Routing Number"

  - dimension: billing_address
    sql: ${TABLE}."Billing Address"

  - dimension: billing_address_2
    sql: ${TABLE}."Billing Address 2"

  - dimension: billing_city
    sql: ${TABLE}."Billing City"

  - dimension: billing_company
    sql: ${TABLE}."Billing Company"

  - dimension: billing_country
    sql: ${TABLE}."Billing Country"

  - dimension: billing_email
    sql: ${TABLE}."Billing Email"

  - dimension: billing_fax
    sql: ${TABLE}."Billing Fax"

  - dimension: billing_first
    sql: ${TABLE}."Billing First"

  - dimension: billing_last
    sql: ${TABLE}."Billing Last"

  - dimension: billing_phone
    sql: ${TABLE}."Billing Phone"

  - dimension: billing_postal_code
    sql: ${TABLE}."Billing Postal Code"

  - dimension: billing_province
    sql: ${TABLE}."Billing Province"

  - dimension: billing_state
    sql: ${TABLE}."Billing State"

  - dimension: card_last_4
    sql: ${TABLE}."Card Last 4"

  - dimension: cash_disbursement
    sql: ${TABLE}."Cash Disbursement"

  - dimension: cash_receipt
    sql: ${TABLE}."Cash Receipt"

  - dimension: created_by_id
    sql: ${TABLE}."Created By ID"

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Created Date"

  - dimension: credit_card_name
    sql: ${TABLE}."Credit Card Name"

  - dimension: credit_card_number
    sql: ${TABLE}."Credit Card Number"

  - dimension: credit_card_type
    sql: ${TABLE}."Credit Card Type"

  - dimension: currency
    sql: ${TABLE}.Currency

  - dimension: currency_iso_code
    sql: ${TABLE}."Currency ISO Code"

  - dimension_group: date_of_auth
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Date of Auth"

  - dimension: deleted
    sql: ${TABLE}.Deleted

  - dimension: description
    sql: ${TABLE}.Description

  - dimension: details_authorizenet
    sql: ${TABLE}."Details (Authorize.net)"

  - dimension: details_payflow_pro
    sql: ${TABLE}."Details (Payflow Pro)"

  - dimension: failed_payment_formula
    sql: ${TABLE}."Failed Payment Formula"

  - dimension: failed_payment_workflow_flag
    sql: ${TABLE}."Failed Payment Workflow Flag"

  - dimension: gateway
    sql: ${TABLE}.Gateway

  - dimension_group: gateway
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Gateway Date"

  - dimension: gateway_id
    sql: ${TABLE}."Gateway ID"

  - dimension: gateway_response
    sql: ${TABLE}."Gateway Response"

  - dimension_group: last_activity
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Last Activity Date"

  - dimension: last_modified_by_id
    sql: ${TABLE}."Last Modified By ID"

  - dimension_group: last_modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Last Modified Date"

  - dimension: opportunity_id
    sql: ${TABLE}."Opportunity ID"

  - dimension: payment_method
    sql: ${TABLE}."Payment Method"

  - dimension: payment_request
    sql: ${TABLE}."Payment Request"

  - dimension: reason_code
    type: int
    sql: ${TABLE}."Reason Code"

  - dimension: reason_text
    sql: ${TABLE}."Reason Text"

  - dimension: record_id
    sql: ${TABLE}."Record ID"

  - dimension: recurring
    sql: ${TABLE}.Recurring

  - dimension: refunded
    sql: ${TABLE}.Refunded

  - dimension: response
    sql: ${TABLE}.Response

  - dimension: response_code
    type: int
    sql: ${TABLE}."Response Code"

  - dimension: response_message
    sql: ${TABLE}."Response Message"

  - dimension: response_status
    sql: ${TABLE}."Response Status"

  - dimension: security_response
    sql: ${TABLE}."Security Response"

  - dimension_group: system_modstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."System Modstamp"

  - dimension: tokenization
    sql: ${TABLE}.Tokenization

  - dimension: transaction_id
    sql: ${TABLE}."Transaction ID"

  - dimension: type
    sql: ${TABLE}."Type"

  - measure: count
    type: count
    drill_fields: [credit_card_name, bank_name, bank_account_name]

