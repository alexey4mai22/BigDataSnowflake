INSERT INTO postal_code (code, city_id)
SELECT DISTINCT 
    m.customer_postal_code AS code,
    c.city_id
FROM mock_data m
JOIN city c ON m.store_city = c.name
WHERE m.customer_postal_code IS NOT NULL;