--Create table stores
CREATE TABLE stores(
store_id   VARCHAR(5) PRIMARY KEY,
store_name VARCHAR(30),
city     VARCHAR(25),
country  VARCHAR(25)
);

--Create table category
CREATE TABLE category
(category_id VARCHAR(10) PRIMARY KEY,
category_name  VARCHAR(20)
);

--Create product table
CREATE TABLE products
(
product_id   VARCHAR(10) PRIMARY KEY,
product_name VARCHAR(35),
category_id  VARCHAR(10),
launch_date  date,
price FLOAT,
CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES category(category_id)
);

--Create sales table 
CREATE TABLE sales
(
sales_id VARCHAR(15) PRIMARY KEY,
sales_date DATE,
store_id VARCHAR(10),
product_id VARCHAR(10),
quantity int,
constraint fk_store foreign key(store_id) references stores(store_id),
constraint fk_product  foreign key(product_id) references products(product_id)
);

--Create table warranty
CREATE TABLE warranty
(
claim_id VARCHAR(10) PRIMARY KEY,
claim_date DATE,
sales_id VARCHAR(15),
repair_status VARCHAR(15),
CONSTRAINT fk_orders FOREIGN KEY (sales_id) REFERENCES sales(sales_id)
);
