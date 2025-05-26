CREATE DATABASE IF NOT EXISTS campusx;


-- select campusx;
use campusx;


-- Crete table with not null
CREATE TABLE users(
    user_id INTEGER NOT NULL,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    password VARCHAR(255)
);

SELECT *
FROM users limit 5;

-- Insert sample data into the users table
INSERT INTO users (user_id, name, email, password)
VALUES 
(1, 'Alice Johnson', 'alice@example.com', 'alice123'),
(2, 'Bob Smith', 'bob@example.com', 'bobpass'),
(3, 'Carol Lee', 'carol@example.com', 'carol789');

DROP TABLE users;

--emial--> unique
CREATE TABLE users(
    user_id INTEGER NOT NULL,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);



-- Insert sample data into the users table
INSERT INTO users (user_id, name, email, password)
VALUES 
(1, 'Alice Johnson', 'alice@example.com', 'alice123'),
(2, 'Bob Smith', 'bob@example.com', 'bobpass'),
(3, 'Carol Lee', 'carol@example.com', 'carol789');

DROP TABLE users;


--apply email unique another way
CREATE TABLE users(
    user_id INTEGER NOT NULL,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,

    -- name of constraint  constraint(colum name)
    CONSTRAINT user_email_unique UNIQUE(email)
);

--make primary key
CREATE TABLE users(
    user_id INTEGER NOT NULL,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,


    CONSTRAINT users_email_unique UNIQUE(email),

    CONSTRAINT users_pk PRIMARY KEY (user_id)
);

SELECT *
FROM users limit 5;

SHOW COLUMNS FROM users; --see columns in SQL


DROP TABLE users;

--Auto increment

CREATE TABLE users(
    user_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

INSERT INTO users (name, email, password)
VALUES 
('Alice Johnson', 'alice@example.com', 'alice123'),
('Bob Smith', 'bob@example.com', 'bobpass'),
('Carol Lee', 'carol@example.com', 'carol789');

SELECT *
FROM users limit 5;

--Check ---> constraint
CREATE TABLE students(
    student_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INTEGER CHECK (age > 6 AND age < 25)

    --CONSTRAINT students_age_check CHECK (age > 6 AND age < 25)
);

SHOW COLUMNS FROM students;

INSERT INTO students (student_id, name, age)
VALUES 
(1, 'alice@example.com',  10),
(2, 'bob@example.com',  7),
(3, 'carol@example.com', 20 );


USE pranto;

CREATE TABLE ticket(
    ticket_id INTEGER PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    travel_date DATE DEFAULT CURRENT_DATE
);

CREATE TABLE ticket (
    ticket_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    travel_date DATE DEFAULT (CURDATE())
);

INSERT INTO ticket (ticket_id, name)
VALUES
(1, 'pranto');

SELECT *
FROM ticket limit 5;

CREATE TABLE customers(
    cid INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);


USE pranto;


CREATE TABLE orders(
    order_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    cid INTEGER NOT NULL,
    order_date DATE NOT NULL DEFAULT (CURDATE())
);

DROP TABLE orders;

CREATE TABLE orders(
    order_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    cid INTEGER NOT NULL,
    order_date DATE NOT NULL DEFAULT (CURDATE()),

    CONSTRAINT orders_fk FOREIGN KEY (cid) REFERENCES customers(cid)
);

DROP TABLE customers;

INSERT INTO customers(name, email)
VALUES
('Pranto', 'p@g'),
('Riddho', 'r@g');

SELECT * FROM customers;

SELECT * FROM orders;


INSERT INTO orders (order_id, cid, order_date)
VALUES
(1, 1, '2023-12-31');

SELECT * FROM orders;