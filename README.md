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
- Remove columns from our table

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

### JOIN

### UPDATE

### Advanced Query Practice
