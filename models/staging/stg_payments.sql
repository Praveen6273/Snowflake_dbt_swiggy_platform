{{ config(materialized='view') }}

SELECT
    payment_id,
    order_id,
    payment_method,
    payment_status,
    payment_time
FROM my_db.my_schema.raw_payments

