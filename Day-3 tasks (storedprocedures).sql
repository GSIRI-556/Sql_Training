use Midhtech_db;
show tables;

DELIMITER //
CREATE PROCEDURE getemployees()
BEGIN
  SELECT * FROM employee;
END//
DELIMITER ;
CALL getemployees();
SHOW PROCEDURE STATUS
WHERE Db = 'midhtech_db';