with 

base_payments as(

    select * from analytics.dbt_mpassini_project.payments
)

select * from base_payments