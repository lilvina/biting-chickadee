DROP DATABASE IF EXISTS PiccadillyPizza;

CREATE DATABASE PiccadillyPizza;


DROP TABLE IF EXISTS customer;
CREATE TABLE customer (
  id SERIAL PRIMARY KEY,
  name VARCHAR ( 255 ),
  username VARCHAR ( 255 ) NULL,
  password VARCHAR ( 255 ) NULL,
  phone_number INTEGER NULL
);

DROP TABLE IF EXISTS credit_card;
CREATE TABLE credit_card (
  id SERIAL PRIMARY KEY,
  customer_name VARCHAR ( 255 ) NULL,
  card_number INTEGER NULL,
  billing_address_id VARCHAR NULL,
  customer_id INTEGER REFERENCES customer ( id ),
  expiration_date TIMESTAMP NULL,
  card_type VARCHAR ( 255 )
);


DROP TABLE IF EXISTS customer_address;
CREATE TABLE customer_address (
  id SERIAL PRIMARY KEY,
  customer_id INTEGER REFERENCES customer ( id ),
  address_id INTEGER REFERENCES billing_address ( id )
);


DROP TABLE IF EXISTS billing_address;
CREATE TABLE billing_address (
  id SERIAL PRIMARY KEY,
  street_address VARCHAR ( 255 ),
  zipcode INTEGER,
  apartment_number VARCHAR ( 255 ),
  city VARCHAR ( 255 ),
  state VARCHAR ( 255 )
);


DROP TABLE IF EXISTS order;
CREATE TABLE order (
  id SERIAL PRIMARY KEY,
  customer_id INTEGER REFERENCES customer ( id ),
  completed BOOLEAN,
  payment_method VARCHAR ( 255 ),
  date_time TIMESTAMP,
  total DECIMAL
);


DROP TABLE IF EXISTS delivery;
CREATE TABLE delivery (
  id SERIAL PRIMARY KEY,
  status VARCHAR ( 255 ),
  delivery_address INTEGER REFERENCES customer_address ( id ),
  delivery_person VARCHAR ( 255 ),
  -- consider delivery_person
  order_id INTEGER REFERENCES order ( id ),
  price DECIMAL,
  tip DECIMAL
);


DROP TABLE IF EXISTS address;
CREATE TABLE address (
  id SERIAL PRIMARY KEY,
  street_address VARCHAR ( 255 ),
  zipcode INTEGER,
  apartment_number VARCHAR ( 255 ),
  city VARCHAR ( 255 ),
  state VARCHAR ( 255 )
);


DROP TABLE IF EXISTS drink;
CREATE TABLE drink (
  id SERIAL PRIMARY KEY,
  description VARCHAR ( 255 ),
  manufacturer VARCHAR ( 255 ),
  supplier VARCHAR ( 255 ),
  price DECIMAL
);


DROP TABLE IF EXISTS drink_order;
CREATE TABLE drink_order (
  id SERIAL PRIMARY KEY,
  order_id INTEGER REFERENCES order ( id ),
  drink_id INTEGER REFERENCES drink ( id ),
  quantity INTEGER
);


DROP TABLE IF EXISTS pizza;
CREATE TABLE pizza (
  id SERIAL PRIMARY KEY,
  name VARCHAR ( 255 ),
  size VARCHAR ( 255 ),
  type VARCHAR ( 255 ),
  price DECIMAL,
  discount DECIMAL
);


DROP TABLE IF EXISTS pizza_order;
CREATE TABLE pizza_order (
  id SERIAL PRIMARY KEY,
  order_id INTEGER REFERENCES order ( id ),
  pizza_id INTEGER REFERENCES pizza ( id ),
  quantity INTEGER
);


DROP TABLE IF EXISTS pizza_ingredient;
CREATE TABLE pizza_ingredient (
  pizza_id INTEGER REFERENCES pizza ( id ),
  ingredient_id INTEGER REFERENCES customer ( id )
);


DROP TABLE IF EXISTS ingredient;
CREATE TABLE ingredient (
  id SERIAL PRIMARY KEY,
  name VARCHAR ( 255 ),
  price DECIMAL,
  quantity INTEGER
);
