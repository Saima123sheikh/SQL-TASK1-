--QUE.1

create table employee_details 
()
EmployeeID serial,
FirstName varchar(50),
LastName varchar(50),	
email varchar(100),
PhoneNumber varchar(15),	
HireDate date,
Salary	decimal(10,2), 
DepartmentID int,	
IsActive boolean,
JobTitle varchar(100)
)

QUE.2

select * from employee_details


insert into employee_details values(1,'Arohi','Sharma','arohi.sharma@example.com',9852163420,'15-02-2019',45000,2,'Yes','data analyst');

insert into employee_details values(2,'Sakshi','Shahu','sakshi.shahu@example.com',8752163420,'15-07-2018',37000,1,'Yes','Office Manager');

insert into employee_details values(3,'Arjun','Tayde','arjun.tayde@example.com',9852163260,'12-08-2022',68000,4,'NO','Software Tester')

insert into employee_details values(4,'Vijay','Raut','vijay.raut@example.com',9852634263,'05-07-2016',55000,3,'Yes','data analyst')

insert into employee_details values(5,'Neha','Sharma','neha@example.com',9852102320,'22-06-2023',78000,5,'No','QA Engineer')


--   QUE. 3 

copy employee_details from 'E:/employee_details.csv' delimiter ',' csv header  

select * from employee_details 

--  QUE. 4

UPDATE employee_details

set departmentid = 0 where isactive = 'False'

-- QUE. 5

update employee_details

set salary = salary + (salary*8/100)

where isactive = 'False' and departmentid = 0 and jobtitle in('HR manager','Financial Analyst','Business Analyst','Data Analyst')



--  QUE.6


select firstname as Name , lastname as Surname from employee_details

where salary between 30000 and 50000;



-- QUE. 7

select * from employee_details where firstname LIKE 'A%' 


-- QUE. 8

Delete from employee_details

where employeeid between 1 and 5



-- QUE. 9.1

ALTER TABLE EMPLOYEE_DETAILS

rename to employee_database


-- QUE.9.2

-- a ..

alter table employee_database

rename column Firstname to Name 


-- b.. 

alter table employee_database

rename column lastname to Surname


-- QUE. 10.1



alter table employee_database

add column state varchar

--QUE 10.2 									

update employee_database set State = 'India' where IsActive = true;
update employee_database set State = 'USA' where IsActive = false;

alter table employee_database alter column "state" set not null;






