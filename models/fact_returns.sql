select return_id,order_id,refund_amount,     {{calc_range('refund_amount')}} as refund_range  
    from {{ source('s1', 'stg_returns') }}