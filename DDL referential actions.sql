SELECT * FROM orders;

SELECT * FROM customers;

DROP TABLE orders;


CREATE TABLE orders(
    order_id INTEGER PRIMARY KEY,
    cid INT NOT NULL,
    order_data DATE NOT NULL DEFAULT (CURDATE()),

    CONSTRAINT orders_fk 
        FOREIGN KEY (cid) 
        REFERENCES customers(cid)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

INSERT INTO orders (order_id, cid, order_data)
VALUES (
    1,1,'2023-12-31'
);

--see table constriant
SHOW CREATE TABLE orders;

--ALTER --> modify table (delete , update column)

ALTER TABLE customers ADD COLUMN password VARCHAR(255) NOT NULL;


--Add column in specific position
ALTER TABLE customers ADD COLUMN surname VARCHAR(255) NOT NULL AFTER name;


ALTER TABLE customers
 ADD COLUMN pan_number VARCHAR(255) AFTER surname,
 ADD COLUMN joining_date DATE NOT NULL DEFAULT (CURDATE());


 --Delete column
ALTER TABLE customers DROP COLUMN pan_number;

 --Delete multiple column
ALTER TABLE customers 
 DROP COLUMN password,
 DROP COLUMN joining_date;

 --Modify column
--ALTER TABLE customers
--MODIFY COLUMN surname INT;


--ALTER TABLE customers
--MODIFY COLUMN surname INT;


--Add or delete constraints
