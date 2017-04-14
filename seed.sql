INSERT INTO customer ( name, username, password, phone_number )
VALUES ( 'Beyoncé Knowles', 'bknowles', 'abacus', 1234567 ),
( 'Solange Knowles', 'sknowles', 'abalone', 2234567 ),
( 'Kelly Rowland', 'krowland', 'abandon', 3234567 ),
( 'Michelle Williams', 'mwilliams', 'abashed', 4234567 ),
( 'Blue Ivy Carter', 'bcarter', 'abate', 5234567 ),
( 'Rupi Kaur', 'rkaur', 'abbrivated', 6234567 ),
( 'Michael Jackson', 'mjackson', 'moonwalker', 7234567 ),
( 'Barack Obama', 'bobama', 'renegade', 8234567 ),
( 'Michelle Obama', 'mobama', 'renaissance', 9234567 ),
( 'Malia Obama', 'mobama', 'rosebud', 1134567 ),
( 'Sasha Obama', 'sobama', 'radiance', 1334567 );

INSERT INTO address ( street_address, zipcode, apartment_number, city, state )
VALUES
( '1234 Carter St', 55555, 'A', 'New York City', 'NY' ),
( '1234 Carter St', 55554, 'C', 'New York City', 'NY' ),
( '5555 Bankhead St', 24689, '#201', 'Atlanta', 'GA' ),
( '2468 Bobby St', 90100, 'D', 'Los Angeles', 'CA' ),
( '2345 Lovely St', 80122, '#5070', 'Chicago', 'IL' ),
( '3333 Danny St', 67345, '3B', 'Newark', 'NJ' ),
( '4444 Gaskill St', 94602, '#34', 'Oakland','CA' ),
( '1123 Purple Rain St', 55554, 'DX', 'Dallas', 'TX');


INSERT INTO credit_card ( 
  customer_name,
  card_number,
  customer_id,
  billing_address,
  expiration_date,
  card_type 
  )
VALUES
( 'Beyoncé Knowles', '4567390482903889', 1, 1, '1999-01-08', 'Mastercard' ),
( 'Solange Knowles', '1234567891011121', 2, 2, '1999-01-08', 'Visa' ),
( 'Kelly Rowland', '4567390482903111', 3, 3, '1999-01-08', 'Visa' ),
( 'Michelle Williams', '4567390482902345', 4, 4, '1999-01-08', 'Mastercard' ),
( 'Jay Z', '4567390482902222', 5, 1, '1999-01-08', 'Visa' ),
( 'Rupi Kaur', '456739048290333', 6, 5, '1999-01-08', 'Mastercard' ),
( 'Michael Jackson', '4567390482904455', 7, 6, '1999-01-08', 'Visa' ),
( 'Barack Obama', '4567390482905567', 8, 7, '1999-01-08', 'Mastercard' ),
( 'Michelle Obama', '4567390482906672', 9, 7, '1999-01-08', 'Visa'),
( 'Malia Obama', '4567390482902100', 10, 7, '1999-01-08', 'Mastercard'),
( 'Sasha Obama', '456739048290001', 11, 8, '1999-01-08', 'Visa');

INSERT INTO purchase ( 
  customer_id,
  completed,
  payment_method,
  date_time,
  total 
  )
VALUES
(11, 'true', 'credit_card', '1999-01-08', 18.99 ),
(10, 'false', 'cash', '1999-01-08', 21.99 ),
(7, 'true', 'check', '1999-01-08', 5.99 ),
(5, 'false', 'debit_card', '1999-01-08', 30.99 );

INSERT INTO delivery (
  status,
  delivery_address,
  delivery_person,
  purchase_id,
  price,
  tip
)
-- delivered means order has been completed and customer has food
-- in_progress means order is still being cooked
-- done means that the food has been cooked and is on its way to customer
VALUES
( 'delivered', 7, 'Bob', 1, 23.99, .20 ),
( 'in_progress', 8, 'Bob', 2, 26.99, .15 ),
( 'delivered', 6, 'Tom', 3, 10.99, .10 ),
( 'done', 1, 'Judy', 4, 35.99, .05 );

INSERT INTO drink (
  description,
  manufacturer,
  supplier,
  price
)
VALUES
( 'Pepsi', 'Pepsi Co', 'Pepsi Beverages Company', 2.99 ),
( 'Orange Juice', 'Orange Company', 'Orange Company', 1.99 ),
( 'Sprite', 'Sprite Co', 'Bay Area Beverage Company', 2.99 ),
( 'Coke', 'Coke Co', 'Bay Area Beverage Company', 2.99 );

INSERT INTO drink_purchase (
  purchase_id,
  drink_id,
  quantity
)
VALUES
( 1, 2, 4),
( 1, 3, 2),
( 2, 1, 1),
( 3, 3, 2),
( 4, 4, 2);

INSERT INTO pizza (
  name,
  size,
  type,
  price,
  discount
)
VALUES 
( 'Spinach & Mushroom', 'L', 'thick', 32.80, 0.00 ),
( 'Spinach & Mushroom', 'XL', 'thin', 30.60, 0.00 ),
( 'OG Kush', 'L', 'thin', 21.00, 0.00 ),
( 'White Widow', 'L', 'thin', 27.0, 0.00 ),
( 'Custom', 'S', 'thin', 15.00, 0.00 ),
( 'Custom', 'L', 'thick', 16.80, 0.00 ),
( 'Custom', 'L', 'thin', 15.80, 0.00 ),
( 'Carne', 'M', 'thick', 29.50, 10.00 ),
( 'Carne', 'M', 'thin', 22.50, 0.50  ),
( 'Pizza Blanca', 'S', 'thin', 13.75, 5.00 ),
( 'Spinach & Mushroom', 'M', 'thick', 27.90, 0.00 );

INSERT INTO pizza_purchase (
  purchase_id,
  pizza_id,
  quantity
)
VALUES 
( 1, 4, 2),
( 1, 8, 2),
( 2, 7, 1),
( 4, 6, 1),
( 3, 2, 1);

INSERT INTO ingredient (
  name,
  price,
  in_stock
)
VALUES 
( 'pepperoni', .50, 500 ),
( 'swiss cheese', .40, 300 ),
( 'mozzarella', .50, 100 ),
( 'cheddar cheese', .10, 90 ),
( 'mushroom', .50, 500 ),
( 'ham', .20, 190 ),
( 'salmon', .20, 350 ),
( 'capers', .10, 100 ),
( 'sour cream', .35, 500 ),
( 'olives', .30, 50 ),
( 'italian sausage', .10, 200 ),
( 'onions', .10, 100 ),
( 'pineapple', .20, 80 ),
( 'garlic', .10, 90 ),
( 'cherry pepper', .10, 100 ),
( 'jalapeno', .20, 50 ),
( 'spinach', .10, 200 ),
( 'fresh herb', .30, 200 ),
( 'ricotta de latte cheese', .10, 90 ),
( 'fresh lemon', .10, 100 ),
( 'chopped bacon', .20, 200 ),
( 'salami', .10, 250 ),
( 'three cheese', .25, 150 ),
( 'olive oil', .20, 30 ),
( 'salami', .10, 100 );

