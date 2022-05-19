create table courses(
	id int not null primary key,
	faculty varchar(55) null,
	numder int null
);

select * from courses;
drop table courses;

insert into courses 
values  (1,'bio', 1),
		(2,'chem', 2),
		(3,'math', 3),
		(4,'geo', 4),
		(5,'gum', 5);
		
	
	delete from courses
	where faculty = 'gum';
	
update courses
set faculty = 'gum'
where faculty = 'geo';


alter table courses
drop column id;

alter table courses
add column id int;

select numder from courses;

select * from courses limit 2;

select numder as hello from courses;

select faculty,numder from courses
where faculty = 'bio';

select numder from courses
where numder > '1';

select * from courses 
where numder = '1' and faculty = 'bio';

select * from courses 
where faculty like '%o';

select * from courses 
where faculty like '_e%';

select * from courses 
where numder between '2' and '4';

select * from courses 
where not numder between '2' and '4';

select * from courses 
where numder in (1,4);

select * from courses 
order by faculty;

select * from courses 
order by faculty desc;

select avg(numder) from courses;

select count(faculty) from courses;