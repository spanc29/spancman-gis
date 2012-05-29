﻿--DECLARE @L;
--DECLARE @laytype;

-- Table: spanc.base_point

BEGIN
SET @laytype = 'POINT', @L = 'basessai'; -- type de couche : POINT MULTILINESTRING POLYGON
-- SET @L = 'basessai'; -- indiquer le nom de la couche

INSERT INTO geometry_columns(
            f_table_catalog, f_table_schema, f_table_name, f_geometry_column, 
            coord_dimension, srid, type)
    VALUES ('','spanc','@L','the_geom',2,2154,'@laytype');

-- DROP TABLE spanc.@L;

CREATE TABLE spanc.@L
(
  gid serial NOT NULL,
  refdoss character varying(25) NOT NULL,
  identif character varying(80),
  type_entite character varying(80),
  comments text,
  marq_constructeur character varying(80),
  annee_pose integer,
  poseur character varying(80),
  accessible character varying(25),
  integrite character varying(25),
  proprete character varying(25),
  securite character varying(25),
  ecoulement character varying(25),
  photo1 character varying(200),
  photo2 character varying(200),
  longueur real,
  largeur real,
  haut_prof real,
  angle real,
  taille real,
  cree_le character varying(25),
  modifie_le character varying(25),
  saisie_par character varying(25),
  the_geom geometry,
  CONSTRAINT pkey_@L PRIMARY KEY (gid ),
  CONSTRAINT enforce_dims_the_geom CHECK (st_ndims(the_geom) = 2),
  CONSTRAINT enforce_geotype_the_geom CHECK (geometrytype(the_geom) = '@laytype'::text OR the_geom IS NULL),
  CONSTRAINT enforce_srid_the_geom CHECK (st_srid(the_geom) = 2154)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE spanc.@L
  OWNER TO postgres;

-- Index: spanc.fki_dossier_pretraitement

-- DROP INDEX spanc.fki_dossier_pretraitement;

CREATE INDEX fki_dossier_@L
  ON spanc.@L
  USING btree
  (refdoss COLLATE pg_catalog."default" );

-- Index: spanc.@L_the_geom_gist

-- DROP INDEX spanc.@L_the_geom_gist;

CREATE INDEX the_geom_gist_@L
  ON spanc.@L
  USING gist
  (the_geom );

-- Index: spanc.idx_@L_refdoss

-- DROP INDEX spanc.idx_@L_refdoss;

CREATE INDEX idx_refdoss_@L
  ON spanc.@L
  USING btree
  (refdoss COLLATE pg_catalog."default" );

-- Trigger: mis_a_jour_le on spanc.@L

-- DROP TRIGGER mis_a_jour_le ON spanc.@L;

CREATE TRIGGER mis_a_jour_le
  BEFORE INSERT OR UPDATE
  ON spanc.@L
  FOR EACH ROW
  EXECUTE PROCEDURE spanc.set_modifie();

-- Trigger: date_cree_le on spanc.dossiers

-- DROP TRIGGER date_cree_le ON spanc.dossiers;

CREATE TRIGGER date_cree_le
  BEFORE INSERT
  ON spanc.@L
  FOR EACH ROW
  EXECUTE PROCEDURE spanc.set_cree_le();
END