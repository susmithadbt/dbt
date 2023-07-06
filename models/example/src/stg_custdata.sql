with source_data AS
(
select * from {{ source('analysis', 'CUSTOMER') }}
)

select * from CUSTOMER