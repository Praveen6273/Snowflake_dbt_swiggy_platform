{{ config(materialized='view') }}

SELECT
    user_id,
    name AS customer_name,
    phone,
    signup_date
FROM my_db.my_schema.raw_customers