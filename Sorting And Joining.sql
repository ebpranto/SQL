-- ----------------- ------------------SROTING-------------------------------------------

-- top 5 screen size samsung phione
SELECT model, screen_size FROM campusx.smartphones WHERE brand_name = 'samsung'
ORDER BY screen_size DESC LIMIT 5;


SELECT model, num_rear_cameras + num_front_cameras AS 'total_cameras' FROM  campusx.smartphones
ORDER BY total_cameras DESC;

-- Find the phone with 2nd largest bettery
SELECT model, battery_capacity FROM campusx.smartphones
ORDER BY battery_capacity DESC LIMIT 1, 1;

-- find the name and rating of the worst rated apple phone
SELECT  model, rating 
FROM campusx.smartphones 
WHERE brand_name = 'apple'
ORDER BY rating ASC LIMIT 1;


-- 32:15
SELECT model, brand_name, price FROM campusx.smartphones
ORDER BY brand_name ASC, price ASC;

SELECT model, brand_name, price FROM campusx.smartphones
ORDER BY brand_name ASC , rating DESC;

-- ----------------------GROUP BY---------------------------------------------
 -- -------------------Single Column------------------------------------------
-- Total No. of phone per brand
SELECT brand_name, COUNT(*) AS 'num_phones'
FROM campusx.smartphones
GROUP BY brand_name 
ORDER BY num_phones DESC;


SELECT brand_name, COUNT(*) AS 'num_phones',
 AVG(price) AS 'avg_price',
 MAX(rating) AS 'max rating'
FROM campusx.smartphones
GROUP BY brand_name 
ORDER BY num_phones DESC;

-- Group smartphones by whether they has NFC and get the average price and rating.
SELECT has_nfc,
AVG(price) AS 'AVG_PRICE',
AVG(rating) AS 'Avg_rating' 
FROM campusx.smartphones
GROUP BY has_nfc;

-- Group Smartphones by  the brand and processor brand and get the count of models, and the average primary camera resolution(rate)
SELECT brand_name, 
processor_brand,
COUNT(*), 
AVG(primary_camera_rear)
FROM campusx.smartphones
GROUP BY brand_name , processor_brand;

SELECT brand_name, processor_brand 
FROM campusx.smartphones
GROUP BY brand_name, processor_brand;

-- TOP 5 costly phone brand
SELECT brand_name, AVG(price) AS 'avg_price'
FROM campusx.smartphones
GROUP BY brand_name
ORDER BY avg_price DESC
LIMIT 5;

-- which brand makes the smallest screen smartphones?
SELECT brand_name, SUM(screen_size) AS 'avg_screen_size'
FROM campusx.smartphones
GROUP BY brand_name
ORDER BY avg_screen_size ASC LIMIT 1;

-- AVG price of 5g phones and avg price of non-5g phones
SELECT has_5g, AVG(price)
FROM campusx.smartphones
GROUP BY has_5g;


