-- LEFT JOIN
-- Finds customers who have never made any sales transactions.

SELECT
    c.customer_id,
    c.customer_name,
    c.region
FROM customers c
LEFT JOIN sales s
    ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL;
