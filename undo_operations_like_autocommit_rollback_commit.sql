use statersql;
select * from gaurav;
-- select count(*) from gaurav where gender = 'Male' ;
-- select count(*) from gaurav where gender = 'female' ;
-- select MIN(salary) as min_salary, MAX(salary) as max_salary from gaurav;

select SUM(salary) AS total_salary from gaurav;
select gender, AVG(salary) AS total_avg from gaurav group by gender;
select id,gender, AVG(salary) AS total_avg from gaurav group by gender,id;

select salary,
round(salary) AS rounded,
floor(salary) AS floored,
ceil(salary) As ceiled
from gaurav;

select name, gender,
 if(gender ='Female','Yes','No') AS is_female
 from gaurav;
 -- set autocommit = 0;
 set autocommit = 1;
 select * from gaurav;
 delete from gaurav where id = 5;
 select * from gaurav;
 -- rollback;
 -- commit;


