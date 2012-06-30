ALTER TABLE spanc.batiment RENAME TO immeubles;

ALTER TABLE spanc.immeubles
  ALTER COLUMN "TYPE" TYPE character varying(25),
  ADD COLUMN refdoss character varying(25),
  ADD COLUMN identif character varying(80),
  ADD COLUMN type_habitat character varying(80),
  ADD COLUMN tx_occupation character varying(80),
  ADD COLUMN nb_pp integer,
  ADD COLUMN an_construction integer,
  ADD COLUMN an_rehabilitation integer,
  ADD COLUMN date_acte_authentique integer,
  ADD COLUMN comments text,
  ADD COLUMN renseignements character varying(80),
  ADD COLUMN photo character varying(200),
  ADD COLUMN docu2 character varying(200),
  ADD COLUMN cree_le timestamp without time zone,
  ADD COLUMN modifie_le timestamp without time zone,
  ADD COLUMN saisie_par character varying(25),
  ADD CONSTRAINT "FK_immeubles" FOREIGN KEY (refdoss)
      REFERENCES spanc.dossiers (refdoss) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
  
ALTER TABLE spanc.immeubles
  OWNER TO postgres;

UPDATE spanc.immeubles SET "TYPE" = 'Construction légère' WHERE "TYPE" = 'Construction légè';
 
-- Index: spanc."FKI_immeubles"

-- DROP INDEX spanc."FKI_immeubles";

CREATE INDEX "FKI_immeubles"
  ON spanc.immeubles
  USING btree
  (refdoss COLLATE pg_catalog."default" );

-- Index: spanc.fki_dossier_immeubles

-- DROP INDEX spanc.fki_dossier_immeubles;

CREATE INDEX fki_dossier_immeubles
  ON spanc.immeubles
  USING btree
  (refdoss COLLATE pg_catalog."default" );

-- Index: spanc.idx_refdoss_immeubles

-- DROP INDEX spanc.idx_refdoss_immeubles;

CREATE INDEX idx_refdoss_immeubles
  ON spanc.immeubles
  USING btree
  (refdoss COLLATE pg_catalog."default" );

-- Index: spanc.the_geom_gist_immeubles

-- DROP INDEX spanc.the_geom_gist_immeubles;

CREATE INDEX the_geom_gist_immeubles
  ON spanc.immeubles
  USING gist
  (the_geom );


-- Trigger: date_cree_le on spanc.immeubles

-- DROP TRIGGER date_cree_le ON spanc.immeubles;

CREATE TRIGGER date_cree_le
  BEFORE INSERT
  ON spanc.immeubles
  FOR EACH ROW
  EXECUTE PROCEDURE spanc.set_cree();

-- Trigger: date_modifie_le on spanc.immeubles

-- DROP TRIGGER date_modifie_le ON spanc.immeubles;

CREATE TRIGGER date_modifie_le
  BEFORE INSERT OR UPDATE
  ON spanc.immeubles
  FOR EACH ROW
  EXECUTE PROCEDURE spanc.set_modif();