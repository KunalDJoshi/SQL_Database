Name:- Joshi Kunal Deepak
Course:- Database ISTE230.01
Date:- 09/18/2019

Question#1  Show the name and length of films that include ‘fun’ in the description and are 120 minutes or less. 
-> SELECT title, length FROM film where description like "%fun%" and length<=120;

Question#2  Show the name of films that end in ‘a’, ‘e’, ‘i’, ‘o’, or ‘u’. 
-> SELECT title FROM film where title like "%a" or title like "%e" or title like "%i" or title like "%o" or title like "%u";

Question#3  Show the name of films with a length that is 120 minutes or longer, but are also 180 minutes or less.
-> SELECT title FROM film where length between 120 and 180;

Question#4  Show the title and length of films that have ‘river’ in the title and a rating of either ‘PG’ or ‘PG-13’.
-> SELECT title, length FROM film where title like "%river%" and rating in ("PG","PG-13");

Question#5  What are the names of the movies that have been released after 2012 with a length greater than 160? 
-> SELECT title FROM film where release_year>2012 and length>160;

Question#6  Show the name, replacement cost and rating of movies that do not have ‘a’ as the second letter of the name and have a replacement cost of $19.99. 
-> SELECT title,replacement_cost,rating FROM film where title NOT LIKE "_a%" and replacement_cost=19.99;

Question#7  What are the names of movies that do not have a description? 
-> SELECT title FROM film where description is null;

Question#8  Show the replacement cost for the film Town Ark. 
-> SELECT replacement_cost FROM film where title="Town Ark";

Question#9  What are the names of movies that are rated ‘G’ and released in 2006 or movies that are rated ‘PG’ and released in 2010? 
-> SELECT title FROM film where (rating="G" and release_year=2006) or (rating="PG" and release_year=2010);

Question#10 Show all the data, except for the description, for films that were not released in either 2006 or 2010. 
-> SELECT film_id,title,release_year,length,replacement_cost,rating from film where release_year not in (2006,2010);

Question#11 For films released in 2006, change the replacement cost to 5.59, using one statement. 
-> UPDATE film set replacement_cost=5.59 where release_year=2006;

Question#12 Remove all films that are less than 60 minutes long and rated PG, using one statement. 
-> DELETE from film where length<60 and rating="PG";