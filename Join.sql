CREATE DATABASE IF NOT EXISTS flipkart;
CREATE DATABASE IF NOT EXISTS sql_cx_live;

-- --------------------------------------Cross Join------------------------------------
SELECT * FROM sql_cx_live.users t1
CROSS JOIN sql_cx_live.groups t2;

-- -----------------------Inner Join-----------------------------------------------
SELECT * FROM sql_cx_live.membership t1
INNER JOIN sql_cx_live.users t2
ON t1.user_id = t2.user_id;


-- ----------------------LEFT JOIN--------------------------------------
SELECT * FROM sql_cx_live.membership t1
LEFT JOIN sql_cx_live.users t2
ON t1.user_id = t2.user_id;


-- -----------------------------------RIGHT JOIN--------------------------------------
SELECT * FROM sql_cx_live.membership t1
RIGHT JOIN sql_cx_live.users t2
ON t1.user_id = t2.user_id;

-- --------------------------------SQL set operatoins---------------------------------------------
-- ---------------------------------------UNION ------------------------------------------
SELECT * FROM sql_cx_live.person1
UNION
SELECT * FROM sql_cx_live.person2;

-- ----------------------------UNION ALL------------------------------------------
SELECT * FROM sql_cx_live.person1
UNION ALL
SELECT * FROM sql_cx_live.person2;

SELECT * FROM sql_cx_live.person1
INTERSECT
SELECT * FROM sql_cx_live.person2;

SELECT * FROM sql_cx_live.person1
EXCEPT
SELECT * FROM sql_cx_live.person2;

-- ---------------------------------FULL JOIN-----------------------------------------
SELECT * FROM sql_cx_live.membership t1
LEFT JOIN sql_cx_live.users t2
ON t1.user_id = t2.user_id
UNION
SELECT * FROM sql_cx_live.membership t1
RIGHT JOIN sql_cx_live.users t2
ON t1.user_id = t2.user_id;

-- -----------------------------------------------------SELF JOIN-------------------------------------------





-- ------------------------------------------JOIN MORE THAN ONE COLUMNS---------------------------------

SELECT * FROM sql_cx_live.students t1
JOIN sql_cx_live.class t2
ON  t1.student_id  = t2.class_id
AND  t1.enrollment_year = t2.class_year;

SELECT * FROM sql_cx_live.students t1
LEFT JOIN sql_cx_live.class t2
ON  t1.student_id  = t2.class_id
AND  t1.enrollment_year = t2.class_year;

SELECT * FROM sql_cx_live.students t1
RIGHT JOIN sql_cx_live.class t2
ON  t1.student_id  = t2.class_id
AND  t1.enrollment_year = t2.class_year;

-- ---------------------------------------JOIN MORE THAN 2 TABLES---------------------------------------------


-- --------------------FILTER Columns--------------------------------------
-- FIND THE NAME OF PERSON WHO ORDERED
SELECT * FROM flipkart.users t1
JOIN flipkart.orders t2
ON t1.user_id = t2.user_id
JOIN flipkart.order_details t3
ON t2.order_id = t3.order_id;

SELECT t1.name, t2.order_id, t3.amount, t3.profit FROM flipkart.users t1
JOIN flipkart.orders t2
ON t1.user_id = t2.user_id
JOIN flipkart.order_details t3
ON t2.order_id = t3.order_id;

-- Find order_id, name and city by joining users and orders.
SELECT t1.name, t1.city, t2.order_id 
FROM flipkart.users t1
JOIN flipkart.orders t2
ON t1.user_id = t2.user_id;

-- Find order_id, product category by joining order_details and category.
SELECT t1.order_id, t2.vertical
FROM flipkart.order_details t1
JOIN flipkart.category t2
ON t1.category_id = t2.category_id;

-- ---------------------------FILTER rows--------------------------------------
-- Find all orders placed in Pune
SELECT * FROM flipkart.users t1
JOIN flipkart.orders t2
ON t1.user_id = t2.user_id
WHERE t1.city = 'Pune';

SELECT * FROM flipkart.users t1
JOIN flipkart.orders t2
ON t1.user_id = t2.user_id
WHERE t1.city = 'Pune' AND t1.name = 'Syed';

-- Find all orders under chair category
SELECT * FROM flipkart.order_details t1
JOIN flipkart.category t2
ON t1.category_id = t2.category_id
WHERE t2.vertical = 'Chairs';




