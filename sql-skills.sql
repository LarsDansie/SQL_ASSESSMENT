INSERT INTO artist (name, artist_id)
VALUES ('The 1975', '276'), ('Panic! At The Disco', '277'), ('The Front Bottoms', '278');

SELECT * FROM artist
ORDER BY name DESC
LIMIT 5;

  
SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';

SELECT * FROM employee
WHERE reports_to = 2;


SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge'


INVOICE 

SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

SELECT * FROM invoice
ORDER BY Total DESC
LIMIT 1;

SELECT * FROM invoice
ORDER BY Total ASC
LIMIT 1;


select i.invoice_id, i.total * il.unit_price AS final
FROM invoice i
JOIN invoice_line il ON il.invoice_id = i.invoice_id
WHERE i.total * il.unit_price > 5;

select COUNT(*)
FROM invoice i
JOIN invoice_line il ON il.invoice_id = i.invoice_id
WHERE i.total * il.unit_price < 5;

SELECT SUM(total * unit_price) 
FROM invoice
JOIN invoice_line ON invoice.invoice_id = invoice_line.invoice_id;

JOOIN QUERIES 

SELECT * FROM invoice_line
WHERE unit_price > .99;

SELECT invoice_date, c.first_name, c.last_name, i.total
FROM invoice i 
JOIN customer c
ON c.customer_id = i.invoice_id;

SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id;

SELECT a.title, ar.name
FROM album a
JOIN artist ar
ON a.artist_id = ar.artist_id;



EXTRA CREDIT

SELECT * 
FROM artist
ORDER BY name ASC
LIMIT 10;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';

EMPLOYEE


SELECT * FROM employee
ORDER BY birth_date DESC
LIMIT 1;


SELECT * FROM employee
ORDER BY birth_date ASC
LIMIT 1;

INOVICE 

SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'IN');

SELECT AVG(total) FROM invoice


JOOIN QUERIES

SELECT pt.playlist_track_id, t.track_id
FROM playlist_track pt 
JOIN playlist p ON p.playlist_id = pt.playlist_id
JOIN track t ON t.track_id =  pt.track_id
WHERE p.name = 'Music';

SELECT t.name
FROM track t
JOIN playlist_track pt ON pt.track_id = t.track_id
WHERE playlist_id = 5;

SELECT t.name, p.name
FROM track t
JOIN playlist_track pt ON t.track_id =  pt.track_id
JOIN playlist p ON p.playlist_id = pt.playlist_id;

SELECT t.name, a.title
FROM track t
JOIN album a ON a.album_id = t.album_id
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';