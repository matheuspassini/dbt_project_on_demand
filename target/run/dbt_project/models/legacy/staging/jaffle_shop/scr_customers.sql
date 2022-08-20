
  create or replace  view ANALYTICS.dbt_mpassini_project.scr_customers
  
   as (
    with 

base_customers as(

    select * from analytics.dbt_mpassini_project.customers
)

select * from base_customers
  );
