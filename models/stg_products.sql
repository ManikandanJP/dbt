with source as (
    select * from {{ source('LAB', 'products') }}
)

select id as product_id, name,category,price from source