{% snapshot ad_snapshot %}

{{
    config(
      target_database='dbt_database',
      target_schema='public',
      unique_key='order_id',
      strategy='timestamp',
      updated_at='updated_at'
    )
}}

select * from  {{source('analysis', 'mock_orders')}}

{% endsnapshot %}