{{ config(materialized='view') }}

SELECT
    o.order_id,
    o.user_id,
    c.customer_name,
    r.restaurant_name,
    r.city,
    r.cuisine,
    o.order_amount,
    o.status,
    p.payment_method,
    p.payment_status,
    o.order_time
FROM {{ ref('stg_orders') }} o
LEFT JOIN {{ ref('stg_customers') }} c ON o.user_id = c.user_id
LEFT JOIN {{ ref('stg_restaurants') }} r ON o.restaurant_id = r.restaurant_id
LEFT JOIN {{ ref('stg_payments') }} p ON o.order_id = p.order_id
