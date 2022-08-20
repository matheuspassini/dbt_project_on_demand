
  create or replace  view ANALYTICS.dbt_mpassini_project.src_payments
  
   as (
    with 

payments as(

    select * from analytics.dbt_mpassini_project.payments
)

select * from payments
  );
