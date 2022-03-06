CREATE TABLE locations (
    id varchar(64) PRIMARY KEY,
    owner_id varchar(64) NOT NULL,
    country varchar NOT NULL,
    province varchar NOT NULL,
    city varchar NOT NULL,
    street_address varchar NOT NULL,
    postal_code varchar NOT NULL,
);