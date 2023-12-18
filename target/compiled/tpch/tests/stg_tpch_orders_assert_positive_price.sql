

with orders as ( select * from sa_mark_wan.dbt_c_mwan.stg_tpch_orders )

select *
from   orders 
where  total_price < 0