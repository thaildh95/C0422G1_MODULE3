create table teacher(
id_teacher int auto_increment,
name_teacher varchar(66),
age_teacher varchar(66),
country_teacher varchar(66),
primary key(id_teacher)
);

create table class(
id_class int auto_increment,
name_class varchar(66),
primary key(id_class)
);

create table student(
id_student int auto_increment,
name_student varchar(66),
age_student varchar(66),
country_studen varchar(66),
primary key(id_student)
);

select *from teacher;

select *from class;

select * from student;


