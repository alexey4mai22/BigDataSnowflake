INSERT INTO store (name, location, city_id, phone, email)
SELECT 
    m.store_name,
    m.store_location,
    c.city_id,
    m.store_phone,
    m.store_email
FROM mock_data m
JOIN city c ON m.store_city = c.name;
