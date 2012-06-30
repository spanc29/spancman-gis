ALTER TABLE spanc.parcelle
   ADD COLUMN refdoss character varying(25);
UPDATE spanc.parcelle
   SET refdoss=("CODE_COM" || "SECTION" || "NUMERO");