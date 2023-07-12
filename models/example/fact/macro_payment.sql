select 
    ORDER_ID as ID,
    payment_method as paymentmethod,
    {{ cents_to_dollars() }} as amount

from {{ source('analysis', 'PAYMENTS') }}

