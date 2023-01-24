-- Q1) List the people who have rented a book in february--
SELECT membership.fname, membership.lname, membership.libraryid, record.rentaldate
FROM membership
INNER JOIN record ON membership.libraryid = record.libraryid where (rentaldate >= "2022-02-01" and rentaldate <= "2022-02-28");

-- Q2) Show the people who have rented a book from the south part of the library--
SELECT membership.fname, membership.lname, location.area
FROM membership
INNER JOIN books ON membership.libraryid = books.libraryid 
INNER JOIN location ON books.bookid = location.bookid where ( area = "SOUTH" );

-- Q3) List the amount of books that have been rented from each bookshelf --
SELECT count(bookid), bookshelf
FROM location
GROUP BY bookshelf;

-- Q4) List the contact information of each people that have rented a book from the east part of the library --
SELECT membership.fname, membership.lname, membership.email, membership.phone
FROM membership
INNER JOIN books ON membership.libraryid = books.libraryid
INNER JOIN location ON books.bookid = location.bookid where ( area = "EAST");



