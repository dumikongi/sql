# 날짜:2022/06/14
# 이름: 허락녕
# 내용: 데이터 설정 실습

INSERT INTO `user1` VALUES ('a101', '김유신', '010-1234-1111', 25)


#실습하기2-1 primary key는 한번만
CREATE TABLE `user2`(
`uid` VARCHAR(10) PRIMARY key,
`name` VARCHAR(10),
`hp` CHAR(13),
`age` TINYINT
);

INSERT INTO `user2` VALUES ('a101', '김유신', '010-1234-1111', 25)
INSERT INTO `user2` VALUES ('a102', '김춘추', '010-1234-2222', 23)
INSERT INTO `user2` VALUES ('a103', '장보고', '010-1234-3333', 35)
INSERT INTO `user2` VALUES ('a104', '강감찬', '010-1234-4444', 45)
INSERT INTO `user2` VALUES ('a105', '이순신', '010-1234-5555', 31)
INSERT INTO `user2` VALUES ('a106', '정약용', '010-1234-5555', 31)

#실습하기2-2 그 외는 unique
CREATE TABLE `user3`(
`uid` VARCHAR(10) PRIMARY key,
`name` VARCHAR(10),
`hp` CHAR(13) unique,
`age` TINYINT
);


INSERT INTO `user3` VALUES ('a101', '김유신', '010-1234-1111', 25)
INSERT INTO `user3` VALUES ('a102', '김춘추', '010-1234-2222', 23)
INSERT INTO `user3` VALUES ('a103', '장보고', '010-1234-3333', 35)
INSERT INTO `user3` VALUES ('a104', '강감찬', '010-1234-4444', 45)
INSERT INTO `user3` VALUES ('a105', '이순신', '010-1234-5555', 31)
INSERT INTO `user3` VALUES ('a106', '정약용', '010-1234-5555', 31)

#실습하기2-3
CREATE TABLE `parent`(
`uid` VARCHAR(10) PRIMARY KEY,
`name` VARCHAR(10),
`hp` CHAR(13) unique
);

INSERT INTO `parent` VALUES ('p101', '김유신', '010-1234-0001');
INSERT INTO `parent` VALUES ('p102', '장보고', '010-1234-0002');
INSERT INTO `parent` VALUES ('p103', '이순신', '010-1234-0003');

CREATE TABLE `user4`(
`uid` VARCHAR(10) PRIMARY key,
`name` VARCHAR(10),
`hp` CHAR(13) unique,
`pid` VARCHAR(10),
FOREIGN KEY (`pid`) REFERENCES `parent`(`uid`)
);

# `PARENT`의 `UID`가 있을 때만 넣을 수 있다.

INSERT INTO `user4` VALUES ('c101', '김철수', '010-1234-1111', 'p101');
INSERT INTO `user4` VALUES ('c102', '장철수', '010-1234-2222', 'p102');
INSERT INTO `user4` VALUES ('c103', '이철수', '010-1234-3333', 'p103');



#실습하기2-4 
CREATE TABLE `USER5`(
`seq` INT AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(10),
`gender` TINYINT,
`age` INT,
`addr` VARCHAR(255)
);


INSERT INTO `user5` (`name`, `gender`, `age`, `addr`) VALUES ( '김유신', 1, 21, '원주시');
INSERT INTO `user5` (`name`, `gender`, `age`, `addr`) VALUES ( '김춘추', 1, 23, '김해시');
INSERT INTO `user5` (`name`, `gender`, `age`, `addr`) VALUES ( '장보고', 1, 35, '부산시');
INSERT INTO `user5` ( `age`, `addr`) VALUES ( 1, '창원시');





#실습하기2-5

CREATE TABLE `USER6`(
`seq` INT AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(10) NOT null,
`gender` TINYINT,
`age` INT DEFAULT 1,
`addr` VARCHAR(255)
);

INSERT INTO `user6` (`name`, `gender`, `age`, `addr`) VALUES ( '김유신', 1, 21, '원주시');
INSERT INTO `user6` (`name`, `gender`, `age`, `addr`) VALUES ( '김춘추', 1, 23, '김해시');
INSERT INTO `user6` (`name`, `gender`, `age`, `addr`) VALUES ( '장보고', 1, 35, '부산시');
INSERT INTO `user6` (`name`, `age`, `addr`) VALUES ( '이 황', 1, '창원시');



#실습하기2-6

CREATE TABLE `user7` LIKE `user6`;

INSERT INTO `user7` SELECT*FROM `user6`;

CREATE TABLE `my` LIKE `user6`;

INSERT INTO `user7` (`name`, `gender`) 
                   SELECT `name`, `gender` FROM `user6`;
 

#실습하기2-7



