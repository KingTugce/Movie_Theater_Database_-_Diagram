CREATE TABLE "customer" (
  "customer_id" VARCHAR(100),
  "first_name" VARCHAR(100),
  "last_name" SERIAL,
  "billing_info" VARCHAR(150),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "tickets" (
  "ticket_id" SERIAL,
  "ticket_date" DATE(current date),
  "sub_total" NUMERIC(8,2),
  "total_cost" NUMERIC(10,2),
  "movie_id" Type,
  "customer_id" Type,
  PRIMARY KEY ("ticket_id")
);

CREATE TABLE "concessions" (
  "concession_id" SERIAL,
  "concession_type" VARCHAR(100),
  "concession_price" VARCHAR(8,2),
  PRIMARY KEY ("concession_id")
);

CREATE TABLE "movies" (
  "movie_id" SERIAL,
  "movie_title" VARCHAR(150),
  "rating" VARCHAR(100),
  "discription" VARCHAR(200),
  PRIMARY KEY ("movie_id")
);

CREATE TABLE "theater company" (
  "theater_id" SERIAL,
  "theater_name" VARCHAR(100),
  PRIMARY KEY ("theater_id")
);

INSERT INTO customer(
    customer_id,
    first_name,
    last_name,
    billing_info
)VALUES(
1,
'Jimmy',
'Rascal',
'3232-3232-3232-3232 123 02/24'
);
INSERT INTO customer(
    customer_id,
    first_name,
    last_name,
    billing_info
)VALUES(
2,
'Vinny',
'Rascal',
'3232-3232-3232-3232 123 03/25'
);

INSERT INTO tickets(
	ticket_id,
	ticket_date,
	sub_total,
	total_cost,
	movie_id,
	customer_id
)VALUES(
	1,
	'02.02.2022'
	'16.00'
	'32.00'
	3,
	2
	);

INSERT INTO theater_company(
    theater_id,
    theater_name
)VALUES(
2,
'Magic Lights'
);

INSERT INTO movies(
    movie_id,
    movie_title,
    rating,
    discription
)VALUES(
2,
'Moonfall',
'6',
'In Moonfall, a mysterious force knocks the Moon from its orbit around Earth and sends it hurdling on a collision course with life as we know it.'
);

INSERT INTO movies(
    movie_id,
    movie_title,
    rating,
    discription
)VALUES(
3,
'Spider-Man',
'7',
'With Spider-Mans idntity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man'
);


INSERT INTO concessions(
	concession_id,
	concession_type,
    concerssion_price     
)VALUES(
2,
'Popcorn',
'15.00'
);

