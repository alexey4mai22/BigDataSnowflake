INSERT INTO seller (first_name, last_name, email, postal_code_id)
SELECT 
    m.seller_first_name,
    m.seller_last_name,
    m.seller_email,
    pc.postal_code_id
FROM mock_data m
LEFT JOIN postal_code pc ON m.seller_postal_code = pc.code;
