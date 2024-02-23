#------------2024-02-15-------------------
#1. city 테이블 조회
#2. city 테이블에서 한국 도시 조회
#3. city 테이블인구수 50000000보다 많은 도시 조회
#4. 중국도시 CHN 만 조회
#5. 인구수 1000만 이상인 도시의 이름만 조회

select * from city where CountryCode = 'KOR';
show databases;
use world;
#insert into 테이블명 (컬럼명) values (값) ;  // 김포추가, 파주추가함------------------------------------------------------★★★★★★★★★

insert into city (id, name, countrycode, district, population)
values (10000, 'Gimpo', 'KOR', 'Kyounggi', 427800);  

insert into city (id, name, countrycode, district, population)
values (10000, 'paju', 'KOR', 'Kyounggi', 480000);  

#updata 테이블명 set 컬럼명=데이터 where id = 10000;---------------------------------------------------------------★★★★★★★★★★★
update city set population=514950 where id=10000;

#delete from 테이블명 where 컬럼명=데이터;------------------------------------------------------------★★★★★★★★★★★★★★★★★★★★★

delete from city where id = 10000;
select * from cite where id = 20000;
select * from city where id = 10000;  #추가한 김포검색
select * from city where CountryCode = 'KOR'; #1
select * from city where Pupulation >= 5000000;
