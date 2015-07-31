- view: login_view
  derived_table:
    sql: |
        select first_name,last_name,email,last_login_time,"#_of_logins" as 'total_logins',active,name as 'location'
           from (
           select uc.first_name,uc.last_name,uc.email,
           ucf.'values',
               uc.active,rl.name,count(*) as '#_of_logins',
          max(sl.date) as 'last_login_time'
           from r4e_general.repbiz_successful_logins sl
           left join r4e_mongo.mongo_repbiz_user_configurations uc on sl.user_id = uc.id
           left join r4e_mongo.mongo_repbiz_user_configurations_filters ucf on uc.id = ucf.id and ucf.name='location'
           left join r4e_mongo.mongo_repbiz_location rl on sl.tenant_id = rl.tenant_id and ucf.values=rl.code
           left join r4e_mongo.mongo_repbiz_location_attr la on la.id = rl.id and la.name='brand'
         left join r4e_mongo.mongo_repbiz_tenant_configurations as cf on cf.id=uc.tenant_id
          where (sl.tenant_id='1430' or  cf.program_id='')
           and date(sl.date) >='2015-07-01'
           group by 1,2,3,4,5,6
           order by 2) a
           order by 4 desc;
