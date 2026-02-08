-- FULL OUTER JOIN
-- Shows medicines without sales and sales records without medicines.

SELECT
    m.medicine_id,
    m.medicine_name,
    s.sale_id,
    s.sale_date,
    s.total_amount
FROM medicines m
FULL OUTER JOIN sales s
    ON m.medicine_id = s.medicine_id
ORDER BY m.medicine_name;
