--note: FOREIGN KEY associations ARE commented OUT because they were NOT part
--OF the originally created TABLES; ALL were added AFTER creation

CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,  
	first_name VARCHAR(50) NOT NULL,  
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	address VARCHAR(100)
--	FOREIGN KEY(ticket_id) REFERENCES ticket(ticket_id)
);


CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,  
	price NUMERIC(5,2)
--	FOREIGN KEY(movie_id) REFERENCES movie(movie_id)
--	FOREIGN KEY(theater_id) REFERENCES theater(theater_id)
--	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,  
	title VARCHAR(50) NOT NULL,
	description VARCHAR(100) NOT NULL
--	FOREIGN KEY(theater_id) REFERENCES theater(theater_id)
);

CREATE TABLE theater(
	theater_id SERIAL PRIMARY KEY,  
	name VARCHAR(50) NOT NULL,
	city VARCHAR(50) NOT NULL
--	FOREIGN KEY(movie_id) REFERENCES movie(movie_id)
);

