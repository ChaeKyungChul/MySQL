#----------------2024-02-23-------------------
use sampledb;
create table business_card(
   id int not null,
   name varchar(255) not null unique,
    address varchar(255),
    telephone char(13),business_cardbusiness_cardbusiness_cardsalary
    primary key(id)
);

create table salary(
   id int not null,
    card_amount int,
    business_card_id int not null,
    name varchar(10),
    primary key(id),
    foreign key(business_card_id) references business_card(id)
);


insert  into salary values(1, 100000, 1, '삼성');
insert into salary values(2, 100000, 2, '삼성'),(3, 100000, 1, '국민'),(4, 100000, 4, '신한');

select * from salary;

desc business_card;
insert into business_card (id,name, address, telephone) values(1,'홍길동', '김포시', '123-1234-1234');
insert into business_card values(3,'김철수', '고양시', '123-3212-1234'),(4,'Son', 'NewYork', '12-1212-1212');

select * from business_card;
delete from business_card where id=3;
delete from business_card where address = '김포시';
update business_card set address = '파주시' where id =3;
update business_card set address = '김철수' where id =2;

#drop table business_card;
select * from business_card where id=2;

 #business_card a , salary 
select a.name b.card_amount, b.name as card_name
from business_card a join salary b 
on a.id = b.business_card_id
where a.name = '김철수';


-- 1. 기본값 (primary key)id, varchar(255) 타입의 name을 갖는 newbook 이라는 테이블을 만드시오
--  -price를 (varchar(255))로 추가하시오
--  -price의 타입을 number 타입으로 변경하시오.
--  -price 를 삭제 하시오.
--  -price를 name 컬럼앞에 number타입으로 추가하시오.
--  -price 에 not null 제약 조건을 거시오.


 CREATE TABLE newbook(
 id int not null auto_increment,
 name varchar(255),
 primary key(id)
 );
 
 alter table newbook add column price varchar(255);
 select * from newbook;
 
 alter table newbook modify column price int;
 desc newbook;
 
 alter table newbook drop column price;
 
 alter table newbook add column price int after id;
 alter table newbook add column price  int first;
 alter table newbook modify column price int not null;
 
alter table newbook modify id not not null;      #auto increment 삭제alter
alter table newbook drop primary key;             # primary 키 삭제
# alter table newbook drop primary key, add index(OLD_PRIMARY_KEY_FIELED);
 
 
 
 
 
 
 
 
 
 
 


