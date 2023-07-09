{{config(
    materialized="view"
)}}
select * from DBT_DATABASE.PUBLIC.PAYMENTS