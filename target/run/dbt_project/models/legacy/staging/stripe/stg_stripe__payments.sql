
  create or replace  view ANALYTICS.dbt_mpassini_project.stg_stripe__payments
  
   as (
    with 

source as (

    select * from analytics.dbt_mpassini_project.payments

),

transformed as (

  select

    id as payment_id,
    orderid as order_id,
    created as payment_created_at,
    status as payment_status,
    round(amount / 100.0, 2) as payment_amount

  from source

)

select * from transformed
  );
