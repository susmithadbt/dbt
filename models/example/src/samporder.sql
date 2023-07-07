{{config(
    materialized="incremental"
    full_refresh=true
)}}
select * from DBT_DATABASE.PUBLIC.ORDERS