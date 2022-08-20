
  create or replace  view ANALYTICS.dbt_mpassini_project.scr_orders
  
   as (
    with 

base_orders as(

    select * from analytics.dbt_mpassini_project.orders
)

select * from base_orders
  );
