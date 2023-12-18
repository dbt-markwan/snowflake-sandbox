select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      




select * from sa_mark_wan.dbt_c_mwan.stg_tpch_suppliers where account_balance < 0


      
    ) dbt_internal_test