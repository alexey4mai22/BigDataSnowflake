INSERT INTO postal_code (code, city_id)
SELECT DISTINCT 
    m.seller_postal_code AS code,
    c.city_id
FROM mock_data m
JOIN city c ON m.store_city = c.name
WHERE m.seller_postal_code IS NOT NULL;

INSERT INTO seller (first_name, last_name, email, postal_code_id)
SELECT 
    m.seller_first_name,
    m.seller_last_name,
    m.seller_email,
    pc.postal_code_id
FROM mock_data m
LEFT JOIN postal_code pc ON m.seller_postal_code = pc.code;
