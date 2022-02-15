insert into "Customers" (first_name, last_name, email, phone_number)
values
('Kawhi', 'Leonard', 'klaw@cars.com', 1112223333),
('Michael', 'Amerio', 'mamerio@', 1234567890),
('Jerry', 'Seinfeld', 'jseinfeld@yahoo.com', 3457182908),
('Cosmo', 'Kramer', 'ckramer@gmail.com', 1111111111);

insert into "Department" (name)
values 
('Body Shop'),
('Sales');

insert into "Employees" (first_name, last_name, department_id, hire_date)
values
('George', 'Costanza', 1, '2019-04-26'),
('Elaine', 'Benes', 2, '2018-12-31');

insert into "Cars" (year, make, model, employee_id)
values 
(2003, 'Honda', 'Accord', 1),
(2020, 'Tesla', 'Model X', 2),
(2017, 'Toyota', '4Runner', 1),
(2016, 'Jeep', 'Wrangler', 2);

insert into "Payment" (customer_id, employee_id, car_id, amount, department_id)
values
(2, 1, 3, 517.00, 1),
(1, 1, 4, 278.39, 1),
(4, 2, 2, 45000.34, 2),
(3, 2, 1, 2500.65, 2);

insert into "Service_History" (car_id, department_id, amount)
values 
(3, 1, 517.000),
(4, 1, 278.39);