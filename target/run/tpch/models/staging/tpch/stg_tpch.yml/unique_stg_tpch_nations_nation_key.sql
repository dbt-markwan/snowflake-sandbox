select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    nation_key as unique_field,
    count(*) as n_records

from sa_mark_wan.dbt_c_mwan.stg_tpch_nations
where nation_key is not null
group by nation_key
having count(*) > 1



      
    ) dbt_internal_test