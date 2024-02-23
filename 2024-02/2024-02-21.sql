#-----------------2024-02-21---------------
CREATE DATABASE sampleDB;  #셈플DB 테이블생성
use sampleDB;

# 타입 : char(10) 미리10개 ,  varchar(255)공간, text  << varchar 좀더느림
create table business_card(
	name varchar(255),
	address varchar(255),
    telephone char(15)
);
insert into business_card (name, address, telephone) values ('홍길동', '김포시', '123-1234-1234'); #3개씩정해져잇으면생략가능
insert into businees_card values ('김철수', '고양시', '02-123-123'), ('Sam', 'NewWoRK', '001-1234-1234'); #3개씩정해져잇으면생략가능
drop table business_card; #테이블삭제