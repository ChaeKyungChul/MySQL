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