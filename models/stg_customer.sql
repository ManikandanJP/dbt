with source as (select * from {{ source("LAB", "customers") }})
select id as customer_id, name, email, region, created_at, updated_at
from source