 -- create table called company info
 create table CompanyInfo
 (
 FIRST_NAME varchar(50) null,
 LAST_NAME varchar(50) null,
 COUNTRY varchar(50) null,
 )

 --loading data into the company info table
 insert into CompanyInfo
 (FIRST_NAME, LAST_NAME, COUNTRY)
 values
 ('Adam', 'Cooper', 'USA'),
 ('John', 'Smith', 'USA'),
 ('Mark', 'Alan', 'UK'),
 ('Sally','Jones', 'USA'),
 ('Steven', 'Brown', 'Canada')

 select *
 from CompanyInfo

 --case statement
 select 
 FIRST_NAME, LAST_NAME, COUNTRY,
 case
 when COUNTRY in ('Canada', 'USA') then 'North America'
 when COUNTRY = 'UK' then 'Europe'
 end as CONTINENT
 from CompanyInfo
 
 --create employee table 
 create table EmployeeInfo
 (
 FIRST_NAME varchar(50) null,
 LAST_NAME varchar(50) null,
 NO_OF_EMPLOYEES int null,
 )

 --insert data into table
 insert into EmployeeInfo
  (FIRST_NAME, LAST_NAME,  NO_OF_EMPLOYEES)
values
('Adam', 'Cooper', 55),
('John', 'Smith', 4),
('Mark', 'Alan', 23),
('Sally','Jones', 10),
('Steven','Brown', 15),
('Michael', 'James', 1)


select *
from EmployeeInfo

--case statement

 select 
 FIRST_NAME, LAST_NAME, NO_OF_EMPLOYEES,
 case
 when NO_OF_EMPLOYEES <=1 then 'No Employees' 
 when NO_OF_EMPLOYEES <=10 then 'Small Company'
 when NO_OF_EMPLOYEES <=50 then 'Medium Company'
 when NO_OF_EMPLOYEES >50 then 'Large Company'
 end as SIZE_OF_COMPANY
 from EmployeeInfo

