INSERT INTO csomag (megnevezes, leiras, ar)
VALUES ('Könyv csomag', 'Válogatott szépirodalmi könyvek', 5000);

INSERT INTO csomag (megnevezes, leiras, ar)
VALUES ('Elektronikai csomag', 'Laptop és tartozékok', 250000);

INSERT INTO csomag (megnevezes, leiras, ar)
VALUES ('Élelmiszer csomag', 'Válogatott helyi termékek', 8000);


INSERT INTO futarszolgalat (nev, cim, leiras)
VALUES ('Gyors Futár Kft.', 'Budapest, Fõ utca 1.', 'Gyors és megbízható kézbesítés');

INSERT INTO futarszolgalat (nev, cim, leiras)
VALUES ('Express Delivery Zrt.', 'Debrecen, Piac utca 15.', 'Országos lefedettségû futárszolgálat');

INSERT INTO futarszolgalat (nev, cim)
VALUES ('Local Courier Bt.', 'Szeged, Tisza Lajos körút 30.');


INSERT INTO csomag_futar (csomag_id, futarszolgalat_id, rendeles_datum, szallitasi_cim, megjegyzes, szallitasi_datum)
VALUES ((select cs.id from csomag cs where cs.megnevezes = 'Könyv csomag'), (select f.id from futarszolgalat f where f.nev = 'Gyors Futár Kft.'), TO_DATE('2024-12-08', 'YYYY-MM-DD'), 'Budapest, Váci utca 10.', 'Kérjük, hívjon fel érkezés elõtt', TO_DATE('2024-12-10', 'YYYY-MM-DD'));


INSERT INTO csomag_futar (csomag_id, futarszolgalat_id, rendeles_datum, szallitasi_cim, szallitasi_datum)
VALUES ((select cs.id from csomag cs where cs.megnevezes = 'Elektronikai csomag'), (select f.id from futarszolgalat f where f.nev = 'Express Delivery Zrt.'),TO_DATE('2024-12-09', 'YYYY-MM-DD'), 'Debrecen, Egyetem sugárút 5.', TO_DATE('2024-12-11', 'YYYY-MM-DD'));

INSERT INTO csomag_futar (csomag_id, futarszolgalat_id, rendeles_datum, szallitasi_cim, megjegyzes)
VALUES ((select cs.id from csomag cs where cs.megnevezes = 'Élelmiszer csomag'), (select f.id from futarszolgalat f where f.nev = 'Express Delivery Zrt.'),TO_DATE('2024-12-10', 'YYYY-MM-DD'), 'Szeged, Dugonics tér 2.', 'Munkaidõben kérem a kézbesítést');

INSERT INTO csomag_futar (csomag_id, futarszolgalat_id, rendeles_datum, szallitasi_cim, megjegyzes)
VALUES ((select cs.id from csomag cs where cs.megnevezes = 'Könyv csomag'), (select f.id from futarszolgalat f where f.nev = 'Local Courier Bt.'),TO_DATE('2024-12-10', 'YYYY-MM-DD'), 'Szeged, Dugonics tér 2.', 'Munkaidőben kérem a kézbesítést');

