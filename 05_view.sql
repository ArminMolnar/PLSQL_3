create or replace view view_data as

       select csomag.megnevezes as Csomag_megnevezes,
              f.nev as Futarszolgalat_nev,
              f_t.szallitasi_cim as Kiszallitasi_cim,
              f_t.rendeles_datum as Rendeles_datuma,
              CASE 
               WHEN f_t.szallitasi_datum IS NULL THEN SYSDATE
                  ELSE f_t.szallitasi_datum
              END AS Szallitas_idopontja,
              count (csomag.id) over (partition by csomag.id) as Tetelek
              
       from csomag_futar f_t
       join csomag 
       on csomag.id = f_t.csomag_id
       join futarszolgalat f
       on f.id = f_t.futarszolgalat_id;
       
       
       select * from view_data
       order by Futarszolgalat_nev;
