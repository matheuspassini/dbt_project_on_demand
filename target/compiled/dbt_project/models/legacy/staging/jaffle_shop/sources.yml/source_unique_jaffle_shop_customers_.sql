
    
    

select
     as unique_field,
    count(*) as n_records

from analytics.dbt_mpassini_project.customers
where  is not null
group by 
having count(*) > 1


