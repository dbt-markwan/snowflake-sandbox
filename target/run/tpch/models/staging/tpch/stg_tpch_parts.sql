
  create or replace   view sa_mark_wan.dbt_c_mwan.stg_tpch_parts
  
   as (
    with source as (

    select * from raw.tpch_sf001.part

),

renamed as (

    select
    
        p_partkey as part_key,
        p_name as name,
        p_mfgr as manufacturer,
        p_brand as brand,
        p_type as type,
        p_size as size,
        p_container as container,
        p_retailprice as retail_price,
        p_comment as comment

    from source

)

select * from renamed
  );
