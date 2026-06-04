--Average Product Price Per Category
SELECT
    c.category_name,
    CAST(AVG(p.price) AS numeric(10,2)) AS avg_retail_price
FROM products p
JOIN category c
    ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY avg_retail_price DESC;

