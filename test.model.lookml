- connection: vertica01_default_salesforce_b2b

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: accounts

- explore: accounts_history
  joins:
    - join: accounts
      foreign_key: account_id


- explore: accounts_migration

- explore: activities
  joins:
    - join: accounts
      foreign_key: account_id


- explore: activities_history
  joins:
    - join: accounts
      foreign_key: account_id


- explore: campaigns

- explore: campaigns_history
  joins:
    - join: campaigns
      foreign_key: campaign_id


- explore: chargent_transactions

- explore: chargent_transactions_history

- explore: contacts
  joins:
    - join: accounts
      foreign_key: account_id


- explore: contacts_history
  joins:
    - join: accounts
      foreign_key: account_id

    - join: contacts
      foreign_key: contact_id


- explore: contracts
  joins:
    - join: accounts
      foreign_key: account_id


- explore: contracts_history
  joins:
    - join: accounts
      foreign_key: account_id

    - join: contracts
      foreign_key: contract_id


- explore: contracts_history_old
  joins:
    - join: accounts
      foreign_key: account_id

    - join: contracts
      foreign_key: contract_id


- explore: dated_conversion_rate

- explore: dated_conversion_rate_history
  joins:
    - join: dated_conversion_rate
      foreign_key: dated_conversion_rate_id


- explore: forms

- explore: forms_history

- explore: leads

- explore: leads_history
  joins:
    - join: leads
      foreign_key: lead_id


- explore: opportunities
  joins:
    - join: quotes
      foreign_key: quote_id

    - join: campaigns
      foreign_key: campaign_id

    - join: accounts
      foreign_key: account_id

    - join: contacts
      foreign_key: quotes.contact_id


- explore: opportunities_history
  joins:
    - join: quotes
      foreign_key: quote_id

    - join: campaigns
      foreign_key: campaign_id

    - join: accounts
      foreign_key: account_id

    - join: contacts
      foreign_key: quotes.contact_id


- explore: opportunities_history_old
  joins:
    - join: quotes
      foreign_key: quote_id

    - join: campaigns
      foreign_key: campaign_id

    - join: accounts
      foreign_key: account_id

    - join: contacts
      foreign_key: quotes.contact_id


- explore: opportunities_migration

- explore: opportunity_line_item

- explore: opportunity_line_item_history

- explore: pricebook

- explore: pricebook_entry
  joins:
    - join: product
      foreign_key: product_id


- explore: pricebook_entry_history
  joins:
    - join: product
      foreign_key: product_id


- explore: pricebook_history

- explore: product

- explore: product_history
  joins:
    - join: product
      foreign_key: product_id


- explore: quote_line_item
  joins:
    - join: quotes
      foreign_key: quote_id

    - join: contacts
      foreign_key: quotes.contact_id

    - join: accounts
      foreign_key: contacts.account_id


- explore: quote_line_item_history
  joins:
    - join: quotes
      foreign_key: quote_id

    - join: quote_line_item
      foreign_key: quote_line_item_id

    - join: contacts
      foreign_key: quotes.contact_id

    - join: accounts
      foreign_key: contacts.account_id


- explore: quotes
  joins:
    - join: contacts
      foreign_key: contact_id

    - join: accounts
      foreign_key: contacts.account_id


- explore: quotes_history
  joins:
    - join: contacts
      foreign_key: contact_id

    - join: quotes
      foreign_key: quote_id

    - join: accounts
      foreign_key: contacts.account_id


- explore: roles
  joins:
    - join: accounts
      foreign_key: account_id

    - join: users
      foreign_key: user_id

    - join: contacts
      foreign_key: users.contact_id


- explore: users
  joins:
    - join: accounts
      foreign_key: account_id

    - join: contacts
      foreign_key: contact_id

    - join: roles
      foreign_key: role_id


- explore: users_history
  joins:
    - join: accounts
      foreign_key: account_id

    - join: contacts
      foreign_key: contact_id

    - join: roles
      foreign_key: role_id

    - join: users
      foreign_key: user_id


