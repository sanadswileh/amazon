CREATE TABLE customers (
    id varchar(64) PRIMARY KEY,
    email varchar NOT NULL,
    first_name varchar NOT NULL,
    last_name varchar NOT NULL,
    password varchar NOT NULL,
    created_at timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE carts (
    id varchar(64) PRIMARY KEY,
    customer_id varchar(64) NOT NULL,
);

CREATE TABLE carts_products (
    id varchar(64) PRIMARY KEY,
    cart_id varchar(64) NOT NULL,
    product_id varchar(64) NOT NULL
);

CREATE TABLE orders (
    id varchar(64) PRIMARY KEY,
    customer_id varchar(64) NOT NULL,
    order_date timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE orders_products (
    id varchar(64) PRIMARY KEY,
    order_id varchar(64) NOT NULL,
    product_id varchar(64) NOT NULL
);

CREATE TABLE products (
    id varchar(64) PRIMARY KEY,
    name varchar NOT NULL,
    description varchar NOT NULL,
    price float NOT NULL,
    stock int NOT NULL,
    category varchar NOT NULL,
    discount bool NOT NULL,
    discount_amount float NOT NULL,
    supplier_id varchar(64) NOT NULL
);

CREATE TABLE suppliers (
    id varchar(64) PRIMARY KEY,
    email varchar NOT NULL,
    first_name varchar NOT NULL,
    last_name varchar NOT NULL,
    password varchar NOT NULL,
    business_name varchar NOT NULL,
    logo varchar NOT NULL,
);

CREATE TABLE locations (
    id varchar(64) PRIMARY KEY,
    owner_id varchar(64) NOT NULL,
    country varchar NOT NULL,
    province varchar NOT NULL,
    city varchar NOT NULL,
    street_address varchar NOT NULL,
    postal_code varchar NOT NULL,
);

CREATE TABLE cards (
    id varchar(64) PRIMARY KEY,
    owner_id varchar(64) NOT NULL,
    card_no varchar NOT NULL,
    card_expiry varchar NOT NULL,
    card_pin int NOT NULL,
    card_type varchar NOT NULL,
);


ALTER TABLE cart_product ADD FOREIGN KEY (cart_id) REFERENCES carts (id);

ALTER TABLE orders ADD FOREIGN KEY (customer_id) REFERENCES customers (id);
ALTER TABLE locations ADD FOREIGN KEY (owner_id) REFERENCES customers (id);
ALTER TABLE cards ADD FOREIGN KEY (owner_id) REFERENCES customers (id);
ALTER TABLE carts ADD FOREIGN KEY (customer_id) REFERENCES customers (id);

ALTER TABLE locations ADD FOREIGN KEY (owner_id) REFERENCES suppliers (id);
ALTER TABLE cards ADD FOREIGN KEY (owner_id) REFERENCES suppliers (id);
ALTER TABLE products ADD FOREIGN KEY (supplier_id) REFERENCES suppliers (id);


ALTER TABLE order_product ADD FOREIGN KEY (order_id) REFERENCES orders (id);

ALTER TABLE order_product ADD FOREIGN KEY (product_id) REFERENCES products (id);
ALTER TABLE cart_product ADD FOREIGN KEY (product_id) REFERENCES products (id);


