CREATE TABLE carts_products (
    id varchar(64) PRIMARY KEY,
    cart_id varchar(64) NOT NULL,
    product_id varchar(64) NOT NULL
);