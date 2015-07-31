- view: googleanalytics_daily_stats
  sql_table_name: googleanalytics.googleanalytics_daily_stats
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: account_name
    sql: ${TABLE}.account_name

  - dimension: bounce_rate
    type: number
    sql: ${TABLE}.bounce_rate

  - dimension: contact_formfill
    type: int
    sql: ${TABLE}.contact_formfill

  - dimension_group: date
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."date"

  - dimension: demo_request
    type: int
    sql: ${TABLE}.demo_request

  - dimension: downloads
    type: int
    sql: ${TABLE}.downloads

  - dimension: free_signups_v1
    type: int
    sql: ${TABLE}.free_signups_v1

  - dimension: free_signups_v2
    type: int
    sql: ${TABLE}.free_signups_v2

  - dimension: live_chats
    type: int
    sql: ${TABLE}.live_chats

  - dimension: new_visits
    type: int
    sql: ${TABLE}.new_visits

  - dimension: newsletter_signups
    type: int
    sql: ${TABLE}.newsletter_signups

  - dimension: pageviews
    type: int
    sql: ${TABLE}.pageviews

  - dimension: pageviews_per_session
    type: number
    sql: ${TABLE}.pageviews_per_session

  - dimension: percent_new_sessions
    type: number
    sql: ${TABLE}.percent_new_sessions

  - dimension: phone_calls
    type: int
    sql: ${TABLE}.phone_calls

  - dimension: profile_id
    sql: ${TABLE}.profile_id

  - dimension: session_duration
    type: number
    sql: ${TABLE}.session_duration

  - dimension: table_id
    sql: ${TABLE}.table_id

  - dimension: table_name
    sql: ${TABLE}.table_name

  - dimension: transactions
    type: int
    sql: ${TABLE}.transactions

  - dimension: users
    type: int
    sql: ${TABLE}.users

  - dimension: visits
    type: int
    sql: ${TABLE}.visits

  - dimension: web_property_id
    sql: ${TABLE}.web_property_id

  - measure: count
    type: count
    drill_fields: [id, table_name, account_name]

