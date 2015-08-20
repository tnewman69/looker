- connection: vertica01_default_salesforce_b2b

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: accounts
  joins: 
      - join: opportunities
        type: left_outer
        relationship: one_to_many
        sql_on: ${accounts.account_id} = ${opportunities.account_id}
        
      - join: account_facts
        type: left_outer
        view_label: Accounts
        relationship: one_to_many
        sql_on: ${accounts.account_id} = ${account_facts.account_id}
        
      - join: contacts
        type: left_outer
        relationship: one_to_many
        sql_on: ${contacts.account_id} = ${accounts.account_id}
        
#       - join: contracts
#         type: left_outer
#         relationship: one_to_many
#         sql_on: ${contracts.account_id} = ${accounts.account_id}
        
      - join: opportunity_line_item
        type: left_outer
        relationship: one_to_many
        sql_on: ${opportunity_line_item.opportunity_id} = ${opportunities.opportunity_id}
        
      - join: campaigns
        type: left_outer
        relationship: one_to_many
        sql_on: ${campaigns.campaign_id} = ${opportunities.campaign_id}
        
      - join: quotes
        type: left_outer
        relationship: one_to_many
        sql_on: ${quotes.opportunity_id} = ${opportunities.opportunity_id}
        
      - join: pricebook
        type: left_outer
        relationship: many_to_one
        sql_on: ${pricebook.price_book_id} = ${quotes.price_book_id}
        
      - join: pricebook_entry
        type: left_outer
        relationship: one_to_many
        sql_on: ${pricebook_entry.price_book_id} = ${pricebook.price_book_id}
        
      - join: product
        type: left_outer
        relationship: many_to_one
        sql_on: ${product.product_id} = ${pricebook_entry.product_id} 
        

- explore: opportunities

- explore: opportunity_line_item

