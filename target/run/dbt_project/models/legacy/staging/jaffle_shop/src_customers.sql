
  create or replace  view ANALYTICS.dbt_mpassini_project.src_customers
  
   as (
    with 

customers as(

    select * from analytics.dbt_mpassini_project.customers
)

select * from customers
  );
