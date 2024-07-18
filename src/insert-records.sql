\c shop;

INSERT INTO customers (first_name, last_name, gender, address, phone, email, city, country)
VALUES 
('john', 'hibert', 'male', '284 chaucer st', '084789657', 'john@gmail.com', 'johannesburg', 'south africa'),
('thando', 'sithole', 'female', '240 sect 1', '0794445584', 'thando@gmail.com', 'cape town', 'south africa'),
('leon', 'glen', 'male', '81 everton rd,gillits', '0820832830', 'leon@gmail.com', 'durban', 'south africa'),
('charl', 'muller', 'male', '290a dorset ecke', '+44856872553', 'charl.muller@yahoo.com', 'berlin', 'germany'),
('julia', 'stein', 'female', '2 wernerring', '+448672445058', 'js234@yahoo.com', 'frankfurt', 'germany');

INSERT INTO employees (first_name, last_name, email, job_title)
VALUES 
('kani', 'matthew', 'mat@gmail.com', 'manager'),
('lesly', 'cronje', 'lesc@gmail.com', 'clerk'),
('gideon', 'maduku', 'm@gmail.com', 'accountant');

INSERT INTO products (product_name, description, buy_price)
VALUES 
('harley davidson chopper', 'this replica features a working kickstand, front suspension, gear-shift lever', 150.75),
('classic car', 'turnable front wheels, steering function', 550.75),
('sportscar', 'turnable front wheels, steering function', 700.60);

INSERT INTO payments (customer_id, payment_date, amount)
VALUES 
(1, '2018-09-01', 150.75),
(5, '2018-09-03', 150.75),
(4, '2018-09-03', 700.60);

INSERT INTO orders (product_id, payment_id, fulfilled_by_employee_id, date_required, date_shipped, status)
VALUES 
(1, 1, 2, '2018-09-05', NULL, 'not shipped'),
(1, 2, 2, '2018-09-04', '2018-09-03', 'shipped'),
(3, 3, 3, '2018-09-06', NULL, 'not shipped');
