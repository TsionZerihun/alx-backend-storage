--- create users table in hoberton DB
DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    email VARCHAR(255) UNIQUE NOT NULL, 
    name VARCHAR (255)
);
