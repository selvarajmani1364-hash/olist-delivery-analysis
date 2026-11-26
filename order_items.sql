SELECT o.order_id,
       o.customer_id,
       o.order_status,
      o.order_purchase_timestamp,
       o.order_approved_at,
       o.order_delivered_carrier_date,
       o.order_delivered_customer_date,
       o.order_estimated_delivery_date,
       oi.product_id,
       oi.seller_id,
       oi.shipping_limit_date,
       oi.price,
       oi.freight_value
FROM orders as o
inner join order_items as oi
on o.order_id = oi.order_id;