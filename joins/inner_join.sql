-- INNER JOIN
-- Retrieves only sales records that have matching customers,
-- medicines, and branches.

SELECT
    s.sale_id,
    c.customer_name,
    m.medicine_name,
    b.branch_name,
    s.sale_date,
    s.quantity,
    s.total_amount
FROM sales s
INNER JOIN customers c
    ON s.customer_id = c.customer_id
INNER JOIN medicines m
    ON s.medicine_id = m.medicine_id
INNER JOIN branches b
    ON s.branch_id = b.branch_id
ORDER BY s.sale_date;
