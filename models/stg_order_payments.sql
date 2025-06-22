{{
    config(
        materialized='table',transient=true
    )
}}
with orders 
    as ( select * from {{ ref('stg_orders') }}), 
    payments as ( select * from {{ ref('stg_payments') }})
select 
    o.order_id,
    o.customer_id, 
    o.status,
    o.order_date,
    o.total_amount,
    o.created_at, 
    o.updated_at,
    py.payment_id,
    py.order_id as payment_order_id, 
    py.amount, 
    py.payment_method,
    py.payment_date 

from orders o 
inner join payments py  on o.order_id  = py.payment_id 