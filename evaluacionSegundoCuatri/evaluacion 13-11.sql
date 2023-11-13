--Lo corrí en Postgresql

--2)

INSERT INTO "artist" (artist_id, name) VALUES (912, 'Duki');

INSERT INTO "album" (artist_id, title, album_id) VALUES (912, 'Desde el fin del mundo', 912);

INSERT INTO "genre" (name, genre_id) VALUES ('trap', 912);

INSERT INTO "track" (track_id, name, album_id, media_type_id, genre_id, composer, milliseconds, bytes, unit_price) 
VALUES (91218, 'Sudor Y Trabajo', 912, 1, 912, 'Duki', 912, 912, 0.912);

INSERT INTO "track" (track_id, name, album_id, media_type_id, genre_id, composer, milliseconds, bytes, unit_price) 
VALUES (91219, 'Pintao', 912, 1, 912, 'Duki, YSY A, Rei', 912, 912, 0.912);

INSERT INTO "track" (track_id, name, album_id, media_type_id, genre_id, composer, milliseconds, bytes, unit_price) 
VALUES (91220, 'Chico Estrella', 912, 1, 912, 'Duki', 912, 912, 0.912);

INSERT INTO "track" (track_id, name, album_id, media_type_id, genre_id, composer, milliseconds, bytes, unit_price) 
VALUES (91221, 'Volando Bajito', 912, 1, 912, 'Duki', 912, 912, 0.912);

INSERT INTO "track" (track_id, name, album_id, media_type_id, genre_id, composer, milliseconds, bytes, unit_price) 
VALUES (91222, 'Cuanto', 912, 1, 912, 'Duki, Lucho SSJ, Farina', 912, 912, 0.912);

INSERT INTO "track" (track_id, name, album_id, media_type_id, genre_id, composer, milliseconds, bytes, unit_price) 
VALUES (91223, 'Rapido', 912, 1, 912, 'Duki', 912, 912, 0.912);

INSERT INTO "track" (track_id, name, album_id, media_type_id, genre_id, composer, milliseconds, bytes, unit_price) 
VALUES (91224, 'I Dont Know', 912, 1, 912, 'Duki', 912, 912, 0.912);

INSERT INTO "track" (track_id, name, album_id, media_type_id, genre_id, composer, milliseconds, bytes, unit_price) 
VALUES (91225, 'Sol', 912, 1, 912, 'Duki, Lara91k', 912, 912, 0.912);

INSERT INTO "track" (track_id, name, album_id, media_type_id, genre_id, composer, milliseconds, bytes, unit_price) 
VALUES (91226, 'Malbec', 912, 1, 912, 'Duki, Bizarrap', 912, 912, 0.912);

INSERT INTO "track" (track_id, name, album_id, media_type_id, genre_id, composer, milliseconds, bytes, unit_price) 
VALUES (91227, 'Mi Diablo', 912, 1, 912, 'Duki', 912, 912, 0.912);

INSERT INTO "track" (track_id, name, album_id, media_type_id, genre_id, composer, milliseconds, bytes, unit_price) 
VALUES (91228, 'Fifty Fifty', 912, 1, 912, 'Duki, Pablo Chill-E, Obie Wanshot, Neo Pistea, Julianono Sosa, Young Cister', 912, 912, 0.912);

INSERT INTO "track" (track_id, name, album_id, media_type_id, genre_id, composer, milliseconds, bytes, unit_price) 
VALUES (91229, 'Valentino', 912, 1, 912, 'Duki, Tobi', 912, 912, 0.912);

INSERT INTO "track" (track_id, name, album_id, media_type_id, genre_id, composer, milliseconds, bytes, unit_price) 
VALUES (91230, 'Cascada', 912, 1, 912, 'Duki', 912, 912, 0.912);

INSERT INTO "track" (track_id, name, album_id, media_type_id, genre_id, composer, milliseconds, bytes, unit_price) 
VALUES (91231, 'Ticket', 912, 1, 912, 'Duki', 912, 912, 0.912);

INSERT INTO "track" (track_id, name, album_id, media_type_id, genre_id, composer, milliseconds, bytes, unit_price) 
VALUES (91232, 'Muriendome', 912, 1, 912, 'Duki, Khea', 912, 912, 0.912);

INSERT INTO "track" (track_id, name, album_id, media_type_id, genre_id, composer, milliseconds, bytes, unit_price) 
VALUES (91233, 'Ella Es Mi Bitch', 912, 1, 912, 'Duki, Pekeño 77, Mesita, Franux 88, 44 Kid', 912, 912, 0.912);

INSERT INTO "track" (track_id, name, album_id, media_type_id, genre_id, composer, milliseconds, bytes, unit_price) 
VALUES (91234, 'Muero De Fiesta Este Finde', 912, 1, 912, 'Duki, Ca7riel', 912, 912, 0.912);

--3)
UPDATE employee
SET fax = phone, phone = fax;

--4)
DELETE FROM playlist_track WHERE track_id IN (SELECT track_id FROM track WHERE genre_id IN(SELECT genre_id
FROM track GROUP BY
genre_id HAVING COUNT(genre_id)<50));

DELETE FROM invoice_line WHERE track_id IN (SELECT track_id FROM track WHERE genre_id IN(SELECT genre_id
 FROM track GROUP BY
genre_id HAVING COUNT(genre_id)<50));

DELETE FROM track WHERE genre_id IN (SELECT genre_id FROM track GROUP BY
genre_id HAVING COUNT(genre_id)<50);

DELETE FROM genre WHERE genre_id IN (SELECT genre_id AS cant FROM track GROUP BY
genre_id HAVING COUNT(genre_id)<50);

--5)
UPDATE employee SET reports_to=employee_id WHERE reports_to IS NULL;

--6)
DELETE FROM customer WHERE customer_id NOT IN (SELECT DISTINCT customer_id FROM invoice)

--7)
INSERT INTO "customer" (customer_id, first_name, last_name, support_rep_id, email) 
VALUES (912, (SELECT first_name FROM employee LIMIT 1), (SELECT last_name FROM employee LIMIT 1), (SELECT reports_to FROM employee LIMIT 1), (SELECT email FROM employee LIMIT 1));

INSERT INTO "customer" (customer_id, first_name, last_name, support_rep_id, email) 
VALUES (914, (SELECT first_name FROM employee LIMIT 1 OFFSET 1), (SELECT last_name FROM employee LIMIT 1 OFFSET 1), (SELECT reports_to FROM employee LIMIT 1 OFFSET 1), (SELECT email FROM employee LIMIT 1 OFFSET 1));

INSERT INTO "customer" (customer_id, first_name, last_name, support_rep_id, email) 
VALUES (914, (SELECT first_name FROM employee LIMIT 1 OFFSET 2), (SELECT last_name FROM employee LIMIT 1 OFFSET 2), (SELECT reports_to FROM employee LIMIT 1 OFFSET 2), (SELECT email FROM employee LIMIT 1 OFFSET 2));

INSERT INTO "customer" (customer_id, first_name, last_name, support_rep_id, email) 
VALUES (915, (SELECT first_name FROM employee LIMIT 1 OFFSET 3), (SELECT last_name FROM employee LIMIT 1 OFFSET 3), (SELECT reports_to FROM employee LIMIT 1 OFFSET 3), (SELECT email FROM employee LIMIT 1 OFFSET 3));

INSERT INTO "customer" (customer_id, first_name, last_name, support_rep_id, email) 
VALUES (916, (SELECT first_name FROM employee LIMIT 1 OFFSET 4), (SELECT last_name FROM employee LIMIT 1 OFFSET 4), (SELECT reports_to FROM employee LIMIT 1 OFFSET 4), (SELECT email FROM employee LIMIT 1 OFFSET 4));

INSERT INTO "customer" (customer_id, first_name, last_name, support_rep_id, email) 
VALUES (917, (SELECT first_name FROM employee LIMIT 1 OFFSET 5), (SELECT last_name FROM employee LIMIT 1 OFFSET 5), (SELECT reports_to FROM employee LIMIT 1 OFFSET 5), (SELECT email FROM employee LIMIT 1 OFFSET 5));

INSERT INTO "customer" (customer_id, first_name, last_name, support_rep_id, email) 
VALUES (918, (SELECT first_name FROM employee LIMIT 1 OFFSET 6), (SELECT last_name FROM employee LIMIT 1 OFFSET 6), (SELECT reports_to FROM employee LIMIT 1 OFFSET 6), (SELECT email FROM employee LIMIT 1 OFFSET 1));

INSERT INTO "customer" (customer_id, first_name, last_name, support_rep_id, email) 
VALUES (919, (SELECT first_name FROM employee LIMIT 1 OFFSET 7), (SELECT last_name FROM employee LIMIT 1 OFFSET 7), (SELECT reports_to FROM employee LIMIT 1 OFFSET 7), (SELECT email FROM employee LIMIT 1 OFFSET 7));






