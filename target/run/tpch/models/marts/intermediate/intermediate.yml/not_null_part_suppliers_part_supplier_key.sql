select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select part_supplier_key
from sa_mark_wan.dbt_c_mwan.part_suppliers
where part_supplier_key is null



      
    ) dbt_internal_test