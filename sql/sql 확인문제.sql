CREATE TABLE `tbl_member`(
`memberId` VARCHAR(10) PRIMARY key,
`memberName` VARCHAR(10) NOT null,
`memberHp` CHAR(13) unique,
`memberAge` INT,
`memberAddr` VARCHAR(20) 
);

create TABLE `tbl_product`(
`productCode` INT AUTO_INCREMENT PRIMARY key,
`productName` VARCHAR(10) NOT NULL,
`price`       INT NOT NULL,
`amount`      INT DEFAULT 0,
`company`     VARCHAR(10),
`makedate`    DATE
);

INSERT INTO `tbl_member` VALUES ('p101', '김유신', '010-1234-1001', 25, '신라');
INSERT INTO `tbl_member` VALUES ('p102', '김춘추', '010-1234-1002', 23, '신라');
INSERT INTO `tbl_member` VALUES ('p103', '장보고', '010-1234-1003', 31, '통일신라');
INSERT INTO `tbl_member` (`memberId`, `memberName`, `memberAge`, `memberAddr`) 
                  VALUES ('p104', '강감찬', 31, '고려');
INSERT INTO `tbl_member` (`memberId`, `memberName`, `memberHp`, `memberAge`) 
                  VALUES ('p105', '이순신', '010-1234-1005', 50);
                  
      
INSERT INTO `tbl_product` (`productName`, `price`, `amount`, `company`, `makedate`) 
                     VALUES ('냉장고', 800, 10, 'LG', 20220106);
            
INSERT INTO `tbl_product` (`productName`, `price`, `amount`, `company`, `makedate`)
                     VALUES ('노트북', 1200,20,'삼성', 20220106);
INSERT INTO `tbl_product` (`productName`, `price`, `amount`, `company`, `makedate`)
                     VALUES ('TV', 1400, 6,  'LG', 20220106);
INSERT INTO `tbl_product` (`productName`, `price`, `amount`, `company`, `makedate`)
                     VALUES ('세탁기', 1000, 8, 'LG', 20220106);
INSERT INTO `tbl_product` (`productName`, `price`, `amount`)
                     VALUES ('컴퓨터', 1100, 0);
INSERT INTO `tbl_product` (`productName`, `price`, `amount`, `company`, `makedate`)
                     VALUES ('휴대폰', 900, 102, '삼성', NOW());




SELECT `membername` FROM `tbl_member`;
SELECT `membername`, `memberhp` FROM `tbl_member`;
SELECT*FROM `tbl_member` WHERE `memberid`='p102';
SELECT*FROM `tbl_member` WHERE `memberid`='p101' OR `memberid`='p102';
SELECT*FROM `tbl_member` WHERE `memberaddr`='고려';
SELECT*FROM `tbl_member` WHERE `memberage` <37;
SELECT*FROM `tbl_member` WHERE `memberhp` IS NULL;
UPDATE `tbl_member` SET `memberage` = 42 WHERE `memberid`= 'p104';
UPDATE `tbl_member` SET `memberaddr` = '조선' WHERE `memberid` ='p105';
DELETE FROM `tbl_member` WHERE `memberhp` = '010-1234-1003';
SELECT*FROM `tbl_member`;

SELECT `productname` FROM `tbl_product`;
SELECT `price`, `amount` FROM `tbl_product`;
SELECT*FROM `tbl_product` WHERE `company` = 'LG'; 
SELECT*FROM `tbl_product` WHERE `company` = '삼성';
UPDATE `tbl_product` SET `company` ='삼성', `makedate` = 20220225 WHERE `productcode` = 5;
SELECT*FROM `tbl_product`;




                  