

select * from sa_mark_wan.dbt_c_mwan.raw_orders


    -- this filter will only be applied on an incremental run
    where modified_at > (select max(modified_at) from sa_mark_wan.dbt_c_mwan.inc_orders) 
