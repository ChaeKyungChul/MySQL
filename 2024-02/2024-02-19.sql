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
