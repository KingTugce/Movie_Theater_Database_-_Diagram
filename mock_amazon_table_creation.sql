-- Primary Keys Can't be Empty or Dublicates
-- CUSTOMER TABLE CREATION
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

-- SELLER TABLE
CREATE TABLE seller(
	seller_id SERIAL PRIMARY KEY,
	contact_number VARCHAR(15),
	business_name VARCHAR(100),
	address VARCHAR(150)
	
);

--INVENTORY TABLE
CREATE TABLE inventory(
	upc SERIAL PRIMARY KEY,
	quantity INTEGER
);

-- Order Table Creation
CREATE TABLE order_(
	order_id SERIAL PRIMARY KEY,
	order_date DATE DEFAULT CURRENT_DATE,
	sub_total NUMERIC(8,2),
	total_cost NUMERIC(10,2),
	upc INTEGER NOT NULL, -- NOT NULL CONSTRAINT meaning this can't be empty
	FOREIGN KEY(upc) REFERENCES inventory(upc)
);

-- Product Table
CREATE TABLE product(
	product_id SERIAL PRIMARY KEY,
	cost_of_product NUMERIC(5,2),
	product_name VARCHAR(100),
	seller_id INTEGER NOT NULL,
	upc INTEGER NOT NULL,
	FOREIGN KEY(seller_id) REFERENCES seller(seller_id),
	FOREIGN KEY(upc) REFERENCES inventory(upc)
);

-- Cart Table Creation
CREATE TABLE cart(
	cart_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	order_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(order_id) REFERENCES order_(order_id)
);

-- Brand Table
CREATE TABLE brand(
	brand_id SERIAL PRIMARY KEY,
	brand_name VARCHAR(100),
	product_id INTEGER NOT NULL,
	FOREIGN KEY(product_id) REFERENCES product(product_id)
	
);