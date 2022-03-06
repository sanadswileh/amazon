CREATE TABLE customers (
    id varchar(64) PRIMARY KEY,
    email varchar NOT NULL,
    first_name varchar NOT NULL,
    last_name varchar NOT NULL,
    password varchar NOT NULL,
    created_at timestamptz NOT NULL DEFAULT (now())
);