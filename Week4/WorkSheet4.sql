--Group 12
--ID: 6612054, Name: Win Yu Maung
--ID: 6611968, Name: Thant Zin Min
--ID: 6712143, Name: Soe Phone Pyae

create type continent as enum ('Africa', 'Asia', 'Europe', 'North America', 'South America');
create type region as enum ('Africa', 'Americas', 'Eastern Mediterranean', 'Europe', 'South-East Asia');

create table Country(
	Country  char(25) NOT NULL,
	Continent continent NOT NULL,
	WHORegion region NOT NULL,
	Population numeric(12) NOT NULL,
	primary key (Country)
);

create table DailyCase (
	CurrentDate DATE NOT NULL,
    Country char(25) NOT NULL,
    NewCase numeric(12) NOT NULL,
    NewDeath numeric(12) NOT NULL,
    NewRecovered numeric(12) NOT NULL,
	primary key (CurrentDate, Country),
	foreign key (Country)
	references Country
);

create table CaseSummary (
	Country char(25) NOT NULL,
	TotalCase numeric(12) NOT NULL,
	TotalDeath numeric(12) NOT NULL,
	TotalRecovered numeric(12) NOT NULL,
	TotalTest numeric(12) NOT NULL,
	foreign key (Country) references Country
);

insert into Country(Country, Continent, WHORegion, Population) values 
	('Belgium', 'Europe', 'Europe', 331198130),
	('Brazil', 'South America', 'Americas', 212710692),
	('Canada', 'North America', 'Americas', 129066160),
	('Chile', 'South America', 'Americas', 1381344997),
	('Colombia', 'South America', 'Americas', 60452568),
	('France', 'Europe', 'Europe', 65288306),
	('Germany', 'Europe', 'Europe', 33016319),
	('India', 'Asia', 'South-East Asia', 84097623),
	('Iran', 'Asia', 'Eastern Mediterranean', 145940924),
	('Italy', 'Europe', 'Europe', 50936262),
	('Mexico', 'North America', 'Americas', 19132514),
	('Peru', 'South America', 'Americas', 11594739),
	('Russia', 'Europe', 'Europe', 59381566),
	('South Africa', 'Africa', 'Africa', 83811260),
	('USA', 'North America', 'Americas', 37775022);


INSERT INTO DailyCase (CurrentDate, Country, NewCase, NewDeath, NewRecovered)
VALUES
    ('2020-07-26', 'Belgium', 299, 0, 13),
    ('2020-07-26', 'Brazil', 24578, 555, 27554),
    ('2020-07-26', 'Canada', 319, 5, 0),
    ('2020-07-26', 'Chile', 2198, 92, 1926),
    ('2020-07-26', 'Colombia', 0, 0, 0),
    ('2020-07-26', 'France', 0, 0, 0),
    ('2020-07-26', 'Germany', 389, 0, 136),
    ('2020-07-26', 'India', 49981, 711, 31995),
    ('2020-07-26', 'Iran', 2333, 216, 1894),
    ('2020-07-26', 'Italy', 254, 5, 126),
    ('2020-07-26', 'Mexico', 5480, 1035, 6403),
    ('2020-07-26', 'Peru', 0, 0, 8427),
    ('2020-07-26', 'Russia', 5741, 77, 3108),
    ('2020-07-26', 'South Africa', 11233, 114, 2023),
    ('2020-07-26', 'USA', 54953, 470, 18449),
    ('2020-07-27', 'Belgium', 402, 1, 14),
    ('2020-07-27', 'Brazil', 23284, 614, 33728),
    ('2020-07-27', 'Canada', 682, 11, 0),
    ('2020-07-27', 'Chile', 2133, 75, 1859),
    ('2020-07-27', 'Colombia', 16306, 508, 11494),
    ('2020-07-27', 'France', 2551, 17, 267),
    ('2020-07-27', 'Germany', 445, 1, 259),
    ('2020-07-27', 'India', 44457, 637, 33598),
    ('2020-07-27', 'Iran', 2434, 212, 1931),
    ('2020-07-27', 'Italy', 168, 5, 147),
    ('2020-07-27', 'Mexico', 4973, 342, 8588),
    ('2020-07-27', 'Peru', 13756, 575, 4697),
    ('2020-07-27', 'Russia', 5607, 85, 3077),
    ('2020-07-27', 'South Africa', 7096, 298, 9848),
    ('2020-07-27', 'USA', 56336, 1076, 27941);
 
insert into CaseSummary values ('USA', 5032179, 162804, 2576668, 63139605);
insert into CaseSummary values ('Brazil', 2917562, 98644, 2047660, 13206188);
insert into CaseSummary values ('Mexico', 462690, 50517, 308848, 1056915);
insert into CaseSummary values ('India', 2025409, 41638, 1377384, 22149351);
insert into CaseSummary values ('Italy', 249204, 35187, 201323, 7099713);
insert into CaseSummary values ('France', 195633, 30312, 82460, 3992206);
insert into CaseSummary values ('Peru', 455409, 20424, 310337, 2493429);
insert into CaseSummary values ('Iran', 320117, 17976, 277463, 2612763);
insert into CaseSummary values ('Russia', 871894, 14606, 676357, 29716907);
insert into CaseSummary values ('Colombia', 357710, 11939, 192355, 1801835);
insert into CaseSummary values ('Chile', 366671, 9889, 340168, 1760615);
insert into CaseSummary values ('Belgium', 71158, 9859, 17661, 1767120);
insert into CaseSummary values ('South Africa', 538184, 9604, 387316, 3149807);
insert into CaseSummary values ('Germany', 215210, 9252, 196200, 8586648);
insert into CaseSummary values ('Canada', 118561, 8966, 103106, 4319172);

select * from Country
select * from DailyCase
select * from CaseSummary

select Country, Population from Country where Continent = 'Europe';

select Country, Population from Country where Continent = 'Europe' and Population > 60000000;

select Country.country from Country,DailyCase where Country.country = DailyCase.country and newcase=0 and newdeath=0 and currentdate = '2020-07-26' and Country.continent = 'Europe';

select Country.country from Country,DailyCase 
where Country.country = DailyCase.country and newcase > 10000
and newcase < 20000 and currentdate = '2020-07-26';
