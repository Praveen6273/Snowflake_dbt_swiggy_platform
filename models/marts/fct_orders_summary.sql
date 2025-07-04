{{ config(materialized='table') }}

SELECT
    user_id,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(order_amount) AS total_spent,
    COUNT_IF(status = 'cancelled') AS cancelled_orders,
    COUNT_IF(payment_status = 'Success') AS successful_payments
FROM {{ ref('inter_orders') }}
GROUP BY user_id
