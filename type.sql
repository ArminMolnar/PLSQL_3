CREATE OR REPLACE TYPE ty_futarszolgalat AS OBJECT
(
  nev                 VARCHAR2(250),
  legkorabbi_rendeles DATE,
  legutolso_rendeles  DATE
)
;

CREATE OR REPLACE TYPE ty_futarszolgalat_l AS TABLE OF ty_futarszolgalat;

CREATE OR REPLACE FUNCTION futar_rendeles RETURN ty_futarszolgalat_l IS

  rendeles_list ty_futarszolgalat_l;

BEGIN
  SELECT ty_futarszolgalat(futarszolgalat.nev, min(cs_f.rendeles_datum), max(cs_f.rendeles_datum))
  
    BULK COLLECT
    INTO rendeles_list
    
    FROM csomag_futar cs_f
    join futarszolgalat
    on futarszolgalat.id = cs_f.futarszolgalat_id
  
   group by nev;
  RETURN rendeles_list;

END;



