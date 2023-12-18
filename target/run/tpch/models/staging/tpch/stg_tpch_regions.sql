
  create or replace   view sa_mark_wan.dbt_c_mwan.stg_tpch_regions
  
   as (
    with source as (

    select * from raw.tpch_sf001.region

),

renamed as (

    select
        r_regionkey as region_key,
        r_name as name,
        r_comment as comment

    from source

)

select * from renamed
  );

