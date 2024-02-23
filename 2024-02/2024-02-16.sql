#------------2024-02-16-------------------
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