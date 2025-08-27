use statersql;
select * from gaurav;
select * from addresses;

select gaurav.name, gaurav.gender, addresses.city, addresses.state, addresses.id
from gaurav
-- inner join addresses ON gaurav.id = addresses.user_id; 
-- LEFT JOIN addresses ON gaurav.id = addresses.user_id;
-- right join addresses ON gaurav.id = addresses.user_id;

-- inner join addresses ON gaurav.id = addresses.user_id;
-- left join addresses ON gaurav.id = addresses.user_id;
right join addresses ON gaurav.id = addresses.user_id;

select gaurav.name, gaurav.id,gaurav.email,addresses.city,addresses.state
from gaurav
inner join addresses ON gaurav.id = addresses.user_id;
