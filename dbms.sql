DECLARE
  rendeles_list ty_futarszolgalat_l;

BEGIN
  rendeles_list := futar_rendeles();
  FOR i IN 1 .. rendeles_list.count
  LOOP
    dbms_output.put_line(' Futarszolgalat nev: ' || rendeles_list(i).nev ||
                         ' Legkorabbi rendeles: ' || rendeles_list(i)
                         .legkorabbi_rendeles || ' Legutolso rendeles: ' || rendeles_list(i)
                         .legutolso_rendeles);
  END LOOP;
END;
