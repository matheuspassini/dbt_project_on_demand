with 

base_orders as(

    select * from analytics.dbt_mpassini_project.orders
)

select * from base_orders