- connection: vertica01_default_r4e_general

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: ford_repscore_pivot

- explore: repbiz_successful_logins

- explore: repbiz_successful_logins_backfill

