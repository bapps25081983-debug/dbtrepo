SELECT
    order_id,
    customer_id,
    order_amount,
   {{calc_range('order_amount')}} as amount_Range
FROM {{ source('s1', 'stg_orders') }}