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
( '1234 Carter St', 55555, 'A', 'New York City', 'NY' ),
( '2345 Lovely St', 80122, '#5070', 'Chicago', 'IL' ),
( '3333 Danny St', 67345, '3B', 'Newark', 'NJ' ),
( '4444 Gaskill St', 94602, 'Oakland','CA' ),


INSERT INTO credit_card ( 
  customer_name,
  card_number,
  billing_address,
  apartment_number,
  street_address,
  zipcode,
  customer_id,
  expiration_date,
  card_type,
  city,
  state )
VALUES 
( 'Beyoncé Knowles', '4567390482903889', 1, '1999-01-08', 'Mastercard' ),
( 'Solange Knowles', '1234567891011121', 2, '1999-01-08', 'Visa' ),
( 'Kelly Rowland', '4567390482903111', 3, '1999-01-08', 'Visa' ),
( 'Michelle Williams', '4567390482902345', 4, '1999-01-08', 'Mastercard' ),
( 'Jay Z', '4567390482902222', 5, '1999-01-08', 'Visa' ),
( 'Rupi Kaur', '4567390482903333', 6, '1999-01-08', 'Mastercard' ),
( 'Michael Jackson', '4567390482904455', 7, '1999-01-08', 'Visa' ),
( 'Barack Obama', '4567390482905567', 8, '1999-01-08', 'Mastercard' ),
(
  'Michelle Obama',
  '4567390482906672',
  104,
  '4444 Gaskill St',
  94602,
  9,
  '1999-01-08',
  'Visa',
  'Oakland',
  'CA' ),
-- ( the girls card id info should connect to their parents
  'Malia Obama',
  '4567390482902100',
  104,
  '4444 Gaskill St',
  94602,
  10,
  '1999-01-08',
  'Mastercard',
  'Oakland',
  'CA' ),
(
  'Sasha Obama',
  '456739048290001',
  11,
  '1123 Purple Rain St',
  55544,
  10,
  '1999-01-08',
  'Visa',
  'Dallas',
  'TX'
);

INSERT INTO customer_address ( customer_id, address_id )
VALUES ( 4, 9 ),
( 6, 8 ),
( 9, 7 ),
( 3, 6 ),
( 1, 5 ),
( 7, 4 ),
( 8, 3 ),
( 11, 2 ),
( 5, 1 ),
( 2, 10 ),
( 10, 11 );