--Joshi Kunal Deepak
--HW# 06 
--November 10, 2019
--ISTE230.01   M,W,F class at 8am
--Due Date November 17, 2019 
--Professor:  Habermas, James 

--Query 1  - GOAL: SQL statement that will show the title for each book and its category description
select bo.Title,cat.catdescription from book bo,category cat 
where bo.Category=cat.CatID order by cat.catdescription desc, bo.Title asc; 

--Query 2  - GOAL: List the book titles and their ratings for all reviewers who do not work for a newspaper or any other news organization
select rev.name, bo.Title, br.rating from reviewer rev join BookReview  br using(ReviewerID) join book bo using(ISBN) 
where rev.EmployedBy IS NULL;

--Query 3  - GOAL: For each book, show the title and the lastname and firstname for the author(s) of the book.
--The results should be sorted by book title in A-Z order, followed by author lastname in A-Z order
select bo.Title, au.LastName, au.FirstName from book bo join bookAuthor ba using(ISBN) join Author au using(AuthorID)
order by bo.Title,au.LastName asc;

--Query 4  - GOAL: List the titles, author’s names, and prices for pre-owned books that are priced at $50.00 or below.
--Results should be sorted by price in descending order, followed by title in A-Z order. 
select bo.Title, au.LastName, au.FirstName, ob.price from book bo join bookAuthor ba using(ISBN) join Author au using(AuthorID) join 
OwnersBook ob using(ISBN) where ob.price<=50 order by ob.price desc,bo.Title asc;

--Query 5  - GOAL: Show the titles of ALL books and if the book had a reviewer show the name of the reviewer(s). 
select bo.Title, re.name from book bo left join BookReview  br using(ISBN) left join reviewer re using(reviewerID); 


--Query 6  - GOAL: Write a subquery that will display the ISBN and title of book that have a category that starts with the letter ‘S’.
select bo.isbn, bo.title from book bo where bo.category in (select ca.catID from category ca where catdescription like "S%");