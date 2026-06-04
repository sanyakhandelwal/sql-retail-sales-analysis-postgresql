--Total Transactions in December 2023 (using BETWEEN)
SELECT COUNT(sales_id) AS total_transaction
FROM sales
WHERE sales_date BETWEEN '2023-12-01' AND '2023-12-31';


--Total Transactions in December 2023 (using TO_CHAR)
SELECT COUNT(sales_id) AS total_transaction 
FROM sales
WHERE TO_CHAR(sales_date , 'YYYY-MM') = '2023-12';
