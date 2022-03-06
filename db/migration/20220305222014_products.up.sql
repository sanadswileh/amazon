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