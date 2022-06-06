#group 14 
#1: 
drop view if exists 
	employee_info;
CREATE VIEW 
	employee_info AS
SELECT 
	firstName, lastName, employeeNumber
FROM 
	employees
WHERE 
	not null;

select * from employee_info;

#2
drop view if exists 
	france_employee_info;
CREATE VIEW 
	france_employee_info AS 
SELECT 
	employees.firstName, employees.lastName, employees.employeeNumber, offices.country
FROM 
	employees, offices
WHERE 
    employees.officeCode = offices.officeCode
	and offices.country = 'France';

select * from france_employee_info;

#3
drop view if exists 
	USA_employee_info;
CREATE VIEW 
	USA_employee_info AS 
SELECT 
	employees.firstName, employees.lastName, employees.employeeNumber, offices.country
FROM 
	employees, offices
WHERE 
    employees.officeCode = offices.officeCode
	and offices.country = 'USA';

select * from USA_employee_info;

#4
drop view if exists 
	boston_employee_info;
CREATE VIEW 
	boston_employee_info AS 
SELECT 
	employees.firstName, employees.lastName, employees.employeeNumber, offices.city
FROM 
	employees, offices
WHERE 
    employees.officeCode = offices.officeCode
	and offices.city = 'Boston';

select * from boston_employee_info;

#5 
drop view if exists 
	D_customer_info;
CREATE VIEW 
	D_customer_info AS 
SELECT 
	customers.customerName
FROM 
	customers
WHERE 
	customers.customerName like  'D%';
    
select * from D_customer_info;

#6
drop view if exists 
	usa_customer_info;
CREATE VIEW 
	usa_customer_info AS 
SELECT 
	customers.customerName, customers.country
FROM 
	customers
WHERE 
	customers.country != 'USA';

select * from usa_customer_info;

#7
drop view if  exists
	product_info;
create view
	product_info as
select
	products.buyPrice
from
	products
where
	products.buyPrice between 20 and  100;

select  *from product_info;
	