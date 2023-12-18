
    
    

select
    order_key as unique_field,
    count(*) as n_records

from sa_mark_wan.dbt_c_mwan.stg_tpch_orders
where order_key is not null
group by order_key
having count(*) > 1

