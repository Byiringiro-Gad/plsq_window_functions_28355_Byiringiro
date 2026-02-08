-- JOIN for analytical reporting
-- Combines sales with customer, medicine, and branch details.

SELECT
    s.sale_id,
    c.customer_name,
    m.medicine_name,
    b.branch_name,
    s.sale_date,
    s.total_amount
FROM sales s
JOIN customers c
    ON s.customer_id = c.customer_id
JOIN medicines m
    ON s.medicine_id = m.medicine_id
JOIN branches b
    ON s.branch_id = b.branch_id;
