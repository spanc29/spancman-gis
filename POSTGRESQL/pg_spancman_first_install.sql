--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.5
-- Dumped by pg_dump version 9.1.5
-- Started on 2012-09-17 00:00:00 CEST

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 7 (class 2615 OID 49261)
-- Name: spanc; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "spanc";


ALTER SCHEMA "spanc" OWNER TO "postgres";

SET search_path = "spanc", pg_catalog;

--
-- TOC entry 1033 (class 1255 OID 49262)
-- Dependencies: 7 1541
-- Name: set_cree(); Type: FUNCTION; Schema: spanc; Owner: postgres
--

CREATE FUNCTION "set_cree"() RETURNS "trigger"
    LANGUAGE "plpgsql" IMMUTABLE
    AS $$
BEGIN
NEW.cree_le = LOCALTIMESTAMP(0);
RETURN NEW;
END;
$$;


ALTER FUNCTION "spanc"."set_cree"() OWNER TO "postgres";

--
-- TOC entry 1032 (class 1255 OID 49263)
-- Dependencies: 7 1541
-- Name: set_modif(); Type: FUNCTION; Schema: spanc; Owner: postgres
--

CREATE FUNCTION "set_modif"() RETURNS "trigger"
    LANGUAGE "plpgsql" IMMUTABLE
    AS $$
BEGIN
NEW.modifie_le = LOCALTIMESTAMP(0);
RETURN NEW;
END;
$$;


ALTER FUNCTION "spanc"."set_modif"() OWNER TO "postgres";

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 167 (class 1259 OID 49264)
-- Dependencies: 3020 3021 3022 7 1345
-- Name: alim_aep; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "alim_aep" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25),
    "immeuble_gid" integer NOT NULL,
    "identif" character varying(80),
    "typ_alim" character varying(80),
    "reference" character varying(80),
    "conso_moyenne" integer,
    "comments" text,
    "marq_constructeur" character varying(80),
    "annee_pose" date,
    "desaffecte_le" date DEFAULT '2100-12-31',
    "poseur" character varying(80),
    "photo" character varying(250),
    "docu2" character varying(250),
    "profondeur" real,
    "taille" real DEFAULT 1,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."alim_aep" OWNER TO "postgres";

--
-- TOC entry 168 (class 1259 OID 49273)
-- Dependencies: 7 167
-- Name: alim_aep_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "alim_aep_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."alim_aep_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3352 (class 0 OID 0)
-- Dependencies: 168
-- Name: alim_aep_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "alim_aep_gid_seq" OWNED BY "alim_aep"."gid";


--
-- TOC entry 169 (class 1259 OID 49275)
-- Dependencies: 3024 3025 3026 1345 7
-- Name: arbres; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "arbres" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "type_arbre" character varying(80),
    "a_couper" boolean,
    "comments" text,
    "annee_pose" date,
    "desaffecte_le" date DEFAULT '2100-12-31',
    "photo" character varying(250),
    "docu2" character varying(250),
    "largeur" real,
    "hauteur" real,
    "angle" real,
    "taille" real DEFAULT 1,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."arbres" OWNER TO "postgres";

--
-- TOC entry 170 (class 1259 OID 49284)
-- Dependencies: 169 7
-- Name: arbres_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "arbres_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."arbres_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3353 (class 0 OID 0)
-- Dependencies: 170
-- Name: arbres_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "arbres_gid_seq" OWNED BY "arbres"."gid";


--
-- TOC entry 221 (class 1259 OID 50121)
-- Dependencies: 7 1345
-- Name: base; Type: TABLE; Schema: spanc; Owner: dbadmin; Tablespace:
--

CREATE TABLE "base" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "type_entite" character varying(80),
    "comments" text,
    "marq_constructeur" character varying(80),
    "annee_pose" date,
    "desaffecte_le" date DEFAULT '2100-12-31',
    "poseur" character varying(80),
    "renseignements" character varying(80),
    "accessibilite" character varying(80),
    "integrite" character varying(80),
    "proprete" character varying(80),
    "securite" character varying(80),
    "ecoulement" character varying(80),
    "photo" character varying(250),
    "docu2" character varying(250),
    "longueur" real,
    "largeur" real,
    "haut_prof" real,
    "angle" real,
    "taille" real DEFAULT 1,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry"
);


ALTER TABLE "spanc"."base" OWNER TO "postgres";

--
-- TOC entry 218 (class 1259 OID 50096)
-- Dependencies: 7
-- Name: base_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "base_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."base_gid_seq" OWNER TO "postgres";

--
-- TOC entry 220 (class 1259 OID 50119)
-- Dependencies: 7 221
-- Name: base_gid_seq1; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "base_gid_seq1"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."base_gid_seq1" OWNER TO "postgres";

--
-- TOC entry 3354 (class 0 OID 0)
-- Dependencies: 220
-- Name: base_gid_seq1; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "base_gid_seq1" OWNED BY "base"."gid";


--
-- TOC entry 217 (class 1259 OID 49805)
-- Dependencies: 3121 3122 3123 1345 7
-- Name: immeubles; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "immeubles" (
    "gid" integer NOT NULL,
    "type_bati" character varying(25),
    "the_geom" "public"."geometry",
    "refdoss" character varying(25),
    "identif" character varying(80),
    "type_habitat" character varying(80),
    "tx_occupation" character varying(80),
    "nb_pp" integer,
    "an_construction" integer,
    "an_rehabilitation" integer,
    "date_acte_authentique" integer,
    "comments" text,
    "renseignements" character varying(80),
    "photo" character varying(250),
    "docu2" character varying(250),
    "angle" real,
    "taille" real DEFAULT 1,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25),
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POLYGON'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."immeubles" OWNER TO "postgres";

--
-- TOC entry 216 (class 1259 OID 49803)
-- Dependencies: 217 7
-- Name: batiment_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "batiment_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."batiment_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3355 (class 0 OID 0)
-- Dependencies: 216
-- Name: batiment_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "batiment_gid_seq" OWNED BY "immeubles"."gid";


--
-- TOC entry 171 (class 1259 OID 49297)
-- Dependencies: 3027 3029 3030 3031 7 1345
-- Name: canalisations; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "canalisations" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "install_gid" integer NOT NULL,
    "identif" character varying(80),
    "type_eau" character varying(80),
    "materiau" character varying(80),
    "diametre" integer DEFAULT 100,
    "gravitaire" character varying(3),
    "comments" text,
    "annee_pose" date,
    "desaffecte_le" date DEFAULT '2100-12-31',
    "poseur" character varying(80),
    "renseignements" character varying(80),
    "accessibilite" character varying(80),
    "integrite" character varying(80),
    "proprete" character varying(80),
    "ecoulement" character varying(80),
    "photo" character varying(250),
    "docu2" character varying(250),
    "longueur" real,
    "angle" real,
    "taille" real DEFAULT 1,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'MULTILINESTRING'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."canalisations" OWNER TO "postgres";

--
-- TOC entry 172 (class 1259 OID 49307)
-- Dependencies: 7 171
-- Name: canalisations_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "canalisations_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."canalisations_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3356 (class 0 OID 0)
-- Dependencies: 172
-- Name: canalisations_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "canalisations_gid_seq" OWNED BY "canalisations"."gid";


--
-- TOC entry 219 (class 1259 OID 50108)
-- Dependencies: 3124 7
-- Name: comptabilites; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "comptabilites" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) DEFAULT 9999 NOT NULL,
    "usager_gid" integer,
    "type_facture" character varying(80),
    "date_emission" "date",
    "date_limite" "date",
    "montant_ht" real,
    "montant_tva" real,
    "montant_total" real,
    "bordereau" integer NOT NULL,
    "titre" integer,
    "ref_redevance" character varying(25),
    "regler" boolean,
    "etat_comptable" character varying(80),
    "comments" text,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone
);


ALTER TABLE "spanc"."comptabilites" OWNER TO "postgres";

--
-- TOC entry 173 (class 1259 OID 49309)
-- Dependencies: 3032 7
-- Name: cont_conceptions; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "cont_conceptions" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "install_gid" integer,
    "date_controle" "date",
    "technicien_controle" character varying(80),
    "bureau_etude" character varying(80),
    "permis" boolean,
    "num_urbanisme" character varying(80),
    "dossier_declaration" boolean,
    "obs_dossier_declaration" character varying(255),
    "plan_situation" boolean,
    "obs_plan_situation" character varying(255),
    "plan_projet" boolean,
    "obs_plan_projet" character varying(255),
    "plan_interieur" boolean,
    "obs_plan_interieur" character varying(255),
    "etude_pedol" boolean,
    "obs_etude_pedol" character varying(255),
    "conclusion" character varying(12) DEFAULT 'conforme'::character varying NOT NULL,
    "document1" character varying(250),
    "document2" character varying(250),
    "comments" text,
    "comments_interne" text,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25)
);


ALTER TABLE "spanc"."cont_conceptions" OWNER TO "postgres";

--
-- TOC entry 174 (class 1259 OID 49316)
-- Dependencies: 7 173
-- Name: cont_conception_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "cont_conception_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."cont_conception_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3357 (class 0 OID 0)
-- Dependencies: 174
-- Name: cont_conception_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "cont_conception_gid_seq" OWNED BY "cont_conceptions"."gid";


--
-- TOC entry 175 (class 1259 OID 49318)
-- Dependencies: 3034 7
-- Name: cont_periodiques; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "cont_periodiques" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "install_gid" integer,
    "date_controle" "date",
    "meteo" character varying(120),
    "vente" boolean,
    "date_acte_authentique" "date",
    "technicien_controle" character varying(80),
    "personne_presente" character varying(80),
    "risque_pollution" boolean,
    "observation_pollution" text,
    "danger_sante" boolean,
    "observation_danger" text,
    "cas_c" boolean,
    "observation_cas_c" text,
    "conformite" character varying(12) DEFAULT 'non conforme'::character varying NOT NULL,
    "recommandations" text,
    "liste_travaux" text,
    "date_echeance" "date",
    "date_prochain_controle" "date",
    "document1" character varying(250),
    "document2" character varying(250),
    "comments" text,
    "comments_interne" text,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25)
);


ALTER TABLE "spanc"."cont_periodiques" OWNER TO "postgres";

--
-- TOC entry 176 (class 1259 OID 49325)
-- Dependencies: 175 7
-- Name: cont_periodiques_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "cont_periodiques_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."cont_periodiques_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3358 (class 0 OID 0)
-- Dependencies: 176
-- Name: cont_periodiques_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "cont_periodiques_gid_seq" OWNED BY "cont_periodiques"."gid";


--
-- TOC entry 223 (class 1259 OID 50145)
-- Dependencies: 3127 7
-- Name: cont_realisations; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "cont_realisations" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "install_gid" integer,
    "concept_gid" integer,
    "date_controle" "date",
    "technicien_controle" character varying(80),
    "poseur" character varying(80),
    "conf_norme" boolean,
    "conf_projet" boolean,
    "conclusion" character varying(12) DEFAULT 'conforme'::character varying NOT NULL,
    "obs_travaux" text,
    "document1" character varying(250),
    "document2" character varying(250),
    "comments" text,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25)
);


ALTER TABLE "spanc"."cont_realisations" OWNER TO "postgres";

--
-- TOC entry 222 (class 1259 OID 50143)
-- Dependencies: 223 7
-- Name: cont_realisation_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "cont_realisation_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."cont_realisation_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3359 (class 0 OID 0)
-- Dependencies: 222
-- Name: cont_realisation_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "cont_realisation_gid_seq" OWNED BY "cont_realisations"."gid";


--
-- TOC entry 177 (class 1259 OID 49327)
-- Dependencies: 3036 3038 3039 3040 1345 7
-- Name: dossiers; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "dossiers" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "archivage" character varying(80),
    "etat" character varying(80) DEFAULT 'en cours'::character varying,
    "comments" text,
    "zrs" character varying(50),
    "zaee" character varying(50),
    "aut_zone" character varying(100),
    "secteur" character varying(80),
    "commune_id" integer,
    "photo" character varying(250),
    "docu2" character varying(250),
    "angle" real,
    "taille" real DEFAULT 1,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."dossiers" OWNER TO "postgres";

--
-- TOC entry 178 (class 1259 OID 49337)
-- Dependencies: 177 7
-- Name: dossiers_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "dossiers_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."dossiers_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3360 (class 0 OID 0)
-- Dependencies: 178
-- Name: dossiers_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "dossiers_gid_seq" OWNED BY "dossiers"."gid";


--
-- TOC entry 179 (class 1259 OID 49339)
-- Dependencies: 7
-- Name: entretiens; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "entretiens" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "ouvrage_entretenu" character varying(80),
    "ouvrage_gid" integer,
    "type_entretien" character varying(80),
    "date_entretien" "date",
    "bon_vidange" boolean,
    "prestataire" character varying(80),
    "agent_prestataire" character varying(80),
    "ref_vehicule" character varying(80),
    "volume_boues" real,
    "destination_boues" character varying(100),
    "comments" text,
    "photo" character varying(250),
    "docu2" character varying(250),
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(80)
);


ALTER TABLE "spanc"."entretiens" OWNER TO "postgres";

--
-- TOC entry 180 (class 1259 OID 49345)
-- Dependencies: 3042 3043 3044 3045 1345 7
-- Name: filieres_agreees; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "filieres_agreees" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "install_gid" integer NOT NULL,
    "identif" character varying(80),
    "typ_filiere" character varying(80),
    "num_agrement" character varying(15),
    "marq_constructeur" character varying(80),
    "modele" character varying(80),
    "nb_eq_hab" integer DEFAULT 3,
    "doc_constructeur" character varying(250),
    "typ_cuve" character varying(80),
    "comments" text,
    "annee_pose" date,
    "desaffecte_le" date DEFAULT '2100-12-31',
    "poseur" character varying(80),
    "renseignements" character varying(80),
    "accessibilite" character varying(80),
    "integrite" character varying(80),
    "proprete" character varying(80),
    "securite" character varying(80),
    "ecoulement" character varying(80),
    "photo" character varying(250),
    "docu2" character varying(250),
    "longueur" real,
    "largeur" real,
    "haut_prof" real,
    "angle" real,
    "taille" real DEFAULT 1,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."filieres_agreees" OWNER TO "postgres";

--
-- TOC entry 181 (class 1259 OID 49355)
-- Dependencies: 7 180
-- Name: filieres_agreees_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "filieres_agreees_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."filieres_agreees_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3361 (class 0 OID 0)
-- Dependencies: 181
-- Name: filieres_agreees_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "filieres_agreees_gid_seq" OWNED BY "filieres_agreees"."gid";


--
-- TOC entry 182 (class 1259 OID 49357)
-- Dependencies: 3047 3048 3049 7 1345
-- Name: haies; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "haies" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "type_haie" character varying(80),
    "longueur" real,
    "largeur" real,
    "hauteur" real,
    "comments" text,
    "annee_pose" date,
    "desaffecte_le" date DEFAULT '2100-12-31',
    "poseur" character varying(80),
    "renseignements" character varying(80),
    "photo" character varying(250),
    "docu2" character varying(250),
    "angle" real,
    "taille" real DEFAULT 1,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'MULTILINESTRING'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."haies" OWNER TO "postgres";

--
-- TOC entry 183 (class 1259 OID 49366)
-- Dependencies: 7 182
-- Name: haies_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "haies_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."haies_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3362 (class 0 OID 0)
-- Dependencies: 183
-- Name: haies_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "haies_gid_seq" OWNED BY "haies"."gid";


--
-- TOC entry 184 (class 1259 OID 49379)
-- Dependencies: 3051 3052 3053 1345 7
-- Name: infiltrations; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "infiltrations" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "install_gid" integer NOT NULL,
    "identif" character varying(80),
    "type_infiltration" character varying(80),
    "longueur" real,
    "largeur" real,
    "profondeur" real,
    "surface" real,
    "comments" text,
    "marq_constructeur" character varying(80),
    "annee_pose" date,
    "desaffecte_le" date DEFAULT '2100-12-31',
    "poseur" character varying(80),
    "renseignements" character varying(80),
    "accessibilite" character varying(80),
    "integrite" character varying(80),
    "proprete" character varying(80),
    "securite" character varying(80),
    "ecoulement" character varying(80),
    "photo" character varying(250),
    "docu2" character varying(250),
    "angle" real,
    "taille" real DEFAULT 1,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'MULTIPOLYGON'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."infiltrations" OWNER TO "postgres";

--
-- TOC entry 185 (class 1259 OID 49388)
-- Dependencies: 7 184
-- Name: infiltrations_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "infiltrations_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."infiltrations_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3363 (class 0 OID 0)
-- Dependencies: 185
-- Name: infiltrations_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "infiltrations_gid_seq" OWNED BY "infiltrations"."gid";


--
-- TOC entry 186 (class 1259 OID 49390)
-- Dependencies: 3055 3056 3057 7 1345
-- Name: installations; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "installations" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "type_installations" character varying(80),
    "date_chgt" date,
    "comments" text,
    "angle" real,
    "taille" real DEFAULT 1,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."installations" OWNER TO "postgres";

--
-- TOC entry 187 (class 1259 OID 49399)
-- Dependencies: 186 7
-- Name: installations_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "installations_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."installations_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 187
-- Name: installations_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "installations_gid_seq" OWNED BY "installations"."gid";


--
-- TOC entry 188 (class 1259 OID 49401)
-- Dependencies: 3059 3060 3061 1345 7
-- Name: origines; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "origines" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "typ_origine" character varying(80),
    "trace_fluo" character varying(80),
    "ecoulement" character varying(80),
    "comments" text,
    "renseignements" character varying(80),
    "photo" character varying(250),
    "docu2" character varying(250),
    "angle" real,
    "taille" real DEFAULT 1,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."origines" OWNER TO "postgres";

--
-- TOC entry 189 (class 1259 OID 49410)
-- Dependencies: 7 188
-- Name: origines_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "origines_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."origines_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 189
-- Name: origines_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "origines_gid_seq" OWNED BY "origines"."gid";


--
-- TOC entry 190 (class 1259 OID 49412)
-- Dependencies: 3063 3064 3065 7 1345
-- Name: pentes; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "pentes" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "pente" real,
    "longueur" real,
    "comments" text,
    "renseignements" character varying(80),
    "angle" real,
    "taille" real DEFAULT 1,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'MULTILINESTRING'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."pentes" OWNER TO "postgres";

--
-- TOC entry 191 (class 1259 OID 49421)
-- Dependencies: 7 190
-- Name: pentes_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "pentes_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."pentes_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3366 (class 0 OID 0)
-- Dependencies: 191
-- Name: pentes_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "pentes_gid_seq" OWNED BY "pentes"."gid";


--
-- TOC entry 192 (class 1259 OID 49423)
-- Dependencies: 3067 3068 3069 3070 3071 1345 7
-- Name: pieces; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "pieces" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "immeuble_gid" integer NOT NULL,
    "identif" character varying(80),
    "piece" character varying(80),
    "etage" integer DEFAULT 0,
    "est_pp" integer DEFAULT 1,
    "genere_eu" character varying(5),
    "surface" real,
    "comments" text,
    "renseignements" character varying(80),
    "angle" real,
    "taille" real DEFAULT 1,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."pieces" OWNER TO "postgres";

--
-- TOC entry 193 (class 1259 OID 49434)
-- Dependencies: 192 7
-- Name: pieces_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "pieces_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."pieces_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 193
-- Name: pieces_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "pieces_gid_seq" OWNED BY "pieces"."gid";


--
-- TOC entry 194 (class 1259 OID 49436)
-- Dependencies: 3073 3074 3075 3076 1345 7
-- Name: pompages; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "pompages" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "install_gid" integer NOT NULL,
    "identif" character varying(80),
    "type_pompage" character varying(80),
    "marq_bache" character varying(80),
    "volume_bache" integer,
    "profondeur" real,
    "hmt" real,
    "nb_pompe" integer DEFAULT 1,
    "caract_pompe" text,
    "comments" text,
    "annee_pose" date,
    "desaffecte_le" date DEFAULT '2100-12-31',
    "poseur" character varying(80),
    "renseignements" character varying(80),
    "accessibilite" character varying(80),
    "integrite" character varying(80),
    "proprete" character varying(80),
    "securite" character varying(80),
    "ecoulement" character varying(80),
    "photo" character varying(250),
    "docu2" character varying(250),
    "angle" real,
    "taille" real DEFAULT 1,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."pompages" OWNER TO "postgres";

--
-- TOC entry 195 (class 1259 OID 49446)
-- Dependencies: 7 194
-- Name: pompages_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "pompages_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."pompages_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 195
-- Name: pompages_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "pompages_gid_seq" OWNED BY "pompages"."gid";


--
-- TOC entry 196 (class 1259 OID 49448)
-- Dependencies: 3078 3079 3080 3081 3082 7 1345
-- Name: pretraitements; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "pretraitements" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "install_gid" integer NOT NULL,
    "identif" character varying(80),
    "type_pretr" character varying(80),
    "volume" integer DEFAULT 3000,
    "nb_acces" integer DEFAULT 2,
    "origine" character varying(25),
    "sortie" character varying(25),
    "comments" text,
    "marq_constructeur" character varying(80),
    "annee_pose" date,
    "desaffecte_le" date DEFAULT '2100-12-31',
    "poseur" character varying(80),
    "renseignements" character varying(80),
    "accessibilite" character varying(80),
    "integrite" character varying(80),
    "proprete" character varying(80),
    "securite" character varying(80),
    "ecoulement" character varying(80),
    "photo" character varying(250),
    "docu2" character varying(250),
    "longueur" real,
    "largeur" real,
    "haut_prof" real,
    "angle" real,
    "taille" real DEFAULT 1,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."pretraitements" OWNER TO "postgres";

--
-- TOC entry 209 (class 1259 OID 49527)
-- Dependencies: 7 196
-- Name: pretraitements_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "pretraitements_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."pretraitements_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3369 (class 0 OID 0)
-- Dependencies: 209
-- Name: pretraitements_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "pretraitements_gid_seq" OWNED BY "pretraitements"."gid";


--
-- TOC entry 197 (class 1259 OID 49459)
-- Dependencies: 3084 3085 3086 7 1345
-- Name: puits_d_eau; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "puits_d_eau" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "type_puits" character varying(80),
    "utilisation" character varying(80),
    "declaration" character varying(80),
    "num_declaration" character varying(80),
    "profondeur" real,
    "niveau_haut" real,
    "hauteur_nappe" real,
    "date_haut_nappe" date,
    "niveau_bas" real,
    "comments" text,
    "annee_pose" date,
    "desaffecte_le" date DEFAULT '2100-12-31',
    "renseignements" character varying(80),
    "photo" character varying(250),
    "docu2" character varying(250),
    "angle" real,
    "taille" real DEFAULT 1,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."puits_d_eau" OWNER TO "postgres";

--
-- TOC entry 198 (class 1259 OID 49468)
-- Dependencies: 197 7
-- Name: puits_d_eau_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "puits_d_eau_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."puits_d_eau_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3370 (class 0 OID 0)
-- Dependencies: 198
-- Name: puits_d_eau_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "puits_d_eau_gid_seq" OWNED BY "puits_d_eau"."gid";


--
-- TOC entry 199 (class 1259 OID 49470)
-- Dependencies: 3088 3089 3090 7 1345
-- Name: puits_dispersion; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "puits_dispersion" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "install_gid" integer NOT NULL,
    "identif" character varying(80),
    "typ_dispr" character varying(80),
    "autorisation" character varying(80),
    "ref_autorisation" character varying(80),
    "comments" text,
    "annee_pose" date,
    "desaffecte_le" date DEFAULT '2100-12-31',
    "poseur" character varying(80),
    "renseignements" character varying(80),
    "accessibilite" character varying(80),
    "integrite" character varying(80),
    "proprete" character varying(80),
    "securite" character varying(80),
    "ecoulement" character varying(80),
    "photo" character varying(250),
    "docu2" character varying(250),
    "longueur" real,
    "largeur" real,
    "profondeur" real,
    "angle" real,
    "taille" real DEFAULT 1,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."puits_dispersion" OWNER TO "postgres";

--
-- TOC entry 200 (class 1259 OID 49479)
-- Dependencies: 7 199
-- Name: puits_dispersion_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "puits_dispersion_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."puits_dispersion_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3371 (class 0 OID 0)
-- Dependencies: 200
-- Name: puits_dispersion_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "puits_dispersion_gid_seq" OWNED BY "puits_dispersion"."gid";


--
-- TOC entry 201 (class 1259 OID 49481)
-- Dependencies: 3092 3093 3094 3095 3096 1345 7
-- Name: regards; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "regards" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "install_gid" integer NOT NULL,
    "identif" character varying(80),
    "typ_regard" character varying(80),
    "materiau" character varying(80),
    "forme" character varying(80),
    "nb_entree" integer DEFAULT 1,
    "nb_sortie" integer DEFAULT 1,
    "longueur" real,
    "largeur" real,
    "profondeur" real,
    "comments" text,
    "marq_constructeur" character varying(80),
    "annee_pose" date,
    "desaffecte_le" date DEFAULT '2100-12-31',
    "poseur" character varying(80),
    "renseignements" character varying(80),
    "accessibilite" character varying(80),
    "integrite" character varying(80),
    "proprete" character varying(80),
    "securite" character varying(80),
    "ecoulement" character varying(80),
    "photo" character varying(250),
    "docu2" character varying(250),
    "angle" real,
    "taille" real DEFAULT 1,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."regards" OWNER TO "postgres";

--
-- TOC entry 202 (class 1259 OID 49492)
-- Dependencies: 7 201
-- Name: regards_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "regards_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."regards_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3372 (class 0 OID 0)
-- Dependencies: 202
-- Name: regards_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "regards_gid_seq" OWNED BY "regards"."gid";


--
-- TOC entry 203 (class 1259 OID 49494)
-- Dependencies: 3098 3099 3100 7 1345
-- Name: rejets; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "rejets" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "install_gid" integer NOT NULL,
    "identif" character varying(80),
    "type_rejet" character varying(80),
    "autorisation" character varying(12),
    "ref_autorisation" character varying(80),
    "comments" text,
    "marq_constructeur" character varying(80),
    "annee_pose" date,
    "desaffecte_le" date DEFAULT '2100-12-31',
    "poseur" character varying(80),
    "renseignements" character varying(80),
    "accessibilite" character varying(80),
    "integrite" character varying(80),
    "proprete" character varying(80),
    "securite" character varying(80),
    "ecoulement" character varying(80),
    "photo" character varying(250),
    "docu2" character varying(250),
    "haut_prof" real,
    "angle" real,
    "taille" real DEFAULT 1,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."rejets" OWNER TO "postgres";

--
-- TOC entry 204 (class 1259 OID 49503)
-- Dependencies: 203 7
-- Name: rejets_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "rejets_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."rejets_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3373 (class 0 OID 0)
-- Dependencies: 204
-- Name: rejets_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "rejets_gid_seq" OWNED BY "rejets"."gid";


--
-- TOC entry 205 (class 1259 OID 49505)
-- Dependencies: 3102 3103 3104 1345 7
-- Name: sondages; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "sondages" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "type_sondage" character varying(80),
    "date_realisation" "date",
    "bureau" character varying(80),
    "scan_doc" character varying(250),
    "profondeur" real,
    "hydromorphie" real,
    "nappe" real,
    "comments" text,
    "renseignements" character varying(80),
    "photo" character varying(250),
    "docu2" character varying(250),
    "angle" real,
    "taille" real DEFAULT 1,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."sondages" OWNER TO "postgres";

--
-- TOC entry 206 (class 1259 OID 49514)
-- Dependencies: 205 7
-- Name: sondages_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "sondages_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."sondages_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3374 (class 0 OID 0)
-- Dependencies: 206
-- Name: sondages_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "sondages_gid_seq" OWNED BY "sondages"."gid";


--
-- TOC entry 207 (class 1259 OID 49516)
-- Dependencies: 3106 3107 3108 7 1345
-- Name: surfaces_terrain; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "surfaces_terrain" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "type_surface" character varying(80),
    "surface" real,
    "impermeable" character varying(3),
    "comments" text,
    "renseignements" character varying(80),
    "photo" character varying(250),
    "docu2" character varying(250),
    "taille" real DEFAULT 1,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'MULTIPOLYGON'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."surfaces_terrain" OWNER TO "postgres";

--
-- TOC entry 208 (class 1259 OID 49525)
-- Dependencies: 7 207
-- Name: surfaces_terrain_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "surfaces_terrain_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."surfaces_terrain_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3375 (class 0 OID 0)
-- Dependencies: 208
-- Name: surfaces_terrain_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "surfaces_terrain_gid_seq" OWNED BY "surfaces_terrain"."gid";


--
-- TOC entry 237 (class 1259 OID 58581)
-- Dependencies: 3129 3130 3131 1345 7
-- Name: traitements_classiks; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "traitements_classiks" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "install_gid" integer NOT NULL,
    "identif" character varying(80),
    "typ_traitt" character varying(80),
    "longueur" real,
    "largeur" real,
    "profondeur" real,
    "surface" real,
    "angle" real,
    "details" text,
    "comments" text,
    "annee_pose" date,
    "desaffecte_le" date DEFAULT '2100-12-31',
    "poseur" character varying(80),
    "renseignements" character varying(80),
    "accessibilite" character varying(80),
    "integrite" character varying(80),
    "proprete" character varying(80),
    "securite" character varying(80),
    "ecoulement" character varying(80),
    "photo" character varying(250),
    "docu2" character varying(250),
    "taille" real DEFAULT 1,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."traitements_classiks" OWNER TO "postgres";

--
-- TOC entry 236 (class 1259 OID 58579)
-- Dependencies: 237 7
-- Name: traitements_classiks_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "traitements_classiks_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."traitements_classiks_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3376 (class 0 OID 0)
-- Dependencies: 236
-- Name: traitements_classiks_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "traitements_classiks_gid_seq" OWNED BY "traitements_classiks"."gid";


--
-- TOC entry 210 (class 1259 OID 49529)
-- Dependencies: 3110 3111 3112 7 1345
-- Name: traitements_classiques; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "traitements_classiques" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "install_gid" integer NOT NULL,
    "identif" character varying(80),
    "typ_traitt" character varying(80),
    "longueur" real,
    "largeur" real,
    "profondeur" real,
    "surface" real,
    "details" text,
    "comments" text,
    "annee_pose" date,
    "desaffecte_le" date DEFAULT '2100-12-31',
    "poseur" character varying(80),
    "renseignements" character varying(80),
    "accessibilite" character varying(80),
    "integrite" character varying(80),
    "proprete" character varying(80),
    "securite" character varying(80),
    "ecoulement" character varying(80),
    "photo" character varying(250),
    "docu2" character varying(250),
    "angle" real,
    "taille" real DEFAULT 1,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'MULTIPOLYGON'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."traitements_classiques" OWNER TO "postgres";

--
-- TOC entry 211 (class 1259 OID 49538)
-- Dependencies: 7 210
-- Name: traitements_classiques_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "traitements_classiques_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."traitements_classiques_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3377 (class 0 OID 0)
-- Dependencies: 211
-- Name: traitements_classiques_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "traitements_classiques_gid_seq" OWNED BY "traitements_classiques"."gid";


--
-- TOC entry 212 (class 1259 OID 49540)
-- Dependencies: 3113 7
-- Name: usagers; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "usagers" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "immeuble_id" integer NOT NULL,
    "num_ordre" integer DEFAULT 1,
    "type_usagers" character varying(80),
    "facturable" boolean,
    "nom" character varying(200) NOT NULL,
    "adresse" text,
    "code_postal" character varying(12),
    "ville_usagers" character varying(250),
    "telephon1" character varying(25),
    "telephon2" character varying(25),
    "mail1" character varying(80),
    "mail2" character varying(80),
    "autre_comm" character varying(80),
    "comments" text,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(80)
);


ALTER TABLE "spanc"."usagers" OWNER TO "postgres";

--
-- TOC entry 213 (class 1259 OID 49547)
-- Dependencies: 7 212
-- Name: usagers_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "usagers_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."usagers_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3378 (class 0 OID 0)
-- Dependencies: 213
-- Name: usagers_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "usagers_gid_seq" OWNED BY "usagers"."gid";


--
-- TOC entry 214 (class 1259 OID 49549)
-- Dependencies: 3115 3117 3118 3119 7 1345
-- Name: ventilations; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE "ventilations" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "install_gid" integer NOT NULL,
    "identif" character varying(100),
    "typ_ventil" character varying(80) NOT NULL,
    "origine" character varying(80),
    "test_fumee" character varying(25),
    "diametre" real DEFAULT 100,
    "hauteur" real,
    "comments" text,
    "marq_constructeur" character varying(80),
    "annee_pose" date,
    "desaffecte_le" date DEFAULT '2100-12-31',
    "poseur" character varying(80),
    "accessibilite" character varying(80),
    "integrite" character varying(80),
    "photo" character varying(250),
    "docu2" character varying(250),
    "angle" real,
    "taille" real DEFAULT 1,
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."ventilations" OWNER TO "postgres";

--
-- TOC entry 215 (class 1259 OID 49559)
-- Dependencies: 214 7
-- Name: ventilations_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "ventilations_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."ventilations_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3379 (class 0 OID 0)
-- Dependencies: 215
-- Name: ventilations_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "ventilations_gid_seq" OWNED BY "ventilations"."gid";


--
-- TOC entry 3019 (class 2604 OID 49561)
-- Dependencies: 168 167
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "alim_aep" ALTER COLUMN "gid" SET DEFAULT "nextval"('"alim_aep_gid_seq"'::"regclass");


--
-- TOC entry 3023 (class 2604 OID 49562)
-- Dependencies: 170 169
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "arbres" ALTER COLUMN "gid" SET DEFAULT "nextval"('"arbres_gid_seq"'::"regclass");


--
-- TOC entry 3125 (class 2604 OID 50124)
-- Dependencies: 220 221 221
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "base" ALTER COLUMN "gid" SET DEFAULT "nextval"('"base_gid_seq1"'::"regclass");


--
-- TOC entry 3028 (class 2604 OID 49564)
-- Dependencies: 172 171
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "canalisations" ALTER COLUMN "gid" SET DEFAULT "nextval"('"canalisations_gid_seq"'::"regclass");


--
-- TOC entry 3033 (class 2604 OID 49565)
-- Dependencies: 174 173
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "cont_conceptions" ALTER COLUMN "gid" SET DEFAULT "nextval"('"cont_conception_gid_seq"'::"regclass");


--
-- TOC entry 3035 (class 2604 OID 49566)
-- Dependencies: 176 175
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "cont_periodiques" ALTER COLUMN "gid" SET DEFAULT "nextval"('"cont_periodiques_gid_seq"'::"regclass");


--
-- TOC entry 3126 (class 2604 OID 50148)
-- Dependencies: 223 222 223
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "cont_realisations" ALTER COLUMN "gid" SET DEFAULT "nextval"('"cont_realisation_gid_seq"'::"regclass");


--
-- TOC entry 3037 (class 2604 OID 49567)
-- Dependencies: 178 177
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "dossiers" ALTER COLUMN "gid" SET DEFAULT "nextval"('"dossiers_gid_seq"'::"regclass");


--
-- TOC entry 3041 (class 2604 OID 49568)
-- Dependencies: 181 180
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "filieres_agreees" ALTER COLUMN "gid" SET DEFAULT "nextval"('"filieres_agreees_gid_seq"'::"regclass");


--
-- TOC entry 3046 (class 2604 OID 49569)
-- Dependencies: 183 182
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "haies" ALTER COLUMN "gid" SET DEFAULT "nextval"('"haies_gid_seq"'::"regclass");


--
-- TOC entry 3120 (class 2604 OID 49808)
-- Dependencies: 216 217 217
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "immeubles" ALTER COLUMN "gid" SET DEFAULT "nextval"('"batiment_gid_seq"'::"regclass");


--
-- TOC entry 3050 (class 2604 OID 49571)
-- Dependencies: 185 184
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "infiltrations" ALTER COLUMN "gid" SET DEFAULT "nextval"('"infiltrations_gid_seq"'::"regclass");


--
-- TOC entry 3054 (class 2604 OID 49572)
-- Dependencies: 187 186
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "installations" ALTER COLUMN "gid" SET DEFAULT "nextval"('"installations_gid_seq"'::"regclass");


--
-- TOC entry 3058 (class 2604 OID 49573)
-- Dependencies: 189 188
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "origines" ALTER COLUMN "gid" SET DEFAULT "nextval"('"origines_gid_seq"'::"regclass");


--
-- TOC entry 3062 (class 2604 OID 49574)
-- Dependencies: 191 190
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "pentes" ALTER COLUMN "gid" SET DEFAULT "nextval"('"pentes_gid_seq"'::"regclass");


--
-- TOC entry 3066 (class 2604 OID 49575)
-- Dependencies: 193 192
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "pieces" ALTER COLUMN "gid" SET DEFAULT "nextval"('"pieces_gid_seq"'::"regclass");


--
-- TOC entry 3072 (class 2604 OID 49576)
-- Dependencies: 195 194
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "pompages" ALTER COLUMN "gid" SET DEFAULT "nextval"('"pompages_gid_seq"'::"regclass");


--
-- TOC entry 3077 (class 2604 OID 49577)
-- Dependencies: 209 196
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "pretraitements" ALTER COLUMN "gid" SET DEFAULT "nextval"('"pretraitements_gid_seq"'::"regclass");


--
-- TOC entry 3083 (class 2604 OID 49578)
-- Dependencies: 198 197
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "puits_d_eau" ALTER COLUMN "gid" SET DEFAULT "nextval"('"puits_d_eau_gid_seq"'::"regclass");


--
-- TOC entry 3087 (class 2604 OID 49579)
-- Dependencies: 200 199
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "puits_dispersion" ALTER COLUMN "gid" SET DEFAULT "nextval"('"puits_dispersion_gid_seq"'::"regclass");


--
-- TOC entry 3091 (class 2604 OID 49580)
-- Dependencies: 202 201
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "regards" ALTER COLUMN "gid" SET DEFAULT "nextval"('"regards_gid_seq"'::"regclass");


--
-- TOC entry 3097 (class 2604 OID 49581)
-- Dependencies: 204 203
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "rejets" ALTER COLUMN "gid" SET DEFAULT "nextval"('"rejets_gid_seq"'::"regclass");


--
-- TOC entry 3101 (class 2604 OID 49582)
-- Dependencies: 206 205
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "sondages" ALTER COLUMN "gid" SET DEFAULT "nextval"('"sondages_gid_seq"'::"regclass");


--
-- TOC entry 3105 (class 2604 OID 49583)
-- Dependencies: 208 207
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "surfaces_terrain" ALTER COLUMN "gid" SET DEFAULT "nextval"('"surfaces_terrain_gid_seq"'::"regclass");


--
-- TOC entry 3128 (class 2604 OID 58584)
-- Dependencies: 237 236 237
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "traitements_classiks" ALTER COLUMN "gid" SET DEFAULT "nextval"('"traitements_classiks_gid_seq"'::"regclass");


--
-- TOC entry 3109 (class 2604 OID 49584)
-- Dependencies: 211 210
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "traitements_classiques" ALTER COLUMN "gid" SET DEFAULT "nextval"('"traitements_classiques_gid_seq"'::"regclass");


--
-- TOC entry 3114 (class 2604 OID 49585)
-- Dependencies: 213 212
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "usagers" ALTER COLUMN "gid" SET DEFAULT "nextval"('"usagers_gid_seq"'::"regclass");


--
-- TOC entry 3116 (class 2604 OID 49586)
-- Dependencies: 215 214
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "ventilations" ALTER COLUMN "gid" SET DEFAULT "nextval"('"ventilations_gid_seq"'::"regclass");


--
-- TOC entry 3247 (class 2606 OID 49810)
-- Dependencies: 217 217 3349
-- Name: batiment_pkey; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "immeubles"
    ADD CONSTRAINT "batiment_pkey" PRIMARY KEY ("gid");


--
-- TOC entry 3252 (class 2606 OID 50116)
-- Dependencies: 219 219 3349
-- Name: compta_pk; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "comptabilites"
    ADD CONSTRAINT "compta_pk" PRIMARY KEY ("gid");


--
-- TOC entry 3152 (class 2606 OID 49588)
-- Dependencies: 177 177 3349
-- Name: dossiers_pkey; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "dossiers"
    ADD CONSTRAINT "dossiers_pkey" PRIMARY KEY ("gid");


--
-- TOC entry 3157 (class 2606 OID 49590)
-- Dependencies: 179 179 3349
-- Name: entretiens_pkey; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "entretiens"
    ADD CONSTRAINT "entretiens_pkey" PRIMARY KEY ("gid");


--
-- TOC entry 3155 (class 2606 OID 49592)
-- Dependencies: 177 177 3349
-- Name: pk_refdoss; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "dossiers"
    ADD CONSTRAINT "pk_refdoss" UNIQUE ("refdoss");


--
-- TOC entry 3239 (class 2606 OID 49594)
-- Dependencies: 212 212 3349
-- Name: pk_usagers; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "usagers"
    ADD CONSTRAINT "pk_usagers" PRIMARY KEY ("gid");


--
-- TOC entry 3133 (class 2606 OID 49596)
-- Dependencies: 167 167 3349
-- Name: pkey_alim_aep; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "alim_aep"
    ADD CONSTRAINT "pkey_alim_aep" PRIMARY KEY ("gid");


--
-- TOC entry 3136 (class 2606 OID 49598)
-- Dependencies: 169 169 3349
-- Name: pkey_arbres; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "arbres"
    ADD CONSTRAINT "pkey_arbres" PRIMARY KEY ("gid");


--
-- TOC entry 3256 (class 2606 OID 50129)
-- Dependencies: 221 221 3349
-- Name: pkey_base; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "base"
    ADD CONSTRAINT "pkey_base" PRIMARY KEY ("gid");


--
-- TOC entry 3141 (class 2606 OID 49602)
-- Dependencies: 171 171 3349
-- Name: pkey_canalisations; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "canalisations"
    ADD CONSTRAINT "pkey_canalisations" PRIMARY KEY ("gid");


--
-- TOC entry 3146 (class 2606 OID 49604)
-- Dependencies: 173 173 3349
-- Name: pkey_cont_conception; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "cont_conceptions"
    ADD CONSTRAINT "pkey_cont_conception" PRIMARY KEY ("gid");


--
-- TOC entry 3150 (class 2606 OID 49606)
-- Dependencies: 175 175 3349
-- Name: pkey_cont_periodique; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "cont_periodiques"
    ADD CONSTRAINT "pkey_cont_periodique" PRIMARY KEY ("gid");


--
-- TOC entry 3261 (class 2606 OID 50154)
-- Dependencies: 223 223 3349
-- Name: pkey_cont_realisation; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "cont_realisations"
    ADD CONSTRAINT "pkey_cont_realisation" PRIMARY KEY ("gid");


--
-- TOC entry 3162 (class 2606 OID 49608)
-- Dependencies: 180 180 3349
-- Name: pkey_filieres_agreees; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "filieres_agreees"
    ADD CONSTRAINT "pkey_filieres_agreees" PRIMARY KEY ("gid");


--
-- TOC entry 3167 (class 2606 OID 49610)
-- Dependencies: 182 182 3349
-- Name: pkey_haies; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "haies"
    ADD CONSTRAINT "pkey_haies" PRIMARY KEY ("gid");


--
-- TOC entry 3172 (class 2606 OID 49614)
-- Dependencies: 184 184 3349
-- Name: pkey_infiltrations; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "infiltrations"
    ADD CONSTRAINT "pkey_infiltrations" PRIMARY KEY ("gid");


--
-- TOC entry 3177 (class 2606 OID 49616)
-- Dependencies: 186 186 3349
-- Name: pkey_installations; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "installations"
    ADD CONSTRAINT "pkey_installations" PRIMARY KEY ("gid");


--
-- TOC entry 3182 (class 2606 OID 49618)
-- Dependencies: 188 188 3349
-- Name: pkey_origines; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "origines"
    ADD CONSTRAINT "pkey_origines" PRIMARY KEY ("gid");


--
-- TOC entry 3185 (class 2606 OID 49620)
-- Dependencies: 190 190 3349
-- Name: pkey_pentes; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "pentes"
    ADD CONSTRAINT "pkey_pentes" PRIMARY KEY ("gid");


--
-- TOC entry 3189 (class 2606 OID 49622)
-- Dependencies: 192 192 3349
-- Name: pkey_pieces; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "pieces"
    ADD CONSTRAINT "pkey_pieces" PRIMARY KEY ("gid");


--
-- TOC entry 3195 (class 2606 OID 49624)
-- Dependencies: 194 194 3349
-- Name: pkey_pompages; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "pompages"
    ADD CONSTRAINT "pkey_pompages" PRIMARY KEY ("gid");


--
-- TOC entry 3200 (class 2606 OID 49638)
-- Dependencies: 196 196 3349
-- Name: pkey_pretraitements; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "pretraitements"
    ADD CONSTRAINT "pkey_pretraitements" PRIMARY KEY ("gid");


--
-- TOC entry 3205 (class 2606 OID 49626)
-- Dependencies: 197 197 3349
-- Name: pkey_puits_d_eau; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "puits_d_eau"
    ADD CONSTRAINT "pkey_puits_d_eau" PRIMARY KEY ("gid");


--
-- TOC entry 3211 (class 2606 OID 49628)
-- Dependencies: 199 199 3349
-- Name: pkey_puits_dispersion; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "puits_dispersion"
    ADD CONSTRAINT "pkey_puits_dispersion" PRIMARY KEY ("gid");


--
-- TOC entry 3216 (class 2606 OID 49630)
-- Dependencies: 201 201 3349
-- Name: pkey_regards; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "regards"
    ADD CONSTRAINT "pkey_regards" PRIMARY KEY ("gid");


--
-- TOC entry 3221 (class 2606 OID 49632)
-- Dependencies: 203 203 3349
-- Name: pkey_rejets; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "rejets"
    ADD CONSTRAINT "pkey_rejets" PRIMARY KEY ("gid");


--
-- TOC entry 3226 (class 2606 OID 49634)
-- Dependencies: 205 205 3349
-- Name: pkey_sondages; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "sondages"
    ADD CONSTRAINT "pkey_sondages" PRIMARY KEY ("gid");


--
-- TOC entry 3231 (class 2606 OID 49636)
-- Dependencies: 207 207 3349
-- Name: pkey_surfaces_terrain; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "surfaces_terrain"
    ADD CONSTRAINT "pkey_surfaces_terrain" PRIMARY KEY ("gid");


--
-- TOC entry 3265 (class 2606 OID 58592)
-- Dependencies: 237 237 3349
-- Name: pkey_traitements_classiks; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "traitements_classiks"
    ADD CONSTRAINT "pkey_traitements_classiks" PRIMARY KEY ("gid");


--
-- TOC entry 3236 (class 2606 OID 49640)
-- Dependencies: 210 210 3349
-- Name: pkey_traitements_classiques; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "traitements_classiques"
    ADD CONSTRAINT "pkey_traitements_classiques" PRIMARY KEY ("gid");


--
-- TOC entry 3243 (class 2606 OID 49642)
-- Dependencies: 214 214 3349
-- Name: pkey_ventilations; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "ventilations"
    ADD CONSTRAINT "pkey_ventilations" PRIMARY KEY ("gid");


--
-- TOC entry 3245 (class 1259 OID 49914)
-- Dependencies: 217 3349
-- Name: FKI_immeubles; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "FKI_immeubles" ON "immeubles" USING "btree" ("refdoss");


--
-- TOC entry 3191 (class 1259 OID 50054)
-- Dependencies: 194 3349
-- Name: FKI_install_pompage; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "FKI_install_pompage" ON "pompages" USING "btree" ("install_gid");


--
-- TOC entry 3197 (class 1259 OID 50060)
-- Dependencies: 196 3349
-- Name: FKI_pretraitement; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "FKI_pretraitement" ON "pretraitements" USING "btree" ("install_gid");


--
-- TOC entry 3153 (class 1259 OID 49646)
-- Dependencies: 177 2402 3349
-- Name: dossiers_the_geom_gist; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "dossiers_the_geom_gist" ON "dossiers" USING "gist" ("the_geom");


--
-- TOC entry 3257 (class 1259 OID 50169)
-- Dependencies: 223 3349
-- Name: fki_conception; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "fki_conception" ON "cont_realisations" USING "btree" ("concept_gid");


--
-- TOC entry 3138 (class 1259 OID 49648)
-- Dependencies: 171 3349
-- Name: fki_dossier_canalisations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "fki_dossier_canalisations" ON "canalisations" USING "btree" ("refdoss");


--
-- TOC entry 3143 (class 1259 OID 49649)
-- Dependencies: 173 3349
-- Name: fki_dossier_cont_conception; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "fki_dossier_cont_conception" ON "cont_conceptions" USING "btree" ("refdoss");


--
-- TOC entry 3147 (class 1259 OID 49650)
-- Dependencies: 175 3349
-- Name: fki_dossier_cont_periodiques; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "fki_dossier_cont_periodiques" ON "cont_periodiques" USING "btree" ("refdoss");


--
-- TOC entry 3258 (class 1259 OID 50160)
-- Dependencies: 223 3349
-- Name: fki_dossier_cont_realisation; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "fki_dossier_cont_realisation" ON "cont_realisations" USING "btree" ("refdoss");


--
-- TOC entry 3159 (class 1259 OID 49651)
-- Dependencies: 180 3349
-- Name: fki_dossier_filieres_agreees; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "fki_dossier_filieres_agreees" ON "filieres_agreees" USING "btree" ("refdoss");


--
-- TOC entry 3164 (class 1259 OID 49652)
-- Dependencies: 182 3349
-- Name: fki_dossier_haies; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "fki_dossier_haies" ON "haies" USING "btree" ("refdoss");


--
-- TOC entry 3248 (class 1259 OID 49915)
-- Dependencies: 217 3349
-- Name: fki_dossier_immeubles; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "fki_dossier_immeubles" ON "immeubles" USING "btree" ("refdoss");


--
-- TOC entry 3169 (class 1259 OID 49654)
-- Dependencies: 184 3349
-- Name: fki_dossier_infiltrations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "fki_dossier_infiltrations" ON "infiltrations" USING "btree" ("refdoss");


--
-- TOC entry 3174 (class 1259 OID 49655)
-- Dependencies: 186 3349
-- Name: fki_dossier_installations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "fki_dossier_installations" ON "installations" USING "btree" ("refdoss");


--
-- TOC entry 3179 (class 1259 OID 49656)
-- Dependencies: 188 3349
-- Name: fki_dossier_origines; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "fki_dossier_origines" ON "origines" USING "btree" ("refdoss");


--
-- TOC entry 3192 (class 1259 OID 49658)
-- Dependencies: 194 3349
-- Name: fki_dossier_pompages; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "fki_dossier_pompages" ON "pompages" USING "btree" ("refdoss");


--
-- TOC entry 3207 (class 1259 OID 49659)
-- Dependencies: 199 3349
-- Name: fki_dossier_puits; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "fki_dossier_puits" ON "puits_dispersion" USING "btree" ("refdoss");


--
-- TOC entry 3202 (class 1259 OID 49660)
-- Dependencies: 197 3349
-- Name: fki_dossier_puits_d_eau; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "fki_dossier_puits_d_eau" ON "puits_d_eau" USING "btree" ("refdoss");


--
-- TOC entry 3208 (class 1259 OID 49661)
-- Dependencies: 199 3349
-- Name: fki_dossier_puits_dispersion; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "fki_dossier_puits_dispersion" ON "puits_dispersion" USING "btree" ("refdoss");


--
-- TOC entry 3213 (class 1259 OID 49662)
-- Dependencies: 201 3349
-- Name: fki_dossier_regards; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "fki_dossier_regards" ON "regards" USING "btree" ("refdoss");


--
-- TOC entry 3218 (class 1259 OID 49663)
-- Dependencies: 203 3349
-- Name: fki_dossier_rejets; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "fki_dossier_rejets" ON "rejets" USING "btree" ("refdoss");


--
-- TOC entry 3223 (class 1259 OID 49664)
-- Dependencies: 205 3349
-- Name: fki_dossier_sondages; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "fki_dossier_sondages" ON "sondages" USING "btree" ("refdoss");


--
-- TOC entry 3228 (class 1259 OID 49665)
-- Dependencies: 207 3349
-- Name: fki_dossier_surfaces_terrain; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "fki_dossier_surfaces_terrain" ON "surfaces_terrain" USING "btree" ("refdoss");


--
-- TOC entry 3262 (class 1259 OID 58598)
-- Dependencies: 237 3349
-- Name: fki_dossier_traitements_classiks; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "fki_dossier_traitements_classiks" ON "traitements_classiks" USING "btree" ("refdoss");


--
-- TOC entry 3233 (class 1259 OID 49666)
-- Dependencies: 210 3349
-- Name: fki_dossier_traitements_classiques; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "fki_dossier_traitements_classiques" ON "traitements_classiques" USING "btree" ("refdoss");


--
-- TOC entry 3240 (class 1259 OID 49667)
-- Dependencies: 214 3349
-- Name: fki_dossier_ventilations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "fki_dossier_ventilations" ON "ventilations" USING "btree" ("refdoss");


--
-- TOC entry 3253 (class 1259 OID 50136)
-- Dependencies: 219 3349
-- Name: fki_refdoss_dossiers; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "fki_refdoss_dossiers" ON "comptabilites" USING "btree" ("refdoss");


--
-- TOC entry 3158 (class 1259 OID 49668)
-- Dependencies: 179 3349
-- Name: idx_entretiens_refdoss; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "idx_entretiens_refdoss" ON "entretiens" USING "btree" ("refdoss");


--
-- TOC entry 3254 (class 1259 OID 50137)
-- Dependencies: 219 3349
-- Name: idx_refdoss; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "idx_refdoss" ON "comptabilites" USING "btree" ("refdoss");


--
-- TOC entry 3139 (class 1259 OID 49670)
-- Dependencies: 171 3349
-- Name: idx_refdoss_canalisations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "idx_refdoss_canalisations" ON "canalisations" USING "btree" ("refdoss");


--
-- TOC entry 3144 (class 1259 OID 49671)
-- Dependencies: 173 3349
-- Name: idx_refdoss_cont_conception; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "idx_refdoss_cont_conception" ON "cont_conceptions" USING "btree" ("refdoss");


--
-- TOC entry 3148 (class 1259 OID 49672)
-- Dependencies: 175 3349
-- Name: idx_refdoss_cont_periodiques; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "idx_refdoss_cont_periodiques" ON "cont_periodiques" USING "btree" ("refdoss");


--
-- TOC entry 3259 (class 1259 OID 50161)
-- Dependencies: 223 3349
-- Name: idx_refdoss_cont_realisation; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "idx_refdoss_cont_realisation" ON "cont_realisations" USING "btree" ("refdoss");


--
-- TOC entry 3160 (class 1259 OID 49673)
-- Dependencies: 180 3349
-- Name: idx_refdoss_filieres_agreees; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "idx_refdoss_filieres_agreees" ON "filieres_agreees" USING "btree" ("refdoss");


--
-- TOC entry 3165 (class 1259 OID 49674)
-- Dependencies: 182 3349
-- Name: idx_refdoss_haies; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "idx_refdoss_haies" ON "haies" USING "btree" ("refdoss");


--
-- TOC entry 3249 (class 1259 OID 49916)
-- Dependencies: 217 3349
-- Name: idx_refdoss_immeubles; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "idx_refdoss_immeubles" ON "immeubles" USING "btree" ("refdoss");


--
-- TOC entry 3170 (class 1259 OID 49676)
-- Dependencies: 184 3349
-- Name: idx_refdoss_infiltrations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "idx_refdoss_infiltrations" ON "infiltrations" USING "btree" ("refdoss");


--
-- TOC entry 3175 (class 1259 OID 49677)
-- Dependencies: 186 3349
-- Name: idx_refdoss_installations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "idx_refdoss_installations" ON "installations" USING "btree" ("refdoss");


--
-- TOC entry 3180 (class 1259 OID 49678)
-- Dependencies: 188 3349
-- Name: idx_refdoss_origines; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "idx_refdoss_origines" ON "origines" USING "btree" ("refdoss");


--
-- TOC entry 3187 (class 1259 OID 49680)
-- Dependencies: 192 3349
-- Name: idx_refdoss_pieces; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "idx_refdoss_pieces" ON "pieces" USING "btree" ("refdoss");


--
-- TOC entry 3193 (class 1259 OID 49681)
-- Dependencies: 194 3349
-- Name: idx_refdoss_pompages; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "idx_refdoss_pompages" ON "pompages" USING "btree" ("refdoss");


--
-- TOC entry 3198 (class 1259 OID 49688)
-- Dependencies: 196 3349
-- Name: idx_refdoss_pretraitements; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "idx_refdoss_pretraitements" ON "pretraitements" USING "btree" ("refdoss");


--
-- TOC entry 3203 (class 1259 OID 49682)
-- Dependencies: 197 3349
-- Name: idx_refdoss_puits_d_eau; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "idx_refdoss_puits_d_eau" ON "puits_d_eau" USING "btree" ("refdoss");


--
-- TOC entry 3209 (class 1259 OID 49683)
-- Dependencies: 199 3349
-- Name: idx_refdoss_puits_dispersion; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "idx_refdoss_puits_dispersion" ON "puits_dispersion" USING "btree" ("refdoss");


--
-- TOC entry 3214 (class 1259 OID 49684)
-- Dependencies: 201 3349
-- Name: idx_refdoss_regards; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "idx_refdoss_regards" ON "regards" USING "btree" ("refdoss");


--
-- TOC entry 3219 (class 1259 OID 49685)
-- Dependencies: 203 3349
-- Name: idx_refdoss_rejets; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "idx_refdoss_rejets" ON "rejets" USING "btree" ("refdoss");


--
-- TOC entry 3224 (class 1259 OID 49686)
-- Dependencies: 205 3349
-- Name: idx_refdoss_sondages; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "idx_refdoss_sondages" ON "sondages" USING "btree" ("refdoss");


--
-- TOC entry 3229 (class 1259 OID 49687)
-- Dependencies: 207 3349
-- Name: idx_refdoss_surfaces_terrain; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "idx_refdoss_surfaces_terrain" ON "surfaces_terrain" USING "btree" ("refdoss");


--
-- TOC entry 3263 (class 1259 OID 58600)
-- Dependencies: 237 3349
-- Name: idx_refdoss_traitements_classiks; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "idx_refdoss_traitements_classiks" ON "traitements_classiks" USING "btree" ("refdoss");


--
-- TOC entry 3234 (class 1259 OID 49689)
-- Dependencies: 210 3349
-- Name: idx_refdoss_traitements_classiques; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "idx_refdoss_traitements_classiques" ON "traitements_classiques" USING "btree" ("refdoss");


--
-- TOC entry 3241 (class 1259 OID 49690)
-- Dependencies: 214 3349
-- Name: idx_refdoss_ventilations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "idx_refdoss_ventilations" ON "ventilations" USING "btree" ("refdoss");


--
-- TOC entry 3134 (class 1259 OID 49800)
-- Dependencies: 2402 167 3349
-- Name: sidx_alim_aep_the_geom; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "sidx_alim_aep_the_geom" ON "alim_aep" USING "gist" ("the_geom");


--
-- TOC entry 3137 (class 1259 OID 49691)
-- Dependencies: 169 2402 3349
-- Name: the_geom_gist_arbres; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "the_geom_gist_arbres" ON "arbres" USING "gist" ("the_geom");


--
-- TOC entry 3142 (class 1259 OID 49692)
-- Dependencies: 171 2402 3349
-- Name: the_geom_gist_canalisations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "the_geom_gist_canalisations" ON "canalisations" USING "gist" ("the_geom");


--
-- TOC entry 3163 (class 1259 OID 49693)
-- Dependencies: 180 2402 3349
-- Name: the_geom_gist_filieres_agreees; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "the_geom_gist_filieres_agreees" ON "filieres_agreees" USING "gist" ("the_geom");


--
-- TOC entry 3168 (class 1259 OID 49694)
-- Dependencies: 2402 182 3349
-- Name: the_geom_gist_haies; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "the_geom_gist_haies" ON "haies" USING "gist" ("the_geom");


--
-- TOC entry 3250 (class 1259 OID 49917)
-- Dependencies: 217 2402 3349
-- Name: the_geom_gist_immeubles; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "the_geom_gist_immeubles" ON "immeubles" USING "gist" ("the_geom");


--
-- TOC entry 3173 (class 1259 OID 49696)
-- Dependencies: 184 2402 3349
-- Name: the_geom_gist_infiltrations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "the_geom_gist_infiltrations" ON "infiltrations" USING "gist" ("the_geom");


--
-- TOC entry 3178 (class 1259 OID 49697)
-- Dependencies: 186 2402 3349
-- Name: the_geom_gist_installations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "the_geom_gist_installations" ON "installations" USING "gist" ("the_geom");


--
-- TOC entry 3183 (class 1259 OID 49698)
-- Dependencies: 188 2402 3349
-- Name: the_geom_gist_origines; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "the_geom_gist_origines" ON "origines" USING "gist" ("the_geom");


--
-- TOC entry 3186 (class 1259 OID 49699)
-- Dependencies: 2402 190 3349
-- Name: the_geom_gist_pentes; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "the_geom_gist_pentes" ON "pentes" USING "gist" ("the_geom");


--
-- TOC entry 3190 (class 1259 OID 49700)
-- Dependencies: 192 2402 3349
-- Name: the_geom_gist_pieces; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "the_geom_gist_pieces" ON "pieces" USING "gist" ("the_geom");


--
-- TOC entry 3196 (class 1259 OID 49701)
-- Dependencies: 2402 194 3349
-- Name: the_geom_gist_pompages; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "the_geom_gist_pompages" ON "pompages" USING "gist" ("the_geom");


--
-- TOC entry 3201 (class 1259 OID 49708)
-- Dependencies: 2402 196 3349
-- Name: the_geom_gist_pretraitements; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "the_geom_gist_pretraitements" ON "pretraitements" USING "gist" ("the_geom");


--
-- TOC entry 3206 (class 1259 OID 49702)
-- Dependencies: 197 2402 3349
-- Name: the_geom_gist_puits_d_eau; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "the_geom_gist_puits_d_eau" ON "puits_d_eau" USING "gist" ("the_geom");


--
-- TOC entry 3212 (class 1259 OID 49703)
-- Dependencies: 199 2402 3349
-- Name: the_geom_gist_puits_dispersion; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "the_geom_gist_puits_dispersion" ON "puits_dispersion" USING "gist" ("the_geom");


--
-- TOC entry 3217 (class 1259 OID 49704)
-- Dependencies: 201 2402 3349
-- Name: the_geom_gist_regards; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "the_geom_gist_regards" ON "regards" USING "gist" ("the_geom");


--
-- TOC entry 3222 (class 1259 OID 49705)
-- Dependencies: 2402 203 3349
-- Name: the_geom_gist_rejets; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "the_geom_gist_rejets" ON "rejets" USING "gist" ("the_geom");


--
-- TOC entry 3227 (class 1259 OID 49706)
-- Dependencies: 2402 205 3349
-- Name: the_geom_gist_sondages; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "the_geom_gist_sondages" ON "sondages" USING "gist" ("the_geom");


--
-- TOC entry 3232 (class 1259 OID 49707)
-- Dependencies: 2402 207 3349
-- Name: the_geom_gist_surfaces_terrain; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "the_geom_gist_surfaces_terrain" ON "surfaces_terrain" USING "gist" ("the_geom");


--
-- TOC entry 3266 (class 1259 OID 58599)
-- Dependencies: 2402 237 3349
-- Name: the_geom_gist_traitements_classiks; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "the_geom_gist_traitements_classiks" ON "traitements_classiks" USING "gist" ("the_geom");


--
-- TOC entry 3237 (class 1259 OID 49709)
-- Dependencies: 210 2402 3349
-- Name: the_geom_gist_traitements_classiques; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "the_geom_gist_traitements_classiques" ON "traitements_classiques" USING "gist" ("the_geom");


--
-- TOC entry 3244 (class 1259 OID 49710)
-- Dependencies: 2402 214 3349
-- Name: the_geom_gist_ventilations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "the_geom_gist_ventilations" ON "ventilations" USING "gist" ("the_geom");


--
-- TOC entry 3300 (class 2620 OID 49711)
-- Dependencies: 1033 177 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "dossiers" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3292 (class 2620 OID 49712)
-- Dependencies: 1033 169 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "arbres" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3294 (class 2620 OID 49713)
-- Dependencies: 1033 171 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "canalisations" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3324 (class 2620 OID 49714)
-- Dependencies: 1033 199 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "puits_dispersion" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3304 (class 2620 OID 49715)
-- Dependencies: 180 1033 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "filieres_agreees" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3306 (class 2620 OID 49716)
-- Dependencies: 1033 182 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "haies" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3312 (class 2620 OID 49718)
-- Dependencies: 1033 188 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "origines" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3308 (class 2620 OID 49719)
-- Dependencies: 184 1033 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "infiltrations" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3314 (class 2620 OID 49720)
-- Dependencies: 1033 190 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "pentes" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3316 (class 2620 OID 49721)
-- Dependencies: 192 1033 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "pieces" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3326 (class 2620 OID 49722)
-- Dependencies: 201 1033 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "regards" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3328 (class 2620 OID 49723)
-- Dependencies: 203 1033 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "rejets" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3332 (class 2620 OID 49724)
-- Dependencies: 1033 207 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "surfaces_terrain" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3334 (class 2620 OID 49725)
-- Dependencies: 1033 210 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "traitements_classiques" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3338 (class 2620 OID 49726)
-- Dependencies: 1033 214 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "ventilations" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3330 (class 2620 OID 49727)
-- Dependencies: 1033 205 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "sondages" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3336 (class 2620 OID 49728)
-- Dependencies: 1033 212 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "usagers" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3318 (class 2620 OID 49729)
-- Dependencies: 194 1033 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "pompages" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3298 (class 2620 OID 49730)
-- Dependencies: 1033 175 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "cont_periodiques" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3296 (class 2620 OID 49731)
-- Dependencies: 1033 173 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "cont_conceptions" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3302 (class 2620 OID 49732)
-- Dependencies: 1033 179 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "entretiens" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3290 (class 2620 OID 49733)
-- Dependencies: 1033 167 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "alim_aep" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3310 (class 2620 OID 49734)
-- Dependencies: 1033 186 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "installations" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3320 (class 2620 OID 49735)
-- Dependencies: 1033 196 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "pretraitements" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3322 (class 2620 OID 49736)
-- Dependencies: 197 1033 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "puits_d_eau" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3340 (class 2620 OID 49918)
-- Dependencies: 217 1033 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "immeubles" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3342 (class 2620 OID 50117)
-- Dependencies: 1033 219 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "comptabilites" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3344 (class 2620 OID 50162)
-- Dependencies: 223 1033 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "cont_realisations" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3347 (class 2620 OID 58602)
-- Dependencies: 1033 237 3349
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "traitements_classiks" FOR EACH ROW EXECUTE PROCEDURE "set_cree"();


--
-- TOC entry 3291 (class 2620 OID 49737)
-- Dependencies: 1032 167 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "alim_aep" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3293 (class 2620 OID 49738)
-- Dependencies: 1032 169 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "arbres" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3295 (class 2620 OID 49739)
-- Dependencies: 171 1032 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "canalisations" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3297 (class 2620 OID 49740)
-- Dependencies: 1032 173 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "cont_conceptions" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3299 (class 2620 OID 49741)
-- Dependencies: 175 1032 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "cont_periodiques" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3301 (class 2620 OID 49742)
-- Dependencies: 177 1032 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "dossiers" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3303 (class 2620 OID 49743)
-- Dependencies: 1032 179 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "entretiens" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3305 (class 2620 OID 49744)
-- Dependencies: 180 1032 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "filieres_agreees" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3307 (class 2620 OID 49745)
-- Dependencies: 1032 182 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "haies" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3309 (class 2620 OID 49747)
-- Dependencies: 1032 184 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "infiltrations" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3313 (class 2620 OID 49748)
-- Dependencies: 188 1032 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "origines" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3315 (class 2620 OID 49749)
-- Dependencies: 1032 190 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "pentes" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3317 (class 2620 OID 49750)
-- Dependencies: 1032 192 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "pieces" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3319 (class 2620 OID 49751)
-- Dependencies: 1032 194 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "pompages" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3325 (class 2620 OID 49752)
-- Dependencies: 199 1032 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "puits_dispersion" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3327 (class 2620 OID 49753)
-- Dependencies: 1032 201 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "regards" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3329 (class 2620 OID 49754)
-- Dependencies: 1032 203 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "rejets" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3331 (class 2620 OID 49755)
-- Dependencies: 1032 205 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "sondages" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3333 (class 2620 OID 49756)
-- Dependencies: 207 1032 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "surfaces_terrain" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3335 (class 2620 OID 49757)
-- Dependencies: 210 1032 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "traitements_classiques" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3337 (class 2620 OID 49758)
-- Dependencies: 212 1032 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "usagers" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3339 (class 2620 OID 49759)
-- Dependencies: 214 1032 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "ventilations" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3311 (class 2620 OID 49760)
-- Dependencies: 1032 186 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "installations" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3321 (class 2620 OID 49761)
-- Dependencies: 196 1032 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "pretraitements" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3323 (class 2620 OID 49762)
-- Dependencies: 197 1032 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "puits_d_eau" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3341 (class 2620 OID 49919)
-- Dependencies: 217 1032 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "immeubles" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3343 (class 2620 OID 50118)
-- Dependencies: 219 1032 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "comptabilites" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3345 (class 2620 OID 50163)
-- Dependencies: 223 1032 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "cont_realisations" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3346 (class 2620 OID 58601)
-- Dependencies: 237 1032 3349
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_modifie_le" BEFORE INSERT OR UPDATE ON "traitements_classiks" FOR EACH ROW EXECUTE PROCEDURE "set_modif"();


--
-- TOC entry 3271 (class 2606 OID 49768)
-- Dependencies: 179 3154 177 3349
-- Name: FK_dossiers; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "entretiens"
    ADD CONSTRAINT "FK_dossiers" FOREIGN KEY ("refdoss") REFERENCES "dossiers"("refdoss");


--
-- TOC entry 3267 (class 2606 OID 50012)
-- Dependencies: 167 3246 217 3349
-- Name: alim_aep_immeuble_gid_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "alim_aep"
    ADD CONSTRAINT "alim_aep_immeuble_gid_fkey" FOREIGN KEY ("immeuble_gid") REFERENCES "immeubles"("gid") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3268 (class 2606 OID 50017)
-- Dependencies: 3176 186 171 3349
-- Name: canalisations_install_gid_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "canalisations"
    ADD CONSTRAINT "canalisations_install_gid_fkey" FOREIGN KEY ("install_gid") REFERENCES "installations"("gid") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3269 (class 2606 OID 49941)
-- Dependencies: 173 3154 177 3349
-- Name: cont_conception_refdoss_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "cont_conceptions"
    ADD CONSTRAINT "cont_conception_refdoss_fkey" FOREIGN KEY ("refdoss") REFERENCES "dossiers"("refdoss") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3270 (class 2606 OID 49946)
-- Dependencies: 177 3154 175 3349
-- Name: cont_periodiques_refdoss_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "cont_periodiques"
    ADD CONSTRAINT "cont_periodiques_refdoss_fkey" FOREIGN KEY ("refdoss") REFERENCES "dossiers"("refdoss") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3273 (class 2606 OID 50036)
-- Dependencies: 180 3176 186 3349
-- Name: filieres_agreees_install_gid_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "filieres_agreees"
    ADD CONSTRAINT "filieres_agreees_install_gid_fkey" FOREIGN KEY ("install_gid") REFERENCES "installations"("gid") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3272 (class 2606 OID 50031)
-- Dependencies: 186 3176 180 3349
-- Name: filieres_agreees_install_gid_fkey1; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "filieres_agreees"
    ADD CONSTRAINT "filieres_agreees_install_gid_fkey1" FOREIGN KEY ("install_gid") REFERENCES "installations"("gid") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3288 (class 2606 OID 50164)
-- Dependencies: 3145 223 173 3349
-- Name: fk_conception; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "cont_realisations"
    ADD CONSTRAINT "fk_conception" FOREIGN KEY ("concept_gid") REFERENCES "cont_conceptions"("gid") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3275 (class 2606 OID 49783)
-- Dependencies: 186 3154 177 3349
-- Name: fk_dossier_installations; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "installations"
    ADD CONSTRAINT "fk_dossier_installations" FOREIGN KEY ("refdoss") REFERENCES "dossiers"("refdoss");


--
-- TOC entry 3289 (class 2606 OID 58593)
-- Dependencies: 177 3154 237 3349
-- Name: fk_dossier_traitements_classiks; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "traitements_classiks"
    ADD CONSTRAINT "fk_dossier_traitements_classiks" FOREIGN KEY ("refdoss") REFERENCES "dossiers"("refdoss");


--
-- TOC entry 3286 (class 2606 OID 50138)
-- Dependencies: 217 177 3154 3349
-- Name: fk_immeubles; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "immeubles"
    ADD CONSTRAINT "fk_immeubles" FOREIGN KEY ("refdoss") REFERENCES "dossiers"("refdoss") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3287 (class 2606 OID 50131)
-- Dependencies: 3154 177 219 3349
-- Name: fk_refdoss_dossiers; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "comptabilites"
    ADD CONSTRAINT "fk_refdoss_dossiers" FOREIGN KEY ("refdoss") REFERENCES "dossiers"("refdoss") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3274 (class 2606 OID 58548)
-- Dependencies: 186 184 3176 3349
-- Name: infiltrations_install_gid_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "infiltrations"
    ADD CONSTRAINT "infiltrations_install_gid_fkey" FOREIGN KEY ("install_gid") REFERENCES "installations"("gid") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3276 (class 2606 OID 49926)
-- Dependencies: 192 3246 217 3349
-- Name: pieces_immeuble_gid_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "pieces"
    ADD CONSTRAINT "pieces_immeuble_gid_fkey" FOREIGN KEY ("immeuble_gid") REFERENCES "immeubles"("gid") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3277 (class 2606 OID 58543)
-- Dependencies: 194 186 3176 3349
-- Name: pompages_install_gid_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "pompages"
    ADD CONSTRAINT "pompages_install_gid_fkey" FOREIGN KEY ("install_gid") REFERENCES "installations"("gid") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3278 (class 2606 OID 50061)
-- Dependencies: 196 3176 186 3349
-- Name: pretraitements_install_gid_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "pretraitements"
    ADD CONSTRAINT "pretraitements_install_gid_fkey" FOREIGN KEY ("install_gid") REFERENCES "installations"("gid") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3279 (class 2606 OID 50071)
-- Dependencies: 186 199 3176 3349
-- Name: puits_dispersion_install_gid_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "puits_dispersion"
    ADD CONSTRAINT "puits_dispersion_install_gid_fkey" FOREIGN KEY ("install_gid") REFERENCES "installations"("gid") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3280 (class 2606 OID 50076)
-- Dependencies: 201 186 3176 3349
-- Name: regards_install_gid_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "regards"
    ADD CONSTRAINT "regards_install_gid_fkey" FOREIGN KEY ("install_gid") REFERENCES "installations"("gid") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3281 (class 2606 OID 50081)
-- Dependencies: 203 186 3176 3349
-- Name: rejets_install_gid_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "rejets"
    ADD CONSTRAINT "rejets_install_gid_fkey" FOREIGN KEY ("install_gid") REFERENCES "installations"("gid") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3282 (class 2606 OID 49981)
-- Dependencies: 205 177 3154 3349
-- Name: sondages_refdoss_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "sondages"
    ADD CONSTRAINT "sondages_refdoss_fkey" FOREIGN KEY ("refdoss") REFERENCES "dossiers"("refdoss") ON UPDATE CASCADE;


--
-- TOC entry 3283 (class 2606 OID 50086)
-- Dependencies: 186 210 3176 3349
-- Name: traitements_classiques_install_gid_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "traitements_classiques"
    ADD CONSTRAINT "traitements_classiques_install_gid_fkey" FOREIGN KEY ("install_gid") REFERENCES "installations"("gid") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3284 (class 2606 OID 50006)
-- Dependencies: 212 217 3246 3349
-- Name: usagers_immeuble_id_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "usagers"
    ADD CONSTRAINT "usagers_immeuble_id_fkey" FOREIGN KEY ("immeuble_id") REFERENCES "immeubles"("gid") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3285 (class 2606 OID 50091)
-- Dependencies: 186 3176 214 3349
-- Name: ventilations_install_gid_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "ventilations"
    ADD CONSTRAINT "ventilations_install_gid_fkey" FOREIGN KEY ("install_gid") REFERENCES "installations"("gid") ON UPDATE CASCADE ON DELETE CASCADE;


SELECT pg_catalog.setval('dossiers_gid_seq', 1, true);
INSERT INTO dossiers (gid, refdoss, archivage, etat, comments, zrs, zaee, aut_zone, secteur, commune_id, photo, docu2, angle, taille, cree_le, modifie_le, saisie_par, the_geom) VALUES (1, '9999', '9999', 'en cours', 'dossiers par défaut', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2012-09-23 21:30:07', '2012-09-23 21:30:07', 'spanc29', NULL);


-- Completed on 2012-09-17 00:09:01 CEST

--
-- PostgreSQL database dump complete
--
