--1.	Создать таблицу employees
create table employees(
	id serial primary key,
	employee_name Varchar(50)  not null);

select * from  employees;
--2.	Наполнить таблицу employee 70 строками.
insert into employees(employee_name)
values ('Эрик'),
	   ('Харитон'),
       ('Ян'),
       ('Яромир'),
       ('Александр'),
       ('Виль'),
       ('Юлий'),
       ('Юлий'),
       ('Зигмунд'),
       ('Йозеф'),
       ('Лука'),
       ('Харитон'),
       ('Лаврентий'),
       ('Устин'),
       ('Сава'),
       ('Гавриил'),
       ('Яков'),
       ('Марат'),
       ('Роман'),
       ('Афанасий'),
       ('Конрад'),
       ('Юрий'),
       ('Оливер'),
       ('Никодим'),
       ('Григорий'),
       ('Прохор'),
       ('Юлиан'),
       ('Закир'),
       ('Юрий'),
       ('Оливер'),
       ('Марк'),
       ('Фёдор'),
       ('Ефим'),
       ('Зиновий'),
       ('Сергей'),
       ('Ян'),
       ('Николай'),
       ('Йосып'),
       ('Заур'),
       ('Еремей'),
       ('Оливер'),
       ('Михаил'),
       ('Юлиан'),
       ('Фёдор'),
       ('Спартак'),
       ('Иннокентий'),
       ('Платон'),
       ('Осип'),
       ('Цицерон'),
       ('Йоган'),
       ('Олег'),
       ('Харитон'),
       ('Емельян'),
       ('Гордей'),
       ('Гордей'),
       ('Цефас'),
       ('Адам'),
       ('Харитон'),
       ('Прохор'),
       ('Филипп'),
       ('Эрик'),
       ('Михаил'),
       ('Устин'),
       ('Шарль'),
       ('Шарлк'),
       ('Яромир'),
       ('Пётр'),
       ('Шарли'),
       ('Прохо'),
      ('Григорий');


--3.	Создать таблицу salary
create table salary (
	id Serial  primary key,
	monthly_salary Int not null);

select * from salary;

--4.	Наполнить таблицу salary 15 строками:
insert into salary(monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);

--5.	Создать таблицу employee_salary
create table employee_salary(
	id Serial  primary key,
	employee_id Int unique not null,
	salary_id Int not null);

select * from employee_salary;

--6.	Наполнить таблицу employee_salary 40 строками:
--в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary(employee_id, salary_id)
values (1,8),
       (2,5),
       (3,2),
       (4,2),
       (5,2),
       (6,2),
       (7,2),
       (8,2),
       (9,5),
       (10,2),
       (11,2),
       (12,2),
       (13,2),
       (14,2),
       (15,2),
       (16,5),
       (17,2),
       (18,2),
       (19,2),
       (20,2),
       (21,2),
       (22,2),
       (23,5),
       (24,2),
       (25,2),
       (26,2),
       (27,2),
       (28,2),
       (29,3),
       (30,7),
       (71,2),
       (72,2),
       (73,5),
       (74,2),
       (75,2),
       (76,2),
       (77,2),
       (78,2),
       (79,3),
       (80,7);
       
     

--7.	Создать таблицу roles
create table roles(
	id Serial  primary key,
	role_name int unique not null);


--8.	Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name type varchar(30);

--9.	Наполнить таблицу roles 20 строками:
insert into roles(role_name)
values ('HTML-верстальщик'),
('SMM-менеджер'),
('UX-дизайнер'),
('Web-интегратор'),
('Администратор базы данных'),
('Администратор сайта'),
('Блогер'),
('Блокчейн-разработчик'),
('Веб-дизайнер'),
('Диктор'),
('Контент-менеджер'),
('Копирайтер'),
('Радиоведущий'),
('Сетевой инженер'),
('Системный администратор'),
('Системный аналитик'),
('Специалист безопасности'),
('Спичрайтер'),
('Тележурналист'),
('Тестировщик');

select * from roles;

--10.	Создать таблицу roles_employee
create table roles_employee(
 id Serial  primary key,
 employee_id Int not null unique, 
 role_id Int not null,
 foreign key (employee_id)
 references employees(id),
 foreign key (role_id)
 references  roles(id)
 ); 
--11.	Наполнить таблицу roles_employee 40 строками:
insert into roles_employee(employee_id, role_id)
values (1,8),
       (2,5),
       (3,2),
       (4,2),
       (5,2),
       (6,2),
       (7,2),
       (8,2),
       (9,5),
       (10,2),
       (11,2),
       (12,2),
       (13,2),
       (14,2),
       (15,2),
       (16,5),
       (17,2),
       (18,2),
       (19,2),
       (20,2),
       (21,2),
       (22,2),
       (23,5),
       (24,2),
       (25,2),
       (26,2),
       (27,2),
       (28,2),
       (29,3),
       (30,7),
       (31,2),
       (32,2),
       (33,2),
       (34,2),
       (35,5),
       (36,2),
       (37,2),
       (38,2),
       (39,2),
       (40,2);
      
      select * from roles_employee;
       





