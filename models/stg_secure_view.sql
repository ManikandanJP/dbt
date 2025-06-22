{{
    config(
        materialized='view'
    )
}}
select * from {{ source('LAB', 'customers') }}