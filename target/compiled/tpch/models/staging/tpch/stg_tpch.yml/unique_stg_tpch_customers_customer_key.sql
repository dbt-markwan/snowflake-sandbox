
    
    

select
    customer_key as unique_field,
    count(*) as n_records

from sa_mark_wan.dbt_c_mwan.stg_tpch_customers
where customer_key is not null
group by customer_key
having count(*) > 1


