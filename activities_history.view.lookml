- view: activities_history
  sql_table_name: salesforce_b2b.activities_history
  fields:

  - dimension: account_id
    # hidden: true
    sql: ${TABLE}."Account ID"

  - dimension: activity_id
    sql: ${TABLE}."Activity ID"

  - dimension: activity_id_old__ue
    sql: ${TABLE}."Activity ID (Old - UE)"

  - dimension: archived
    sql: ${TABLE}.Archived

  - dimension: assigned_to_id
    sql: ${TABLE}."Assigned To ID"

  - dimension: call_duration
    type: int
    sql: ${TABLE}."Call Duration"

  - dimension: call_object_identifier
    sql: ${TABLE}."Call Object Identifier"

  - dimension: call_result
    sql: ${TABLE}."Call Result"

  - dimension: call_type
    sql: ${TABLE}."Call Type"

  - dimension: closed
    sql: ${TABLE}.Closed

  - dimension: contactlead_id
    sql: ${TABLE}."Contact/Lead ID"

  - dimension: create_recurring_series_of_tasks
    sql: ${TABLE}."Create Recurring Series of Tasks"

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

  - dimension_group: due_date_only
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Due Date Only"

  - dimension_group: end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."End Date"

  - dimension_group: history
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.history_date

  - dimension: last_modified_by_id
    sql: ${TABLE}."Last Modified By ID"

  - dimension_group: last_modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Last Modified Date"

  - dimension: opportunityaccount_id
    sql: ${TABLE}."Opportunity/Account ID"

  - dimension: priority
    sql: ${TABLE}."Priority"

  - dimension: recurrence_activity_id
    sql: ${TABLE}."Recurrence Activity ID"

  - dimension: recurrence_day_of_month
    type: int
    sql: ${TABLE}."Recurrence Day of Month"

  - dimension: recurrence_day_of_week_mask
    type: int
    sql: ${TABLE}."Recurrence Day of Week Mask"

  - dimension: recurrence_instance
    sql: ${TABLE}."Recurrence Instance"

  - dimension: recurrence_interval
    type: int
    sql: ${TABLE}."Recurrence Interval"

  - dimension: recurrence_month_of_year
    sql: ${TABLE}."Recurrence Month of Year"

  - dimension: recurrence_time_zone
    sql: ${TABLE}."Recurrence Time Zone"

  - dimension: recurrence_type
    sql: ${TABLE}."Recurrence Type"

  - dimension_group: reminder_datetime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Reminder Date/Time"

  - dimension: reminder_set
    sql: ${TABLE}."Reminder Set"

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Start Date"

  - dimension: status
    sql: ${TABLE}.Status

  - dimension: subject
    sql: ${TABLE}.Subject

  - dimension_group: system_modstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."System Modstamp"

  - dimension: type
    sql: ${TABLE}."Type"

  - measure: count
    type: count
    drill_fields: [accounts.dpm_name, accounts.account_name, accounts.account_id]

