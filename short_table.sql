create table Customers(
  personid int,
  first_name varchar(255),
  last_name varchar(255)
);

INSERT INTO Customers (personid, first_Name, last_name)
VALUES
(1001, 'Tom', 'Erichsen'),
(1002, 'Per', 'Olsen'),
(1003, 'Finn', 'Egan');



CREATE ROLE IF NOT EXISTS ROLE_CLARA;
COMMENT ON ROLE ROLE_CLARA IS 'Primary role assigned to CLARK_KENT';
GRANT ROLE ROLE_CLARA TO ROLE ACCOUNTADMIN;
