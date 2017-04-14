DROP DATABASE IF EXISTS PiccadillyPizza;

CREATE DATABASE PiccadillyPizza;


DROP TABLE IF EXISTS customer;
CREATE TABLE customer (
  id SERIAL PRIMARY KEY,
  name VARCHAR ( 255 ) NOT NULL,
  username VARCHAR ( 255 ) NOT NULL,
  password VARCHAR ( 255 ) NOT NULL,
  phone_number INTEGER NULL
);

DROP TABLE IF EXISTS address;
CREATE TABLE address (
  id SERIAL PRIMARY KEY,
  street_address VARCHAR ( 255 ) NOT NULL,
  zipcode VARCHAR( 10 ) NOT NULL,
  apartment_number VARCHAR ( 10 ) NOT NULL,
  city VARCHAR ( 255 ) NOT NULL,
  state VARCHAR ( 255 ) NOT NULL
);

DROP TABLE IF EXISTS credit_card;
CREATE TABLE credit_card (
  id SERIAL PRIMARY KEY,
  customer_name VARCHAR ( 255 ) NOT NULL,
  card_number VARCHAR ( 16 ) NOT NULL,
  customer_id INTEGER REFERENCES customer ( id ) NOT NULL,
  billing_address INTEGER REFERENCES address ( id ) NOT NULL,
  expiration_date TIMESTAMP NOT NULL,
  card_type VARCHAR ( 255 ) NOT NULL
);

DROP TABLE IF EXISTS purchase;
CREATE TABLE purchase (
  id SERIAL PRIMARY KEY,
  customer_id INTEGER REFERENCES customer ( id ) NOT NULL,
  completed BOOLEAN NOT NULL,
  payment_method VARCHAR ( 255 ) NOT NULL,
  date_time TIMESTAMP NOT NULL,
  total DECIMAL NOT NULL
);


DROP TABLE IF EXISTS delivery;
CREATE TABLE delivery (
  id SERIAL PRIMARY KEY,
  status VARCHAR ( 255 ) NOT NULL,
  delivery_address INTEGER REFERENCES address ( id ) NOT NULL,
  delivery_person VARCHAR ( 255 ) NOT NULL,
  purchase_id INTEGER REFERENCES purchase ( id ) NOT NULL,
  price DECIMAL NOT NULL,
  tip DECIMAL NULL
);




DROP TABLE IF EXISTS drink;
CREATE TABLE drink (
  id SERIAL PRIMARY KEY,
  description VARCHAR ( 255 ) NOT NULL,
  manufacturer VARCHAR ( 255 ) NOT NULL,
  supplier VARCHAR ( 255 ) NOT NULL,
  price DECIMAL NOT NULL
);


DROP TABLE IF EXISTS drink_purchase;
CREATE TABLE drink_purchase (
  id SERIAL PRIMARY KEY,
  purchase_id INTEGER REFERENCES purchase ( id ) NOT NULL,
  drink_id INTEGER REFERENCES drink ( id ) NOT NULL,
  quantity INTEGER NOT NULL
);


DROP TABLE IF EXISTS pizza;
CREATE TABLE pizza (
  id SERIAL PRIMARY KEY,
  name VARCHAR ( 255 ) NOT NULL,
  size VARCHAR ( 255 ) NOT NULL,
  type VARCHAR ( 255 ) NOT NULL,
  price DECIMAL NOT NULL,
  discount DECIMAL NULL
);


DROP TABLE IF EXISTS pizza_purchase;
CREATE TABLE pizza_purchase (
  id SERIAL PRIMARY KEY,
  purchase_id INTEGER REFERENCES purchase ( id ) NOT NULL,
  pizza_id INTEGER REFERENCES pizza ( id ) NOT NULL,
  quantity INTEGER NOT NULL
);


DROP TABLE IF EXISTS pizza_ingredient;
CREATE TABLE pizza_ingredient (
  pizza_id INTEGER REFERENCES pizza ( id ) NOT NULL,
  ingredient_id INTEGER REFERENCES customer ( id ) NOT NULL
);


DROP TABLE IF EXISTS ingredient;
CREATE TABLE ingredient (
  id SERIAL PRIMARY KEY,
  name VARCHAR ( 255 ) NOT NULL,
  price DECIMAL NOT NULL,
  in_stock INTEGER NOT NULL
);

DROP TABLE IF EXISTS delivery_person;
CREATE TABLE delivery_person (
  id SERIAL PRIMARY KEY,
  name VARCHAR( 255 )
);

