# 날짜:2022/06/20
# 이름: 허락녕
# 내용 : SQL 연습문제

#문제1
CREATE TABLE `Book` (
`bookid` INT AUTO_INCREMENT PRIMARY KEY ,
`bookname` VARCHAR (20),
`publisher` VARCHAR (10),
`price` INT 
);

INSERT INTo `book` VALUES (1,"축구의 역사", "굿스포스", 7000);
INSERT INTo `book` VALUES (2, "축구 아는 여자", "나무수", 12000);
INSERT INTo `book` VALUES (3, "축구의 이해", "대한미디어", 22000);
INSERT INTo `book` VALUES  (4, "골프 바이블", "대한미디어", 35000);
INSERT INTo `book` VALUES (5, "피켜교본", "굿스포스", 8000);
INSERT INTo `book` VALUES (6, "역도단계별기술", "굿스포스", 6000);
INSERT INTo `book` VALUES (7, "야구의 추억", "이상미디어", 20000);
INSERT INTo `book` VALUES (8, "야구를 부탁해", "이상미디어", 13000);
INSERT INTo `book` VALUES (9, "올림픽 이야기", "삼성당", 7500);
INSERT INTo `book` VALUES (10, "Olympic Champion", "Person", 13000);


UPDATE `book` SET `publisher` = '굿스포츠' WHERE `publisher` = '굿스포스';
UPDATE `book` SET `price` = 13000 WHERE `bookid` = '2';

SELECT * FROM `book`;
#문제2
CREATE TABLE `customer` (
`cusid` INT AUTO_INCREMENT PRIMARY KEY ,
`name` VARCHAR (20),
`address` VARCHAR (20),
`phone` CHAR(13) 
);


INSERT INTo `customer` VALUES (1,"박지성", "영국 맨체스터", "000-5000-0001" );
INSERT INTo `customer` VALUES (2,"김연아", "대한민국 서울", "000-6000-0001" );
INSERT INTo `customer` VALUES (3,"장미란", "대한민국 강원도", "000-7000-0001");
INSERT INTo `customer` VALUES (4,"추신수", "미국 클리블랜드", "000-8000-0001");
INSERT INTo `customer` (`cusid`, `name`, `address`) VALUES (5,"박세리", "대한민국 대전" );

#문제3
CREATE TABLE `order` (
`orderid` INT AUTO_INCREMENT PRIMARY KEY ,
`cusid` INT ,
`bookid` INT ,
`saleprice` INT , 
`orderdate` date
);


INSERT INTo `order` VALUES (1, 1, 1, 6000, 20140701 );
INSERT INTo `order` VALUES (2, 1, 3, 21000, 20140703 );
INSERT INTo `order` VALUES (3, 2, 5, 8000, 20140703);
INSERT INTo `order` VALUES (4, 3, 6, 6000, 20140703);
INSERT INTo `order` VALUES (5, 4, 7, 2000, 20140705);
INSERT INTo `order` VALUES (6, 1, 2, 12000, 20140707);
INSERT INTo `order` VALUES (7, 4, 8, 13000, 20140707);
INSERT INTo `order` VALUES (8, 3, 10, 12000, 20140708);
INSERT INTo `order` VALUES (9, 2, 10, 7000, 20140709);
INSERT INTo `order` VALUES (10, 3, 8, 13000, 20140710);

UPDATE `order` SET `saleprice` = '20000' WHERE `orderid` = '5';

SELECT `cusid`, `name`, `address` FROM `customer`;
#문제5
SELECT `bookname`, `price` fROM `book`;
SELECT `bookname`, `price` FROM `book`;

#문제8
SELECT `publisher` FROM `book`;

#문제9
SELECT `publisher` FROM `book` GROUP BY `publisher`;
SELECT DISTINCT `publisher` FROM `book`

#문제10
SELECT * FROM `book` WHERE price >= 20000; 
#문제11
SELECT * FROM `book` WHERE price < 20000;

#문제12
SELECT * FROM `book` WHERE price >= 10000 && price <= 20000;
SELECT * FROM `book` WHERE price BETWEEN 10000 And 20000;

#문제13
SELECT `bookid`, `bookname`, `price` FROM `book` WHERE price >= 15000 && price <= 30000;
#문제14
S
SELECT * FROM `book` WHERE `bookid` = '2' ||  `bookid` = '3' || `bookid` = '5';
sELECT * FROM `book` WHERE `bookid` = 2 or  `bookid` = 3 or `bookid` = 5;
sELECT * FROM `book` WHERE `bookid` IN (2,3,5);

#문제15
SELECT * FROM `book` WHERE `bookid` % 2 = 0; 
#문제16
SELECT * FROM `customer` WHERE `name` LIKE '박%'; 
#문제17
SELECT * FROM `customer` WHERE `address` LIKE '대한민국%';

#문제18
SELECT * FROM `customer` WHERE `phone` != 'NULL';
SELECT * FROM `customer` WHERE NOT `phone` is NULL;

#문제19
SELECT * FROM `book` WHERE `publisher` = '굿스포츠' || `publisher` = '대한미디어';
SELECT * FROM `book` WHERE `publisher` IN ('굿스포츠', '대한미디어');

#문제20
select `publisher` FROM `book` WHERE `bookname` = '축구의 역사';
#문제21
select `publisher` FROM `book` WHERE `bookname` LIKE '%축구%';
#문제22
SELECT * FROM `book` WHERE `bookname` LIKE '_구%';
#문제23
SELECT * FROM `book` WHERE `bookname` LIKE '%축구%' && `price` >= 20000;
#문제24
SELECT * FROM `book` order BY `bookname`;
#문제25
SELECT * FROM `book` order BY `price`, `bookname`;
#문제26
SELECT * FROM `book` order BY `price` DESC , `bookname`;
#문제27
SELECT * FROM `book` order BY `price` desc LIMIT 3;
#문제28
SELECT * FROM `book` order BY `price` LIMIT 3;

#문제29
SELECT SUM(`saleprice`) AS `총판매액` FROM `order`;
#문제30
SELECT SUM(`saleprice`) AS `총판매액`,
       avg(`saleprice`) AS `평균값`,
       min(`saleprice`) AS `최저가`,
		 max(`saleprice`) AS `최고가` fROM `order`;
		 
# 31		 
SELECT max(`orderid`) AS `판매건수` FROM `order`;	
SELECT `orderid`, COUNT(`orderid`) AS `판매건수`  FROM `order`;
SELECT COUNT(`orderid`) AS `판매건수`  FROM `order`;

	 
# 32
SELECT * FROM `book` WHERE `bookname` LIKE '%야구%';

UPDATE `book` SET `bookname` = '농구의 추억' WHERE `bookid` = '7';
UPDATE `book` SET `bookname` = '농구를 부탁해' WHERE `bookid` = '8';

SELECT * FROM `book` WHERE `bookname` LIKE '%농구%';

SELECT * FROM `book` ;



# 33
SELECT * FROM `order`;
SELECT * FROM `order` WHERE `saleprice` >= 8000;
SELECT * FROM `order` WHERE `saleprice` >= 8000 order BY `cusid`;
SELECT `cusid`, COUNT(cusid) AS `수량` FROM `order`  WHERE `saleprice` >= 8000  GROUP BY `cusid` order BY `수량` desc LIMIT 3 ;
SELECT `cusid`, COUNT(cusid) AS `수량` FROM `order`  
                WHERE `saleprice` >= 8000  GROUP BY `cusid` HAVING COUNT(cusid) =2 order BY `수량` ; 




#34
SELECT * FROM `customer` join `order` ON customer.cusid = order.cusid;

#문제 35
SELECT * FROM `customer` JOIN `order` ON customer.cusid = order.cusid order BY customer.cusid, order.cusid;

#문제36
SELECT `name`, `saleprice` FROM `customer` JOIN `order` ON customer.cusid = order.cusid;

#문제37
SELECT `name`, SUM(`saleprice`) FROM `customer` JOIN `order` ON customer.cusid = order.cusid 
                              order BY customer.cusid, order.cusid;
                              
                        

#문제38
SELECT * FROM `customer`left join `order` ON customer.cusid = order.cusid left JOIN `book` ON order.bookid = book.bookid = ;








