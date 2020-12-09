UPDATE books
SET genre = "Fiction"
WHERE id = 1 OR id = 4 OR id = 5;

UPDATE books
SET genre = "Fantasy"
WHERE id = 2 OR id = 3;


-- INSERT INTO books (title, number_of_pages) VALUES ("Name of the wind", 325);
-- INSERT INTO books (title, number_of_pages) VALUES ("LOTR", 425);
-- INSERT INTO books (title, number_of_pages) VALUES ("Harry Potter", 500);
-- INSERT INTO books (title, number_of_pages) VALUES ("The goldfinch", 437);
-- INSERT INTO books (title, number_of_pages) VALUES ("Into the woods", 726);



-- Select the genre with the most books

-- SELECT genre FROM books GROUP BY genre ORDER BY COUNT(genre) DESC LIMIT 1;