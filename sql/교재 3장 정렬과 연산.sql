CREATE TABLE `sample31`(
`name` VARCHAR(10),
`age` TINYINT,
`address` VARCHAR(100)
);

INSERT INTO `sample31` VALUE ("A씨", 36, "대구 중구");
INSERT INTO `sample31` VALUE ("B씨", 18, "부산 연제구");
INSERT INTO `sample31` VALUE ("C씨", 25, "서울 중구");

SELECT * FROM `sample31` ORDER BY age;
SELECT * FROM `sample31` ORDER BY age DESC;
SELECT * FROM `sample31` ORDER BY address;


CREATE TABLE `sample32`(
`a` TINYINT,
`b` TINYINT
);

INSERT INTO `sample32` VALUE ( 1, 1);
INSERT INTO `sample32` VALUE ( 2, 1);
INSERT INTO `sample32` VALUE ( 2, 2);
INSERT INTO `sample32` VALUE ( 1, 3);
INSERT INTO `sample32` VALUE ( 1, 2);

SELECT * FROM `sample32` ORDER BY a, b DESC;

SELECT * FROM `sample32` WHERE b > 1 LIMIT 2;

SELECT * FROM `sample32` WHERE b > 1 ORDER BY b LIMIT 2;

CREATE TABLE `sample33`(
`no` int AUTO_INCREMENT PRIMARY KEY
);

INSERT INTO `sample33` VALUE ();
INSERT INTO `sample33` VALUE ();
INSERT INTO `sample33` VALUE ();
INSERT INTO `sample33` VALUE ();
INSERT INTO `sample33` VALUE ();
INSERT INTO `sample33` VALUE ();
INSERT INTO `sample33` VALUE ();
INSERT INTO `sample33` VALUE ();
INSERT INTO `sample33` VALUE ();

SELECT * FROM `sample33` ORDER BY NO DESC LIMIT 3;

SELECT * FROM `sample33` ORDER BY NO DESC LIMIT 3 OFFSET 2;

CREATE TABLE `sample34`(
`no` INT AUTO_INCREMENT PRIMARY KEY ,
`price` INT,
`quantity` INT
);

INSERT INTO `sample34` VALUE (1, 100, 10);
INSERT INTO `sample34` VALUE (2, 230, 24);
INSERT INTO `sample34` VALUE (3, 1980, 1);


SELECT *, price*quantity FROM `sample34`;
SELECT *, price FROM `sample34`;
SELECT *, price AS `가격` FROM `sample34`;

SELECT *, price*quantity AS `amount` FROM `sample34`;
SELECT price*quantity FROM `sample34`;

SELECT *, price*quantity AS `amount` FROM `sample34` WHERE amount > 3000;
SELECT *, price*quantity AS `amount` FROM `sample34` WHERE price*quantity > 3000;

SELECT *, price*quantity AS `amount` FROM `sample34` WHERE price*quantity > 1500 ORDER BY price*quantity DESC;
SELECT *, price*quantity AS `amount` FROM `sample34` WHERE price*quantity > 1500 ORDER BY amount desc;



CREATE TABLE `sample341`(
`amount` DOUBLE 
);

INSERT INTO `sample341` VALUE ( 5961.60);
INSERT INTO `sample341` VALUE ( 2138.40 );
INSERT INTO `sample341` VALUE ( 1080.00);

SELECT*FROM `sample341`;

SELECT *, ROUND(amount) AS `반올림` FROM `sample341` ORDER BY 반올림;

SELECT amount, ROUND(amount,1) FROM `sample341`;
SELECT *, ROUND(amount,1) FROM `sample341`;
SELECT *, ROUND(amount,-2) FROM `sample341`;


CREATE TABLE `sample35`(
`no` INT AUTO_INCREMENT PRIMARY KEY ,
`price` INT,
`quantity` INT,
`unit` VARCHAR(10)
);


INSERT INTO `sample35` VALUE ( 1, 100, 10, "개");
INSERT INTO `sample35` VALUE ( 2, 230, 24, "캔");
INSERT INTO `sample35` VALUE ( 3, 1980, 1, "장");


SELECT `unit`, CONCAT(quantity, unit) FROM `sample35`;