--Joshi Kunal Deepak
--HW# 06 
--December 5, 2019
--ISTE230.01   M,W,F class at 8am
--Due Date December 08, 2019 
--Professor:  Habermas, James

--Query 1  - GOAL:  Count the number of publishers that are in each city, statecode combination. 
select concat(City,', ', stateCode) as "Location", count(1) as "Count" from publisher 
group by City,stateCode order by Count asc, Location desc;

--Query 2  - GOAL:  show the title, the count of the number of ratings, the minimum rating, the maximum rating, 
--and the average rating rounded to the nearest penny along with count of the number of ratings and the average ratings in descending order.
select title, count(rating) as "Total Ratings" , min(rating) as "Low" , max(rating) as "High", 
round(avg(rating),2) as "Average"from book b left join bookreview br ON 
b.ISBN=br.ISBN group by title order by count(rating) desc, avg(rating) desc;

--Query 3  - GOAL:  Show the publisher name and count of books published for those publishers that have published more than two books.
-- sorted by the count of books published in descending order, followed by publisher name in ascending order.
select name as "Publisher Name" , count(ISBN) as "Book Count" from publisher p,
book b where p.publisherID=b.publisherID group by name having count(ISBN)>2
order by count(ISBN) desc, name asc;

--Query 4  - GOAL:  select all of the book titles that have “bill” in their name and will display the title of the book, the length 
--of the title, and the part of the title that follows “bill”. 
select title, length(title) as "Length", substring_index(title,"Bill",-1) as "After Bill" from book where instr(Title,"Bill"); 

--Query 5  - GOAL:  Show a listing of used book titles that are available.
select distinct title from ownersbook own join book b on own.isbn=b.isbn;