1.Таблица employees:

Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками.


create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);


insert into employees(employee_name)
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
		('Nike');
		
select * from employees;


2.Таблица salary:

Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
Наполнить таблицу salary 15 строками:



create table salary(
	id serial primary key,
	monthly_salary int not null
);

select * from salary;


insert into salary(id, monthly_salary)
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
		
select * from salary;



3.Таблица employee_salary:

Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

select * from employee_salary;


insert into employee_salary(employee_id, salary_id)
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


select * from employee_salary;


4.Таблица roles:

Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками:



create table roles(
	id serial primary key,
	role_name int not null unique
);

select * from roles;


alter table roles 
alter column role_name type varchar(30);


insert into roles(role_name)
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
	
select * from roles;

5.Таблица roles_employee:

Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками:

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

drop table roles_employee;

select * from roles_employee;

insert into roles_employee(employee_id,role_id)
values  (1, 4),
		(2, 4),
		(3, 6),
		(4, 4),
		(5, 2),
		(6, 10),
		(7, 9),
		(8, 5),
		(9, 7),
		(10, 15),
		(11, 2),
		(12, 4),
		(13, 2),
		(14, 12),
		(15, 2),
		(16, 14),
		(17, 12),
		(18, 10),
		(19, 6),
		(20, 3),
		(21, 4),
		(22, 4),
		(23, 6),
		(24, 4),
		(25, 2),
		(26, 10),
		(27, 9),
		(28, 5),
		(29, 7),
		(30, 15),
		(31, 2),
		(32, 4),
		(33, 2),
		(34, 12),
		(35, 2),
		(36, 14),
		(37, 12),
		(38, 10),
		(39, 6),
		(40, 3);	
