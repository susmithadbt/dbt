with source_data AS
(
select * from {{ source('analysis', 'PAYMENTS') }}
)
select * from PAYMENTS
