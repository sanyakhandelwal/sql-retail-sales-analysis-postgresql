--Percentage of Claims Marked as Warranty Void
SELECT
ROUND(
COUNT(CASE WHEN repair_status = 'Warranty Void'
THEN 1 END) * 100.0
/ COUNT(*),
2
) AS void_percentage
FROM warranty;   

