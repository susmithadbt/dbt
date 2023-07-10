
with orders as (
    select * from {{ ref('stg_orderdata' )}}
),

payments as (
    select * from {{ ref('paymentdata') }}
),

order_payments as (
    select
    id
   from payments
    group by 1
),

final as (

    select
    orders.id,
    orders.user_id,
    orders.order_date
    from orders
    left join order_payments using (id)
)

select * from final
