select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        return_flag as value_field,
        count(*) as n_records

    from sa_mark_wan.dbt_c_mwan.stg_tpch_line_items
    group by return_flag

)

select *
from all_values
where value_field not in (
    'returned','accepted'
)



      
    ) dbt_internal_test