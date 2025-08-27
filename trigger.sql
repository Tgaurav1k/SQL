-- trigger

use statersql;
select * from gaurav;

DELIMITER $$

CREATE TRIGGER after_insert_gaurav
AFTER INSERT
ON gaurav
FOR EACH ROW
BEGIN
    INSERT INTO gaurav_log(action, name)
    VALUES ('INSERT', NEW.name);
END $$

DELIMITER ;


DELIMITER $$

CREATE TRIGGER after_update_gaurav
AFTER UPDATE
ON gaurav
FOR EACH ROW
BEGIN
    INSERT INTO gaurav_log(action, name)
    VALUES ('UPDATE', NEW.name);
END $$

DELIMITER ;
