DROP DATABASE IF EXISTS course_work;
CREATE DATABASE course_work;
USE course_work;

DROP TABLE IF EXISTS operations;  -- аренда/ продажа
CREATE TABLE operations (
	id SERIAL PRIMARY KEY, 
    name VARCHAR(50)
);

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
	id SERIAL PRIMARY KEY, 
    city VARCHAR(50)
);

DROP TABLE IF EXISTS streets;
CREATE TABLE streets (
	id SERIAL PRIMARY KEY, 
    street VARCHAR(50),
    id_city BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (id_city) REFERENCES cities(id)
);

DROP TABLE IF EXISTS apartments;
CREATE TABLE apartments (
	id SERIAL PRIMARY KEY, 
    number_ap VARCHAR(50),
    floor_ap INT,
    square_total FLOAT,
    square_kitchen FLOAT,
    rooms INT,
    balcony BIT,
    id_city BIGINT UNSIGNED NOT NULL,
    id_street BIGINT UNSIGNED NOT NULL,
    id_operations BIGINT UNSIGNED NOT NULL,
    house VARCHAR(50),
    price BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    FOREIGN KEY (id_city) REFERENCES cities(id),
    FOREIGN KEY (id_street) REFERENCES streets(id),
    FOREIGN KEY (id_operations) REFERENCES operations(id)
);

DROP TABLE IF EXISTS houses;
CREATE TABLE houses (
	id SERIAL PRIMARY KEY, 
    number_h VARCHAR(50),
    floors INT,
    square_total FLOAT,
    square_kitchen FLOAT,
    rooms INT,
    balcony BIT,
    id_city BIGINT UNSIGNED NOT NULL,
    id_street BIGINT UNSIGNED NOT NULL,
    id_operations BIGINT UNSIGNED NOT NULL,
    price BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    FOREIGN KEY (id_city) REFERENCES cities(id),
    FOREIGN KEY (id_street) REFERENCES streets(id),
    FOREIGN KEY (id_operations) REFERENCES operations(id)
);


DROP TABLE IF EXISTS sted;
CREATE TABLE sted (
	id SERIAL PRIMARY KEY, 
    number_sted VARCHAR(50),
    square_total FLOAT,
    id_city BIGINT UNSIGNED NOT NULL,
    id_street BIGINT UNSIGNED NOT NULL,
    price BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    FOREIGN KEY (id_city) REFERENCES cities(id),
    FOREIGN KEY (id_street) REFERENCES streets(id)  
);


DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY, 
    firstname VARCHAR(50),
    lastname VARCHAR(50), 
    email VARCHAR(120) UNIQUE,
    phone BIGINT, 
    INDEX users_phone_idx(phone), 
    INDEX users_firstname_lastname_idx(firstname, lastname)
);


DROP TABLE IF EXISTS owners;
CREATE TABLE owners (
	id SERIAL PRIMARY KEY, 
    firstname VARCHAR(50),
    lastname VARCHAR(50), 
    email VARCHAR(120),
    phone BIGINT, 
    apartment_id BIGINT UNSIGNED UNIQUE,
    house_id BIGINT UNSIGNED UNIQUE,
    sted_id BIGINT UNSIGNED UNIQUE,
    created_at DATETIME DEFAULT NOW(),
    INDEX owners_phone_idx(phone), 
    INDEX owners_firstname_lastname_idx(firstname, lastname),
    FOREIGN KEY (apartment_id) REFERENCES apartments(id),
    FOREIGN KEY (house_id) REFERENCES houses(id),
    FOREIGN KEY (sted_id) REFERENCES sted(id)
);


DROP TABLE IF EXISTS favorites;
CREATE TABLE favorites (
	id SERIAL PRIMARY KEY, 
    user_id BIGINT UNSIGNED NOT NULL,
    apartment_id BIGINT UNSIGNED,
    house_id BIGINT UNSIGNED,
    sted_id BIGINT UNSIGNED,
    created_at DATETIME DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (apartment_id) REFERENCES apartments(id),
    FOREIGN KEY (house_id) REFERENCES houses(id),
    FOREIGN KEY (sted_id) REFERENCES sted(id)
);


DROP TABLE IF EXISTS average_price_in_city;
CREATE TABLE average_price_in_city (
	id SERIAL PRIMARY KEY,
	city_name varchar(50) UNIQUE,
	average_price_h int,
	average_price_st int,
	average_price_ap int
);











