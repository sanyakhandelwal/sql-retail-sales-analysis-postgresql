--Total Units Sold By Each Store
SELECT s.store_id  ,
s.store_name,
SUM(sa.quantity) AS total_units 
FROM stores s LEFT JOIN sales sa
ON s.store_id = sa.store_id
GROUP BY s.store_id, s.store_name
ORDER BY total_units DESC;