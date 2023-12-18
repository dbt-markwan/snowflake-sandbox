select 
    orders.*, 
    customer.nation, 
    customer.market_segment
from sa_mark_wan.dbt_c_mwan.fct_orders orders 
    left join sa_mark_wan.dbt_c_mwan.dim_customers customer
    on orders.customer_key = customer.customer_key