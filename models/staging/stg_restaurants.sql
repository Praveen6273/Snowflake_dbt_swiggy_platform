{{ config(materialized='view') }}

SELECT
    restaurant_id,
    name AS restaurant_name,
    city,
    cuisine
FROM my_db.my_schema.raw_restaurants