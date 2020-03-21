DROP DATABASE IF EXISTS tableDB;
CREATE DATABASE tableDB;
USE tableDB;

DROP TABLE IF EXISTS buyTBL, userTBL;
CREATE TABLE userTBL
(
userID CHAR(8) NOT NULL PRIMARY KEY,
name Nvarchar(10) NOT NULL,
birthYear int NOT NULL,
addr Nchar(2) NOT NULL,
mobile1 char(3) NULL,
mobile2 char(8) NULL,
height smallint NULL,
mDate date NULL
);
CREATE TABLE buyTBL
(
num int AUTO_INCREMENT NOT NULL PRIMARY KEY,
userid char(8) NOT NULL,
prodName  Nchar(6) NOT NULL,
groupName Nchar(4) NULL,
price int NOT NULL,
amount smallint NOT NULL,
FOREIGN KEY(userid) REFERENCES userTBL(userID)
);

INSERT INTO userTBL VALUES('LSG', N'이승기', 1987, N'서울', '011', '11111111', 182, '2008-8-8'),
('KBS', N'김범수', 1979, N'경남', '011', '22222222', 173, '2012-4-4'),
('KKH', N'김경호', 1971, N'전남', '019', '33333333', 177, '2007-7-7');
INSERT INTO userTBL VALUES('JYP', N'조용필', 1950, N'경기', '011', '44444444', 166, '2009-4-4');

INSERT INTO buyTBL VALUES(NULL, 'KBS', N'운동화', NULL, 30, 2);
INSERT INTO buyTBL VALUES(NULL, 'KBS', N'노트북', N'전자', 1000, 1);
INSERT INTO buyTBL VALUES(NULL, 'JYP', N'모니터', N'전자', 200, 1);

SELECT * from buyTBL;
SELECT * FROM userTBL;