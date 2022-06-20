
# 확인문제1


SELECT *, `name` AS `depart` FROM `department`;
SELECT * FROM `member` JOIN `department` ON member.dep = department.depno;
SELECT `uid`, `name`, `pos`, `name` FROM `member` JOIN `department` ON member.dep = department.depno;


# 확인문제2
SELECT `name` SUale) AS `합계` FROM `member` JOIN `sales` ON member.uid = sales.uid WHERE `year` = 2019 ;


# 확인문제 3
SELECT 