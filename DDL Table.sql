-- database: :memory:
CREATE DATABASE IF NOT EXISTS campusx;

DROP DATABASE campusx;

--DROP DATABASE campusx;
USE campusx;


CREATE TABLE users(
    user_id INTEGER,
    name VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255)
);

-- Insert sample data into the users table
INSERT INTO users (user_id, name, email, password)
VALUES 
(1, 'Alice Johnson', 'alice@example.com', 'alice123'),
(2, 'Bob Smith', 'bob@example.com', 'bobpass'),
(3, 'Carol Lee', 'carol@example.com', 'carol789');


USE campusx;

--empty the table
TRUNCATE TABLE users;

--delete the table
DROP TABLE IF EXISTS users;

DROP DATABASE IF EXISTS campusx;