CREATE TABLE users (
	user_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

INSERT INTO campusx.users(user_id, name, email, password)
VALUES
(NULL, 'Nitish', "n@g", '1234');	

INSERT INTO campusx.users
VALUES
(NULL, 'Pranto', "p@g", '1234');	

INSERT INTO campusx.users(name, email, password) VALUES ('Rayhan', 'r@g', '12349');

-- select all
SELECT * FROM campusx.smartphones WHERE 1;   -- all rows from columns

-- filter_columns
SELECT  model, price, rating FROM campusx.smartphones;

SELECT model, battery_capacity, os FROM campusx.smartphones WHERE 1;

-- Remane column
SELECT os AS 'Operating System', model, battery_capacity as 'MAH' FROM campusx.smartphones WHERE 1;

-- apply calculation between columns
SELECT model,
SQRT(resolution_width*resolution_width + resolution_height*resolution_height)/ screen_size as 'PPI'
FROM campusx.smartphones WHERE 1;

SELECT model, rating/10  FROM campusx.smartphones;

-- create a column which every element is 'smartphone'
SELECT model, 'Smartphone' AS 'type'  FROM campusx.smartphones;


-- unique value from column
SELECT DISTINCT(brand_name) AS 'All Brands'
FROM campusx.smartphones;

SELECT DISTINCT(processor_brand) AS 'All Brands'
FROM campusx.smartphones;

SELECT DISTINCT(os) AS 'All Brands'
FROM campusx.smartphones;

-- find distinct combination
SELECT DISTINCT brand_name, processor_brand
FROM campusx.smartphones;

--  -------------------------------WHERE query-------------------------------it is used to filter rows

-- find samsung brand phone
SELECT * FROM campusx.smartphones
WHERE brand_name = 'samsung';

-- find price > 50000
SELECT * FROM campusx.smartphones
WHERE price > 50000;

-- -------------------------BETWEEN--------------------------------------
SELECT * FROM campusx.smartphones
WHERE price > 5000 AND price < 10000;

SELECT * FROM campusx.smartphones
WHERE price BETWEEN 10000 AND 20000;

SELECT * FROM campusx.smartphones
WHERE price < 25000 AND rating > 80 AND processor_brand = 'snapdragon';

SELECT DISTINCT(brand_name) FROM campusx.smartphones WHERE price > 50000;

-- -----------------IN and NOT IN ----------------------------------------------------
SELECT * FROM campusx.smartphones
WHERE processor_brand = 'snapdragon' OR  
processor_brand = 'exynos' OR 
processor_brand = 'bionic';

SELECT * FROM campusx.smartphones
WHERE processor_brand IN ('snapdragon' , 'exynos' , 'bionic');

SELECT * FROM campusx.smartphones
WHERE processor_brand NOT IN ('snapdragon' , 'exynos' , 'bionic');

-- --------------------------------UPDATE----------------------------------------------
SELECT * FROM campusx.smartphones
WHERE processor_brand = 'helio';

UPDATE campusx.smartphones
SET processor_brand = 'dimensity'
WHERE processor_brand = 'helio';

-- -----------------------------------------DELETE----------------------------------
SELECT * FROM campusx.smartphones
WHERE price > 200000;

DELETE FROM campusx.smartphones
WHERE price > 200000;

-- Delete based on multiple conditions
DELETE FROM campusx.smartphones
WHERE primary_camera_rear > 150 AND brand_name = 'samsung';

SELECT * FROM campusx.smartphones
WHERE  brand_name = 'samsung';

-- -----------------------------SQL AGGREGATE FUNCTION-----------------------------------------
SELECT MAX(price) FROM campusx.smartphones; 
SELECT MIN(price) FROM campusx.smartphones; 

SELECT MAX(price)
FROM campusx.smartphones
WHERE brand_name = 'samsung';

SELECT AVG(rating) AS 'Apple'  FROM campusx.smartphones WHERE brand_name = 'apple';

SELECT SUM(price) FROM campusx.smartphones;

SELECT COUNT(*) FROM campusx.smartphones WHERE brand_name = 'oneplus';

SELECT COUNT(DISTINCT(brand_name)) FROM campusx.smartphones;

SELECT STD(screen_size) FROM campusx.smartphones;

SELECT VARIANCE(screen_size) FROM campusx.smartphones;

-- ---------------------------SQL SCALER FUNCTION-----------------------------------------------


