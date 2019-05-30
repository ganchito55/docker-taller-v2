CREATE DATABASE testing;
CREATE USER 'wp'@'localhost' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON *.* TO 'wp'@'localhost';