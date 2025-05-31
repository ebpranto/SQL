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

-- Group smartphone by brand, and find the brand with the heighest number of  model that have both NFC and IR blaster.
SELECT brand_name, COUNT(*) AS 'count'
FROM campusx.smartphones
WHERE has_nfc = 'True' AND has_ir_blaster = 'True'
GROUP BY brand_name
ORDER BY count DESC LIMIT 1;

-- find all samsung 5g enables phone and find out the avg price for NFC and NON-NFC.
SELECT brand_name, AVG(price), has_nfc
FROM campusx.smartphones
WHERE brand_name = 'samsung'
GROUP BY has_nfc;


-- ----------------------------------Having (operation of aggregate group by)--------------------------------
-- find the avg rating of phone brand which have more than 20 phones.
SELECT brand_name, AVG(rating) AS 'avg_rating',
COUNT(*)
FROM campusx.smartphones
GROUP BY brand_name
HAVING COUNT(*) > 40
ORDER BY avg_rating DESC;

-- Find the top 3 brands with the hightest avg ram that have a  refresh rate of at least 90hz and fast charging available and don't consider brands which have less than 10 phones
SELECT brand_name,  AVG(ram_capacity) AS 'avg_ram_capasity'
FROM campusx.smartphones
WHERE refresh_rate > 90 AND fast_charging_available = 1
GROUP BY brand_name
HAVING COUNT(*) > 10
ORDER BY avg_ram_capasity DESC LIMIT 3;

-- find the avg price of all the phone brands with avg rating > 70 and num_phones more than 10 among all 5g enables phones
SELECT brand_name, AVG(price), COUNT(*)
FROM campusx.smartphones
WHERE has_5g = 'True'
GROUP BY brand_name
HAVING AVG(rating) > 70 AND COUNT(*) > 10;
