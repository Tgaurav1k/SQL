create database staterSql;
use staterSql;
create table users(
id INT auto_increment primary key,
name varchar(100) not null,
email varchar(100) unique not null,
gender ENUM('Male' ,'Female', 'Other'),
date_of_birth date,
created_at timestamp default current_timestamp
);

create table gaurav(
id int auto_increment primary key,
name varchar(100) not null,
email varchar(100) unique not null,
gender ENUM('Male','Female','other'),
salary DECIMAL(10,2),
date_of_birth date,
created_at timestamp default current_timestamp
);

SELECT * FROM gaurav;

alter table gaurav
ADD column salary decimal(10,2);

drop table gaurav;

create table gaurav(
id int primary key,
name varchar(100) not null,
email varchar(100) unique not null,
gender ENUM('Male','Female','other'),
date_of_birth date
);
drop table gaurav;



create table karan(
id int primary key,
name varchar(100) not null,
email varchar(100) not null unique,
gender ENUM('Male','Female','Other'),
date_of_birth date
)
select id,email from karan;




-- select * from users;







