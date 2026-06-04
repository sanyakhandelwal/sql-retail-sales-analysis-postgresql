--Total Warranty Claims Filed in 2020
SELECT
COUNT(claim_id) AS total_claims_2020
FROM warranty
WHERE EXTRACT(YEAR FROM claim_date) = 2020;
