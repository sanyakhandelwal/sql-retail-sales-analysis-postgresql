--Store With Highest Sales in the Last Year
SELECT
st.store_name,
SUM(s.quantity) AS total_units
FROM sales s
INNER JOIN stores st
ON s.store_id = st.store_id
WHERE s.sales_date >= CURRENT_DATE - INTERVAL '1 year'
GROUP BY st.store_name
ORDER BY total_units DESC
LIMIT 1;

-- To Check your data
SELECT MIN(sales_date), MAX(sales_date)
FROM sales
WHERE sales_date >= CURRENT_DATE - INTERVAL '1 year';

-- Step 2: Preview the join before aggregating
SELECT st.store_name, s.quantity
FROM sales s
INNER JOIN stores st ON s.store_id = st.store_id
WHERE s.sales_date >= CURRENT_DATE - INTERVAL '1 year'
LIMIT 5;

-- To retrieve sales_date from sales table 
SELECT sales_date
FROM sales
ORDER BY sales_date DESC;

