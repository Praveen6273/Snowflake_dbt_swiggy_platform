{{ config(materialized='view') }}

SELECT
    user_id,
    name AS customer_name,
    phone,
    signup_date
FROM {{ source('stg_source', 'raw_customers') }}