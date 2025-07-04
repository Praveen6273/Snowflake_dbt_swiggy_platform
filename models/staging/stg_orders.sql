{{ config(materialized='table') }}

SELECT
    order_id,
    user_id,
    restaurant_id,
    order_amount,
    status,
    CAST(order_time AS TIMESTAMP) AS order_time
FROM my_db.my_schema.raw_orders
