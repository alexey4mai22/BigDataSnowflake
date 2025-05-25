CREATE TABLE country (
    country_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE state (
    state_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    country_id INTEGER NOT NULL,
    UNIQUE (name, country_id),
    CONSTRAINT fk_state_country FOREIGN KEY (country_id)
        REFERENCES country(country_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


CREATE TABLE city (
    city_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    state_id INTEGER NOT NULL,
    UNIQUE (name, state_id),
    CONSTRAINT fk_city_state FOREIGN KEY (state_id)
        REFERENCES state(state_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


CREATE TABLE postal_code (
    postal_code_id SERIAL PRIMARY KEY,
    code VARCHAR(20) NOT NULL,
    city_id INTEGER NOT NULL,
    UNIQUE (code, city_id),
    CONSTRAINT fk_postal_code_city FOREIGN KEY (city_id)
        REFERENCES city(city_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
