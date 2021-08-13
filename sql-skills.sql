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

