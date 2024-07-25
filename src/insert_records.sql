\c shop;

INSERT INTO customers (first_name, last_name, gender, address, phone, email, city, country)
VALUES 
('John', 'Hibert', 'Male', '284 Chaucer st', '084789657', 'john@gmail.com', 'Johannesburg', 'South africa'),
('Thando', 'Sithole', 'Female', '240 sect 1', '0794445584', 'thando@gmail.com', 'Cape town', 'South africa'),
('Leon', 'Glen', 'Male', '81 Everton Rd,Gillits', '0820832830', 'leon@gmail.com', 'Durban', 'South africa'),
('Charl', 'Muller', 'Male', '290a Dorset Ecke', '+44856872553', 'charl.muller@yahoo.com', 'Berlin', 'Germany'),
('Julia', 'Stein', 'Female', '2 Wernerring', '+448672445058', 'js234@yahoo.com', 'Frankfurt', 'Germany');

INSERT INTO employees (first_name, last_name, email, job_title)
VALUES 
('Kani', 'Matthew', 'mat@gmail.com', 'Manager'),
('Lesly', 'Cronje', 'lesc@gmail.com', 'Clerk'),
('Gideon', 'Maduku', 'm@gmail.com', 'Accountant');

INSERT INTO products (product_name, description, buy_price)
VALUES 
('Harley Davidson Chopper', 'This replica features a working kickstand, front suspension, gear-shift lever', 150.75),
('Classic Car', 'Turnable front wheels, steering function', 550.75),
('Sportscar', 'Turnable front wheels, steering function', 700.60);

INSERT INTO payments (customer_id, payment_date, amount)
VALUES 
(1, '2018-09-01', 150.75),
(5, '2018-09-03', 150.75),
(4, '2018-09-03', 700.60);

INSERT INTO orders (product_id, payment_id, fulfilled_by_employee_id, date_required, date_shipped, status)
VALUES 
(1, 1, 2, '05-09-2018', NULL, 'Not shipped'),
(1, 2, 2, '04-09-2018', '03-09-2018', 'Shipped'),
(3, 3, 3, '06-09-2018	', NULL, 'Not shipped');
