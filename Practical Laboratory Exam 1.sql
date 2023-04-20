CREATE DATABASE abc_computer;

USE abc_computer;

CREATE TABLE Computer (
   SerialNumber INT PRIMARY KEY,
   Make VARCHAR(50),
   Model VARCHAR(50),
   ProcessorType VARCHAR(50),
   ProcessorSpeed FLOAT,
   Main Memory INT,
   Disk SiZE INT,);
   
   INSERT INTO Computer VALUES
   (9871234, 'HP', 'Pavilion 500-210qe', Intel i5-4530, 16, 512,),
   (9871245, 'HP', 'Pavilion 500-210qe', Intel i5-4530, 8, 256, 800.00),
   (9871256, 'HP', 'Pavilion 500-210qe', Intel i5-4530, 8, 256, 900.00),
   (9871267, 'HP', 'Pavilion 500-210qe', 2.4, 4, 128, 500.00),
   (9871278, 'HP', 'Pavilion 500-210qe', 3.4, 16, 512, 1200.00),
   (987189, 'HP', 'Pavilion 500-210qe', 3.4, 16, 512, 1200.00),


ALTER TABLE Computer
ADD Graphics TEXT(40) NOT NULL COMMENT 'Must be all "Integrated Intel HD Graphics 4600"';

ALTER TABLE Computer
DROP COLUMN ProcessorSpeed;


UPDATE Computer SET Graphics = 'Integrated Intel HD Graphics 4600' WHERE ComputerID = 1;
UPDATE Computer SET Graphics = 'Integrated Intel HD Graphics 4600' WHERE ComputerID = 2;
UPDATE Computer SET Graphics = 'Integrated Intel HD Graphics 4600' WHERE ComputerID = 3;
UPDATE Computer SET Graphics = 'Integrated Intel HD Graphics 4600' WHERE ComputerID = 4;

SELECT * FROM Computer;

SELECT * FROM Computer WHERE Model = 'ModelA';

SELECT * FROM Computer WHERE Model = 'ModelB';