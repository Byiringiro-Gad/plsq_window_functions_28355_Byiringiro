-- SELF JOIN
-- Compares customers who are located in the same region.

SELECT
    c1.customer_name AS customer_1,
    c2.customer_name AS customer_2,
    c1.region
FROM customers c1
JOIN customers c2
    ON c1.region = c2.region
   AND c1.customer_id < c2.customer_id
ORDER BY c1.region;
