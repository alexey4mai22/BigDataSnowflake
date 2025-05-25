INSERT INTO pet_category (name)
SELECT DISTINCT pet_category FROM mock_data WHERE pet_category IS NOT NULL;

INSERT INTO pet_type (name)
SELECT DISTINCT customer_pet_type FROM mock_data WHERE customer_pet_type IS NOT NULL;

INSERT INTO pet_breed (name, pet_type_id)
SELECT DISTINCT 
    m.customer_pet_breed AS name,
    pt.pet_type_id
FROM mock_data m
JOIN pet_type pt ON m.customer_pet_type = pt.name
WHERE m.customer_pet_breed IS NOT NULL;

INSERT INTO pet (name, pet_type_id, pet_breed_id, customer_id)
SELECT 
    m.customer_pet_name,
    pt.pet_type_id,
    pb.pet_breed_id,
    c.customer_id
FROM mock_data m
JOIN pet_type pt ON m.customer_pet_type = pt.name
JOIN pet_breed pb ON m.customer_pet_breed = pb.name AND pt.pet_type_id = pb.pet_type_id
JOIN customer c ON m.id = c.customer_id;
