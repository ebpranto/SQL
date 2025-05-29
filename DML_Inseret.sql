-- INSERT
DROP DATABASE campusx;
CREATE DATABASE campusx;

CREATE TABLE users (
	user_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

INSERT INTO campusx.users(user_id, name, email, password)
VALUES
(NULL, 'Nitish', "n@g", '1234');	

INSERT INTO campusx.users
VALUES
(NULL, 'Pranto', "p@g", '1234');	

INSERT INTO campusx.users(name, email, password) VALUES ('Rayhan', 'r@g', '12349');



