
  create or replace   view sa_mark_wan.dbt_c_mwan.agg_returned_orders_by_month
  
   as (
    with fct_order_items as (
    select * from sa_mark_wan.dbt_c_mwan.fct_order_items
),

final as (
    select
        date_trunc(MONTH, fct_order_items.order_date) as order_month 
        , count(case when is_return then order_item_key else null end) as returned_orders
        , 1.0* returned_orders / nullif (
            count(order_item_key)
            , 0
        ) as return_rate
        , count(*) as row_count
    from fct_order_items
    where fct_order_items.order_date < '1995-03-31'
    group by 1
    order by 1 desc
)

select * from final
  );

