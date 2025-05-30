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

--  -------------------------------WHERE query----it is used to filter rows

-- find samsung brand phone
SELECT * FROM campusx.smartphones
WHERE brand_name = 'samsung';

-- find price > 50000
SELECT * FROM campusx.smartphones
WHERE price > 50000;

-- Between Query
SELECT * FROM campusx.smartphones
WHERE price > 5000 AND price < 10000;

SELECT * FROM campusx.smartphones
WHERE price BETWEEN 10000 AND 20000;

SELECT * FROM campusx.smartphones
WHERE price < 25000 AND rating > 80 AND processor_brand = 'snapdragon';

SELECT DISTINCT(brand_name) FROM campusx.smartphones WHERE price > 50000;

-- IN and NOT IN 
SELECT * FROM campusx.smartphones
WHERE processor_brand = 'snapdragon' OR  
processor_brand = 'exynos' OR 
processor_brand = 'bionic';

SELECT * FROM campusx.smartphones
WHERE processor_brand IN ('snapdragon' , 'exynos' , 'bionic');

SELECT * FROM campusx.smartphones
WHERE processor_brand NOT IN ('snapdragon' , 'exynos' , 'bionic');








