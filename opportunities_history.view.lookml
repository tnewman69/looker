- view: opportunities_history
  sql_table_name: salesforce_b2b.opportunities_history
  fields:

  - dimension: account_id
    # hidden: true
    sql: ${TABLE}."Account ID"

  - dimension: address
    sql: ${TABLE}.Address

  - dimension: amount
    type: number
    sql: ${TABLE}.Amount

  - dimension: amount_non_currency
    type: number
    sql: ${TABLE}."Amount non currency"

  - dimension: annual_contract_value
    sql: ${TABLE}."Annual Contract Value"

  - dimension: approved_transaction
    sql: ${TABLE}."Approved Transaction"

  - dimension: assigned_account_manager
    sql: ${TABLE}."Assigned Account Manager"

  - dimension: biller
    sql: ${TABLE}.Biller

  - dimension: campaign_id
    # hidden: true
    sql: ${TABLE}."Campaign ID"

  - dimension: cancellation_reason
    sql: ${TABLE}."Cancellation Reason"

  - dimension_group: chargeback_disputed
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Chargeback Disputed Date"

  - dimension_group: chargeback_received
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Chargeback Received Date"

  - dimension: chargeback_reference
    sql: ${TABLE}."Chargeback Reference"

  - dimension_group: close
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Close Date"

  - dimension: close_date_year
    sql: ${TABLE}."Close Date Year"

  - dimension: closed
    sql: ${TABLE}.Closed

  - dimension: closedwon_validation
    sql: ${TABLE}."Closed/Won Validation"

  - dimension: contact_email
    sql: ${TABLE}."Contact Email"

  - dimension: contact_name
    sql: ${TABLE}."Contact Name"

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

  - dimension: days_since_last_activity
    sql: ${TABLE}."Days Since Last Activity"

  - dimension: deal_term
    sql: ${TABLE}."Deal Term"

  - dimension: deleted
    sql: ${TABLE}.Deleted

  - dimension: description
    sql: ${TABLE}.Description

  - dimension_group: expiration
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Expiration Date"

  - dimension_group: first_approved_transaction
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."First Approved Transaction"

  - dimension: fiscal_period
    sql: ${TABLE}."Fiscal Period"

  - dimension: fiscal_quarter
    sql: ${TABLE}."Fiscal Quarter"

  - dimension: fiscal_year
    sql: ${TABLE}."Fiscal Year"

  - dimension: forecast_category
    sql: ${TABLE}."Forecast Category"

  - dimension: forecast_category_1
    sql: ${TABLE}."Forecast Category_1"

  - dimension: free_month
    sql: ${TABLE}."Free Month"

  - dimension: has_line_item
    sql: ${TABLE}."Has Line Item"

  - dimension_group: history
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.history_date

  - dimension: invoice
    sql: ${TABLE}.Invoice

  - dimension: invoice_amount
    sql: ${TABLE}."Invoice Amount"

  - dimension: invoice_billing_cycle
    sql: ${TABLE}."Invoice Billing Cycle"

  - dimension: invoice_coverage_period
    sql: ${TABLE}."Invoice Coverage Period"

  - dimension_group: invoice_due
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Invoice Due Date"

  - dimension: invoice_notes
    sql: ${TABLE}."Invoice Notes"

  - dimension: invoice_number
    sql: ${TABLE}."Invoice Number"

  - dimension: invoice_sent
    sql: ${TABLE}."Invoice Sent"

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

  - dimension_group: last_modified_date_custom
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Last Modified Date Custom"

  - dimension: last_transaction_response
    sql: ${TABLE}."Last Transaction Response"

  - dimension: last_transaction_response_message
    sql: ${TABLE}."Last Transaction Response Message"

  - dimension: last_transaction_response_status
    sql: ${TABLE}."Last Transaction Response Status"

  - dimension: lead_source
    sql: ${TABLE}."Lead Source"

  - dimension: locations
    sql: ${TABLE}.Locations

  - dimension: name
    sql: ${TABLE}."Name"

  - dimension: net_terms
    sql: ${TABLE}."Net Terms"

  - dimension_group: next_invoice
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Next Invoice Date"

  - dimension: next_step
    sql: ${TABLE}."Next Step"

  - dimension: no_open_activities_by_opp_owner
    sql: ${TABLE}."No Open Activities By Opp Owner"

  - dimension: notes
    sql: ${TABLE}.Notes

  - dimension: opportunity_18_digit_id
    sql: ${TABLE}."Opportunity 18 digit ID"

  - dimension: opportunity_currency
    sql: ${TABLE}."Opportunity Currency"

  - dimension: opportunity_id
    sql: ${TABLE}."Opportunity ID"

  - dimension: opportunity_id_old__ue
    sql: ${TABLE}."Opportunity ID (Old - UE)"

  - dimension: opportunity_type
    sql: ${TABLE}."Opportunity Type"

  - dimension: owner_id
    sql: ${TABLE}."Owner ID"

  - dimension: payment_count
    type: int
    sql: ${TABLE}."Payment Count"

  - dimension_group: payment_end
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.PaymentEndDate

  - dimension: payment_frequency
    sql: ${TABLE}."Payment Frequency"

  - dimension: payment_method
    sql: ${TABLE}."Payment Method"

  - dimension: payment_received
    sql: ${TABLE}."Payment Received"

  - dimension_group: payment_start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.PaymentStartDate

  - dimension: payment_status
    sql: ${TABLE}."Payment Status"

  - dimension: payment_stop
    sql: ${TABLE}."Payment Stop"

  - dimension: pf_ententerprise
    sql: ${TABLE}.PF_ENT-Enterprise

  - dimension: pf_smbsmall_business
    sql: ${TABLE}.PF_SMB-SmallBusiness

  - dimension: po_number
    sql: ${TABLE}."PO Number"

  - dimension: price_book_id
    sql: ${TABLE}."Price Book ID"

  - dimension: probability_
    sql: ${TABLE}."Probability (%)"

  - dimension: quote_id
    # hidden: true
    sql: ${TABLE}."Quote ID"

  - dimension: reason_lost__other
    sql: ${TABLE}."Reason Lost - Other"

  - dimension: record_type_id
    sql: ${TABLE}."Record Type ID"

  - dimension: source_description
    sql: ${TABLE}."Source Description"

  - dimension: stage
    sql: ${TABLE}.Stage

  - dimension: store_number
    sql: ${TABLE}."Store Number"

  - dimension: synced_with_intacct
    sql: ${TABLE}."Synced With Intacct"

  - dimension_group: synced_with_intacct
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."Synced With Intacct Date"

  - dimension_group: system_modstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."System Modstamp"

  - dimension: tax_exempt
    sql: ${TABLE}."Tax Exempt"

  - dimension: tenant_id
    sql: ${TABLE}."Tenant ID"

  - dimension: total_contract_value
    sql: ${TABLE}."Total Contract Value"

  - dimension: total_contract_value_custom
    sql: ${TABLE}."Total Contract Value Custom"

  - dimension: transaction_count
    type: int
    sql: ${TABLE}."Transaction Count"

  - dimension: transaction_count_recurring
    type: int
    sql: ${TABLE}."Transaction Count Recurring"

  - dimension: transaction_total
    type: number
    sql: ${TABLE}."Transaction Total"

  - dimension: triggered_conga_workflow
    sql: ${TABLE}."Triggered Conga Workflow"

  - dimension: triggered_conga_workflow_business
    sql: ${TABLE}."Triggered Conga Workflow Business"

  - dimension: use_tokenization
    sql: ${TABLE}."Use Tokenization"

  - dimension: won
    sql: ${TABLE}.Won

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - contact_name
    - name
    - quotes.additional_to_name
    - quotes.quote_to_name
    - quotes.ship_to_name
    - quotes.bill_to_name
    - quotes.quote_name
    - quotes.quote_id
    - campaigns.name
    - campaigns.campaign_id
    - accounts.dpm_name
    - accounts.account_name
    - accounts.account_id

