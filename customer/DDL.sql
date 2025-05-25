CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    age INTEGER,
    email VARCHAR(255) UNIQUE,
    postal_code_id INTEGER,
    CONSTRAINT fk_customer_postal_code FOREIGN KEY (postal_code_id)
        REFERENCES postal_code(postal_code_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);
