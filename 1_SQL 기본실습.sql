# 날짜 : 2022/06/13
# 이름 : 허락녕
# 내용 : SQL기본실습

#실습하기 1-1
CREATE DATABASE `MyDB`;
DROP DATABASE `mydb` ;
CREATE DATABASE `mydb`;
CREATE DATABASE `mydb1`;
DROP DATABASE `mydb1`;


#실습하기 1-2

create TABLE `user1`(
`uid` VARCHAR(10),
`name` VARCHAR (10),
`hp` CHAR(13),
`age` TINYINT
);

DROP TABLE `user1`;

# 실습하기 1-3
INSERT INTO `user1` VALUES ('A101', '김유신', '010-1234-1111', 25);
INSERT INTO `user1` VALUES ('A102', '김춘추', '010-1234-2222', 23);
INSERT INTO `user1` VALUES ('A103', '장보고', '010-1234-3333', 32);

INSERT INTO `user1` (`uid`, `name`, `age`)
            VALUES ('A104', '강감찬', 45);
            
INSERT INTO `user1` SET
                        `uid` = 'A105',
                        `name` = '이순신',
                        `hp` = '010-1234-5555';
                        
                        
                        




#1-4  별 모든 칼럼 이라는 뜻
SELECT*FROM `user1`;
SELECT*FROM `user1` WHERE `uid` = 'A101';
SELECT*FROM `user1` WHERE `name` = '김춘추';
SELECT*FROM `user1` WHERE `age` > 30;
SELECT `uid`, `name`, `age` FROM `user1`;

#1-5
UPDATE `user1` SET `hp` = '010-1234-4444' WHERE `uid`='A104';
UPDATE `user1` SET `age` = 51 WHERE `uid` = 'A105';
UPDATE `user1` SET `hp` = '010-1234-1011', `age`=27 where `uid`='A101';

#1-6
DELETE FROM `user1` WHERE `uid` = 'A101';
DELETE FROM `user1` WHERE `uid`= 'A102' AND `age`=25;
DELETE FROM `user1` WHERE `age` >= 30;



                        
