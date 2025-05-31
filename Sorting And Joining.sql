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














