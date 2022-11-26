INSERT INTO salesPerson(
    salesPerson_id,
    first_name,
    last_name
)
 VALUES(
    1,
    'Majin',
    'Boo'
 );

INSERT INTO customer(
    first_name,
    last_name,
    customer_id
 )
 Values(
    'Chavo',
    'DelOcho',
    1
 );

INSERT INTO serviceTicket(
    serviceTicket_id,
    customer_id,
    date_time,
    car_id
)
VALUES(
    1,
    1,
    1,
    1
);

INSERT INTO invoice(
    invoice_id,
    c_id,
    salesPerson_id,
    car_id
)
VALUES(
    1,
    1,
    1,
    1
);

INSERT INTO car(
    car_id,
    model,
    years,
    price
)
VALUES(
    1,
    'toyota',
    2022,
    20,000
);

INSERT INTO services(
    service_id,
    service_type,
    hourly_rate
)
VALUES(
    1,
    'tire alignment',
    '50xhr'
);

INSERT INTO mechanic(
    mechanic_id,
    first_name,
    last_name
)
VALUES(
    1,
    'Marin',
    'Grape'
);

INSERT INTO mechanicServices(
    mechanicServices_id,
    service_id,
    mechanic_id,
    serviceTicket_id
)
VALUES(
    1,
    1,
    1,
    1
);

