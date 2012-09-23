--DECLARE @L;
--DECLARE @laytype;

-- Table: spanc.base_point

BEGIN
SET @laytype = 'POINT', @L = 'base'; -- type de couche : POINT MULTILINESTRING MULTIPOLYGON

INSERT INTO geometry_columns(
            f_table_catalog, f_table_schema, f_table_name, f_geometry_column, 
            coord_dimension, srid, type)
    VALUES ('','spanc','@L','the_geom',2,2154,'@laytype');

-- DROP TABLE spanc.@L;

CREATE TABLE spanc.@L
(
  gid serial NOT NULL,
  refdoss character varying(25) NOT NULL,
  install_gid integer NOT NULL,
  identif character varying(80),
  typ_traitt character varying(80), -- exemple
  longueur real,
  largeur real,
  profondeur real,
  surface real,
  angle real DEFAULT 0,
  details text,
  comments text,
  annee_pose date,
  desaffecte_le date,
  poseur character varying(80),
  renseignements character varying(80),
  accessibilite character varying(80),
  integrite character varying(80),
  proprete character varying(80),
  securite character varying(80),
  ecoulement character varying(80),
  photo character varying(200),
  docu2 character varying(200),
  cree_le timestamp without time zone,
  modifie_le timestamp without time zone,
  saisie_par character varying(25),
  the_geom geometry,
  CONSTRAINT pkey_@L PRIMARY KEY (gid ),
  CONSTRAINT fk_dossier_@L FOREIGN KEY (refdoss)
    REFERENCES spanc.dossiers (refdoss) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT enforce_dims_the_geom CHECK (st_ndims(the_geom) = 2),
  CONSTRAINT enforce_geotype_the_geom CHECK (geometrytype(the_geom) = '@laytype'::text OR the_geom IS NULL),
  CONSTRAINT enforce_srid_the_geom CHECK (st_srid(the_geom) = 2154)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE spanc.@L
  OWNER TO postgres;

-- Index: spanc.fki_dossier_

-- DROP INDEX spanc.fki_dossier_;

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

CREATE TRIGGER date_modifie_le
  BEFORE INSERT OR UPDATE
  ON spanc.@L
  FOR EACH ROW
  EXECUTE PROCEDURE spanc.set_modif();

-- Trigger: date_cree_le on spanc.dossiers

-- DROP TRIGGER date_cree_le ON spanc.dossiers;

CREATE TRIGGER date_cree_le
  BEFORE INSERT
  ON spanc.@L
  FOR EACH ROW
  EXECUTE PROCEDURE spanc.set_cree();

end