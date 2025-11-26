use sales

DELIMITER &&
CREATE PROCEDURE ORDER_PRODUCTS ()
BEGIN
SELECT o.order_id, o.customer_id, o.product_id, o.quantity, o.order_date, p.product_id AS product_p_id, p.product_name, p.price
FROM orders AS o
LEFT JOIN products p ON p.product_id = o.product_id
UNION
SELECT o.order_id, o.customer_id, o.product_id, o.quantity, o.order_date, p.product_id AS product_p_id, p.product_name, p.price
FROM products AS p
LEFT JOIN orders o ON p.product_id = o.product_id
WHERE o.product_id IS NULL;
END &&

CALL ORDER_PRODUCTS
