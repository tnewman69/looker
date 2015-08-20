- view: ga_new_visits
  derived_table:
    sql: |
      SELECT 
        DATE(googleanalytics_daily_stats."date") AS "googleanalytics_daily_stats.date_date",
        googleanalytics_daily_stats.new_visits AS "googleanalytics_daily_stats.new_visits"
      FROM googleanalytics.googleanalytics_daily_stats AS googleanalytics_daily_stats
      
      
      ORDER BY 1 DESC
      LIMIT 500

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: googleanalytics_daily_statsdate_date
    sql: ${TABLE}.googleanalytics_daily_stats.date_date
