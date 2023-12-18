
  
    

        create or replace transient table sa_mark_wan.dbt_c_mwan.dim_parts
         as
        (
with part as (

    select * from sa_mark_wan.dbt_c_mwan.stg_tpch_parts

),

final as (
    select 
        part_key,
        manufacturer,
        name,
        brand,
        type,
        size,
        container,
        retail_price
    from
        part
)
select *
from final  
order by part_key
        );
      
  