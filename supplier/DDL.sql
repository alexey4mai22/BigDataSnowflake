CREATE TABLE supplier (
    supplier_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    contact VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    phone VARCHAR(20),
    address VARCHAR(255),
    city_id INTEGER,
    CONSTRAINT fk_supplier_city FOREIGN KEY (city_id)
        REFERENCES city(city_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);
