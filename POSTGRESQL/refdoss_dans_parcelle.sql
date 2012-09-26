ALTER TABLE spanc.parcelles
   ADD COLUMN refdoss character varying(25);
UPDATE spanc.parcelles
   SET refdoss=("CODE_COM" || "SECTION" || "NUMERO");
