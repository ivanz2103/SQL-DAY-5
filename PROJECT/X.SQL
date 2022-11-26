CREATE TABLE salesPerson (
    salesPerson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20)
);

SELECT * FROM salesperson

CREATE TABLE customer (
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    customer_id SERIAL PRIMARY KEY 
);

SELECT * FROM customer 

CREATE TABLE serviceTicket (
    serviceTicket_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    date_time INTEGER,
    car_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (car_id) REFERENCES car(car_id)
);

SELECT * FROM serviceTicket

CREATE TABLE invoice (
    invoice_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    salesPerson_id INTEGER,
    car_id INTEGER
);

SELECT * FROM invoice

CREATE TABLE car (
    car_id SERIAL PRIMARY KEY,
    model VARCHAR(20),
    years VARCHAR(20),
    price VARCHAR(20)
);

SELECT * FROM car

CREATE TABLE services (
    service_id SERIAL PRIMARY KEY,
    service_type VARCHAR(20),
    hourly_rate VARCHAR(20)
);

SELECT * FROM services

CREATE TABLE mechanic (
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20), --not null  
    last_name VARCHAR(20)  --not null
);

SELECT * FROM mechanic

CREATE TABLE mechanicServices (
    mechanicServices_id SERIAL PRIMARY KEY,
    service_id INTEGER,
    mechanic_id INTEGER,
    serviceTicket_id INTEGER,
    FOREIGN KEY (service_id) REFERENCES services(service_id),
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
    FOREIGN KEY (serviceTicket_id) REFERENCES serviceTicket(serviceTicket_id)
);

SELECT * FROM mechanicServices

