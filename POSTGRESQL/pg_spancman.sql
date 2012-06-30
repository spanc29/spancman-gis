--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.3
-- Dumped by pg_dump version 9.1.3
-- Started on 2012-06-06 14:06:26 CEST

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 6 (class 2615 OID 28928)
-- Name: spanc; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "spanc";


ALTER SCHEMA "spanc" OWNER TO "postgres";

SET search_path = "spanc", pg_catalog;

--
-- TOC entry 986 (class 1255 OID 41458)
-- Dependencies: 1796 6
-- Name: set_cree_le(); Type: FUNCTION; Schema: spanc; Owner: postgres
--

CREATE FUNCTION "set_cree_le"() RETURNS "trigger"
    LANGUAGE "plpgsql" IMMUTABLE
    AS $$
BEGIN
NEW.cree_le = LOCALTIMESTAMP(0); 
RETURN NEW;
END;
$$;


ALTER FUNCTION "spanc"."set_cree_le"() OWNER TO "postgres";

--
-- TOC entry 1109 (class 1255 OID 41290)
-- Dependencies: 1796 6
-- Name: set_modifie(); Type: FUNCTION; Schema: spanc; Owner: postgres
--

CREATE FUNCTION "set_modifie"() RETURNS "trigger"
    LANGUAGE "plpgsql" IMMUTABLE COST 1
    AS $$
BEGIN
NEW.modifie_le = LOCALTIMESTAMP(0); 
RETURN NEW;
END;
$$;


ALTER FUNCTION "spanc"."set_modifie"() OWNER TO "postgres";

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 170 (class 1259 OID 41560)
-- Dependencies: 3280 3281 3282 6 1421
-- Name: alim_aep; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE TABLE "alim_aep" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "typ_alim" character varying(80),
    "conso_moyenne" integer,
    "reference" character varying(80),
    "comments" "text",
    "bati_gid" integer,
    "marq_constructeur" character varying(80),
    "annee_pose" integer,
    "poseur" character varying(80),
    "photo1" character varying(200),
    "photo2" character varying(200),
    "profondeur" real,
    "taille" real,
    "cree_le" character varying(25),
    "modifie_le" character varying(25),
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."alim_aep" OWNER TO "postgres";

--
-- TOC entry 169 (class 1259 OID 41558)
-- Dependencies: 170 6
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
-- TOC entry 3525 (class 0 OID 0)
-- Dependencies: 169
-- Name: alim_aep_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "alim_aep_gid_seq" OWNED BY "alim_aep"."gid";


--
-- TOC entry 172 (class 1259 OID 41600)
-- Dependencies: 3284 3285 3286 6 1421
-- Name: arbres; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE TABLE "arbres" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "type_arbre" character varying(80),
    "a_couper" character varying(3),
    "comments" "text",
    "annee_pose" integer,
    "photo1" character varying(200),
    "photo2" character varying(200),
    "largeur" real,
    "hauteur" real,
    "cree_le" character varying(25),
    "modifie_le" character varying(25),
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."arbres" OWNER TO "postgres";

--
-- TOC entry 171 (class 1259 OID 41598)
-- Dependencies: 172 6
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
-- TOC entry 3526 (class 0 OID 0)
-- Dependencies: 171
-- Name: arbres_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "arbres_gid_seq" OWNED BY "arbres"."gid";


--
-- TOC entry 176 (class 1259 OID 41660)
-- Dependencies: 3292 3293 3294 1421 6
-- Name: base; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE TABLE "base" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "type_entite" character varying(80),
    "comments" "text",
    "marq_constructeur" character varying(80),
    "annee_pose" integer,
    "poseur" character varying(80),
    "renseignements" character varying(80),
    "accessible" character varying(25),
    "integrite" character varying(25),
    "proprete" character varying(25),
    "securite" character varying(25),
    "ecoulement" character varying(25),
    "photo1" character varying(200),
    "photo2" character varying(200),
    "longueur" real,
    "largeur" real,
    "haut_prof" real,
    "angle" real,
    "taille" real,
    "cree_le" character varying(25),
    "modifie_le" character varying(25),
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."base" OWNER TO "postgres";

--
-- TOC entry 175 (class 1259 OID 41658)
-- Dependencies: 176 6
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
-- TOC entry 3527 (class 0 OID 0)
-- Dependencies: 175
-- Name: base_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "base_gid_seq" OWNED BY "base"."gid";


--
-- TOC entry 174 (class 1259 OID 41620)
-- Dependencies: 3288 3289 3290 1421 6
-- Name: canalisations; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE TABLE "canalisations" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "type_eau" character varying(80),
    "materiau" character varying(80),
    "diametre" real,
    "gravitaire" character varying(3),
    "comments" "text",
    "annee_pose" integer,
    "poseur" character varying(80),
    "integrite" character varying(25),
    "proprete" character varying(25),
    "ecoulement" character varying(25),
    "photo1" character varying(200),
    "photo2" character varying(200),
    "longueur" real,
    "cree_le" character varying(25),
    "modifie_le" character varying(25),
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'MULTILINESTRING'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."canalisations" OWNER TO "postgres";

--
-- TOC entry 173 (class 1259 OID 41618)
-- Dependencies: 174 6
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
-- TOC entry 3528 (class 0 OID 0)
-- Dependencies: 173
-- Name: canalisations_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "canalisations_gid_seq" OWNED BY "canalisations"."gid";


--
-- TOC entry 168 (class 1259 OID 41462)
-- Dependencies: 3275 3276 3277 3278 6 1421
-- Name: dossiers; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE TABLE "dossiers" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "archivage" character varying(80),
    "etat" character varying(80) DEFAULT 'en cours'::character varying,
    "comments" "text",
    "zrs" character varying(50),
    "zaee" character varying(50),
    "aut_zone" character varying(100),
    "secteur" character varying(80),
    "commune_id" integer,
    "photo1" character varying(200),
    "photo2" character varying(200),
    "cree_le" character varying(25) NOT NULL,
    "modifie_le" character varying(25) NOT NULL,
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."dossiers" OWNER TO "postgres";

--
-- TOC entry 167 (class 1259 OID 41460)
-- Dependencies: 168 6
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
-- TOC entry 3529 (class 0 OID 0)
-- Dependencies: 167
-- Name: dossiers_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "dossiers_gid_seq" OWNED BY "dossiers"."gid";


--
-- TOC entry 180 (class 1259 OID 42219)
-- Dependencies: 3300 3301 3302 1421 6
-- Name: filieres_agreees; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE TABLE "filieres_agreees" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "typ_filiere" character varying(80),
    "num_agrement" character varying(15),
    "marq_constructeur" character varying(80),
    "modele" character varying(80),
    "nb_eq_hab" integer,
    "doc_constructeur" character varying(200),
    "typ_cuve" character varying(80),
    "comments" "text",
    "annee_pose" integer,
    "poseur" character varying(80),
    "renseignements" character varying(80),
    "accessible" character varying(25),
    "integrite" character varying(25),
    "proprete" character varying(25),
    "securite" character varying(25),
    "ecoulement" character varying(25),
    "photo1" character varying(200),
    "photo2" character varying(200),
    "longueur" real,
    "largeur" real,
    "haut_prof" real,
    "angle" real,
    "taille" real,
    "cree_le" character varying(25),
    "modifie_le" character varying(25),
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."filieres_agreees" OWNER TO "postgres";

--
-- TOC entry 179 (class 1259 OID 42217)
-- Dependencies: 180 6
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
-- TOC entry 3530 (class 0 OID 0)
-- Dependencies: 179
-- Name: filieres_agreees_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "filieres_agreees_gid_seq" OWNED BY "filieres_agreees"."gid";


--
-- TOC entry 182 (class 1259 OID 42239)
-- Dependencies: 3304 3305 3306 6 1421
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
    "comments" "text",
    "annee_pose" integer,
    "poseur" character varying(80),
    "renseignements" character varying(80),
    "photo1" character varying(200),
    "photo2" character varying(200),
    "cree_le" character varying(25),
    "modifie_le" character varying(25),
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."haies" OWNER TO "postgres";

--
-- TOC entry 181 (class 1259 OID 42237)
-- Dependencies: 182 6
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
-- TOC entry 3531 (class 0 OID 0)
-- Dependencies: 181
-- Name: haies_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "haies_gid_seq" OWNED BY "haies"."gid";


--
-- TOC entry 184 (class 1259 OID 43893)
-- Dependencies: 3308 3309 3310 1421 6
-- Name: immeubles; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE TABLE "immeubles" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "type_habitat" character varying(80),
    "type" character varying(25),
    "tx_occupation" character varying(80),
    "nb_pp" integer,
    "an_construction" integer,
    "an_rehabilitation" integer,
    "date_acte_authentique" integer,
    "comments" "text",
    "renseignements" character varying(80),
    "photo1" character varying(200),
    "photo2" character varying(200),
    "cree_le" character varying(25),
    "modifie_le" character varying(25),
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."immeubles" OWNER TO "postgres";

--
-- TOC entry 183 (class 1259 OID 43891)
-- Dependencies: 6 184
-- Name: immeubles_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "immeubles_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."immeubles_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3532 (class 0 OID 0)
-- Dependencies: 183
-- Name: immeubles_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "immeubles_gid_seq" OWNED BY "immeubles"."gid";


--
-- TOC entry 188 (class 1259 OID 43972)
-- Dependencies: 3316 3317 3318 6 1421
-- Name: infiltrations; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE TABLE "infiltrations" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "type_infiltration" character varying(80),
    "longueur" real,
    "largeur" real,
    "profondeur" real,
    "surface" real,
    "comments" "text",
    "marq_constructeur" character varying(80),
    "annee_pose" integer,
    "poseur" character varying(80),
    "renseignements" character varying(80),
    "accessible" character varying(25),
    "integrite" character varying(25),
    "proprete" character varying(25),
    "securite" character varying(25),
    "ecoulement" character varying(25),
    "photo1" character varying(200),
    "photo2" character varying(200),
    "cree_le" character varying(25),
    "modifie_le" character varying(25),
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'MULTIPOLYGON'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."infiltrations" OWNER TO "postgres";

--
-- TOC entry 187 (class 1259 OID 43970)
-- Dependencies: 6 188
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
-- TOC entry 3533 (class 0 OID 0)
-- Dependencies: 187
-- Name: infiltrations_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "infiltrations_gid_seq" OWNED BY "infiltrations"."gid";


--
-- TOC entry 210 (class 1259 OID 44231)
-- Dependencies: 6
-- Name: installations; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE TABLE "installations" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "type_installation" character varying(80),
    "comments" "text",
    "cree_le" character varying(25),
    "modifie_le" character varying(25),
    "saisie_par" character varying(25)
);


ALTER TABLE "spanc"."installations" OWNER TO "postgres";

--
-- TOC entry 209 (class 1259 OID 44229)
-- Dependencies: 6 210
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
-- TOC entry 3534 (class 0 OID 0)
-- Dependencies: 209
-- Name: installations_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "installations_gid_seq" OWNED BY "installations"."gid";


--
-- TOC entry 186 (class 1259 OID 43933)
-- Dependencies: 3312 3313 3314 1421 6
-- Name: origines; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE TABLE "origines" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "typ_origine" character varying(80),
    "trace_fluo" character varying(25),
    "ecoulement" character varying(25),
    "comments" "text",
    "renseignements" character varying(80),
    "photo1" character varying(200),
    "photo2" character varying(200),
    "angle" real,
    "taille" real,
    "cree_le" character varying(25),
    "modifie_le" character varying(25),
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."origines" OWNER TO "postgres";

--
-- TOC entry 185 (class 1259 OID 43931)
-- Dependencies: 186 6
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
-- TOC entry 3535 (class 0 OID 0)
-- Dependencies: 185
-- Name: origines_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "origines_gid_seq" OWNED BY "origines"."gid";


--
-- TOC entry 190 (class 1259 OID 43993)
-- Dependencies: 3320 3321 3322 1421 6
-- Name: pentes; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE TABLE "pentes" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "pente" real,
    "longueur" real,
    "comments" "text",
    "renseignements" character varying(80),
    "cree_le" character varying(25),
    "modifie_le" character varying(25),
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'MULTILINESTRING'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."pentes" OWNER TO "postgres";

--
-- TOC entry 189 (class 1259 OID 43991)
-- Dependencies: 190 6
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
-- TOC entry 3536 (class 0 OID 0)
-- Dependencies: 189
-- Name: pentes_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "pentes_gid_seq" OWNED BY "pentes"."gid";


--
-- TOC entry 192 (class 1259 OID 44013)
-- Dependencies: 3324 3325 3326 1421 6
-- Name: pieces; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE TABLE "pieces" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "piece" character varying(80),
    "etage" integer,
    "est_pp" integer,
    "genere_eu" character varying(5),
    "surface" real,
    "comments" "text",
    "renseignements" character varying(80),
    "angle" real,
    "taille" real,
    "cree_le" character varying(25),
    "modifie_le" character varying(25),
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    "immeuble_gid" integer,
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."pieces" OWNER TO "postgres";

--
-- TOC entry 191 (class 1259 OID 44011)
-- Dependencies: 6 192
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
-- TOC entry 3537 (class 0 OID 0)
-- Dependencies: 191
-- Name: pieces_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "pieces_gid_seq" OWNED BY "pieces"."gid";


--
-- TOC entry 194 (class 1259 OID 44034)
-- Dependencies: 3328 3329 3330 1421 6
-- Name: pretraitements; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE TABLE "pretraitements" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "type_pretr" character varying(80),
    "volume" integer,
    "nb_acces" integer,
    "origine" character varying(25),
    "sortie" character varying(25),
    "comments" "text",
    "marq_constructeur" character varying(80),
    "annee_pose" integer,
    "poseur" character varying(80),
    "renseignements" character varying(80),
    "accessible" character varying(25),
    "integrite" character varying(25),
    "proprete" character varying(25),
    "securite" character varying(25),
    "ecoulement" character varying(25),
    "photo1" character varying(200),
    "photo2" character varying(200),
    "longueur" real,
    "largeur" real,
    "haut_prof" real,
    "angle" real,
    "taille" real,
    "cree_le" character varying(25),
    "modifie_le" character varying(25),
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."pretraitements" OWNER TO "postgres";

--
-- TOC entry 193 (class 1259 OID 44032)
-- Dependencies: 6 194
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
-- TOC entry 3538 (class 0 OID 0)
-- Dependencies: 193
-- Name: pretraitements_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "pretraitements_gid_seq" OWNED BY "pretraitements"."gid";


--
-- TOC entry 178 (class 1259 OID 42199)
-- Dependencies: 3296 3297 3298 1421 6
-- Name: puits_dispersion; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE TABLE "puits_dispersion" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "typ_dispr" character varying(80),
    "autorisation" character varying(25),
    "ref_autorisation" character varying(80),
    "comments" "text",
    "annee_pose" integer,
    "poseur" character varying(80),
    "renseignements" character varying(80),
    "accessible" character varying(25),
    "integrite" character varying(25),
    "proprete" character varying(25),
    "securite" character varying(25),
    "ecoulement" character varying(25),
    "photo1" character varying(200),
    "photo2" character varying(200),
    "longueur" real,
    "largeur" real,
    "profondeur" real,
    "angle" real,
    "taille" real,
    "cree_le" character varying(25),
    "modifie_le" character varying(25),
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."puits_dispersion" OWNER TO "postgres";

--
-- TOC entry 177 (class 1259 OID 42197)
-- Dependencies: 178 6
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
-- TOC entry 3539 (class 0 OID 0)
-- Dependencies: 177
-- Name: puits_dispersion_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "puits_dispersion_gid_seq" OWNED BY "puits_dispersion"."gid";


--
-- TOC entry 208 (class 1259 OID 44206)
-- Dependencies: 3356 3357 3358 6 1421
-- Name: puits_eau; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE TABLE "puits_eau" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "type_puits" character varying(80),
    "eau_domestique" character varying(12),
    "declaration" character varying(80),
    "profondeur" real,
    "niveau_haut" real,
    "niveau_bas" real,
    "comments" "text",
    "annee_pose" integer,
    "renseignements" character varying(80),
    "photo1" character varying(200),
    "photo2" character varying(200),
    "angle" real,
    "taille" real,
    "cree_le" character varying(25),
    "modifie_le" character varying(25),
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."puits_eau" OWNER TO "postgres";

--
-- TOC entry 207 (class 1259 OID 44204)
-- Dependencies: 6 208
-- Name: puits_eau_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE "puits_eau_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "spanc"."puits_eau_gid_seq" OWNER TO "postgres";

--
-- TOC entry 3540 (class 0 OID 0)
-- Dependencies: 207
-- Name: puits_eau_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "puits_eau_gid_seq" OWNED BY "puits_eau"."gid";


--
-- TOC entry 196 (class 1259 OID 44070)
-- Dependencies: 3332 3333 3334 6 1421
-- Name: regards; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE TABLE "regards" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "typ_regard" character varying(80),
    "materiau" character varying(80),
    "forme" character varying(80),
    "nb_entree" integer,
    "nb_sortie" integer,
    "longueur" real,
    "largeur" real,
    "profondeur" real,
    "comments" "text",
    "marq_constructeur" character varying(80),
    "annee_pose" integer,
    "poseur" character varying(80),
    "renseignements" character varying(80),
    "accessible" character varying(25),
    "integrite" character varying(25),
    "proprete" character varying(25),
    "securite" character varying(25),
    "ecoulement" character varying(25),
    "photo1" character varying(200),
    "photo2" character varying(200),
    "angle" real,
    "taille" real,
    "cree_le" character varying(25),
    "modifie_le" character varying(25),
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."regards" OWNER TO "postgres";

--
-- TOC entry 195 (class 1259 OID 44068)
-- Dependencies: 6 196
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
-- TOC entry 3541 (class 0 OID 0)
-- Dependencies: 195
-- Name: regards_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "regards_gid_seq" OWNED BY "regards"."gid";


--
-- TOC entry 198 (class 1259 OID 44090)
-- Dependencies: 3336 3337 3338 1421 6
-- Name: rejets; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE TABLE "rejets" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "type_rejet" character varying(80),
    "autorisation" character varying(12),
    "ref_autorisation" character varying(80),
    "comments" "text",
    "marq_constructeur" character varying(80),
    "annee_pose" integer,
    "poseur" character varying(80),
    "renseignements" character varying(80),
    "accessible" character varying(25),
    "integrite" character varying(25),
    "proprete" character varying(25),
    "securite" character varying(25),
    "ecoulement" character varying(25),
    "photo1" character varying(200),
    "photo2" character varying(200),
    "haut_prof" real,
    "angle" real,
    "taille" real,
    "cree_le" character varying(25),
    "modifie_le" character varying(25),
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."rejets" OWNER TO "postgres";

--
-- TOC entry 197 (class 1259 OID 44088)
-- Dependencies: 198 6
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
-- TOC entry 3542 (class 0 OID 0)
-- Dependencies: 197
-- Name: rejets_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "rejets_gid_seq" OWNED BY "rejets"."gid";


--
-- TOC entry 206 (class 1259 OID 44181)
-- Dependencies: 3352 3353 3354 6 1421
-- Name: sondages; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE TABLE "sondages" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "type_sondage" character varying(80),
    "date_realisation" character varying(25),
    "bureau" character varying(80),
    "scan_doc" character varying(200),
    "profondeur" real,
    "hydromorphie" real,
    "nappe" real,
    "comments" "text",
    "renseignements" character varying(80),
    "photo1" character varying(200),
    "photo2" character varying(200),
    "angle" real,
    "taille" real,
    "cree_le" character varying(25),
    "modifie_le" character varying(25),
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."sondages" OWNER TO "postgres";

--
-- TOC entry 205 (class 1259 OID 44179)
-- Dependencies: 206 6
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
-- TOC entry 3543 (class 0 OID 0)
-- Dependencies: 205
-- Name: sondages_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "sondages_gid_seq" OWNED BY "sondages"."gid";


--
-- TOC entry 200 (class 1259 OID 44116)
-- Dependencies: 3340 3341 3342 1421 6
-- Name: surfaces_terrain; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE TABLE "surfaces_terrain" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "type_surface" character varying(80),
    "surface" real,
    "impermeable" character varying(3),
    "comments" "text",
    "renseignements" character varying(80),
    "photo1" character varying(200),
    "photo2" character varying(200),
    "cree_le" character varying(25),
    "modifie_le" character varying(25),
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'MULTIPOLYGON'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."surfaces_terrain" OWNER TO "postgres";

--
-- TOC entry 199 (class 1259 OID 44114)
-- Dependencies: 200 6
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
-- TOC entry 3544 (class 0 OID 0)
-- Dependencies: 199
-- Name: surfaces_terrain_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "surfaces_terrain_gid_seq" OWNED BY "surfaces_terrain"."gid";


--
-- TOC entry 202 (class 1259 OID 44137)
-- Dependencies: 3344 3345 3346 1421 6
-- Name: traitements_classiques; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE TABLE "traitements_classiques" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(80),
    "typ_traitt" character varying(80),
    "longueur" real,
    "largeur" real,
    "profondeur" real,
    "surface" real,
    "details" "text",
    "comments" "text",
    "annee_pose" integer,
    "poseur" character varying(80),
    "renseignements" character varying(80),
    "accessible" character varying(25),
    "integrite" character varying(25),
    "proprete" character varying(25),
    "securite" character varying(25),
    "ecoulement" character varying(25),
    "photo1" character varying(200),
    "photo2" character varying(200),
    "angle" real,
    "cree_le" character varying(25),
    "modifie_le" character varying(25),
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'MULTIPOLYGON'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."traitements_classiques" OWNER TO "postgres";

--
-- TOC entry 201 (class 1259 OID 44135)
-- Dependencies: 202 6
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
-- TOC entry 3545 (class 0 OID 0)
-- Dependencies: 201
-- Name: traitements_classiques_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "traitements_classiques_gid_seq" OWNED BY "traitements_classiques"."gid";


--
-- TOC entry 313 (class 1259 OID 45983)
-- Dependencies: 3361 6
-- Name: usagers; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE TABLE "usagers" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "num_ordre" integer DEFAULT 1,
    "type_usagers" character varying(80),
    "facturable" boolean,
    "immeuble_id" integer,
    "nom" character varying(200) NOT NULL,
    "adresse" "text",
    "code_postal" character varying(12),
    "ville_usagers" character varying(200),
    "telephon1" character varying(25),
    "telephon2" character varying(25),
    "mail1" character varying(80),
    "mail2" character varying(80),
    "autre_comm" character varying(80),
    "comments" "text",
    "cree_le" timestamp without time zone,
    "modifie_le" timestamp without time zone,
    "saisie_par" character varying(80)
);


ALTER TABLE "spanc"."usagers" OWNER TO "postgres";

--
-- TOC entry 312 (class 1259 OID 45981)
-- Dependencies: 6 313
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
-- TOC entry 3546 (class 0 OID 0)
-- Dependencies: 312
-- Name: usagers_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "usagers_gid_seq" OWNED BY "usagers"."gid";


--
-- TOC entry 204 (class 1259 OID 44161)
-- Dependencies: 3348 3349 3350 1421 6
-- Name: ventilations; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE TABLE "ventilations" (
    "gid" integer NOT NULL,
    "refdoss" character varying(25) NOT NULL,
    "identif" character varying(100),
    "typ_ventil" character varying(80) NOT NULL,
    "origine" character varying(80),
    "test_fumee" character varying(12),
    "diametre" real,
    "comments" "text",
    "marq_constructeur" character varying(80),
    "annee_pose" integer,
    "poseur" character varying(80),
    "accessible" character varying(25),
    "integrite" character varying(25),
    "photo1" character varying(200),
    "photo2" character varying(200),
    "hauteur" real,
    "taille" real,
    "cree_le" character varying(25),
    "modifie_le" character varying(25),
    "saisie_par" character varying(25),
    "the_geom" "public"."geometry",
    CONSTRAINT "enforce_dims_the_geom" CHECK (("public"."st_ndims"("the_geom") = 2)),
    CONSTRAINT "enforce_geotype_the_geom" CHECK ((("public"."geometrytype"("the_geom") = 'POINT'::"text") OR ("the_geom" IS NULL))),
    CONSTRAINT "enforce_srid_the_geom" CHECK (("public"."st_srid"("the_geom") = 2154))
);


ALTER TABLE "spanc"."ventilations" OWNER TO "postgres";

--
-- TOC entry 203 (class 1259 OID 44159)
-- Dependencies: 204 6
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
-- TOC entry 3547 (class 0 OID 0)
-- Dependencies: 203
-- Name: ventilations_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE "ventilations_gid_seq" OWNED BY "ventilations"."gid";


--
-- TOC entry 3279 (class 2604 OID 41563)
-- Dependencies: 169 170 170
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "alim_aep" ALTER COLUMN "gid" SET DEFAULT "nextval"('"alim_aep_gid_seq"'::"regclass");


--
-- TOC entry 3283 (class 2604 OID 41603)
-- Dependencies: 171 172 172
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "arbres" ALTER COLUMN "gid" SET DEFAULT "nextval"('"arbres_gid_seq"'::"regclass");


--
-- TOC entry 3291 (class 2604 OID 41663)
-- Dependencies: 175 176 176
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "base" ALTER COLUMN "gid" SET DEFAULT "nextval"('"base_gid_seq"'::"regclass");


--
-- TOC entry 3287 (class 2604 OID 41623)
-- Dependencies: 174 173 174
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "canalisations" ALTER COLUMN "gid" SET DEFAULT "nextval"('"canalisations_gid_seq"'::"regclass");


--
-- TOC entry 3274 (class 2604 OID 41465)
-- Dependencies: 167 168 168
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "dossiers" ALTER COLUMN "gid" SET DEFAULT "nextval"('"dossiers_gid_seq"'::"regclass");


--
-- TOC entry 3299 (class 2604 OID 42222)
-- Dependencies: 179 180 180
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "filieres_agreees" ALTER COLUMN "gid" SET DEFAULT "nextval"('"filieres_agreees_gid_seq"'::"regclass");


--
-- TOC entry 3303 (class 2604 OID 42242)
-- Dependencies: 181 182 182
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "haies" ALTER COLUMN "gid" SET DEFAULT "nextval"('"haies_gid_seq"'::"regclass");


--
-- TOC entry 3307 (class 2604 OID 43896)
-- Dependencies: 184 183 184
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "immeubles" ALTER COLUMN "gid" SET DEFAULT "nextval"('"immeubles_gid_seq"'::"regclass");


--
-- TOC entry 3315 (class 2604 OID 43975)
-- Dependencies: 188 187 188
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "infiltrations" ALTER COLUMN "gid" SET DEFAULT "nextval"('"infiltrations_gid_seq"'::"regclass");


--
-- TOC entry 3359 (class 2604 OID 44234)
-- Dependencies: 210 209 210
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "installations" ALTER COLUMN "gid" SET DEFAULT "nextval"('"installations_gid_seq"'::"regclass");


--
-- TOC entry 3311 (class 2604 OID 43936)
-- Dependencies: 186 185 186
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "origines" ALTER COLUMN "gid" SET DEFAULT "nextval"('"origines_gid_seq"'::"regclass");


--
-- TOC entry 3319 (class 2604 OID 43996)
-- Dependencies: 189 190 190
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "pentes" ALTER COLUMN "gid" SET DEFAULT "nextval"('"pentes_gid_seq"'::"regclass");


--
-- TOC entry 3323 (class 2604 OID 44016)
-- Dependencies: 191 192 192
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "pieces" ALTER COLUMN "gid" SET DEFAULT "nextval"('"pieces_gid_seq"'::"regclass");


--
-- TOC entry 3327 (class 2604 OID 44037)
-- Dependencies: 193 194 194
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "pretraitements" ALTER COLUMN "gid" SET DEFAULT "nextval"('"pretraitements_gid_seq"'::"regclass");


--
-- TOC entry 3295 (class 2604 OID 42202)
-- Dependencies: 177 178 178
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "puits_dispersion" ALTER COLUMN "gid" SET DEFAULT "nextval"('"puits_dispersion_gid_seq"'::"regclass");


--
-- TOC entry 3355 (class 2604 OID 44209)
-- Dependencies: 207 208 208
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "puits_eau" ALTER COLUMN "gid" SET DEFAULT "nextval"('"puits_eau_gid_seq"'::"regclass");


--
-- TOC entry 3331 (class 2604 OID 44073)
-- Dependencies: 196 195 196
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "regards" ALTER COLUMN "gid" SET DEFAULT "nextval"('"regards_gid_seq"'::"regclass");


--
-- TOC entry 3335 (class 2604 OID 44093)
-- Dependencies: 198 197 198
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "rejets" ALTER COLUMN "gid" SET DEFAULT "nextval"('"rejets_gid_seq"'::"regclass");


--
-- TOC entry 3351 (class 2604 OID 44184)
-- Dependencies: 206 205 206
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "sondages" ALTER COLUMN "gid" SET DEFAULT "nextval"('"sondages_gid_seq"'::"regclass");


--
-- TOC entry 3339 (class 2604 OID 44119)
-- Dependencies: 200 199 200
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "surfaces_terrain" ALTER COLUMN "gid" SET DEFAULT "nextval"('"surfaces_terrain_gid_seq"'::"regclass");


--
-- TOC entry 3343 (class 2604 OID 44140)
-- Dependencies: 202 201 202
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "traitements_classiques" ALTER COLUMN "gid" SET DEFAULT "nextval"('"traitements_classiques_gid_seq"'::"regclass");


--
-- TOC entry 3360 (class 2604 OID 45986)
-- Dependencies: 313 312 313
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "usagers" ALTER COLUMN "gid" SET DEFAULT "nextval"('"usagers_gid_seq"'::"regclass");


--
-- TOC entry 3347 (class 2604 OID 44164)
-- Dependencies: 203 204 204
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "ventilations" ALTER COLUMN "gid" SET DEFAULT "nextval"('"ventilations_gid_seq"'::"regclass");


--
-- TOC entry 3363 (class 2606 OID 41474)
-- Dependencies: 168 168
-- Name: dossiers_pkey; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "dossiers"
    ADD CONSTRAINT "dossiers_pkey" PRIMARY KEY ("gid");


--
-- TOC entry 3366 (class 2606 OID 41476)
-- Dependencies: 168 168
-- Name: pk_refdoss; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "dossiers"
    ADD CONSTRAINT "pk_refdoss" UNIQUE ("refdoss");


--
-- TOC entry 3470 (class 2606 OID 45993)
-- Dependencies: 313 313
-- Name: pk_usagers; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "usagers"
    ADD CONSTRAINT "pk_usagers" PRIMARY KEY ("gid");


--
-- TOC entry 3371 (class 2606 OID 41571)
-- Dependencies: 170 170
-- Name: pkey_alim_aep; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "alim_aep"
    ADD CONSTRAINT "pkey_alim_aep" PRIMARY KEY ("gid");


--
-- TOC entry 3376 (class 2606 OID 41611)
-- Dependencies: 172 172
-- Name: pkey_arbres; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "arbres"
    ADD CONSTRAINT "pkey_arbres" PRIMARY KEY ("gid");


--
-- TOC entry 3384 (class 2606 OID 41671)
-- Dependencies: 176 176
-- Name: pkey_base; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "base"
    ADD CONSTRAINT "pkey_base" PRIMARY KEY ("gid");


--
-- TOC entry 3381 (class 2606 OID 41631)
-- Dependencies: 174 174
-- Name: pkey_canalisations; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "canalisations"
    ADD CONSTRAINT "pkey_canalisations" PRIMARY KEY ("gid");


--
-- TOC entry 3394 (class 2606 OID 42230)
-- Dependencies: 180 180
-- Name: pkey_filieres_agreees; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "filieres_agreees"
    ADD CONSTRAINT "pkey_filieres_agreees" PRIMARY KEY ("gid");


--
-- TOC entry 3399 (class 2606 OID 42250)
-- Dependencies: 182 182
-- Name: pkey_haies; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "haies"
    ADD CONSTRAINT "pkey_haies" PRIMARY KEY ("gid");


--
-- TOC entry 3404 (class 2606 OID 43904)
-- Dependencies: 184 184
-- Name: pkey_immeubles; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "immeubles"
    ADD CONSTRAINT "pkey_immeubles" PRIMARY KEY ("gid");


--
-- TOC entry 3414 (class 2606 OID 43983)
-- Dependencies: 188 188
-- Name: pkey_infiltrations; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "infiltrations"
    ADD CONSTRAINT "pkey_infiltrations" PRIMARY KEY ("gid");


--
-- TOC entry 3468 (class 2606 OID 44239)
-- Dependencies: 210 210
-- Name: pkey_installations; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "installations"
    ADD CONSTRAINT "pkey_installations" PRIMARY KEY ("gid");


--
-- TOC entry 3409 (class 2606 OID 43944)
-- Dependencies: 186 186
-- Name: pkey_origines; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "origines"
    ADD CONSTRAINT "pkey_origines" PRIMARY KEY ("gid");


--
-- TOC entry 3419 (class 2606 OID 44004)
-- Dependencies: 190 190
-- Name: pkey_pentes; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "pentes"
    ADD CONSTRAINT "pkey_pentes" PRIMARY KEY ("gid");


--
-- TOC entry 3423 (class 2606 OID 44024)
-- Dependencies: 192 192
-- Name: pkey_pieces; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "pieces"
    ADD CONSTRAINT "pkey_pieces" PRIMARY KEY ("gid");


--
-- TOC entry 3428 (class 2606 OID 44045)
-- Dependencies: 194 194
-- Name: pkey_pretraitements; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "pretraitements"
    ADD CONSTRAINT "pkey_pretraitements" PRIMARY KEY ("gid");


--
-- TOC entry 3389 (class 2606 OID 42210)
-- Dependencies: 178 178
-- Name: pkey_puits_dispersion; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "puits_dispersion"
    ADD CONSTRAINT "pkey_puits_dispersion" PRIMARY KEY ("gid");


--
-- TOC entry 3463 (class 2606 OID 44217)
-- Dependencies: 208 208
-- Name: pkey_puits_eau; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "puits_eau"
    ADD CONSTRAINT "pkey_puits_eau" PRIMARY KEY ("gid");


--
-- TOC entry 3433 (class 2606 OID 44081)
-- Dependencies: 196 196
-- Name: pkey_regards; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "regards"
    ADD CONSTRAINT "pkey_regards" PRIMARY KEY ("gid");


--
-- TOC entry 3438 (class 2606 OID 44101)
-- Dependencies: 198 198
-- Name: pkey_rejets; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "rejets"
    ADD CONSTRAINT "pkey_rejets" PRIMARY KEY ("gid");


--
-- TOC entry 3458 (class 2606 OID 44192)
-- Dependencies: 206 206
-- Name: pkey_sondages; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "sondages"
    ADD CONSTRAINT "pkey_sondages" PRIMARY KEY ("gid");


--
-- TOC entry 3443 (class 2606 OID 44127)
-- Dependencies: 200 200
-- Name: pkey_surfaces_terrain; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "surfaces_terrain"
    ADD CONSTRAINT "pkey_surfaces_terrain" PRIMARY KEY ("gid");


--
-- TOC entry 3448 (class 2606 OID 44148)
-- Dependencies: 202 202
-- Name: pkey_traitements_classiques; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "traitements_classiques"
    ADD CONSTRAINT "pkey_traitements_classiques" PRIMARY KEY ("gid");


--
-- TOC entry 3453 (class 2606 OID 44172)
-- Dependencies: 204 204
-- Name: pkey_ventilations; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "ventilations"
    ADD CONSTRAINT "pkey_ventilations" PRIMARY KEY ("gid");


--
-- TOC entry 3367 (class 1259 OID 45916)
-- Dependencies: 170
-- Name: alim_aep_I; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "alim_aep_I" ON "alim_aep" USING "btree" ("refdoss");


--
-- TOC entry 3364 (class 1259 OID 41477)
-- Dependencies: 2657 168
-- Name: dossiers_the_geom_gist; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "dossiers_the_geom_gist" ON "dossiers" USING "gist" ("the_geom");


--
-- TOC entry 3368 (class 1259 OID 41572)
-- Dependencies: 170
-- Name: fki_dossier_alim_aep; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_dossier_alim_aep" ON "alim_aep" USING "btree" ("refdoss");


--
-- TOC entry 3373 (class 1259 OID 41612)
-- Dependencies: 172
-- Name: fki_dossier_arbres; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_dossier_arbres" ON "arbres" USING "btree" ("refdoss");


--
-- TOC entry 3378 (class 1259 OID 41632)
-- Dependencies: 174
-- Name: fki_dossier_canalisations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_dossier_canalisations" ON "canalisations" USING "btree" ("refdoss");


--
-- TOC entry 3391 (class 1259 OID 42231)
-- Dependencies: 180
-- Name: fki_dossier_filieres_agreees; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_dossier_filieres_agreees" ON "filieres_agreees" USING "btree" ("refdoss");


--
-- TOC entry 3396 (class 1259 OID 42251)
-- Dependencies: 182
-- Name: fki_dossier_haies; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_dossier_haies" ON "haies" USING "btree" ("refdoss");


--
-- TOC entry 3401 (class 1259 OID 43905)
-- Dependencies: 184
-- Name: fki_dossier_immeubles; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_dossier_immeubles" ON "immeubles" USING "btree" ("refdoss");


--
-- TOC entry 3411 (class 1259 OID 43984)
-- Dependencies: 188
-- Name: fki_dossier_infiltrations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_dossier_infiltrations" ON "infiltrations" USING "btree" ("refdoss");


--
-- TOC entry 3465 (class 1259 OID 44245)
-- Dependencies: 210
-- Name: fki_dossier_installations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_dossier_installations" ON "installations" USING "btree" ("refdoss");


--
-- TOC entry 3406 (class 1259 OID 43945)
-- Dependencies: 186
-- Name: fki_dossier_origines; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_dossier_origines" ON "origines" USING "btree" ("refdoss");


--
-- TOC entry 3416 (class 1259 OID 44005)
-- Dependencies: 190
-- Name: fki_dossier_pentes; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_dossier_pentes" ON "pentes" USING "btree" ("refdoss");


--
-- TOC entry 3425 (class 1259 OID 44051)
-- Dependencies: 194
-- Name: fki_dossier_pretraitements; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_dossier_pretraitements" ON "pretraitements" USING "btree" ("refdoss");


--
-- TOC entry 3385 (class 1259 OID 44061)
-- Dependencies: 178
-- Name: fki_dossier_puits; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_dossier_puits" ON "puits_dispersion" USING "btree" ("refdoss");


--
-- TOC entry 3386 (class 1259 OID 42211)
-- Dependencies: 178
-- Name: fki_dossier_puits_dispersion; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_dossier_puits_dispersion" ON "puits_dispersion" USING "btree" ("refdoss");


--
-- TOC entry 3460 (class 1259 OID 44223)
-- Dependencies: 208
-- Name: fki_dossier_puits_eau; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_dossier_puits_eau" ON "puits_eau" USING "btree" ("refdoss");


--
-- TOC entry 3430 (class 1259 OID 44082)
-- Dependencies: 196
-- Name: fki_dossier_regards; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_dossier_regards" ON "regards" USING "btree" ("refdoss");


--
-- TOC entry 3435 (class 1259 OID 44107)
-- Dependencies: 198
-- Name: fki_dossier_rejets; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_dossier_rejets" ON "rejets" USING "btree" ("refdoss");


--
-- TOC entry 3455 (class 1259 OID 44198)
-- Dependencies: 206
-- Name: fki_dossier_sondages; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_dossier_sondages" ON "sondages" USING "btree" ("refdoss");


--
-- TOC entry 3440 (class 1259 OID 44128)
-- Dependencies: 200
-- Name: fki_dossier_surfaces_terrain; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_dossier_surfaces_terrain" ON "surfaces_terrain" USING "btree" ("refdoss");


--
-- TOC entry 3445 (class 1259 OID 44154)
-- Dependencies: 202
-- Name: fki_dossier_traitements_classiques; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_dossier_traitements_classiques" ON "traitements_classiques" USING "btree" ("refdoss");


--
-- TOC entry 3450 (class 1259 OID 44173)
-- Dependencies: 204
-- Name: fki_dossier_ventilations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "fki_dossier_ventilations" ON "ventilations" USING "btree" ("refdoss");


--
-- TOC entry 3369 (class 1259 OID 41574)
-- Dependencies: 170
-- Name: idx_refdoss_alim_aep; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "idx_refdoss_alim_aep" ON "alim_aep" USING "btree" ("refdoss");


--
-- TOC entry 3374 (class 1259 OID 41614)
-- Dependencies: 172
-- Name: idx_refdoss_arbres; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "idx_refdoss_arbres" ON "arbres" USING "btree" ("refdoss");


--
-- TOC entry 3379 (class 1259 OID 41634)
-- Dependencies: 174
-- Name: idx_refdoss_canalisations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "idx_refdoss_canalisations" ON "canalisations" USING "btree" ("refdoss");


--
-- TOC entry 3392 (class 1259 OID 42233)
-- Dependencies: 180
-- Name: idx_refdoss_filieres_agreees; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "idx_refdoss_filieres_agreees" ON "filieres_agreees" USING "btree" ("refdoss");


--
-- TOC entry 3397 (class 1259 OID 42253)
-- Dependencies: 182
-- Name: idx_refdoss_haies; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "idx_refdoss_haies" ON "haies" USING "btree" ("refdoss");


--
-- TOC entry 3402 (class 1259 OID 43907)
-- Dependencies: 184
-- Name: idx_refdoss_immeubles; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "idx_refdoss_immeubles" ON "immeubles" USING "btree" ("refdoss");


--
-- TOC entry 3412 (class 1259 OID 43985)
-- Dependencies: 188
-- Name: idx_refdoss_infiltrations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "idx_refdoss_infiltrations" ON "infiltrations" USING "btree" ("refdoss");


--
-- TOC entry 3466 (class 1259 OID 44246)
-- Dependencies: 210
-- Name: idx_refdoss_installations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "idx_refdoss_installations" ON "installations" USING "btree" ("refdoss");


--
-- TOC entry 3407 (class 1259 OID 43947)
-- Dependencies: 186
-- Name: idx_refdoss_origines; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "idx_refdoss_origines" ON "origines" USING "btree" ("refdoss");


--
-- TOC entry 3417 (class 1259 OID 44007)
-- Dependencies: 190
-- Name: idx_refdoss_pentes; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "idx_refdoss_pentes" ON "pentes" USING "btree" ("refdoss");


--
-- TOC entry 3421 (class 1259 OID 44027)
-- Dependencies: 192
-- Name: idx_refdoss_pieces; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "idx_refdoss_pieces" ON "pieces" USING "btree" ("refdoss");


--
-- TOC entry 3426 (class 1259 OID 44053)
-- Dependencies: 194
-- Name: idx_refdoss_pretraitements; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "idx_refdoss_pretraitements" ON "pretraitements" USING "btree" ("refdoss");


--
-- TOC entry 3387 (class 1259 OID 42213)
-- Dependencies: 178
-- Name: idx_refdoss_puits_dispersion; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "idx_refdoss_puits_dispersion" ON "puits_dispersion" USING "btree" ("refdoss");


--
-- TOC entry 3461 (class 1259 OID 44225)
-- Dependencies: 208
-- Name: idx_refdoss_puits_eau; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "idx_refdoss_puits_eau" ON "puits_eau" USING "btree" ("refdoss");


--
-- TOC entry 3431 (class 1259 OID 44084)
-- Dependencies: 196
-- Name: idx_refdoss_regards; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "idx_refdoss_regards" ON "regards" USING "btree" ("refdoss");


--
-- TOC entry 3436 (class 1259 OID 44109)
-- Dependencies: 198
-- Name: idx_refdoss_rejets; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "idx_refdoss_rejets" ON "rejets" USING "btree" ("refdoss");


--
-- TOC entry 3456 (class 1259 OID 44200)
-- Dependencies: 206
-- Name: idx_refdoss_sondages; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "idx_refdoss_sondages" ON "sondages" USING "btree" ("refdoss");


--
-- TOC entry 3441 (class 1259 OID 44130)
-- Dependencies: 200
-- Name: idx_refdoss_surfaces_terrain; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "idx_refdoss_surfaces_terrain" ON "surfaces_terrain" USING "btree" ("refdoss");


--
-- TOC entry 3446 (class 1259 OID 44156)
-- Dependencies: 202
-- Name: idx_refdoss_traitements_classiques; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "idx_refdoss_traitements_classiques" ON "traitements_classiques" USING "btree" ("refdoss");


--
-- TOC entry 3451 (class 1259 OID 44174)
-- Dependencies: 204
-- Name: idx_refdoss_ventilations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "idx_refdoss_ventilations" ON "ventilations" USING "btree" ("refdoss");


--
-- TOC entry 3372 (class 1259 OID 41573)
-- Dependencies: 2657 170
-- Name: the_geom_gist_alim_aep; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "the_geom_gist_alim_aep" ON "alim_aep" USING "gist" ("the_geom");


--
-- TOC entry 3377 (class 1259 OID 41613)
-- Dependencies: 172 2657
-- Name: the_geom_gist_arbres; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "the_geom_gist_arbres" ON "arbres" USING "gist" ("the_geom");


--
-- TOC entry 3382 (class 1259 OID 41633)
-- Dependencies: 174 2657
-- Name: the_geom_gist_canalisations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "the_geom_gist_canalisations" ON "canalisations" USING "gist" ("the_geom");


--
-- TOC entry 3395 (class 1259 OID 42232)
-- Dependencies: 2657 180
-- Name: the_geom_gist_filieres_agreees; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "the_geom_gist_filieres_agreees" ON "filieres_agreees" USING "gist" ("the_geom");


--
-- TOC entry 3400 (class 1259 OID 42252)
-- Dependencies: 2657 182
-- Name: the_geom_gist_haies; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "the_geom_gist_haies" ON "haies" USING "gist" ("the_geom");


--
-- TOC entry 3405 (class 1259 OID 43906)
-- Dependencies: 184 2657
-- Name: the_geom_gist_immeubles; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "the_geom_gist_immeubles" ON "immeubles" USING "gist" ("the_geom");


--
-- TOC entry 3415 (class 1259 OID 43986)
-- Dependencies: 188 2657
-- Name: the_geom_gist_infiltrations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "the_geom_gist_infiltrations" ON "infiltrations" USING "gist" ("the_geom");


--
-- TOC entry 3410 (class 1259 OID 43946)
-- Dependencies: 2657 186
-- Name: the_geom_gist_origines; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "the_geom_gist_origines" ON "origines" USING "gist" ("the_geom");


--
-- TOC entry 3420 (class 1259 OID 44006)
-- Dependencies: 2657 190
-- Name: the_geom_gist_pentes; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "the_geom_gist_pentes" ON "pentes" USING "gist" ("the_geom");


--
-- TOC entry 3424 (class 1259 OID 44026)
-- Dependencies: 192 2657
-- Name: the_geom_gist_pieces; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "the_geom_gist_pieces" ON "pieces" USING "gist" ("the_geom");


--
-- TOC entry 3429 (class 1259 OID 44052)
-- Dependencies: 194 2657
-- Name: the_geom_gist_pretraitements; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "the_geom_gist_pretraitements" ON "pretraitements" USING "gist" ("the_geom");


--
-- TOC entry 3390 (class 1259 OID 42212)
-- Dependencies: 2657 178
-- Name: the_geom_gist_puits_dispersion; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "the_geom_gist_puits_dispersion" ON "puits_dispersion" USING "gist" ("the_geom");


--
-- TOC entry 3464 (class 1259 OID 44224)
-- Dependencies: 208 2657
-- Name: the_geom_gist_puits_eau; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "the_geom_gist_puits_eau" ON "puits_eau" USING "gist" ("the_geom");


--
-- TOC entry 3434 (class 1259 OID 44083)
-- Dependencies: 196 2657
-- Name: the_geom_gist_regards; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "the_geom_gist_regards" ON "regards" USING "gist" ("the_geom");


--
-- TOC entry 3439 (class 1259 OID 44108)
-- Dependencies: 2657 198
-- Name: the_geom_gist_rejets; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "the_geom_gist_rejets" ON "rejets" USING "gist" ("the_geom");


--
-- TOC entry 3459 (class 1259 OID 44199)
-- Dependencies: 206 2657
-- Name: the_geom_gist_sondages; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "the_geom_gist_sondages" ON "sondages" USING "gist" ("the_geom");


--
-- TOC entry 3444 (class 1259 OID 44129)
-- Dependencies: 200 2657
-- Name: the_geom_gist_surfaces_terrain; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "the_geom_gist_surfaces_terrain" ON "surfaces_terrain" USING "gist" ("the_geom");


--
-- TOC entry 3449 (class 1259 OID 44155)
-- Dependencies: 202 2657
-- Name: the_geom_gist_traitements_classiques; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "the_geom_gist_traitements_classiques" ON "traitements_classiques" USING "gist" ("the_geom");


--
-- TOC entry 3454 (class 1259 OID 44175)
-- Dependencies: 2657 204
-- Name: the_geom_gist_ventilations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace: 
--

CREATE INDEX "the_geom_gist_ventilations" ON "ventilations" USING "gist" ("the_geom");


--
-- TOC entry 3481 (class 2620 OID 41479)
-- Dependencies: 168 986
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "dossiers" FOR EACH ROW EXECUTE PROCEDURE "set_cree_le"();


--
-- TOC entry 3483 (class 2620 OID 41576)
-- Dependencies: 986 170
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "alim_aep" FOR EACH ROW EXECUTE PROCEDURE "set_cree_le"();


--
-- TOC entry 3485 (class 2620 OID 41616)
-- Dependencies: 172 986
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "arbres" FOR EACH ROW EXECUTE PROCEDURE "set_cree_le"();


--
-- TOC entry 3487 (class 2620 OID 41636)
-- Dependencies: 986 174
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "canalisations" FOR EACH ROW EXECUTE PROCEDURE "set_cree_le"();


--
-- TOC entry 3489 (class 2620 OID 42215)
-- Dependencies: 986 178
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "puits_dispersion" FOR EACH ROW EXECUTE PROCEDURE "set_cree_le"();


--
-- TOC entry 3491 (class 2620 OID 42235)
-- Dependencies: 986 180
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "filieres_agreees" FOR EACH ROW EXECUTE PROCEDURE "set_cree_le"();


--
-- TOC entry 3493 (class 2620 OID 42255)
-- Dependencies: 182 986
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "haies" FOR EACH ROW EXECUTE PROCEDURE "set_cree_le"();


--
-- TOC entry 3495 (class 2620 OID 43909)
-- Dependencies: 986 184
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "immeubles" FOR EACH ROW EXECUTE PROCEDURE "set_cree_le"();


--
-- TOC entry 3497 (class 2620 OID 43949)
-- Dependencies: 986 186
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "origines" FOR EACH ROW EXECUTE PROCEDURE "set_cree_le"();


--
-- TOC entry 3498 (class 2620 OID 43987)
-- Dependencies: 986 188
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "infiltrations" FOR EACH ROW EXECUTE PROCEDURE "set_cree_le"();


--
-- TOC entry 3501 (class 2620 OID 44009)
-- Dependencies: 986 190
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "pentes" FOR EACH ROW EXECUTE PROCEDURE "set_cree_le"();


--
-- TOC entry 3503 (class 2620 OID 44029)
-- Dependencies: 192 986
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "pieces" FOR EACH ROW EXECUTE PROCEDURE "set_cree_le"();


--
-- TOC entry 3505 (class 2620 OID 44055)
-- Dependencies: 194 986
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "pretraitements" FOR EACH ROW EXECUTE PROCEDURE "set_cree_le"();


--
-- TOC entry 3507 (class 2620 OID 44086)
-- Dependencies: 986 196
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "regards" FOR EACH ROW EXECUTE PROCEDURE "set_cree_le"();


--
-- TOC entry 3509 (class 2620 OID 44111)
-- Dependencies: 986 198
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "rejets" FOR EACH ROW EXECUTE PROCEDURE "set_cree_le"();


--
-- TOC entry 3511 (class 2620 OID 44132)
-- Dependencies: 200 986
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "surfaces_terrain" FOR EACH ROW EXECUTE PROCEDURE "set_cree_le"();


--
-- TOC entry 3513 (class 2620 OID 44158)
-- Dependencies: 202 986
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "traitements_classiques" FOR EACH ROW EXECUTE PROCEDURE "set_cree_le"();


--
-- TOC entry 3514 (class 2620 OID 44176)
-- Dependencies: 204 986
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "ventilations" FOR EACH ROW EXECUTE PROCEDURE "set_cree_le"();


--
-- TOC entry 3517 (class 2620 OID 44202)
-- Dependencies: 986 206
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "sondages" FOR EACH ROW EXECUTE PROCEDURE "set_cree_le"();


--
-- TOC entry 3519 (class 2620 OID 44227)
-- Dependencies: 208 986
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "puits_eau" FOR EACH ROW EXECUTE PROCEDURE "set_cree_le"();


--
-- TOC entry 3521 (class 2620 OID 44248)
-- Dependencies: 210 986
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "installations" FOR EACH ROW EXECUTE PROCEDURE "set_cree_le"();


--
-- TOC entry 3522 (class 2620 OID 45991)
-- Dependencies: 986 313
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "date_cree_le" BEFORE INSERT ON "usagers" FOR EACH ROW EXECUTE PROCEDURE "set_cree_le"();


--
-- TOC entry 3480 (class 2620 OID 41478)
-- Dependencies: 168 1109
-- Name: mis_a_jour_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "mis_a_jour_le" BEFORE INSERT OR UPDATE ON "dossiers" FOR EACH ROW EXECUTE PROCEDURE "set_modifie"();


--
-- TOC entry 3482 (class 2620 OID 41575)
-- Dependencies: 170 1109
-- Name: mis_a_jour_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "mis_a_jour_le" BEFORE INSERT OR UPDATE ON "alim_aep" FOR EACH ROW EXECUTE PROCEDURE "set_modifie"();


--
-- TOC entry 3484 (class 2620 OID 41615)
-- Dependencies: 1109 172
-- Name: mis_a_jour_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "mis_a_jour_le" BEFORE INSERT OR UPDATE ON "arbres" FOR EACH ROW EXECUTE PROCEDURE "set_modifie"();


--
-- TOC entry 3486 (class 2620 OID 41635)
-- Dependencies: 174 1109
-- Name: mis_a_jour_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "mis_a_jour_le" BEFORE INSERT OR UPDATE ON "canalisations" FOR EACH ROW EXECUTE PROCEDURE "set_modifie"();


--
-- TOC entry 3488 (class 2620 OID 42214)
-- Dependencies: 178 1109
-- Name: mis_a_jour_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "mis_a_jour_le" BEFORE INSERT OR UPDATE ON "puits_dispersion" FOR EACH ROW EXECUTE PROCEDURE "set_modifie"();


--
-- TOC entry 3490 (class 2620 OID 42234)
-- Dependencies: 1109 180
-- Name: mis_a_jour_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "mis_a_jour_le" BEFORE INSERT OR UPDATE ON "filieres_agreees" FOR EACH ROW EXECUTE PROCEDURE "set_modifie"();


--
-- TOC entry 3492 (class 2620 OID 42254)
-- Dependencies: 1109 182
-- Name: mis_a_jour_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "mis_a_jour_le" BEFORE INSERT OR UPDATE ON "haies" FOR EACH ROW EXECUTE PROCEDURE "set_modifie"();


--
-- TOC entry 3494 (class 2620 OID 43908)
-- Dependencies: 1109 184
-- Name: mis_a_jour_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "mis_a_jour_le" BEFORE INSERT OR UPDATE ON "immeubles" FOR EACH ROW EXECUTE PROCEDURE "set_modifie"();


--
-- TOC entry 3496 (class 2620 OID 43948)
-- Dependencies: 186 1109
-- Name: mis_a_jour_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "mis_a_jour_le" BEFORE INSERT OR UPDATE ON "origines" FOR EACH ROW EXECUTE PROCEDURE "set_modifie"();


--
-- TOC entry 3499 (class 2620 OID 43988)
-- Dependencies: 1109 188
-- Name: mis_a_jour_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "mis_a_jour_le" BEFORE INSERT OR UPDATE ON "infiltrations" FOR EACH ROW EXECUTE PROCEDURE "set_modifie"();


--
-- TOC entry 3500 (class 2620 OID 44008)
-- Dependencies: 190 1109
-- Name: mis_a_jour_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "mis_a_jour_le" BEFORE INSERT OR UPDATE ON "pentes" FOR EACH ROW EXECUTE PROCEDURE "set_modifie"();


--
-- TOC entry 3502 (class 2620 OID 44028)
-- Dependencies: 192 1109
-- Name: mis_a_jour_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "mis_a_jour_le" BEFORE INSERT OR UPDATE ON "pieces" FOR EACH ROW EXECUTE PROCEDURE "set_modifie"();


--
-- TOC entry 3504 (class 2620 OID 44054)
-- Dependencies: 1109 194
-- Name: mis_a_jour_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "mis_a_jour_le" BEFORE INSERT OR UPDATE ON "pretraitements" FOR EACH ROW EXECUTE PROCEDURE "set_modifie"();


--
-- TOC entry 3506 (class 2620 OID 44085)
-- Dependencies: 1109 196
-- Name: mis_a_jour_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "mis_a_jour_le" BEFORE INSERT OR UPDATE ON "regards" FOR EACH ROW EXECUTE PROCEDURE "set_modifie"();


--
-- TOC entry 3508 (class 2620 OID 44110)
-- Dependencies: 198 1109
-- Name: mis_a_jour_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "mis_a_jour_le" BEFORE INSERT OR UPDATE ON "rejets" FOR EACH ROW EXECUTE PROCEDURE "set_modifie"();


--
-- TOC entry 3510 (class 2620 OID 44131)
-- Dependencies: 1109 200
-- Name: mis_a_jour_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "mis_a_jour_le" BEFORE INSERT OR UPDATE ON "surfaces_terrain" FOR EACH ROW EXECUTE PROCEDURE "set_modifie"();


--
-- TOC entry 3512 (class 2620 OID 44157)
-- Dependencies: 1109 202
-- Name: mis_a_jour_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "mis_a_jour_le" BEFORE INSERT OR UPDATE ON "traitements_classiques" FOR EACH ROW EXECUTE PROCEDURE "set_modifie"();


--
-- TOC entry 3515 (class 2620 OID 44177)
-- Dependencies: 1109 204
-- Name: mis_a_jour_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "mis_a_jour_le" BEFORE INSERT OR UPDATE ON "ventilations" FOR EACH ROW EXECUTE PROCEDURE "set_modifie"();


--
-- TOC entry 3516 (class 2620 OID 44201)
-- Dependencies: 206 1109
-- Name: mis_a_jour_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "mis_a_jour_le" BEFORE INSERT OR UPDATE ON "sondages" FOR EACH ROW EXECUTE PROCEDURE "set_modifie"();


--
-- TOC entry 3518 (class 2620 OID 44226)
-- Dependencies: 1109 208
-- Name: mis_a_jour_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "mis_a_jour_le" BEFORE INSERT OR UPDATE ON "puits_eau" FOR EACH ROW EXECUTE PROCEDURE "set_modifie"();


--
-- TOC entry 3520 (class 2620 OID 44247)
-- Dependencies: 210 1109
-- Name: mis_a_jour_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER "mis_a_jour_le" BEFORE INSERT OR UPDATE ON "installations" FOR EACH ROW EXECUTE PROCEDURE "set_modifie"();


--
-- TOC entry 3472 (class 2606 OID 45917)
-- Dependencies: 3403 184 192
-- Name: FK1_pieces_immeubles; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "pieces"
    ADD CONSTRAINT "FK1_pieces_immeubles" FOREIGN KEY ("immeuble_gid") REFERENCES "immeubles"("gid");


--
-- TOC entry 3478 (class 2606 OID 44240)
-- Dependencies: 210 168 3365
-- Name: fk_dossier_installations; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "installations"
    ADD CONSTRAINT "fk_dossier_installations" FOREIGN KEY ("refdoss") REFERENCES "dossiers"("refdoss");


--
-- TOC entry 3471 (class 2606 OID 44056)
-- Dependencies: 3365 178 168
-- Name: fk_dossier_puits; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "puits_dispersion"
    ADD CONSTRAINT "fk_dossier_puits" FOREIGN KEY ("refdoss") REFERENCES "dossiers"("refdoss");


--
-- TOC entry 3477 (class 2606 OID 44218)
-- Dependencies: 208 3365 168
-- Name: fk_dossier_puits_eau; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "puits_eau"
    ADD CONSTRAINT "fk_dossier_puits_eau" FOREIGN KEY ("refdoss") REFERENCES "dossiers"("refdoss");


--
-- TOC entry 3474 (class 2606 OID 44102)
-- Dependencies: 198 3365 168
-- Name: fk_dossier_rejets; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "rejets"
    ADD CONSTRAINT "fk_dossier_rejets" FOREIGN KEY ("refdoss") REFERENCES "dossiers"("refdoss");


--
-- TOC entry 3476 (class 2606 OID 44193)
-- Dependencies: 3365 206 168
-- Name: fk_dossier_sondages; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "sondages"
    ADD CONSTRAINT "fk_dossier_sondages" FOREIGN KEY ("refdoss") REFERENCES "dossiers"("refdoss");


--
-- TOC entry 3475 (class 2606 OID 44149)
-- Dependencies: 3365 202 168
-- Name: fk_dossier_traitements_classiques; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "traitements_classiques"
    ADD CONSTRAINT "fk_dossier_traitements_classiques" FOREIGN KEY ("refdoss") REFERENCES "dossiers"("refdoss");


--
-- TOC entry 3479 (class 2606 OID 45994)
-- Dependencies: 3403 184 313
-- Name: fk_pieces; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "usagers"
    ADD CONSTRAINT "fk_pieces" FOREIGN KEY ("immeuble_id") REFERENCES "immeubles"("gid");


--
-- TOC entry 3473 (class 2606 OID 44249)
-- Dependencies: 3365 194 168
-- Name: pretraitements_refdoss_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY "pretraitements"
    ADD CONSTRAINT "pretraitements_refdoss_fkey" FOREIGN KEY ("refdoss") REFERENCES "dossiers"("refdoss");


-- Completed on 2012-06-06 14:06:27 CEST

--
-- PostgreSQL database dump complete
--

