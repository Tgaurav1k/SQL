use statersql;

DELIMITER $$
create PROCEDURE select_users2()
BEGIN 
select * from gaurav;
END $$ 
DELIMITER ;

-- call select_users;
-- call select_users2;


DROP PROCEDURE select_users2;
