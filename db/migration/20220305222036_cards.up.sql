CREATE TABLE cards (
    id varchar(64) PRIMARY KEY,
    owner_id varchar(64) NOT NULL,
    card_no varchar NOT NULL,
    card_expiry varchar NOT NULL,
    card_pin int NOT NULL,
    card_type varchar NOT NULL,
);