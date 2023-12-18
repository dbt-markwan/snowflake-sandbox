
    
    

with child as (
    select customer_key as from_field
    from sa_mark_wan.dbt_c_mwan.fct_orders
    where customer_key is not null
),

parent as (
    select customer_key as to_field
    from sa_mark_wan.dbt_c_mwan.dim_customers
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null

