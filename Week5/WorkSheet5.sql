--Group 12
--ID: 6612054, Name: Win Yu Maung
--ID: 6611968, Name: Thant Zin Min
--ID: 6712143, Name: Soe Phone Pyae

--1
select country.country from dailycase,country 
where dailycase.country = country.country and 
dailycase.newcase > 0 and dailycase.newrecovered > 0 and dailycase.currentdate = '2020-07-26'
and country.continent = 'South America'
group by country.country, country.continent;

--2
select country from Country where
country in (select country from casesummary where totaldeath > (select totaldeath from casesummary where country = 'Iran')) and 
country in (select country from dailycase where newcase = 0 and currentdate = '2020-07-26');

--3
select sum(newcase) as sum_of_newcase, 
sum(newdeath) as sum_of_newdeath, 
sum(newrecovered) as sum_of_newrecovred
from dailycase;
 
--4
select c.whoregion, round(min(totaldeath),2) as minimum, round(max(totaldeath),2) as maximum, round(avg(totaldeath),2) as average
from country as c, casesummary as cs
where c.country = cs.country
group by c.whoregion;

--5 
select c.whoregion
from country as c, casesummary as cs
where c.country = cs.country
group by whoregion
having avg(cs.totaldeath) >= all (select avg(cs.totaldeath)
		from casesummary as cs, country as c
		where cs.country = c.country
		group by whoregion);
		
--6
select continent, count(distinct country) from country
where country in (select country.country 
					from country, casesummary 
					where country.country = casesummary.country
					and casesummary.totaldeath > 20000)
group by continent;