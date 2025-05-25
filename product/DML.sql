INSERT INTO product_category (name)
SELECT DISTINCT product_category FROM mock_data WHERE product_category IS NOT NULL;

INSERT INTO product_material (name)
SELECT DISTINCT product_material FROM mock_data WHERE product_material IS NOT NULL;

INSERT INTO product_material (name)
SELECT DISTINCT product_material FROM mock_data WHERE product_material IS NOT NULL;

INSERT INTO product_color (name)
SELECT DISTINCT product_color FROM mock_data WHERE product_color IS NOT NULL;

INSERT INTO product_size (name)
SELECT DISTINCT product_size FROM mock_data WHERE product_size IS NOT NULL;

INSERT INTO product_brand (name)
SELECT DISTINCT product_brand FROM mock_data WHERE product_brand IS NOT NULL;

INSERT INTO product_brand (name)
SELECT DISTINCT product_brand FROM mock_data WHERE product_brand IS NOT NULL;

INSERT INTO product (
    name, category_id, price, quantity, weight, color_id, size_id, brand_id, 
    material_id, description, rating, reviews, release_date, expiry_date, pet_category_id
)
SELECT 
    m.product_name,
    pc.category_id,
    m.product_price,
    m.product_quantity,
    m.product_weight,
    col.color_id,
    sz.size_id,
    br.brand_id,
    mat.material_id,
    m.product_description,
    m.product_rating,
    m.product_reviews,
    TO_DATE(m.product_release_date, 'MM/DD/YYYY'),
    TO_DATE(m.product_expiry_date, 'MM/DD/YYYY'),
    pet_cat.pet_category_id
FROM mock_data m
LEFT JOIN product_category pc ON m.product_category = pc.name
LEFT JOIN product_color col ON m.product_color = col.name
LEFT JOIN product_size sz ON m.product_size = sz.name
LEFT JOIN product_brand br ON m.product_brand = br.name
LEFT JOIN product_material mat ON m.product_material = mat.name
LEFT JOIN pet_category pet_cat ON m.pet_category = pet_cat.name;
