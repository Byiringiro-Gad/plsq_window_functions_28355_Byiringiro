SELECT
    s.sale_date,
    SUM(s.total_amount) AS daily_sales,

    -- Running total using ROWS
    SUM(SUM(s.total_amount)) OVER (
        ORDER BY s.sale_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_total_rows,

    -- Running total using RANGE
    SUM(SUM(s.total_amount)) OVER (
        ORDER BY s.sale_date
        RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_total_range,

    -- Average sales trend
    AVG(SUM(s.total_amount)) OVER (
        ORDER BY s.sale_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS average_sales,

    -- Minimum sales value so far
    MIN(SUM(s.total_amount)) OVER (
        ORDER BY s.sale_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS minimum_sales,

    -- Maximum sales value so far
    MAX(SUM(s.total_amount)) OVER (
        ORDER BY s.sale_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS maximum_sales

FROM sales s
GROUP BY s.sale_date
ORDER BY s.sale_date;
