CREATE TABLE store (
    store_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    location VARCHAR(255),
    city_id INTEGER,
    phone VARCHAR(20),
    email VARCHAR(255) UNIQUE,
    CONSTRAINT fk_store_city FOREIGN KEY (city_id)
        REFERENCES city(city_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);
