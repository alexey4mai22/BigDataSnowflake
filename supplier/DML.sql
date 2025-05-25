INSERT INTO supplier (name, contact, email, phone, address, city_id)
SELECT 
    m.supplier_name,
    m.supplier_contact,
    m.supplier_email,
    m.supplier_phone,
    m.supplier_address,
    c.city_id
FROM mock_data m
JOIN city c ON m.supplier_city = c.name;
