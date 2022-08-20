
  create or replace  view ANALYTICS.dbt_mpassini_project.stg_jaffle_shop__orders
  
   as (
    with 

source as (

    select * from analytics.dbt_mpassini_project.orders

),

transformed as (

  select

    id as order_id,
    user_id as customer_id,
    order_date as order_placed_at,
    status as order_status,

    case 
        when status not in ('returned','return_pending') 
        then order_date 
    end as valid_order_date

  from source

)

select * from transformed
  );
