create database task;
use task;
create table emp3(
id int,
name varchar(30),
department varchar(30),
salary decimal(10,2),
city varchar(30));
select * from emp3;
insert into emp3(id,name,department,salary,city)values(
1,'kavin','HR',56009.9,'chennai'),
(2,'iniyan','IT',70000,'coimbatore'),
(3,'kavi','HR',60000,'bangalore'),
(4,'ajay','HR',98000,'trichy'),
(5,'rohit','finance',77000,'madurai');
select * from emp3;
select count(id)  from emp3 where department = 'HR';
select count(id) from emp3 where department = 'IT';
select count(id) from emp3 where department - 'finance';
select avg(salary) from emp3 where department = 'HR';
select avg(salary) from emp3 where department = 'finanace';
select avg(salary) from emp3 where department = 'IT';
select max(salary) as maxSalary from emp3;