
CREATE TABLE `sample21`(
`no` int auto_increment PRIMARY KEY,
`name` VARCHAR(10),
`birthday` CHAR(10),
`adress` VARCHAR(100)
);

INSERT INTO `sample21` (`name`, `birthday`)  VALUES ('박준용', '1976-10-18')


INSERT INTO `sample21` (`name`)  VALUES ('김재진')
INSERT INTO `sample21` (`name`)  VALUES ('홍길동')


UPDATE `sample21` SET `adress`='대구 수성구' WHERE `no` = 1;
UPDATE `sample21` SET `adress`='대구 동구' WHERE `no` = 2;
UPDATE `sample21` SET `adress`='서울 마포구' WHERE `no` = 3;

SELECT * FROM `sample21` WHERE `no`=2;

CREATE TABLE `sample24`(
`no` int AUTO_INCREMENT PRIMARY KEY,
`a` TINYINT,
`b` TINYINT,
`c` TINYINT
);


INSERT INTO `sample24` (`a`, `b`, `c`) VALUES ('1', '0', '0');
INSERT INTO `sample24` (`a`, `b`, `c`) VALUES ('0', '1', '1');
INSERT INTO `sample24` (`a`, `b`, `c`) VALUES ('0', '0', '1');
INSERT INTO `sample24` (`a`, `b`, `c`) VALUES ('2', '2', '0');
INSERT INTO `sample24` (`a`, `b`, `c`) VALUES ('0', '0', '2');
INSERT INTO `sample24` (`a`, `b`, `c`) VALUES ( 1 ,   1,   1);


SELECT * FROM `sample24` WHERE `a` = 1 OR `b`=2;
SELECT `c` FROM `sample24` WHERE `a`<> 1 AND `b`<>2;
SELECT * FROM `sample24` WHERE (`a`= 1 OR `a`=2) AND (`b`= 2 OR `b` =3);



CREATE TABLE `sample25`(
`no` INT AUTO_INCREMENT PRIMARY KEY,
`text` VARCHAR(100)
);

INSERT INTO `sample25` (`text`) VALUES ('SQL은 RDBS를 조작하는 언어이다');
INSERT INTO `sample25` (`text`) VALUES ('LIKE에서는 메타문자 %와_를 사용할 수 있다');
INSERT INTO `sample25` (`text`) VALUES ('LIKE는 SQL에서 사용할 수 있는 술어 중 하나이다');

SELECT * FROM `sample25` WHERE TEXT LIKE 's%';
SELECT * FROM `sample25` WHERE TEXT LIKE '%s%';
