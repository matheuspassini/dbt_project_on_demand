
  create or replace  view ANALYTICS.dbt_mpassini_project.src_orders
  
   as (
    with 

orders as (

  select * from analytics.dbt_mpassini_project.orders

)

select * from orders
  );
