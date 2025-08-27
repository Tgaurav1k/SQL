use statersql;
-- select * from gaurav where gender='Female';
--  select * from gaurav where gender='Male';
-- select * from gaurav where gender!='Female';
-- select * from gaurav where date_of_birth<'1995-09-12';
select *from gaurav where id>10;
select * from gaurav where name='Tanvi';
select * from gaurav where date_of_birth is null;
select * from gaurav where date_of_birth between '1990-09-09' and '1991-06-10';
select * from gaurav where gender in ('Male','Female');

select * from gaurav where gender = 'Female' and salary>70000;
select * from gaurav where gender = 'Male' and salary<70000;
select * from gaurav where gender = 'Male' or salary>70000;
select * from gaurav where gender = 'Female' and salary>'65000' order by date_of_birth desc limit 2 ; 

