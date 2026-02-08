SELECT
    TO_CHAR(s.sale_date, 'YYYY-MM') AS sales_month,
    SUM(s.total_amount) AS monthly_sales,

    -- Previous month sales
    LAG(SUM(s.total_amount)) OVER (
        ORDER BY TO_CHAR(s.sale_date, 'YYYY-MM')
    ) AS previous_month_sales,

    -- Sales difference compared to previous month
    SUM(s.total_amount) -
    LAG(SUM(s.total_amount)) OVER (
        ORDER BY TO_CHAR(s.sale_date, 'YYYY-MM')
    ) AS sales_change

FROM sales s
GROUP BY TO_CHAR(s.sale_date, 'YYYY-MM')
ORDER BY sales_month;
