CREATE TABLE orders (
    id varchar(64) PRIMARY KEY,
    customer_id varchar(64) NOT NULL,
    order_date timestamptz NOT NULL DEFAULT (now())
);