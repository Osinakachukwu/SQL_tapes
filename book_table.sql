USE Books_data;
DESC books;
SELECT CONCAT( author_fname, REVERSE(author_fname)) FROM books;
SELECT UPPER (CONCAT('I LOVE',' ', title ,' ', '!!!')) from books;
SELECT REPLACE(title, ' ' , '->') AS 'title' FROM books;
SELECT author_lname AS forwards,REVERSE(author_lname) AS backwards FROM books;
SELECT UPPER(CONCAT(author_fname,' ',author_lname)) AS 'full name in caps' FROM books;
SELECT CONCAT(title,' was released in ' ,released_year) AS blurb FROM books;
SELECT title, char_length(title)AS 'character count' FROM books;
SELECT CONCAT(LEFT(title,10),'...') AS 'short title', 
CONCAT(author_lname,',',author_fname) AS author,
CONCAT(stock_quantity,' in stock') AS quantity FROM books;
SELECT * FROM books;
