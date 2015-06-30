- connection: vertica01_default_salesforce_b2b

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: accounts

- explore: b2b_sales_analysis
  joins:
    - join: accounts
      type: left_outer
      relationship: many_to_one
      sql_on: ${b2b_sales_analysis.account_id} = ${accounts.account_id}
  
    - join: account_facts
      type: left_outer
      view_label: "Accounts"
      relationship: many_to_one
      sql_on: ${b2b_sales_analysis.account_id} = ${account_facts.account_id}


- explore: opportunities

- explore: opportunity_line_item

- explore: r4e_product_history_tenant

- explore: r4e_product_history_location