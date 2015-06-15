- view: opportunities_migration
  sql_table_name: salesforce_b2b.opportunities_migration
  fields:

  - dimension: new_opportunity_id
    sql: ${TABLE}."New Opportunity ID"

  - dimension: old_opportunity_id
    sql: ${TABLE}."Old Opportunity ID"

  - measure: count
    type: count
    drill_fields: []

