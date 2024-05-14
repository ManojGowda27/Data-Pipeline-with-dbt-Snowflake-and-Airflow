SELECT
    order_key,
    SUM(extended_price) as gross_item_sales_amount,
    SUM(item_discount_amount) as item_discount_amount
FROM
    {{ ref('int_order_items') }}
GROUP BY
    order_key