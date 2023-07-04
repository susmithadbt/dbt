{{ config(materialized='table') }}

with source_data as (
    select * from DBT_DATABASE.PUBLIC.CUSTOMER
)
select *
from CUSTOMERDATA