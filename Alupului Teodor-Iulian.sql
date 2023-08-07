create database Company;

create table Employee (
id int auto_increment,
FirstName varchar(255),
MiddleName varchar(255),
LastName varchar(255),
primary key (id)
);

create table Information (
id int auto_increment,
BirthDate varchar(255),
CityHomeLocation varchar(255),
CountryHomeLocation varchar(255),
phonenumber varchar(255),
primary key (id)
);



create table Department (
id int auto_increment,
Position varchar(255),
Salary varchar(255),
Movement varchar(255),
primary key (id)
);

alter table department
Add FirstName varchar(255);

alter table information
Add FirstName varchar(255);

insert into employee (FirstName, MiddleName, LastName) 
values('Artak', 'Daro', 'Jakat'),
	  ('Ertak', 'Aria','Sari'),
      ('Jarok', 'Ariana', 'Mary'),
      ('Ortal', 'Martol', 'Nashim'),
      ('Tarik', 'Kashim', 'Ikat');


insert into department (Position, Salary, Movement, FirstName)
values (1, 1500 , 0, 'Artak'),
	   (2, 2500, 0, 'Tarik'),
       (3, 3000, 0, 'Ertak'),
       (4, 4000, 1, 'Jarok'),
       (5, 6000, 0, 'Ortal');

insert into information (BirthDate, CityHomeLocation, CountryHomeLocation, phonenumber, FirstName) 
values (1990, 'Berlin', 'Germany', 0742344524, 'Artak'), 
       (1992, 'New Dephi', 'India', 0424453425, 'Sari'),
       (1995, 'London', 'United Kingdom', 0235235425, 'Mary'),  
       (1985, 'Paris', 'France', 04242424524, 'Jarok'),  
       (1980, 'Beyrut', 'Libanon', 0424242152, 'Ortal');    
       
select position  
from department
order by position ASC;

select position  
from department
order by position DESC;

select Movement
from department
where Movement IS NULL; 

select position
from department
where position between 0 and 5;

select MIN(position) AS SmalletPosition
from department;

select MAX(position) AS SmalletPosition
from department;

select count(salary) 
from department ;

select SUM(salary)
from department;

select AVG(salary)
from department;

select * from employee
where firstname LIKE 'a%';

select * from employee
where firstname LIKE '%a';

select * from employee
where firstname LIKE '%or%';

select * from employee
where firstname LIKE '_r%';

select * from employee
where firstname LIKE 'a_%';

select * from employee
where firstname NOT LIKE 'a%';

select * from department
where salary IN (2000);

select * from department
where salary NOT IN (2000);

select * from department
where salary between 1000 AND 6000;

select * from department
where salary not between 500 AND 3000;

select * from department
where salary between 1000 AND 6000
order by salary;

select firstname from employee 
union
select salary from department;

select count(salary), position		
from department
group by Position;

select salary,
case 
when Salary < 3000 Then 'Salary is smaller than 3000'
when Salary > 3000 Then 'Salary is greater that 3000'
else 'Salary is greater that 3000'
end as salarytext
from department;

select salary
from department
where Position = ANY
(Select Position 
From department
where Salary < 3000);


