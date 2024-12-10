INSERT INTO csomag (megnevezes, leiras, ar)
VALUES ('K�nyv csomag', 'V�logatott sz�pirodalmi k�nyvek', 5000);

INSERT INTO csomag (megnevezes, leiras, ar)
VALUES ('Elektronikai csomag', 'Laptop �s tartoz�kok', 250000);

INSERT INTO csomag (megnevezes, leiras, ar)
VALUES ('�lelmiszer csomag', 'V�logatott helyi term�kek', 8000);


INSERT INTO futarszolgalat (nev, cim, leiras)
VALUES ('Gyors Fut�r Kft.', 'Budapest, F� utca 1.', 'Gyors �s megb�zhat� k�zbes�t�s');

INSERT INTO futarszolgalat (nev, cim, leiras)
VALUES ('Express Delivery Zrt.', 'Debrecen, Piac utca 15.', 'Orsz�gos lefedetts�g� fut�rszolg�lat');

INSERT INTO futarszolgalat (nev, cim)
VALUES ('Local Courier Bt.', 'Szeged, Tisza Lajos k�r�t 30.');


INSERT INTO csomag_futar (csomag_id, futarszolgalat_id, rendeles_datum, szallitasi_cim, megjegyzes, szallitasi_datum)
VALUES ((select cs.id from csomag cs where cs.megnevezes = 'K�nyv csomag'), (select f.id from futarszolgalat f where f.nev = 'Gyors Fut�r Kft.'), TO_DATE('2024-12-08', 'YYYY-MM-DD'), 'Budapest, V�ci utca 10.', 'K�rj�k, h�vjon fel �rkez�s el�tt', TO_DATE('2024-12-10', 'YYYY-MM-DD'));


INSERT INTO csomag_futar (csomag_id, futarszolgalat_id, rendeles_datum, szallitasi_cim, szallitasi_datum)
VALUES ((select cs.id from csomag cs where cs.megnevezes = 'Elektronikai csomag'), (select f.id from futarszolgalat f where f.nev = 'Express Delivery Zrt.'),TO_DATE('2024-12-09', 'YYYY-MM-DD'), 'Debrecen, Egyetem sug�r�t 5.', TO_DATE('2024-12-11', 'YYYY-MM-DD'));

INSERT INTO csomag_futar (csomag_id, futarszolgalat_id, rendeles_datum, szallitasi_cim, megjegyzes)
VALUES ((select cs.id from csomag cs where cs.megnevezes = '�lelmiszer csomag'), (select f.id from futarszolgalat f where f.nev = 'Express Delivery Zrt.'),TO_DATE('2024-12-10', 'YYYY-MM-DD'), 'Szeged, Dugonics t�r 2.', 'Munkaid�ben k�rem a k�zbes�t�st');

