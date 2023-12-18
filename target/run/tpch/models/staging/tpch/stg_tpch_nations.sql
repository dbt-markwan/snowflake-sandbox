
  create or replace   view sa_mark_wan.dbt_c_mwan.stg_tpch_nations
  
   as (
    with source as (

    select * from raw.tpch_sf001.nation

),

renamed as (

    select
    
        n_nationkey as nation_key,
        n_name as name,
        n_regionkey as region_key,
        n_comment as comment

    from source

)

select * from renamed
  );

