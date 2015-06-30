- view: ford_repscore_pivot
  sql_table_name: r4e_general.ford_repscore_pivot
  fields:

  - dimension: contactselect
    sql: ${TABLE}.Contact/Select

  - dimension: last_2_score_date
    sql: ${TABLE}."Last 2 Score Date"

  - dimension: last_2_score_month
    sql: ${TABLE}."Last 2 Score Month"

  - dimension: last_2_score_year
    sql: ${TABLE}."Last 2 Score Year"

  - dimension: last_3_score_date
    sql: ${TABLE}."Last 3 Score Date"

  - dimension: last_3_score_month
    sql: ${TABLE}."Last 3 Score Month"

  - dimension: last_3_score_year
    sql: ${TABLE}."Last 3 Score Year"

  - dimension: last_month_2_reputation_score
    type: number
    sql: ${TABLE}."Last Month 2 Reputation Score"

  - dimension: last_month_3_reputation_score
    type: number
    sql: ${TABLE}."Last Month 3 Reputation Score"

  - dimension: last_month_reputation_score
    type: number
    sql: ${TABLE}."Last Month Reputation Score"

  - dimension: last_score_date
    sql: ${TABLE}."Last Score Date"

  - dimension: last_score_month
    sql: ${TABLE}."Last Score Month"

  - dimension: last_score_year
    sql: ${TABLE}."Last Score Year"

  - dimension: name
    sql: ${TABLE}."name"

  - dimension: percent_change
    type: number
    sql: ${TABLE}."Percent Change"

  - dimension: region
    sql: ${TABLE}.Region

  - dimension: smrm_level
    sql: ${TABLE}."SMRM Level"

  - dimension: starting_score
    type: number
    sql: ${TABLE}."Starting Score"

  - dimension: starting_score_date
    sql: ${TABLE}."Starting Score Date"

  - dimension: starting_score_month
    sql: ${TABLE}."Starting Score Month"

  - dimension: starting_score_year
    sql: ${TABLE}."Starting Score Year"

  - dimension: zone
    sql: ${TABLE}."Zone"

  - measure: count
    type: count
    drill_fields: [name]

