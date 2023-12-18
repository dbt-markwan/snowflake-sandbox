
    
    

select
    order_month as unique_field,
    count(*) as n_records

from sa_mark_wan.dbt_c_mwan.monthly_gross_revenue
where order_month is not null
group by order_month
having count(*) > 1


