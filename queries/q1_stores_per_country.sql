--Number of Stores Per Country
SELECT DISTINCT country,
COUNT(store_id) AS total_stores
FROM stores 
GROUP BY country 
ORDER BY total_stores DESC;
