with 

payments as(

    select * from analytics.dbt_mpassini_project.payments
)

select * from payments