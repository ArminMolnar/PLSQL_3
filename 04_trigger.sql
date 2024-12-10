CREATE OR REPLACE TRIGGER csomag_seq_trg
  BEFORE INSERT ON csomag
  FOR EACH ROW
BEGIN
  IF :new.id IS NULL
  THEN
    :new.id := csomag_seq.nextval;
  END IF;
END;

CREATE OR REPLACE TRIGGER futarszolgalat_seq_trg
  BEFORE INSERT ON futarszolgalat
  FOR EACH ROW
BEGIN
  IF :new.id IS NULL
  THEN
    :new.id := futarszolgalat_seq.nextval;
  END IF;
END;

CREATE OR REPLACE TRIGGER csomag_futar_seq_trg
  BEFORE INSERT ON csomag_futar
  FOR EACH ROW
BEGIN
  IF :new.id IS NULL
  THEN
    :new.id := csomag_futar_seq.nextval;
  END IF;
END;
