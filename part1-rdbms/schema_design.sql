--1.2
create database Sales;
use Sales;

create table customers(
customer_id varchar(10) primary key,
customer_name varchar(50) not null,
customer_email varchar(50) not null,
customer city varchar(15) not null
)

create table products(
product_id varchar(10) primary key,
product_name varchar(50) not null,
category varchar(50)not null,
unit_price int not null

)

create table salesreps(
sales_rep_id varchar(10) primary key,
sales_rep_name varchar(50) not null,
sales_rep_email varchar(50) not null,
office_address varchar(50) not null,
)

create table orders(
order_id varchar(10) primary key,
quantity int not null,
product_id varchar(10) not null,
customer_id varchar(10) not null,
order_date date not null,
sales_rep_id varchar(10) not null,
foreign key (product_id) references products(product_id),
foreign key (customer_id) references customers(customer_id),
foreign key (sales_Rep_id) references salesreps(sales_rep_id)
)

INSERT INTO customers VALUES ('C001', 'Rohan Mehta', 'rohan@gmail.com', 'Mumbai');
INSERT INTO customers VALUES ('C002', 'Priya Sharma', 'priya@gmail.com', 'Delhi');
INSERT INTO customers VALUES ('C003', 'Amit Verma', 'amit@gmail.com', 'Bangalore');
INSERT INTO customers VALUES ('C005', 'Vikram Singh', 'vikram@gmail.com', 'Mumbai');
INSERT INTO customers VALUES ('C006', 'Neha Gupta', 'neha@gmail.com', 'Delhi');

INSERT INTO products VALUES ('P001', 'Laptop', 'Electronics', 55000);
INSERT INTO products VALUES ('P003', 'Desk Chair', 'Furniture', 8500);
INSERT INTO products VALUES ('P004', 'Notebook', 'Stationery', 120);
INSERT INTO products VALUES ('P005', 'Headphones', 'Electronics', 3200);
INSERT INTO products VALUES ('P006', 'Standing Desk', 'Furniture', 22000);

INSERT INTO salesreps VALUES ('SR01', 'Deepak Joshi', 'deepak@corp.com', 'Mumbai HQ, Nariman Point, Mumbai - 400021');
INSERT INTO salesreps VALUES ('SR02', 'Anita Desai', 'anita@corp.com', 'Delhi Office, Connaught Place, New Delhi - 110001');
INSERT INTO salesreps VALUES ('SR03', 'Ravi Kumar', 'ravi@corp.com', 'South Zone, MG Road, Bangalore - 560001');
INSERT INTO salesreps VALUES ('SR04', 'Sanya Gill', 'sanya@corp.com', 'Chennai Branch, T. Nagar, Chennai - 600017');
INSERT INTO salesreps VALUES ('SR05', 'Vikas Ray', 'vikas@corp.com', 'Hyderabad Hub, Jubilee Hills, Hyderabad - 500033');

INSERT INTO orders VALUES ('ORD1027', 'C002', 'P004', 'SR02', 4, '2023-11-02');
INSERT INTO orders VALUES ('ORD1114', 'C001', 'P004', 'SR01', 2, '2023-08-06');
INSERT INTO orders VALUES ('ORD1153', 'C006', 'P004', 'SR01', 3, '2023-02-14');
INSERT INTO orders VALUES ('ORD1002', 'C002', 'P005', 'SR02', 1, '2023-01-17');
INSERT INTO orders VALUES ('ORD1118', 'C006', 'P004', 'SR02', 5, '2023-11-10');

