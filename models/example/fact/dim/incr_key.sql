{{ config(
    materialized = 'incremental',
    unique_id='id'
) }}
      with orders as(
      select * from {{ref('stg_orderdata')}}
      {% if is_incremental()%}
      where order_date >=(select max(order_date)from {{this}})
      {%endif%}
)

select * from orders
