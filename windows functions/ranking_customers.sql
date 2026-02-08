SELECT
    c.customer_id,
    c.customer_name,
    SUM(s.total_amount) AS total_revenue,

    ROW_NUMBER() OVER (ORDER BY SUM(s.total_amount) DESC) AS row_num,
    RANK() OVER (ORDER BY SUM(s.total_amount) DESC) AS rank_val,
    DENSE_RANK() OVER (ORDER BY SUM(s.total_amount) DESC) AS dense_rank_val,
    PERCENT_RANK() OVER (ORDER BY SUM(s.total_amount) DESC) AS percent_rank_val

FROM customers c
JOIN sales s
    ON c.customer_id = s.customer_id
GROUP BY
    c.customer_id,
    c.customer_name
ORDER BY total_revenue DESC;
