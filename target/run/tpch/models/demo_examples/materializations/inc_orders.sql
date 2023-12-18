
  
    

        create or replace transient table sa_mark_wan.dbt_c_mwan.inc_orders
         as
        (

select * from sa_mark_wan.dbt_c_mwan.raw_orders


        );
      
  