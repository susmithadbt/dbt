{{ config(materialized='view') }}

with source_data as (
    select * from DBT_DATABASE.PUBLIC.orders
)
select *
from order