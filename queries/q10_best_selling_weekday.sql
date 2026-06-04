--Best-Selling Weekday Per Store
WITH daily_sales AS (
SELECT
s.store_id,
st.store_name,
TRIM(TO_CHAR(s.sales_date, 'Day')) AS weekday,
SUM(s.quantity) AS total_units,
RANK() OVER (
PARTITION BY s.store_id
ORDER BY SUM(s.quantity) DESC
) AS sales_rank
FROM sales s
INNER JOIN stores st
ON s.store_id = st.store_id
GROUP BY
s.store_id,
st.store_name,
TRIM(TO_CHAR(s.sales_date, 'Day'))
)
SELECT
store_name,
weekday AS best_selling_day,
total_units
FROM daily_sales
WHERE sales_rank = 1
ORDER BY store_name;

