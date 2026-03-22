create table fact_sales(
transaction_id varchar(10) not null,
unit_sold int not null,
units_price decimal(10,5) not null,
store_id varchar(20) not null,
product_id varchar(20) not null,
date_id date not null,
customer_id varchar(10) not null,
foreign key (date_id) references dim_date(date_id),
foreign key (store_id) references dim_store(store_id),
foreign key (product_id) references dim_product(product_id),
foreign key (customer_id) references dim_customer(customer_id),

)

create table dim_store(
store_id varchar(20) primary key,
store_name varchar(10) not null,
store_city varchar(50) not null,
)

create table dim_product(
product_id varchar(20) primary key,
product_name varchar(50) not null,
category varchar(50) not null,

)

create table dim_date(
date_id varchar(10) primary key ,
full_date date not null,
year INT not null,
month_name varchar(10) not null,
day varchar(10) not null,
)

create table dim_customer(
customer_id varchar(10) primary key
)

INSERT INTO dim_store (store_id, store_name, store_city) VALUES ('S001', 'Chennai Anna', 'Chennai');
INSERT INTO dim_store (store_id, store_name, store_city) VALUES ('S002', 'Delhi South', 'Delhi');
INSERT INTO dim_store (store_id, store_name, store_city) VALUES ('S003', 'Bangalore MG', 'Bangalore');
INSERT INTO dim_store (store_id, store_name, store_city) VALUES ('S004', 'Pune FC Road', 'Pune');
INSERT INTO dim_store (store_id, store_name, store_city) VALUES ('S005', 'Mumbai Central', 'Mumbai');

-- DIM_PRODUCT (Sample)
INSERT INTO dim_product (product_id, product_name, category) VALUES ('P001', 'Speaker', 'Electronics');
INSERT INTO dim_product (product_id, product_name, category) VALUES ('P002', 'Tablet', 'Electronics');
INSERT INTO dim_product (product_id, product_name, category) VALUES ('P003', 'Phone', 'Electronics');
INSERT INTO dim_product (product_id, product_name, category) VALUES ('P004', 'Smartwatch', 'Electronics');
INSERT INTO dim_product (product_id, product_name, category) VALUES ('P005', 'Atta 10kg', 'Grocery');
INSERT INTO dim_product (product_id, product_name, category) VALUES ('P006', 'Jeans', 'Clothing');

-- DIM_DATE (Sample)
INSERT INTO dim_date (date_id, full_date, year, month_name, day) VALUES ('D001', '2023-08-29', 2023, 'August', 'Tuesday');
INSERT INTO dim_date (date_id, full_date, year, month_name, day) VALUES ('D002', '2023-12-12', 2023, 'December', 'Tuesday');
INSERT INTO dim_date (date_id, full_date, year, month_name, day) VALUES ('D003', '2023-02-05', 2023, 'February', 'Sunday');

-- DIM_CUSTOMER (Sample)
INSERT INTO dim_customer (customer_id) VALUES ('CUST045');
INSERT INTO dim_customer (customer_id) VALUES ('CUST021');
INSERT INTO dim_customer (customer_id) VALUES ('CUST019');

-- FACT_SALES (Sample of first 5 rows)
INSERT INTO fact_sales (transaction_id, unit_sold, units_price, store_id, product_id, date_id, customer_id) VALUES ('TXN5000', 3, 49262.78, 'S001', 'P001', 'D001', 'CUST045');
INSERT INTO fact_sales (transaction_id, unit_sold, units_price, store_id, product_id, date_id, customer_id) VALUES ('TXN5001', 11, 23226.12, 'S001', 'P002', 'D002', 'CUST021');
INSERT INTO fact_sales (transaction_id, unit_sold, units_price, store_id, product_id, date_id, customer_id) VALUES ('TXN5002', 20, 48703.39, 'S001', 'P003', 'D003', 'CUST019');
INSERT INTO fact_sales (transaction_id, unit_sold, units_price, store_id, product_id, date_id, customer_id) VALUES ('TXN5003', 14, 23226.12, 'S002', 'P002', 'D003', 'CUST007');
INSERT INTO fact_sales (transaction_id, unit_sold, units_price, store_id, product_id, date_id, customer_id) VALUES ('TXN5004', 10, 58851.01, 'S001', 'P004', 'D004', 'CUST004');