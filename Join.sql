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
