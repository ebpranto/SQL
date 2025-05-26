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