# 날짜: 20220615
# 이름: 허락녕
# 내용: SQL 고급실습


#실습하기 5-1
CREATE TABLE `Member` (
	`uid`		VARCHAR(10) PRIMARY KEY,
	`name`	VARCHAR(10) NOT NULL,
	`hp`		CHAR(13) UNIQUE NOT NULL,
	`pos`		VARCHAR(10) NOT NULL DEFAULT '사원',
	`dep`		INT,
	`rdate`	DATETIME NOT NULL
);

CREATE TABLE `Department` (
	`depNo` INT PRIMARY KEY,
	`name` VARCHAR(10) NOT NULL,
	`tel`  CHAR(12) NOT NULL
);

CREATE TABLE `Sales` (
	`seq`   INT PRIMARY KEY AUTO_INCREMENT,
	`uid`   VARCHAR(10) NOT NULL,
	`year`  YEAR NOT NULL,
	`month` TINYINT NOT NULL,
	`sale`  INT NOT NULL
);

#실습하기 5-2
INSERT INTO `Member` VALUES ('a101', '박혁거세', '010-1234-1001', '부장', 101, NOW());
INSERT INTO `Member` VALUES ('a102', '김유신',   '010-1234-1002', '차장', 101, NOW());
INSERT INTO `Member` VALUES ('a103', '김춘추',   '010-1234-1003', '사원', 101, NOW());
INSERT INTO `Member` VALUES ('a104', '장보고',   '010-1234-1004', '대리', 102, NOW());
INSERT INTO `Member` VALUES ('a105', '강감찬',   '010-1234-1005', '과장', 102, NOW());
INSERT INTO `Member` VALUES ('a106', '이성계',   '010-1234-1006', '차장', 103, NOW());
INSERT INTO `Member` VALUES ('a107', '정철',     '010-1234-1007', '차장', 103, NOW());
INSERT INTO `Member` VALUES ('a108', '이순신',   '010-1234-1008', '부장', 104, NOW());
INSERT INTO `Member` VALUES ('a109', '허균',     '010-1234-1009', '부장', 104, NOW());

INSERT INTO `Member` (`uid`, `name`, `hp`, `dep`, `rdate`) 
				   VALUES ('a110', '정약용',   '010-1234-1010', 105, NOW());
				   
INSERT INTO `Member` (`uid`, `name`, `hp`, `dep`, `rdate`) 
               VALUES ('a111', '박지원',   '010-1234-1011', 105, NOW());


INSERT INTO `Department` VALUES (101, '영업1부',    '051-512-1001');
INSERT INTO `Department` VALUES (102, '영업2부',    '051-512-1002');
INSERT INTO `Department` VALUES (103, '영업3부',    '051-512-1003');
INSERT INTO `Department` VALUES (104, '영업4부',    '051-512-1004');
INSERT INTO `Department` VALUES (105, '영업5부',    '051-512-1005');
INSERT INTO `Department` VALUES (106, '영업지원부', '051-512-1006');
INSERT INTO `Department` VALUES (107, '인사부',     '051-512-1007');

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2018, 1,  98100);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2018, 1, 136000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2018, 1,  80100);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2018, 1,  78000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2018, 1,  93000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2018, 2,  23500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2018, 2, 126000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2018, 2,  18500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2018, 2,  19000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2018, 2,  53000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2019, 1,  24000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2019, 1, 109000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2019, 1, 101000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2019, 1,  53500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a107', 2019, 1,  24000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2019, 2, 160000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2019, 2, 101000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2019, 2,  43000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2019, 2,  24000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2019, 2, 109000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2020, 1, 201000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2020, 1,  63000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2020, 1,  74000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2020, 1, 122000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a107', 2020, 1, 111000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2020, 2, 120000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2020, 2,  93000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2020, 2,  84000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2020, 2, 180000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a108', 2020, 2,  76000);


#실습하기 5-3

SELECT `uid`, `year` FROM `sales` WHERE `sale` < 20000;
SELECT * FROM `member` WHERE `name` = '이순신' or `name` = '강감찬';
SELECT `uid` FROM `sales` WHERE `sale` LIKE '7____';
SELECT * FROM `sales` WHERE `sale` LIKE '7%';
SELECT * FROM `sales` WHERE `sale` LIKE '%2%';
SELECT * FROM `sales` WHERE `year` not IN(2020);
SELECT * FROM `sales` WHERE `year`<> 2020;
SELECT * FROM `sales` WHERE `sale` BETWEEN 76000 AND 93000;

#실습하기 5-4

SELECT * FROM `sales` WHERE `sale` > 50000 ORDER BY `year`, `month`, `sale` desc;
SELECT * FROM `member` ORDER BY `name` Desc;

#실습하기 5-5
SELECT * FROM `sales` WHERE `sale` > 70000 ORDER BY `year`, `month`, `sale` DESC LIMIT 3, 4;
SELECT * FROM `member` ORDER BY `name` LIMIT 0,5;


#실습하기 5-6
SELECT SUM(`sale`) AS `합계` FROM `sales`;
INSERT INTO `MEMBER` VALUES ('b101', '을지문덕', '010-5555-1234', '사장', 107, now());


SELECT SUM(`sale`) FROM `sales` WHERE `year`=2018 ORDER BY `sale` LIMIT 2;

SELECT sum(`sale`) FROM `sales` WHERE `sale` >= 50000 and `YEAR` = 2018 AND `month` = 2;

SELECT MAX(`sale`) FROM `sales` WHERE `year`=2020;

#실습하기 5-7
SELECT * FROM `sales`;
SELECT * FROM `sales` GROUP BY `uid`;
SELECT * FROM `sales` GROUP BY `year`, `uid`;
SELECT * FROM `sales` GROUP BY `uid`, `year`;
SELECT `uid`, COUNT(*)  AS `건수` FROM  `sales` GROUP BY `uid`; 
select `uid`, SUM(sale) AS `합계` FROM `sales` GROUP BY `uid`; 
SELECT `uid`, AVG(sale) AS `평균` FROM `sales` GROUP BY `uid`;
SELECT `uid`, `year`, SUM(sale) AS `합계` FROM `sales` GROUP BY `uid`, `year`;
SELECT `uid`, `year`, SUM(sale) AS `합계` FROM `sales` GROUP BY `uid`, `year` ORDER BY `year` ASC, `합계` DESC; 
SELECT `uid`, `year`, SUM(sale) AS '합계' FROM `sales` WHERE `sale` > 50000 
GROUP BY `uid`, `year` ORDER BY `year` ASC, `합계`DESC;


#실습하기 5-8
SELECT `uid`, SUM(sale) AS `합계` FROM `sales` GROUP BY `uid` HAVING SUM(sale) > 200000;
SELECT `uid`,`year`, AVG(sale) AS `평균` FROM `sales` 
WHERE `sale` > 100000 GROUP BY `uid`, `year` HAVING SUM(sale) > 200000 ORDER BY `평균` desc;




#실습하기 5-9
CREATE TABLE `sales2` LIKE `sales`;
INSERT INTO `sales2` SELECT * FROM `sales`;
UPDATE `sales2` SET `year` = `year` + 3;

#실습하기 5-10
SELECT * FROM `sales2` UNION SELECT * FROM `sales`;
(SELECT * FROM `sales2`) UNION (SELECT * FROM `sales`);

SELECT `uid`, `year`, `sale` FROM `sales`
union
SELECT `uid`, `year`, `sale` FROM `sales2`;

SELECT `uid`, `year`, `sale` FROM `sales`
union
SELECT `uid`, `year`, `sale` FROM `sales2`;







#실습하기 5-11
SELECT * FROM `sales` JOIN `member` ON sales.uid = member.uid;




#실습하기 5-12
SELECT * FROM `sales` JOIN `member` ON `sales`.uid = `member`.uid;
SELECT * FROM `sales` LEFT JOIN `member` ON `sales`.uid = `member`.uid;
SELECT * FROM `sales` RIGHT JOIN `member` ON `sales`.uid = `member`.uid ;
SELECT * FROM `member` RIGHT JOIN `sales` ON `member`.uid = `sales`.uid ;
SELECT * FROM `member` LEFT JOIN `sales` ON `member`.uid = `sales`.uid ;










