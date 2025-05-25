CREATE TABLE product_category (
    category_id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);


CREATE TABLE product_material (
    material_id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE product_color (
    color_id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE product_size (
    size_id SERIAL PRIMARY KEY,
    name VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE product_brand (
    brand_id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE product (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    category_id INTEGER,
    price NUMERIC(10,2),
    quantity INTEGER,
    weight NUMERIC(10,2),
    color_id INTEGER,
    size_id INTEGER,
    brand_id INTEGER,
    material_id INTEGER,
    description TEXT,
    rating NUMERIC(3,1),
    reviews INTEGER,
    release_date DATE,
    expiry_date DATE,
    pet_category_id INTEGER,
    CONSTRAINT fk_product_category FOREIGN KEY (category_id)
        REFERENCES product_category(category_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT fk_product_color FOREIGN KEY (color_id)
        REFERENCES product_color(color_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT fk_product_size FOREIGN KEY (size_id)
        REFERENCES product_size(size_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT fk_product_brand FOREIGN KEY (brand_id)
        REFERENCES product_brand(brand_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT fk_product_material FOREIGN KEY (material_id)
        REFERENCES product_material(material_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT fk_product_pet_category FOREIGN KEY (pet_category_id)
        REFERENCES pet_category(pet_category_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);
