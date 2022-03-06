CREATE TABLE orders_products (
    id varchar(64) PRIMARY KEY,
    order_id varchar(64) NOT NULL,
    product_id varchar(64) NOT NULL
);