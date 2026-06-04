--Count of Unique Products Sold in the Last Year
SELECT COUNT(DISTINCT product_id) AS unique_products_sold , product_name
FROM sales
WHERE sales_date >= '2021-01-01'
  AND sales_date < '2022-01-01';

  