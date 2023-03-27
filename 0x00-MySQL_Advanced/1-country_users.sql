-- recreate user table with additional colomns
DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    country CHAR(2) DEFAULT 'US' NOT NULL CHECK (country IN ('US', 'CO', 'TN'))
);
