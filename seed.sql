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
  card_type )
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
  total )
VALUES
(11, 'true', 'credit_card', '1999-01-08', 18.99 ),
(10, 'false', 'cash', '1999-01-08', 21.99 ),
(7, 'true', 'check', '1999-01-08', 5.99 ),
(5, 'false', 'debit_card', '1999-01-08', 30.99 )

-- INSERT INTO customer_address ( customer_id, address_id )
-- VALUES ( 4, 9 ),
-- ( 6, 8 ),
-- ( 9, 7 ),
-- ( 3, 6 ),
-- ( 1, 5 ),
-- ( 7, 4 ),
-- ( 8, 3 ),
-- ( 11, 2 ),
-- ( 5, 1 ),
-- ( 2, 10 ),
-- ( 10, 11 );