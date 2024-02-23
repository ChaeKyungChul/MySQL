#------------2024-02-14-------------------
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