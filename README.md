# Introduction To SQL

### What is SQL?

- SQL stands for: Structured Query Language
- We use SQL for Managing Data (the language used for)
- **Make sure to add a ; at the end of every statement!!**

### What are databases?

- Databases are: It's a place to where we hold persistant data.
- The database we are going to use by default is SQLite3 gem.

### What is the schema?

- Displays the table information

### How to run sql into the database

```
sqlite3 database.db < sql_file.sql
```

### CREATE TABLE

- What is a table in SQL: Rows and columns of data. Blueprint for data.
- Usually it consist of at the very least a primary key (id).

```
CREATE TABLE books (
    id INTEGER PRIMARY KEY,
    title TEXT,
    number_of_pages INTEGER
);
```

### DROP TABLE

- this will completely remove the table from the database.
- Be cautious about dropping tables that are being relied on.

```
DROP TABLE books;
```

### ALTER TABLE

- Add columns to our table

- ADD

```
    ALTER TABLE books ADD COLUMN publishing_date TEXT;
```

- DROP (???) - drop doesn't work in sqlite3.

### INSERT

- how we add records

```
INSERT INTO books (title, number_of_pages) VALUES ("Name of the wind", 325);
```

### SELECT

```
.mode column - adds the column format
.width auto - automatically sets a width to be even
.headers on - adds the headers to the query
```

- query the record created

```
SELECT column FROM table;
```

You can use `*` for everything from a table.

### WHERE (AND | OR)

- Sets a condition as to what to query.

```
SELECT * FROM books WHERE number_of_pages > 437 AND number_of_pages < 726;
SELECT * FROM books WHERE id = 1 OR id = 5;
```

### ORDER

- Order by a column by ascending or descinding order.

```
SELECT * FROM books ORDER BY number_of_pages DESC;
```

### LIMIT

- Limits the query by a number;

```
SELECT * FROM books ORDER BY number_of_pages DESC LIMIT 3;
```

### GROUP

- Base the query on the column

```
SELECT genre FROM books GROUP BY genre;
SELECT genre, COUNT(genre) FROM books GROUP BY genre ORDER BY COUNT(genre) DESC LIMIT 1;
```

### HAVING

Used to have conditions that use aggregates. Must have a GROUP BY to be able to use.

```
SELECT books.title FROM books GROUP BY books.title HAVING MAX(books.number_of_pages) > 400;

SELECT books.title FROM books GROUP BY books.title HAVING MAX(books.number_of_pages) > (SELECT AVG(books.number_of_pages) FROM books GROUP BY books.number_of_pages);
```

Last tip: you can do a query inside of another query.

### JOIN

3 different relationships:

- belongs_to ( foreign_key )
- has_many
- many to many ( one `belong_to` with two or more `has many`)

Can be used to add related tables to your query. We use `JOIN` to say which table we would like to bring into our query. We use `ON` to say how they are connected to foriegn keys. For example.

belongs_to / has_many

```
SELECT * FROM authors
JOIN books
ON books.author_id = authors.id;
```

many to many

```
SELECT * FROM authors
JOIN books
ON books.author_id = authors.id
JOIN genre
ON books.genre_id = genres.id;
```

### UPDATE

Updates a column in a record for example

Books with id of 1 doesn't have an author_id assigned. So we can update that record by doing:

```
UPDATE books
SET books.author_id = 1
WHERE books.id = 1;
```

This will update the book with the id of 1 to have the author with the primary key of 1 as it's author.

### Advanced Query Practice
