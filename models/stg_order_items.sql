with source as (
    select * from {{ source('LAB', 'order_items') }}
)
select id as order_item_id, order_id,product_id, quantity,unit_price from source