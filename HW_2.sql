1.Таблица employees:

Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками.


create table employeees(
id serial primary key,
employee_name varchar(50) not null
);

select * from employees;

insert into employeees(employee_name)
values  ('Kate'),
		('Bob'),
		('Vitalik'),
		('Elena'),
		('Lana'),
		('Kolya'),
		('Max'),
		('Dima'),
		('Nike'),
		('Roman'),
		('Kate'),
		('Kate'),
		('Bob'),
		('Vitalik'),
		('Elena'),
		('Lana'),
		('Kolya'),
		('Max'),
		('Dima'),
		('Nike'),
		('Roman'),
		('Kate'),
		('Bob'),
		('Vitalik'),
		('Elena'),
		('Lana'),
		('Kolya'),
		('Max'),
		('Dima'),
		('Nike'),
		('Roman'),
		('Kate'),
		('Bob'),
		('Vitalik'),
		('Elena'),
		('Lana'),
		('Kolya'),
		('Max'),
		('Dima'),
		('Nike'),
		('Roman'),
		('Kate'),
		('Bob'),
		('Vitalik'),
		('Elena'),
		('Lana'),
		('Kolya'),
		('Max'),
		('Dima'),
		('Nike'),
		('Roman'),
		('Kate'),
		('Bob'),
		('Vitalik'),
		('Elena'),
		('Lana'),
		('Kolya'),
		('Max'),
		('Dima'),
		('Nike'),
		('Roman'),
		('Kate'),
		('Bob'),
		('Vitalik'),
		('Elena'),
		('Lana'),
		('Kolya'),
		('Max'),
		('Dima'),
		('Nike'),
		('Roman');
		
select * from employeees;


2.Таблица salary:

Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
Наполнить таблицу salary 15 строками:



create table salary1(
id serial primary key,
monthly_salary1 int not null
);

select * from salary1;

insert into salary1(id, monthly_salary1)
values  (default, 1000),
		(default, 1100),
		(default, 1200),
		(default, 1300),
		(default, 1400),
		(default, 1500),
		(default, 1600),
		(default, 1700),
		(default, 1800),
		(default, 1900),
		(default, 2000),
		(default, 2100),
		(default, 2200),
		(default, 2300),
		(default, 2400),
		(default, 2500);
		
select * from salary1;



3.Таблица employee_salary:

Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id

create table employeees_salary1(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

select * from employeees_salary1;


insert into employeees_salary1(employee_id, salary_id)
values  (1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6),
		(7, 7),
		(8, 8),
		(9, 9),
		(10, 10),
		(11, 11),
		(12, 12),
		(13, 13),
		(14, 14),
		(15, 15),
		(16, 1),
		(17, 2),
		(18, 3),
		(19, 4),
		(20, 5),
		(21,6),
		(22, 7),
		(23, 8),
		(24, 9),
		(25, 10),
		(26, 11),
		(27, 12),
		(28, 13),
		(29, 14),
		(30, 15),
		(72, 1),
		(73, 2),
		(74, 3),
		(75, 4),
		(76, 5),
		(77, 6),
		(78, 7),
		(79, 8),
		(80, 9),
		(81, 10);


select * from employees_salary1;


4.Таблица roles:

Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками:



create table roles1(
id serial primary key,
role_name int not null unique
);

select * from roles1;

alter table roles1 
alter column role_name type varchar(30);


insert into roles1(role_name)
values  ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
	
	
