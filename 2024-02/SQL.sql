show databases;
use world;
show tables;
desc country;
select Code, name, continent from country; 
desc city;
desc country;
desc city;
select Code, name, continent from country where code='KOR';
# 시티에서 한국의 도시를검색
# 인구수가 500만이상 검색
# 한국도시중 인구수가 100만이상도시 검색

select * from city where CountryCode = 'KOR';
select * from city where population >= 5000000;
select * from city where population >= 1000000 and countrycode='KOR'; 
desc city;

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

show databases;
use world;
show tables;
#-----------국가 코드가 kor인 도시들의 국가코드를 표시하시오.------------
#----------국가코드가 kor인 도시들의 국가코드를 중복제거해서 표시하시오.----------------

select countrycode from city where countrycode = 'kor';
#select distinct 컬럼1, 컬럼2… from 테이블명 where 조건절.   << distinct 중복제거
select distinct countrycode from city where countrycode = 'kor';   #<중복제거 

#--------국가코드 kor 이면서 인구가 100만 이상인 도시--------------------------------------
-----------------------------
select * from city where population >= 1000000 and countrycode = 'kor';
select * from city where countrycode = 'kor' and population >= 1000000;
			#국가코드 kor, chn, jpn 인 도시
select * from city where countrycode = 'kor' or 
						 countrycode = 'chn' or 
                         countrycode = 'jpn';
			#Kor가 아니면서 인구가 100만 이상인 도시
select * from city where countrycode != 'kor' and population >= 1000000;
#-------------------. Kor 인 도시를 찾아 인구수의 역순으로 표시하시오------------------------------
select * from city where countrycode = 'kor' order by population asc;
select * from city where countrycode = 'kor' order by population desc;
select * from city order by id desc;
#---------------------- city 테이블의 국가코드와 인구수를 출력하시오. 단 정렬은 국가 코드 별로 오름차순,----
#동일안 코드 안에서 인구수의 역순으로 표시. -------------------------
select countrycode, population from city order by countrycode, population desc;

#--------------------------------------------------------------------------------------------
#국가코드 kor, chn jpn 인 도시
select * from city where countrycode in  ('kor', 'chn', 'jpn');
#Between a and b  a 이상 b이하
select * from city where countrycode = 'kor' and (population >= 1000000 and population <= 5000000);
select * from city where countrycode = 'kor' and (population between 1000000 and 5000000);

#----------------------------------------------------------------------------------------------

#* 2024 - 02 - 19
show databases;
use world;
show tables;
#Ex 국가코드가 ‘kor’ 인 도시들 중 인구수가 많은 순서로 상위 10개만 표시.==============================
select*from city where countryCode ='KOR' order by Population Desc limit 0, 10;  

#------------------한국의 도시는 몇개인가?-----------------
#한국도시의 인구수의 평균을 구하시오. avg
#한국 도시 인구수의 최대값을 구하시오. max
#한국 도시 인구의 최소 값을 구하시오 min
select count(*) from city where countrycode = 'kor';
select sum(population) from city where countrycode  = 'kor';
select avg(population) from city where countrycode = 'kor';
select min(population) from city where countrycode = 'kor';
select max(population) from city where countrycode = 'kor';

#Country 테이블에서 각 name 컬럼의 글자수를 표기하라
#Country 테이블에서 나라명을 앞 세글자만 대문자로 표시.
#Country 테이블에서 LifeExpectancy (기대수명)을 소수점 첫재짜리 에서 반올림 해서 표시하라.

select length(Name), name from country;
select upper (mid(name, 1, 3)) Code from country;
select round(LifeExpectancy, 0) from country; 



show databases;
use world;
show tables;
#Ex 국가코드가 ‘kor’ 인 도시들 중 인구수가 많은 순서로 상위 10개만 표시.==============================
select*from city where countryCode ='KOR' order by Population Desc limit 0, 10;  

#- 2024 - 02 - 20---------
select * from city limit 0, 10;
desc city;

select * from country limit 1;
desc country;

select * from city where name = 'seoul';
select *from country limit 10; 

select A.countrycode As ccode, B.Name as FullName 
from city A join country AS B on A.countrycode = B.Code where A.name ='seoul';

# 국가코드와 해당 국가의 gdp를 표시하라.
select
city.countrycode gdp
from
city join country
on
city.countrycode = country.code;

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
















