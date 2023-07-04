with source_data AS
(
select * from {{ source('analysis', 'ORDERS') }}
)
select * from ORDERS
