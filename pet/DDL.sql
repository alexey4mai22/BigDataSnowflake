CREATE TABLE pet_type (
    pet_type_id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE pet_breed (
    pet_breed_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    pet_type_id INTEGER NOT NULL,
    UNIQUE (name, pet_type_id),
    CONSTRAINT fk_pet_breed_type FOREIGN KEY (pet_type_id)
        REFERENCES pet_type(pet_type_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE pet (
    pet_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    pet_type_id INTEGER,
    pet_breed_id INTEGER,
    customer_id INTEGER,
    CONSTRAINT fk_pet_type FOREIGN KEY (pet_type_id)
        REFERENCES pet_type(pet_type_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT fk_pet_breed FOREIGN KEY (pet_breed_id)
        REFERENCES pet_breed(pet_breed_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT fk_pet_customer FOREIGN KEY (customer_id)
        REFERENCES customer(customer_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
