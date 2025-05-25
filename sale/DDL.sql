CREATE TABLE sale (
    sale_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    seller_id INTEGER,
    product_id INTEGER,
    store_id INTEGER,
    quantity INTEGER,
    total_price NUMERIC(10,2),
    sale_date DATE,
    CONSTRAINT fk_sale_customer FOREIGN KEY (customer_id)
        REFERENCES customer(customer_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT fk_sale_seller FOREIGN KEY (seller_id)
        REFERENCES seller(seller_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT fk_sale_product FOREIGN KEY (product_id)
        REFERENCES product(product_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT fk_sale_store FOREIGN KEY (store_id)
        REFERENCES store(store_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);
