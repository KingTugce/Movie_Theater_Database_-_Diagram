--  insert Statements for Mock DB
INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
) VALUES (
	1,
	'Tugce',
	'Simsek',
	'123 Main Street San Fransisco',
	'2323-2323-2323-2323 567 06/24'
);
SELECT * FROM customer;

--Second way to insert into customer table
Insert INTO customer
VALUES(
	2,
	'Ryan',
	'Rhoades',
	'234 Main Street Chicago IL, 60606',
	'2323-2323-2323-2323 567 06/24'
);
Insert INTO seller
VALUES(
	1,
	'773-455-june',
	'Ranger Business',
	'234 Main Street Chicago IL, 60606'
	
);

INSERT INTO inventory
VALUES(
	1,
	10
);

INSERT INTO product
VALUES(
	1,
	100.00,
	'PYTHON NOTES',
	1,
	1
);

INSERT INTO brand
VALUES(
	1,
	'CODING TEMPLE BRAND',
	1
);

INSERT INTO order_(
	sub_total,
	total_cost,
	upc
)
VALUES(
	100.00,
	120.00,
	1
	
);

--ORDER TABLE VIEW
SELECT *
FROM order_;

-- Cart Insert
INSERT INTO cart(
	cart_id,
	customer_id,
	order_id
) VALUES (
	103,
	2,
	1
);

--CART TABLE VIEW
SELECT *
FROM cart;