with source as (
    select * from {{ source('LAB', 'orders') }}
)select id as order_id,customer_id, status,order_date,total_amount,created_at, updated_at from source