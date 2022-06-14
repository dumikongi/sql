# 날짜 : 2022/06/14
# 이름 : 허락녕
# 내용: 데이터베이스 관리 실습

DROP DATABASE `testdb`;
CREATE DATABASE `testDB`;

CREATE user 'tester'@'%' identified BY '1234';
grant ALL PRIVILEGES ON tesrDB.* TO 'tester'@'%';
FLUSH PRIVILEGES;


SET PASSWORD FOR 'tester'@'%'=PASSWORD('12345');