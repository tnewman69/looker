- view: date_table
  sql_table_name: lookups.date_table
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: 1_month_ago
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.1_month_ago

  - dimension_group: 2_months_ago
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.2_months_ago

  - dimension_group: date
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."date"

  - dimension: dateval
    type: int
    sql: ${TABLE}.dateval

  - dimension: day
    type: int
    sql: ${TABLE}."day"

  - dimension: days_in_month
    type: int
    sql: ${TABLE}.days_in_month

  - dimension: dow
    sql: ${TABLE}.dow

  - dimension: holiday
    sql: ${TABLE}.holiday

  - dimension_group: last_pay_date_monthly
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.last_pay_date_monthly

  - dimension_group: last_year
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.last_year

  - dimension: month
    type: int
    sql: ${TABLE}."month"

  - dimension: month_2digit
    sql: ${TABLE}.month_2digit

  - dimension_group: month_end
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.month_end_date

  - dimension_group: month_start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.month_start_date

  - dimension: month_text
    sql: ${TABLE}.month_text

  - dimension: monthcode
    sql: ${TABLE}.monthcode

  - dimension_group: next_month
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.next_month

  - dimension_group: next_pay_date_1year
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.next_pay_date_1year

  - dimension_group: next_pay_date_2year
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.next_pay_date_2year

  - dimension_group: next_pay_date_5year
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.next_pay_date_5year

  - dimension_group: next_pay_date_monthly
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.next_pay_date_monthly

  - dimension_group: next_pay_date_monthly_aol
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.next_pay_date_monthly_AOL

  - dimension_group: next_year
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.next_year

  - dimension: non_holiday_days_in_month
    type: int
    sql: ${TABLE}.non_holiday_days_in_month

  - dimension: non_holiday_weekdays_in_month
    type: int
    sql: ${TABLE}.non_holiday_weekdays_in_month

  - dimension: percent_of_sales_month_remaining
    type: number
    sql: ${TABLE}.percent_of_sales_month_remaining

  - dimension: quarter
    sql: ${TABLE}.quarter

  - dimension_group: quarter_end
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.quarter_end_date

  - dimension_group: quarter_start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.quarter_start_date

  - dimension: quartercode
    sql: ${TABLE}.quartercode

  - dimension: rd_holiday_y_n
    sql: ${TABLE}.rd_holiday_y_n

  - dimension_group: week_end
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.week_end_date

  - dimension: week_mon_sun
    sql: ${TABLE}.week_mon_sun

  - dimension: week_sat_fri
    sql: ${TABLE}.week_sat_fri

  - dimension_group: week_start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.week_start_date

  - dimension: weekday
    sql: ${TABLE}.weekday

  - dimension: weekdays_in_month
    type: int
    sql: ${TABLE}.weekdays_in_month

  - dimension: weekdays_remaining
    type: int
    sql: ${TABLE}.weekdays_remaining

  - dimension: weekdays_so_far
    type: int
    sql: ${TABLE}.weekdays_so_far

  - dimension: weekend
    sql: ${TABLE}.weekend

  - dimension: weekend_days_remaining
    type: int
    sql: ${TABLE}.weekend_days_remaining

  - dimension: weekend_days_so_far
    type: int
    sql: ${TABLE}.weekend_days_so_far

  - dimension: year
    sql: ${TABLE}."year"

  - dimension_group: year_end
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.year_end_date

  - dimension: year_quarter
    sql: ${TABLE}.year_quarter

  - dimension_group: year_start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.year_start_date

  - measure: count
    type: count
    drill_fields: [id]

