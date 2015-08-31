- connection: vertica01_default_salesforce_b2b

- scoping: true           # for backward compatibility
- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
- explore: reviews
  joins:
    - join: location
      type: left_outer
      relationship: many_to_one
      sql_on: ${reviews.location_id} = ${location.id}

    - join: templates 
      type: left_outer
      relationship: many_to_one
      sql_on: ${reviews.request_template_id} = ${templates.id}     
      
    - join: tenant_configurations
      type: left_outer
      relationship: many_to_one
      sql_on: ${reviews.tenant_id} = ${tenant_configurations.id}
      
    - join: user_configurations
      type: left_outer
      relationship: many_to_one
      sql_on: ${reviews.tenant_id} = ${user_configurations.tenant_id}            
 
- explore: repbiz_successful_logins 
  joins:
    - join: user_configurations
      type: left_outer
      relationship: many_to_one
      sql_on: ${repbiz_successful_logins.user_id} = ${user_configurations.id} 
    
    - join: tenant_configurations
      type: left_outer
      relationship: many_to_one
      sql_on: ${repbiz_successful_logins.tenant_id} = ${tenant_configurations.id}
    
    - join: user_configurations_filters
      type: left_outer
      relationship: many_to_one
      sql_on: ${user_configurations.id} = ${user_configurations_filters.id} and ${user_configurations_filters.name} = 'location'
      
    - join: location
      type: left_outer
      relationship: many_to_one
      sql_on: ${repbiz_successful_logins.tenant_id} = ${location.tenant_id} and ${location.code} = ${user_configurations_filters.values}
      
    - join: location_attr
      type: left_outer
      relationship: many_to_one
      sql_on: ${location.id} = ${location_attr.id} and ${location_attr.name} = 'brand'
      
      
- explore: location      