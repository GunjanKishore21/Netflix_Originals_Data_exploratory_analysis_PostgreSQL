--Problem Statement:The task involves analyzing the Netflix Originals dataset to derive insights about movie genres,runtime, IMDbscores, and premiere dates.The dataset holds valuable information regarding the content Netflix produces,and understanding these attributes can help identify trends and patterns. By using SQL queries, the aimis to perform complex filtering, aggregation, and sorting operations, providing meaningful insights for business decisions
-------------------------------------------------------------------------------------------------------------------
create table Movies
(Title varchar(500) primary key,
genre_id varchar(10),
runtime int,
imdbscore float,
language varchar(100),
premier_date date);

drop table Movies
--------------------------------------------------------------------------------------------------------------------
--1. Retrieve all Netflix Originals with an IMDb score greater than 7, runtime greater than 100 minutes, and the language is either English or Spanish.

select * from movies
where imdbscore>7 and runtime>100 and language in ('English','Spanish')
---------------------------------------------------------------------------------------------------------------------
--2. Find the total number of Netflix Originals in each language, but only show those languages that have more than 5 titles

select language,count(*) from movies 
group by language 
having count(title)>5
--------------------------------------------------------------------------------------------------------------------
--3. Get the top 3 longest-running movies in Hindi language sorted by IMDb score in descending order.

select * from movies
where language='Hindi'
order by runtime desc,imdbscore desc
limit 3
--------------------------------------------------------------------------------------------------------------------
--4. Retrieve all titles that contain the word "House" in their name and have an IMDb score greater than 6.

select title,imdbscore
from movies
where title like '%House%' and imdbscore>6
--------------------------------------------------------------------------------------------------------------------
--5. Find all Netflix Originals released between the years 2018 and 2020 that are in either English, Spanish, or Hindi.

select title,language,premier_date 
from movies
where premier_date between '2018-01-01'and '2020-12-31' and language in ('Hindi','English','Spanish')
----------------------------------------------------------------------------------------------------------------------
--6. Find all movies that either have a runtime less than 60 minutes or an IMDb score less than 5, sorted by Premiere Date.

select title,runtime,imdbscore,premier_date
from movies 
where runtime<60 or imdbscore<5
order by premier_date
------------------------------------------------------------------------------------------------------------------------
--7. Get the average IMDb score for each genre where the genre has at least 10 movies.

select genre_id,avg(imdbscore)
from movies
group by genre_id
having count(*)>10
-------------------------------------------------------------------------------------------------------------------------
--8. Retrieve the top 5 most common runtimes for Netflix Originals.

select runtime,count(*)
from movies
group by runtime
order by count(*) desc
limit 5
-------------------------------------------------------------------------------------------------------------------------
--9. List all Netflix Originals that were released in 2020, grouped by language, and show the total count of titles for each language.

select language,count(title) as num_of_titles
from movies
where premier_date between '2020-01-01' and '2020-12-31'
group by language
--------------------------------------------------------------------------------------------------------------------------
--10. Create a new table that enforces a constraint on the IMDb score to be between 0 and 10 and the runtime to be greater than 30 minutes.

create table movies1
(title varchar(500),
genre_id varchar(100),
runtime int check(runtime>30),
imdbscore float check(imdbscore between 0 and 10),
language varchar(50),
premier_date date)

select * from movies1

