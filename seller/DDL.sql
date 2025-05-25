CREATE TABLE seller (
    seller_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    postal_code_id INTEGER,
    CONSTRAINT fk_seller_postal_code FOREIGN KEY (postal_code_id)
        REFERENCES postal_code(postal_code_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);
