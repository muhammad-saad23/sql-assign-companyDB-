create database companyDB;
use companyDB;

create table Employees(
employeeID int primary key identity,
firstname varchar(255),
lastname varchar(255),
departmentID int,
salary decimal,
foreign key (departmentID) references department(departmentID)
);

INSERT INTO Employees VALUES ('Ebad', 'uddin', 101, 65000.00,'2023/2/1'),
( 'Muhammad', 'saad', 103, 50000.00,'2022/12/17'),( 'Aman', 'ansari', 103, 75000.00,'2022/11/12'),
( 'Alina', 'malik', 101, 60000.00,'2023/1/1'), ('Amna', 'jutt', 102, 12000.00,'2023/1/5'),
( 'Ashar', 'Amir', 102, 30000.00,'2023/1/1'),('Fahad', 'junaid', 104, 32000.00,'2022/12/2'),
( 'Basit', 'khan', 101, 55000.00,'2023/1/3'),('Hassan', 'Ahmed', 105, 26000.00,'2022/11/28'),
('momin', 'saqib', 105, 45000.00,'2023/1/1');

select * from Employees;
alter table Employees add Hiredate date;
drop table employees;


create table department(
departmentID int primary key,
departmentName varchar(255),
);

insert into department values(101,'IT'),
(102,'Marketing'),(103,'Finance'),(104,'Operating'),
(105,'HR');

select * from department;
select * from Employees;
update employees set salary =salary*1.01 where departmentid=101;

delete from Employees where salary<30000;

select * from Employees as e inner join department as d on e.departmentID=d.departmentID;

select firstname,lastname,departmentName,salary from Employees as e inner join department as d on e.departmentID=d.departmentID;

select count(EmployeeID) from Employees as e inner join department as d on e.departmentID=d.departmentID;
=
select * from Employees as e left join department as d on e.departmentID=d.departmentID;

select * from Employees as e inner join department as d on e.departmentID=d.departmentID where salary>30000;

select firstname,lastname,Hiredate from Employees where Hiredate>'2023/1/1';
