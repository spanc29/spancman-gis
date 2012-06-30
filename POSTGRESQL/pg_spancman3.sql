--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.4
-- Dumped by pg_dump version 9.1.4
-- Started on 2012-06-17 22:42:18 CEST

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 6 (class 2615 OID 28928)
-- Name: spanc; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA spanc;


ALTER SCHEMA spanc OWNER TO postgres;

SET search_path = spanc, pg_catalog;

--
-- TOC entry 894 (class 1255 OID 41458)
-- Dependencies: 1491 6
-- Name: set_cree(); Type: FUNCTION; Schema: spanc; Owner: postgres
--

CREATE FUNCTION set_cree() RETURNS trigger
    LANGUAGE plpgsql IMMUTABLE
    AS $$
BEGIN
NEW.cree_le = LOCALTIMESTAMP(0);
RETURN NEW;
END;
$$;


ALTER FUNCTION spanc.set_cree() OWNER TO postgres;

--
-- TOC entry 1017 (class 1255 OID 46329)
-- Dependencies: 6 1491
-- Name: set_modif(); Type: FUNCTION; Schema: spanc; Owner: postgres
--

CREATE FUNCTION set_modif() RETURNS trigger
    LANGUAGE plpgsql IMMUTABLE
    AS $$
BEGIN
NEW.modifie_le = LOCALTIMESTAMP(0);
RETURN NEW;
END;
$$;


ALTER FUNCTION spanc.set_modif() OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 215 (class 1259 OID 46315)
-- Dependencies: 3054 3055 3056 1329 6
-- Name: alim_aep; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE alim_aep (
    gid integer NOT NULL,
    refdoss character varying(25),
    immeuble_gid integer,
    identif character varying(80),
    typ_alim character varying(80),
    reference character varying(80),
    conso_moyenne integer,
    comments text,
    marq_constructeur character varying(80),
    annee_pose integer,
    poseur character varying(80),
    photo character varying(200),
    docu2 character varying(200),
    profondeur real,
    taille real,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


ALTER TABLE spanc.alim_aep OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 46313)
-- Dependencies: 215 6
-- Name: alim_aep_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE alim_aep_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.alim_aep_gid_seq OWNER TO postgres;

--
-- TOC entry 3281 (class 0 OID 0)
-- Dependencies: 214
-- Name: alim_aep_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE alim_aep_gid_seq OWNED BY alim_aep.gid;


--
-- TOC entry 3282 (class 0 OID 0)
-- Dependencies: 214
-- Name: alim_aep_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('alim_aep_gid_seq', 1, false);


--
-- TOC entry 171 (class 1259 OID 41600)
-- Dependencies: 2975 2976 2977 1329 6
-- Name: arbres; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE arbres (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    identif character varying(80),
    type_arbre character varying(80),
    a_couper boolean,
    comments text,
    annee_pose integer,
    photo character varying(200),
    docu2 character varying(200),
    largeur real,
    hauteur real,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


ALTER TABLE spanc.arbres OWNER TO postgres;

--
-- TOC entry 170 (class 1259 OID 41598)
-- Dependencies: 6 171
-- Name: arbres_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE arbres_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.arbres_gid_seq OWNER TO postgres;

--
-- TOC entry 3283 (class 0 OID 0)
-- Dependencies: 170
-- Name: arbres_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE arbres_gid_seq OWNED BY arbres.gid;


--
-- TOC entry 3284 (class 0 OID 0)
-- Dependencies: 170
-- Name: arbres_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('arbres_gid_seq', 1, false);


--
-- TOC entry 175 (class 1259 OID 41660)
-- Dependencies: 2983 2984 2985 1329 6
-- Name: base; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE base (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    identif character varying(80),
    type_entite character varying(80),
    comments text,
    marq_constructeur character varying(80),
    annee_pose integer,
    poseur character varying(80),
    renseignements character varying(80),
    accessible character varying(80),
    integrite character varying(80),
    proprete character varying(80),
    securite character varying(80),
    ecoulement character varying(80),
    photo character varying(200),
    docu2 character varying(200),
    longueur real,
    largeur real,
    haut_prof real,
    angle real,
    taille real,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


ALTER TABLE spanc.base OWNER TO postgres;

--
-- TOC entry 174 (class 1259 OID 41658)
-- Dependencies: 6 175
-- Name: base_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE base_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.base_gid_seq OWNER TO postgres;

--
-- TOC entry 3285 (class 0 OID 0)
-- Dependencies: 174
-- Name: base_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE base_gid_seq OWNED BY base.gid;


--
-- TOC entry 3286 (class 0 OID 0)
-- Dependencies: 174
-- Name: base_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('base_gid_seq', 1, true);


--
-- TOC entry 173 (class 1259 OID 41620)
-- Dependencies: 2979 2980 2981 1329 6
-- Name: canalisations; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE canalisations (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    install_gid integer,
    identif character varying(80),
    type_eau character varying(80),
    materiau character varying(80),
    diametre integer DEFAULT 100,
    gravitaire character varying(3),
    comments text,
    annee_pose integer,
    poseur character varying(80),
    integrite character varying(80),
    proprete character varying(80),
    ecoulement character varying(80),
    photo character varying(200),
    docu2 character varying(200),
    longueur real,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'MULTILINESTRING'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


ALTER TABLE spanc.canalisations OWNER TO postgres;

--
-- TOC entry 172 (class 1259 OID 41618)
-- Dependencies: 173 6
-- Name: canalisations_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE canalisations_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.canalisations_gid_seq OWNER TO postgres;

--
-- TOC entry 3287 (class 0 OID 0)
-- Dependencies: 172
-- Name: canalisations_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE canalisations_gid_seq OWNED BY canalisations.gid;


--
-- TOC entry 3288 (class 0 OID 0)
-- Dependencies: 172
-- Name: canalisations_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('canalisations_gid_seq', 1, true);


--
-- TOC entry 211 (class 1259 OID 46192)
-- Dependencies: 3052 6
-- Name: cont_conception; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE cont_conception (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    install_gid integer,
    date_controle date,
    technicien_controle character varying(80),
    bureau_etude character varying(80),
    permis boolean,
    num_urbanisme character varying(80),
    dossier_declaration boolean,
    obs_dossier_declaration character varying(255),
    plan_situation boolean,
    obs_plan_situation character varying(255),
    plan_projet boolean,
    obs_plan_projet character varying(255),
    plan_interieur boolean,
    obs_plan_interieur character varying(255),
    etude_pedol boolean,
    obs_etude_pedol character varying(255),
    conclusion character varying(12) DEFAULT 'conforme'::character varying NOT NULL,
    document1 character varying(200),
    document2 character varying(200),
    comments text,
    comments_interne text,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25)
);


ALTER TABLE spanc.cont_conception OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 46190)
-- Dependencies: 211 6
-- Name: cont_conception_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE cont_conception_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.cont_conception_gid_seq OWNER TO postgres;

--
-- TOC entry 3289 (class 0 OID 0)
-- Dependencies: 210
-- Name: cont_conception_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE cont_conception_gid_seq OWNED BY cont_conception.gid;


--
-- TOC entry 3290 (class 0 OID 0)
-- Dependencies: 210
-- Name: cont_conception_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('cont_conception_gid_seq', 1, false);


--
-- TOC entry 209 (class 1259 OID 46162)
-- Dependencies: 3050 6
-- Name: cont_periodiques; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE cont_periodiques (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    install_gid integer,
    date_controle date,
    meteo character varying(120),
    vente boolean,
    date_acte_authentique date,
    technicien_controle character varying(80),
    personne_presente character varying(80),
    risque_pollution boolean,
    observation_pollution text,
    danger_sante boolean,
    observation_danger text,
    cas_c boolean,
    observation_cas_c text,
    conformite character varying(12) DEFAULT 'non conforme'::character varying NOT NULL,
    recommandations text,
    liste_travaux text,
    date_echeance date,
    date_prochain_controle date,
    document1 character varying(200),
    document2 character varying(200),
    comments text,
    comments_interne text,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25)
);


ALTER TABLE spanc.cont_periodiques OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 46160)
-- Dependencies: 6 209
-- Name: cont_periodiques_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE cont_periodiques_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.cont_periodiques_gid_seq OWNER TO postgres;

--
-- TOC entry 3291 (class 0 OID 0)
-- Dependencies: 208
-- Name: cont_periodiques_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE cont_periodiques_gid_seq OWNED BY cont_periodiques.gid;


--
-- TOC entry 3292 (class 0 OID 0)
-- Dependencies: 208
-- Name: cont_periodiques_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('cont_periodiques_gid_seq', 1, true);


--
-- TOC entry 169 (class 1259 OID 41462)
-- Dependencies: 2970 2971 2972 2973 6 1329
-- Name: dossiers; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE dossiers (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    archivage character varying(80),
    etat character varying(80) DEFAULT 'en cours'::character varying,
    comments text,
    zrs character varying(50),
    zaee character varying(50),
    aut_zone character varying(100),
    secteur character varying(80),
    commune_id integer,
    photo character varying(200),
    docu2 character varying(200),
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


ALTER TABLE spanc.dossiers OWNER TO postgres;

--
-- TOC entry 168 (class 1259 OID 41460)
-- Dependencies: 169 6
-- Name: dossiers_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE dossiers_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.dossiers_gid_seq OWNER TO postgres;

--
-- TOC entry 3293 (class 0 OID 0)
-- Dependencies: 168
-- Name: dossiers_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE dossiers_gid_seq OWNED BY dossiers.gid;


--
-- TOC entry 3294 (class 0 OID 0)
-- Dependencies: 168
-- Name: dossiers_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('dossiers_gid_seq', 1, true);


--
-- TOC entry 212 (class 1259 OID 46221)
-- Dependencies: 6
-- Name: entretiens; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE entretiens (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    ouvrage_entretenu character varying(80),
    ouvrage_gid integer,
    type_entretien character varying(80),
    date_entretien date,
    bon_vidange boolean,
    prestataire character varying(80),
    agent_prestataire character varying(80),
    ref_vehicule character varying(80),
    volume_boues real,
    destination_boues character varying(100),
    comments text,
    photo character varying(200),
    docu2 character varying(200),
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(80)
);


ALTER TABLE spanc.entretiens OWNER TO postgres;

--
-- TOC entry 179 (class 1259 OID 42219)
-- Dependencies: 2991 2992 2993 6 1329
-- Name: filieres_agreees; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE filieres_agreees (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    install_gid integer,
    identif character varying(80),
    typ_filiere character varying(80),
    num_agrement character varying(15),
    marq_constructeur character varying(80),
    modele character varying(80),
    nb_eq_hab integer DEFAULT 3,
    doc_constructeur character varying(200),
    typ_cuve character varying(80),
    comments text,
    annee_pose integer,
    poseur character varying(80),
    renseignements character varying(80),
    accessible character varying(80),
    integrite character varying(80),
    proprete character varying(80),
    securite character varying(80),
    ecoulement character varying(80),
    photo character varying(200),
    docu2 character varying(200),
    longueur real,
    largeur real,
    haut_prof real,
    angle real,
    taille real,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


ALTER TABLE spanc.filieres_agreees OWNER TO postgres;

--
-- TOC entry 178 (class 1259 OID 42217)
-- Dependencies: 6 179
-- Name: filieres_agreees_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE filieres_agreees_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.filieres_agreees_gid_seq OWNER TO postgres;

--
-- TOC entry 3295 (class 0 OID 0)
-- Dependencies: 178
-- Name: filieres_agreees_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE filieres_agreees_gid_seq OWNED BY filieres_agreees.gid;


--
-- TOC entry 3296 (class 0 OID 0)
-- Dependencies: 178
-- Name: filieres_agreees_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('filieres_agreees_gid_seq', 1, false);


--
-- TOC entry 181 (class 1259 OID 42239)
-- Dependencies: 2995 2996 2997 1329 6
-- Name: haies; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE haies (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    identif character varying(80),
    type_haie character varying(80),
    longueur real,
    largeur real,
    hauteur real,
    comments text,
    annee_pose integer,
    poseur character varying(80),
    renseignements character varying(80),
    photo character varying(200),
    docu2 character varying(200),
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


ALTER TABLE spanc.haies OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 42237)
-- Dependencies: 6 181
-- Name: haies_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE haies_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.haies_gid_seq OWNER TO postgres;

--
-- TOC entry 3297 (class 0 OID 0)
-- Dependencies: 180
-- Name: haies_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE haies_gid_seq OWNED BY haies.gid;


--
-- TOC entry 3298 (class 0 OID 0)
-- Dependencies: 180
-- Name: haies_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('haies_gid_seq', 1, false);


--
-- TOC entry 183 (class 1259 OID 43893)
-- Dependencies: 2999 3000 3001 6 1329
-- Name: immeubles; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE immeubles (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    identif character varying(80),
    type_habitat character varying(80),
    type character varying(25),
    tx_occupation character varying(80),
    nb_pp integer,
    an_construction integer,
    an_rehabilitation integer,
    date_acte_authentique integer,
    comments text,
    renseignements character varying(80),
    photo character varying(200),
    docu2 character varying(200),
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


ALTER TABLE spanc.immeubles OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 43891)
-- Dependencies: 6 183
-- Name: immeubles_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE immeubles_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.immeubles_gid_seq OWNER TO postgres;

--
-- TOC entry 3299 (class 0 OID 0)
-- Dependencies: 182
-- Name: immeubles_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE immeubles_gid_seq OWNED BY immeubles.gid;


--
-- TOC entry 3300 (class 0 OID 0)
-- Dependencies: 182
-- Name: immeubles_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('immeubles_gid_seq', 1, true);


--
-- TOC entry 187 (class 1259 OID 43972)
-- Dependencies: 3007 3008 3009 1329 6
-- Name: infiltrations; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE infiltrations (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    install_gid integer,
    identif character varying(80),
    type_infiltration character varying(80),
    longueur real,
    largeur real,
    profondeur real,
    surface real,
    comments text,
    marq_constructeur character varying(80),
    annee_pose integer,
    poseur character varying(80),
    renseignements character varying(80),
    accessible character varying(80),
    integrite character varying(80),
    proprete character varying(80),
    securite character varying(80),
    ecoulement character varying(80),
    photo character varying(200),
    docu2 character varying(200),
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'MULTIPOLYGON'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


ALTER TABLE spanc.infiltrations OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 43970)
-- Dependencies: 187 6
-- Name: infiltrations_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE infiltrations_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.infiltrations_gid_seq OWNER TO postgres;

--
-- TOC entry 3301 (class 0 OID 0)
-- Dependencies: 186
-- Name: infiltrations_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE infiltrations_gid_seq OWNED BY infiltrations.gid;


--
-- TOC entry 3302 (class 0 OID 0)
-- Dependencies: 186
-- Name: infiltrations_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('infiltrations_gid_seq', 1, false);


--
-- TOC entry 217 (class 1259 OID 46370)
-- Dependencies: 3058 3059 3060 1329 6
-- Name: installations; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE installations (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    identif character varying(80),
    type_installations character varying(80),
    comments text,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


ALTER TABLE spanc.installations OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 46368)
-- Dependencies: 217 6
-- Name: installations_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE installations_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.installations_gid_seq OWNER TO postgres;

--
-- TOC entry 3303 (class 0 OID 0)
-- Dependencies: 216
-- Name: installations_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE installations_gid_seq OWNED BY installations.gid;


--
-- TOC entry 3304 (class 0 OID 0)
-- Dependencies: 216
-- Name: installations_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('installations_gid_seq', 1, true);


--
-- TOC entry 185 (class 1259 OID 43933)
-- Dependencies: 3003 3004 3005 6 1329
-- Name: origines; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE origines (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    identif character varying(80),
    typ_origine character varying(80),
    trace_fluo character varying(80),
    ecoulement character varying(80),
    comments text,
    renseignements character varying(80),
    photo character varying(200),
    docu2 character varying(200),
    angle real,
    taille real,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


ALTER TABLE spanc.origines OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 43931)
-- Dependencies: 6 185
-- Name: origines_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE origines_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.origines_gid_seq OWNER TO postgres;

--
-- TOC entry 3305 (class 0 OID 0)
-- Dependencies: 184
-- Name: origines_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE origines_gid_seq OWNED BY origines.gid;


--
-- TOC entry 3306 (class 0 OID 0)
-- Dependencies: 184
-- Name: origines_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('origines_gid_seq', 1, false);


--
-- TOC entry 189 (class 1259 OID 43993)
-- Dependencies: 3011 3012 3013 1329 6
-- Name: pentes; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE pentes (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    pente real,
    longueur real,
    comments text,
    renseignements character varying(80),
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'MULTILINESTRING'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


ALTER TABLE spanc.pentes OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 43991)
-- Dependencies: 6 189
-- Name: pentes_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE pentes_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.pentes_gid_seq OWNER TO postgres;

--
-- TOC entry 3307 (class 0 OID 0)
-- Dependencies: 188
-- Name: pentes_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE pentes_gid_seq OWNED BY pentes.gid;


--
-- TOC entry 3308 (class 0 OID 0)
-- Dependencies: 188
-- Name: pentes_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('pentes_gid_seq', 1, false);


--
-- TOC entry 191 (class 1259 OID 44013)
-- Dependencies: 3015 3016 3017 1329 6
-- Name: pieces; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE pieces (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    immeuble_gid integer NOT NULL,
    identif character varying(80),
    piece character varying(80),
    etage integer DEFAULT 0,
    est_pp integer DEFAULT 1,
    genere_eu character varying(5),
    surface real,
    comments text,
    renseignements character varying(80),
    angle real,
    taille real,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


ALTER TABLE spanc.pieces OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 44011)
-- Dependencies: 6 191
-- Name: pieces_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE pieces_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.pieces_gid_seq OWNER TO postgres;

--
-- TOC entry 3309 (class 0 OID 0)
-- Dependencies: 190
-- Name: pieces_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE pieces_gid_seq OWNED BY pieces.gid;


--
-- TOC entry 3310 (class 0 OID 0)
-- Dependencies: 190
-- Name: pieces_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('pieces_gid_seq', 1, false);


--
-- TOC entry 207 (class 1259 OID 46121)
-- Dependencies: 3044 3046 3047 3048 6 1329
-- Name: pompages; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE pompages (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    install_gid integer,
    identif character varying(80),
    type_pompage character varying(80),
    marq_bache character varying(80),
    volume_bache integer,
    profondeur real,
    hmt real,
    nb_pompe integer DEFAULT 1,
    caract_pompe text,
    comments text,
    annee_pose integer,
    poseur character varying(80),
    renseignements character varying(80),
    accessible character varying(80),
    integrite character varying(80),
    proprete character varying(80),
    securite character varying(80),
    ecoulement character varying(80),
    photo character varying(200),
    docu2 character varying(200),
    angle real,
    taille real,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


ALTER TABLE spanc.pompages OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 46119)
-- Dependencies: 6 207
-- Name: pompages_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE pompages_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.pompages_gid_seq OWNER TO postgres;

--
-- TOC entry 3311 (class 0 OID 0)
-- Dependencies: 206
-- Name: pompages_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE pompages_gid_seq OWNED BY pompages.gid;


--
-- TOC entry 3312 (class 0 OID 0)
-- Dependencies: 206
-- Name: pompages_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('pompages_gid_seq', 1, false);


--
-- TOC entry 219 (class 1259 OID 46396)
-- Dependencies: 3062 3063 3064 6 1329
-- Name: pretraitements; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE pretraitements (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    install_gid integer,
    identif character varying(80),
    type_pretr character varying(80),
    volume integer DEFAULT 3000,
    nb_acces integer DEFAULT 2,
    origine character varying(25),
    sortie character varying(25),
    comments text,
    marq_constructeur character varying(80),
    annee_pose integer,
    poseur character varying(80),
    renseignements character varying(80),
    accessible character varying(80),
    integrite character varying(80),
    proprete character varying(80),
    securite character varying(80),
    ecoulement character varying(80),
    photo character varying(200),
    docu2 character varying(200),
    longueur real,
    largeur real,
    haut_prof real,
    angle real,
    taille real,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


ALTER TABLE spanc.pretraitements OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 46420)
-- Dependencies: 3066 3067 3068 1329 6
-- Name: puits_d_eau; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE puits_d_eau (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    identif character varying(80),
    type_puits character varying(80),
    utilisation character varying(80),
    declare boolean,
    num_declaration character varying(80),
    profondeur real,
    niveau_haut real,
    hauteur_nappe real,
    date_haut_nappe date,
    niveau_bas real,
    comments text,
    annee_pose integer,
    renseignements character varying(80),
    photo character varying(200),
    docu2 character varying(200),
    angle real,
    taille real,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


ALTER TABLE spanc.puits_d_eau OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 46418)
-- Dependencies: 221 6
-- Name: puits_d_eau_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE puits_d_eau_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.puits_d_eau_gid_seq OWNER TO postgres;

--
-- TOC entry 3313 (class 0 OID 0)
-- Dependencies: 220
-- Name: puits_d_eau_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE puits_d_eau_gid_seq OWNED BY puits_d_eau.gid;


--
-- TOC entry 3314 (class 0 OID 0)
-- Dependencies: 220
-- Name: puits_d_eau_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('puits_d_eau_gid_seq', 1, true);


--
-- TOC entry 177 (class 1259 OID 42199)
-- Dependencies: 2987 2988 2989 6 1329
-- Name: puits_dispersion; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE puits_dispersion (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    install_gid integer,
    identif character varying(80),
    typ_dispr character varying(80),
    autorisation boolean,
    ref_autorisation character varying(80),
    comments text,
    annee_pose integer,
    poseur character varying(80),
    renseignements character varying(80),
    accessible character varying(80),
    integrite character varying(80),
    proprete character varying(80),
    securite character varying(80),
    ecoulement character varying(80),
    photo character varying(200),
    docu2 character varying(200),
    longueur real,
    largeur real,
    profondeur real,
    angle real,
    taille real,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


ALTER TABLE spanc.puits_dispersion OWNER TO postgres;

--
-- TOC entry 176 (class 1259 OID 42197)
-- Dependencies: 177 6
-- Name: puits_dispersion_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE puits_dispersion_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.puits_dispersion_gid_seq OWNER TO postgres;

--
-- TOC entry 3315 (class 0 OID 0)
-- Dependencies: 176
-- Name: puits_dispersion_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE puits_dispersion_gid_seq OWNED BY puits_dispersion.gid;


--
-- TOC entry 3316 (class 0 OID 0)
-- Dependencies: 176
-- Name: puits_dispersion_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('puits_dispersion_gid_seq', 1, true);


--
-- TOC entry 193 (class 1259 OID 44070)
-- Dependencies: 3019 3020 3021 1329 6
-- Name: regards; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE regards (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    install_gid integer,
    identif character varying(80),
    typ_regard character varying(80),
    materiau character varying(80),
    forme character varying(80),
    nb_entree integer DEFAULT 1,
    nb_sortie integer DEFAULT 1,
    longueur real,
    largeur real,
    profondeur real,
    comments text,
    marq_constructeur character varying(80),
    annee_pose integer,
    poseur character varying(80),
    renseignements character varying(80),
    accessible character varying(80),
    integrite character varying(80),
    proprete character varying(80),
    securite character varying(80),
    ecoulement character varying(80),
    photo character varying(200),
    docu2 character varying(200),
    angle real,
    taille real,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


ALTER TABLE spanc.regards OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 44068)
-- Dependencies: 193 6
-- Name: regards_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE regards_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.regards_gid_seq OWNER TO postgres;

--
-- TOC entry 3317 (class 0 OID 0)
-- Dependencies: 192
-- Name: regards_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE regards_gid_seq OWNED BY regards.gid;


--
-- TOC entry 3318 (class 0 OID 0)
-- Dependencies: 192
-- Name: regards_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('regards_gid_seq', 1, true);


--
-- TOC entry 195 (class 1259 OID 44090)
-- Dependencies: 3023 3024 3025 1329 6
-- Name: rejets; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE rejets (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    install_gid integer,
    identif character varying(80),
    type_rejet character varying(80),
    autorisation character varying(12),
    ref_autorisation character varying(80),
    comments text,
    marq_constructeur character varying(80),
    annee_pose integer,
    poseur character varying(80),
    renseignements character varying(80),
    accessible character varying(80),
    integrite character varying(80),
    proprete character varying(80),
    securite character varying(80),
    ecoulement character varying(80),
    photo character varying(200),
    docu2 character varying(200),
    haut_prof real,
    angle real,
    taille real,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


ALTER TABLE spanc.rejets OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 44088)
-- Dependencies: 195 6
-- Name: rejets_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE rejets_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.rejets_gid_seq OWNER TO postgres;

--
-- TOC entry 3319 (class 0 OID 0)
-- Dependencies: 194
-- Name: rejets_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE rejets_gid_seq OWNED BY rejets.gid;


--
-- TOC entry 3320 (class 0 OID 0)
-- Dependencies: 194
-- Name: rejets_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('rejets_gid_seq', 1, false);


--
-- TOC entry 203 (class 1259 OID 44181)
-- Dependencies: 3039 3040 3041 1329 6
-- Name: sondages; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE sondages (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    identif character varying(80),
    type_sondage character varying(80),
    date_realisation date,
    bureau character varying(80),
    scan_doc character varying(200),
    profondeur real,
    hydromorphie real,
    nappe real,
    comments text,
    renseignements character varying(80),
    photo character varying(200),
    docu2 character varying(200),
    angle real,
    taille real,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


ALTER TABLE spanc.sondages OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 44179)
-- Dependencies: 203 6
-- Name: sondages_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE sondages_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.sondages_gid_seq OWNER TO postgres;

--
-- TOC entry 3321 (class 0 OID 0)
-- Dependencies: 202
-- Name: sondages_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE sondages_gid_seq OWNED BY sondages.gid;


--
-- TOC entry 3322 (class 0 OID 0)
-- Dependencies: 202
-- Name: sondages_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('sondages_gid_seq', 1, true);


--
-- TOC entry 197 (class 1259 OID 44116)
-- Dependencies: 3027 3028 3029 6 1329
-- Name: surfaces_terrain; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE surfaces_terrain (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    identif character varying(80),
    type_surface character varying(80),
    surface real,
    impermeable character varying(3),
    comments text,
    renseignements character varying(80),
    photo character varying(200),
    docu2 character varying(200),
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'MULTIPOLYGON'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


ALTER TABLE spanc.surfaces_terrain OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 44114)
-- Dependencies: 6 197
-- Name: surfaces_terrain_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE surfaces_terrain_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.surfaces_terrain_gid_seq OWNER TO postgres;

--
-- TOC entry 3323 (class 0 OID 0)
-- Dependencies: 196
-- Name: surfaces_terrain_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE surfaces_terrain_gid_seq OWNED BY surfaces_terrain.gid;


--
-- TOC entry 3324 (class 0 OID 0)
-- Dependencies: 196
-- Name: surfaces_terrain_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('surfaces_terrain_gid_seq', 1, false);


--
-- TOC entry 218 (class 1259 OID 46394)
-- Dependencies: 219 6
-- Name: pretraitements_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE pretraitements_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.pretraitements_gid_seq OWNER TO postgres;

--
-- TOC entry 3325 (class 0 OID 0)
-- Dependencies: 218
-- Name: pretraitements_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE pretraitements_gid_seq OWNED BY pretraitements.gid;


--
-- TOC entry 3326 (class 0 OID 0)
-- Dependencies: 218
-- Name: pretraitements_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('pretraitements_gid_seq', 1, true);


--
-- TOC entry 199 (class 1259 OID 44137)
-- Dependencies: 3031 3032 3033 1329 6
-- Name: traitements_classiques; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE traitements_classiques (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    install_gid integer,
    identif character varying(80),
    typ_traitt character varying(80),
    longueur real,
    largeur real,
    profondeur real,
    surface real,
    details text,
    comments text,
    annee_pose integer,
    poseur character varying(80),
    renseignements character varying(80),
    accessible character varying(80),
    integrite character varying(80),
    proprete character varying(80),
    securite character varying(80),
    ecoulement character varying(80),
    photo character varying(200),
    docu2 character varying(200),
    angle real,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'MULTIPOLYGON'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


ALTER TABLE spanc.traitements_classiques OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 44135)
-- Dependencies: 199 6
-- Name: traitements_classiques_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE traitements_classiques_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.traitements_classiques_gid_seq OWNER TO postgres;

--
-- TOC entry 3327 (class 0 OID 0)
-- Dependencies: 198
-- Name: traitements_classiques_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE traitements_classiques_gid_seq OWNED BY traitements_classiques.gid;


--
-- TOC entry 3328 (class 0 OID 0)
-- Dependencies: 198
-- Name: traitements_classiques_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('traitements_classiques_gid_seq', 1, true);


--
-- TOC entry 205 (class 1259 OID 45983)
-- Dependencies: 3043 6
-- Name: usagers; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE usagers (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    immeuble_id integer NOT NULL,
    num_ordre integer DEFAULT 1,
    type_usagers character varying(80),
    facturable boolean,
    nom character varying(200) NOT NULL,
    adresse text,
    code_postal character varying(12),
    ville_usagers character varying(200),
    telephon1 character varying(25),
    telephon2 character varying(25),
    mail1 character varying(80),
    mail2 character varying(80),
    autre_comm character varying(80),
    comments text,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(80)
);


ALTER TABLE spanc.usagers OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 45981)
-- Dependencies: 6 205
-- Name: usagers_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE usagers_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.usagers_gid_seq OWNER TO postgres;

--
-- TOC entry 3329 (class 0 OID 0)
-- Dependencies: 204
-- Name: usagers_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE usagers_gid_seq OWNED BY usagers.gid;


--
-- TOC entry 3330 (class 0 OID 0)
-- Dependencies: 204
-- Name: usagers_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('usagers_gid_seq', 1, true);


--
-- TOC entry 201 (class 1259 OID 44161)
-- Dependencies: 3035 3036 3037 6 1329
-- Name: ventilations; Type: TABLE; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE TABLE ventilations (
    gid integer NOT NULL,
    refdoss character varying(25) NOT NULL,
    install_gid integer,
    identif character varying(100),
    typ_ventil character varying(80) NOT NULL,
    origine character varying(80),
    test_fumee character varying(25),
    diametre real DEFAULT 100,
    comments text,
    marq_constructeur character varying(80),
    annee_pose integer,
    poseur character varying(80),
    accessible character varying(80),
    integrite character varying(80),
    photo character varying(200),
    docu2 character varying(200),
    hauteur real,
    taille real,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


ALTER TABLE spanc.ventilations OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 44159)
-- Dependencies: 201 6
-- Name: ventilations_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: postgres
--

CREATE SEQUENCE ventilations_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spanc.ventilations_gid_seq OWNER TO postgres;

--
-- TOC entry 3331 (class 0 OID 0)
-- Dependencies: 200
-- Name: ventilations_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: postgres
--

ALTER SEQUENCE ventilations_gid_seq OWNED BY ventilations.gid;


--
-- TOC entry 3332 (class 0 OID 0)
-- Dependencies: 200
-- Name: ventilations_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: postgres
--

SELECT pg_catalog.setval('ventilations_gid_seq', 1, true);


--
-- TOC entry 3053 (class 2604 OID 46318)
-- Dependencies: 215 214 215
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY alim_aep ALTER COLUMN gid SET DEFAULT nextval('alim_aep_gid_seq'::regclass);


--
-- TOC entry 2974 (class 2604 OID 41603)
-- Dependencies: 170 171 171
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY arbres ALTER COLUMN gid SET DEFAULT nextval('arbres_gid_seq'::regclass);


--
-- TOC entry 2982 (class 2604 OID 41663)
-- Dependencies: 174 175 175
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY base ALTER COLUMN gid SET DEFAULT nextval('base_gid_seq'::regclass);


--
-- TOC entry 2978 (class 2604 OID 41623)
-- Dependencies: 173 172 173
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY canalisations ALTER COLUMN gid SET DEFAULT nextval('canalisations_gid_seq'::regclass);


--
-- TOC entry 3051 (class 2604 OID 46195)
-- Dependencies: 211 210 211
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY cont_conception ALTER COLUMN gid SET DEFAULT nextval('cont_conception_gid_seq'::regclass);


--
-- TOC entry 3049 (class 2604 OID 46165)
-- Dependencies: 209 208 209
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY cont_periodiques ALTER COLUMN gid SET DEFAULT nextval('cont_periodiques_gid_seq'::regclass);


--
-- TOC entry 2969 (class 2604 OID 41465)
-- Dependencies: 168 169 169
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY dossiers ALTER COLUMN gid SET DEFAULT nextval('dossiers_gid_seq'::regclass);


--
-- TOC entry 2990 (class 2604 OID 42222)
-- Dependencies: 179 178 179
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY filieres_agreees ALTER COLUMN gid SET DEFAULT nextval('filieres_agreees_gid_seq'::regclass);


--
-- TOC entry 2994 (class 2604 OID 42242)
-- Dependencies: 181 180 181
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY haies ALTER COLUMN gid SET DEFAULT nextval('haies_gid_seq'::regclass);


--
-- TOC entry 2998 (class 2604 OID 43896)
-- Dependencies: 182 183 183
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY immeubles ALTER COLUMN gid SET DEFAULT nextval('immeubles_gid_seq'::regclass);


--
-- TOC entry 3006 (class 2604 OID 43975)
-- Dependencies: 186 187 187
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY infiltrations ALTER COLUMN gid SET DEFAULT nextval('infiltrations_gid_seq'::regclass);


--
-- TOC entry 3057 (class 2604 OID 46373)
-- Dependencies: 217 216 217
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY installations ALTER COLUMN gid SET DEFAULT nextval('installations_gid_seq'::regclass);


--
-- TOC entry 3002 (class 2604 OID 43936)
-- Dependencies: 185 184 185
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY origines ALTER COLUMN gid SET DEFAULT nextval('origines_gid_seq'::regclass);


--
-- TOC entry 3010 (class 2604 OID 43996)
-- Dependencies: 189 188 189
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY pentes ALTER COLUMN gid SET DEFAULT nextval('pentes_gid_seq'::regclass);


--
-- TOC entry 3014 (class 2604 OID 44016)
-- Dependencies: 190 191 191
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY pieces ALTER COLUMN gid SET DEFAULT nextval('pieces_gid_seq'::regclass);


--
-- TOC entry 3045 (class 2604 OID 46124)
-- Dependencies: 207 206 207
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY pompages ALTER COLUMN gid SET DEFAULT nextval('pompages_gid_seq'::regclass);


--
-- TOC entry 3061 (class 2604 OID 46399)
-- Dependencies: 218 219 219
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY pretraitements ALTER COLUMN gid SET DEFAULT nextval('pretraitements_gid_seq'::regclass);


--
-- TOC entry 3065 (class 2604 OID 46423)
-- Dependencies: 220 221 221
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY puits_d_eau ALTER COLUMN gid SET DEFAULT nextval('puits_d_eau_gid_seq'::regclass);


--
-- TOC entry 2986 (class 2604 OID 42202)
-- Dependencies: 176 177 177
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY puits_dispersion ALTER COLUMN gid SET DEFAULT nextval('puits_dispersion_gid_seq'::regclass);


--
-- TOC entry 3018 (class 2604 OID 44073)
-- Dependencies: 193 192 193
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY regards ALTER COLUMN gid SET DEFAULT nextval('regards_gid_seq'::regclass);


--
-- TOC entry 3022 (class 2604 OID 44093)
-- Dependencies: 194 195 195
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY rejets ALTER COLUMN gid SET DEFAULT nextval('rejets_gid_seq'::regclass);


--
-- TOC entry 3038 (class 2604 OID 44184)
-- Dependencies: 202 203 203
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY sondages ALTER COLUMN gid SET DEFAULT nextval('sondages_gid_seq'::regclass);


--
-- TOC entry 3026 (class 2604 OID 44119)
-- Dependencies: 197 196 197
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY surfaces_terrain ALTER COLUMN gid SET DEFAULT nextval('surfaces_terrain_gid_seq'::regclass);


--
-- TOC entry 3030 (class 2604 OID 44140)
-- Dependencies: 198 199 199
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY traitements_classiques ALTER COLUMN gid SET DEFAULT nextval('traitements_classiques_gid_seq'::regclass);


--
-- TOC entry 3042 (class 2604 OID 45986)
-- Dependencies: 204 205 205
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY usagers ALTER COLUMN gid SET DEFAULT nextval('usagers_gid_seq'::regclass);


--
-- TOC entry 3034 (class 2604 OID 44164)
-- Dependencies: 200 201 201
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY ventilations ALTER COLUMN gid SET DEFAULT nextval('ventilations_gid_seq'::regclass);


-- TOC entry 3070 (class 2606 OID 41474)
-- Dependencies: 169 169
-- Name: dossiers_pkey; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY dossiers
    ADD CONSTRAINT dossiers_pkey PRIMARY KEY (gid);


--
-- TOC entry 3174 (class 2606 OID 46228)
-- Dependencies: 212 212
-- Name: entretiens_pkey; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY entretiens
    ADD CONSTRAINT entretiens_pkey PRIMARY KEY (gid);


--
-- TOC entry 3073 (class 2606 OID 41476)
-- Dependencies: 169 169
-- Name: pk_refdoss; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY dossiers
    ADD CONSTRAINT pk_refdoss UNIQUE (refdoss);


--
-- TOC entry 3158 (class 2606 OID 45993)
-- Dependencies: 205 205
-- Name: pk_usagers; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY usagers
    ADD CONSTRAINT pk_usagers PRIMARY KEY (gid);


--
-- TOC entry 3177 (class 2606 OID 46326)
-- Dependencies: 215 215
-- Name: pkey_alim_aep; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY alim_aep
    ADD CONSTRAINT pkey_alim_aep PRIMARY KEY (gid);


--
-- TOC entry 3077 (class 2606 OID 41611)
-- Dependencies: 171 171
-- Name: pkey_arbres; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY arbres
    ADD CONSTRAINT pkey_arbres PRIMARY KEY (gid);


--
-- TOC entry 3085 (class 2606 OID 41671)
-- Dependencies: 175 175
-- Name: pkey_base; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY base
    ADD CONSTRAINT pkey_base PRIMARY KEY (gid);


--
-- TOC entry 3082 (class 2606 OID 41631)
-- Dependencies: 173 173
-- Name: pkey_canalisations; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY canalisations
    ADD CONSTRAINT pkey_canalisations PRIMARY KEY (gid);


--
-- TOC entry 3172 (class 2606 OID 46201)
-- Dependencies: 211 211
-- Name: pkey_cont_conception; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY cont_conception
    ADD CONSTRAINT pkey_cont_conception PRIMARY KEY (gid);


--
-- TOC entry 3168 (class 2606 OID 46189)
-- Dependencies: 209 209
-- Name: pkey_cont_periodique; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY cont_periodiques
    ADD CONSTRAINT pkey_cont_periodique PRIMARY KEY (gid);


--
-- TOC entry 3095 (class 2606 OID 42230)
-- Dependencies: 179 179
-- Name: pkey_filieres_agreees; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY filieres_agreees
    ADD CONSTRAINT pkey_filieres_agreees PRIMARY KEY (gid);


--
-- TOC entry 3100 (class 2606 OID 42250)
-- Dependencies: 181 181
-- Name: pkey_haies; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY haies
    ADD CONSTRAINT pkey_haies PRIMARY KEY (gid);


--
-- TOC entry 3106 (class 2606 OID 43904)
-- Dependencies: 183 183
-- Name: pkey_immeubles; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY immeubles
    ADD CONSTRAINT pkey_immeubles PRIMARY KEY (gid);


--
-- TOC entry 3116 (class 2606 OID 43983)
-- Dependencies: 187 187
-- Name: pkey_infiltrations; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY infiltrations
    ADD CONSTRAINT pkey_infiltrations PRIMARY KEY (gid);


--
-- TOC entry 3181 (class 2606 OID 46381)
-- Dependencies: 217 217
-- Name: pkey_installations; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY installations
    ADD CONSTRAINT pkey_installations PRIMARY KEY (gid);


--
-- TOC entry 3111 (class 2606 OID 43944)
-- Dependencies: 185 185
-- Name: pkey_origines; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY origines
    ADD CONSTRAINT pkey_origines PRIMARY KEY (gid);


--
-- TOC entry 3121 (class 2606 OID 44004)
-- Dependencies: 189 189
-- Name: pkey_pentes; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY pentes
    ADD CONSTRAINT pkey_pentes PRIMARY KEY (gid);


--
-- TOC entry 3125 (class 2606 OID 44024)
-- Dependencies: 191 191
-- Name: pkey_pieces; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY pieces
    ADD CONSTRAINT pkey_pieces PRIMARY KEY (gid);


--
-- TOC entry 3163 (class 2606 OID 46133)
-- Dependencies: 207 207
-- Name: pkey_pompages; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY pompages
    ADD CONSTRAINT pkey_pompages PRIMARY KEY (gid);


--
-- TOC entry 3191 (class 2606 OID 46431)
-- Dependencies: 221 221
-- Name: pkey_puits_d_eau; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY puits_d_eau
    ADD CONSTRAINT pkey_puits_d_eau PRIMARY KEY (gid);


--
-- TOC entry 3090 (class 2606 OID 42210)
-- Dependencies: 177 177
-- Name: pkey_puits_dispersion; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY puits_dispersion
    ADD CONSTRAINT pkey_puits_dispersion PRIMARY KEY (gid);


--
-- TOC entry 3130 (class 2606 OID 44081)
-- Dependencies: 193 193
-- Name: pkey_regards; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY regards
    ADD CONSTRAINT pkey_regards PRIMARY KEY (gid);


--
-- TOC entry 3135 (class 2606 OID 44101)
-- Dependencies: 195 195
-- Name: pkey_rejets; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY rejets
    ADD CONSTRAINT pkey_rejets PRIMARY KEY (gid);


--
-- TOC entry 3155 (class 2606 OID 44192)
-- Dependencies: 203 203
-- Name: pkey_sondages; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY sondages
    ADD CONSTRAINT pkey_sondages PRIMARY KEY (gid);


--
-- TOC entry 3140 (class 2606 OID 44127)
-- Dependencies: 197 197
-- Name: pkey_surfaces_terrain; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY surfaces_terrain
    ADD CONSTRAINT pkey_surfaces_terrain PRIMARY KEY (gid);


--
-- TOC entry 3186 (class 2606 OID 46407)
-- Dependencies: 219 219
-- Name: pkey_pretraitements; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY pretraitements
    ADD CONSTRAINT pkey_pretraitements PRIMARY KEY (gid);


--
-- TOC entry 3145 (class 2606 OID 44148)
-- Dependencies: 199 199
-- Name: pkey_traitements_classiques; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY traitements_classiques
    ADD CONSTRAINT pkey_traitements_classiques PRIMARY KEY (gid);


--
-- TOC entry 3150 (class 2606 OID 44172)
-- Dependencies: 201 201
-- Name: pkey_ventilations; Type: CONSTRAINT; Schema: spanc; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY ventilations
    ADD CONSTRAINT pkey_ventilations PRIMARY KEY (gid);


--
-- TOC entry 3102 (class 1259 OID 46366)
-- Dependencies: 183
-- Name: FKI_immeubles; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "FKI_immeubles" ON immeubles USING btree (refdoss);


--
-- TOC entry 3159 (class 1259 OID 46256)
-- Dependencies: 207
-- Name: FKI_install_pompage; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "FKI_install_pompage" ON pompages USING btree (install_gid);


--
-- TOC entry 3183 (class 1259 OID 46443)
-- Dependencies: 219
-- Name: FKI_pretraitement; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX "FKI_pretraitement" ON pretraitements USING btree (install_gid);


--
-- TOC entry 3071 (class 1259 OID 41477)
-- Dependencies: 2352 169
-- Name: dossiers_the_geom_gist; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX dossiers_the_geom_gist ON dossiers USING gist (the_geom);


--
-- TOC entry 3074 (class 1259 OID 41612)
-- Dependencies: 171
-- Name: fki_dossier_arbres; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX fki_dossier_arbres ON arbres USING btree (refdoss);


--
-- TOC entry 3079 (class 1259 OID 41632)
-- Dependencies: 173
-- Name: fki_dossier_canalisations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX fki_dossier_canalisations ON canalisations USING btree (refdoss);


--
-- TOC entry 3169 (class 1259 OID 46202)
-- Dependencies: 211
-- Name: fki_dossier_cont_conception; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX fki_dossier_cont_conception ON cont_conception USING btree (refdoss);


--
-- TOC entry 3165 (class 1259 OID 46184)
-- Dependencies: 209
-- Name: fki_dossier_cont_periodiques; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX fki_dossier_cont_periodiques ON cont_periodiques USING btree (refdoss);


--
-- TOC entry 3092 (class 1259 OID 42231)
-- Dependencies: 179
-- Name: fki_dossier_filieres_agreees; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX fki_dossier_filieres_agreees ON filieres_agreees USING btree (refdoss);


--
-- TOC entry 3097 (class 1259 OID 42251)
-- Dependencies: 181
-- Name: fki_dossier_haies; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX fki_dossier_haies ON haies USING btree (refdoss);


--
-- TOC entry 3103 (class 1259 OID 43905)
-- Dependencies: 183
-- Name: fki_dossier_immeubles; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX fki_dossier_immeubles ON immeubles USING btree (refdoss);


--
-- TOC entry 3113 (class 1259 OID 43984)
-- Dependencies: 187
-- Name: fki_dossier_infiltrations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX fki_dossier_infiltrations ON infiltrations USING btree (refdoss);


--
-- TOC entry 3178 (class 1259 OID 46387)
-- Dependencies: 217
-- Name: fki_dossier_installations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX fki_dossier_installations ON installations USING btree (refdoss);


--
-- TOC entry 3108 (class 1259 OID 43945)
-- Dependencies: 185
-- Name: fki_dossier_origines; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX fki_dossier_origines ON origines USING btree (refdoss);


--
-- TOC entry 3118 (class 1259 OID 44005)
-- Dependencies: 189
-- Name: fki_dossier_pentes; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX fki_dossier_pentes ON pentes USING btree (refdoss);


--
-- TOC entry 3160 (class 1259 OID 46139)
-- Dependencies: 207
-- Name: fki_dossier_pompages; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX fki_dossier_pompages ON pompages USING btree (refdoss);


--
-- TOC entry 3086 (class 1259 OID 44061)
-- Dependencies: 177
-- Name: fki_dossier_puits; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX fki_dossier_puits ON puits_dispersion USING btree (refdoss);


--
-- TOC entry 3188 (class 1259 OID 46432)
-- Dependencies: 221
-- Name: fki_dossier_puits_d_eau; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX fki_dossier_puits_d_eau ON puits_d_eau USING btree (refdoss);


--
-- TOC entry 3087 (class 1259 OID 42211)
-- Dependencies: 177
-- Name: fki_dossier_puits_dispersion; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX fki_dossier_puits_dispersion ON puits_dispersion USING btree (refdoss);


--
-- TOC entry 3127 (class 1259 OID 44082)
-- Dependencies: 193
-- Name: fki_dossier_regards; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX fki_dossier_regards ON regards USING btree (refdoss);


--
-- TOC entry 3132 (class 1259 OID 44107)
-- Dependencies: 195
-- Name: fki_dossier_rejets; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX fki_dossier_rejets ON rejets USING btree (refdoss);


--
-- TOC entry 3152 (class 1259 OID 44198)
-- Dependencies: 203
-- Name: fki_dossier_sondages; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX fki_dossier_sondages ON sondages USING btree (refdoss);


--
-- TOC entry 3137 (class 1259 OID 44128)
-- Dependencies: 197
-- Name: fki_dossier_surfaces_terrain; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX fki_dossier_surfaces_terrain ON surfaces_terrain USING btree (refdoss);


--
-- TOC entry 3142 (class 1259 OID 44154)
-- Dependencies: 199
-- Name: fki_dossier_traitements_classiques; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX fki_dossier_traitements_classiques ON traitements_classiques USING btree (refdoss);


--
-- TOC entry 3147 (class 1259 OID 44173)
-- Dependencies: 201
-- Name: fki_dossier_ventilations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX fki_dossier_ventilations ON ventilations USING btree (refdoss);


--
-- TOC entry 3175 (class 1259 OID 46229)
-- Dependencies: 212
-- Name: idx_entretiens_refdoss; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX idx_entretiens_refdoss ON entretiens USING btree (refdoss);


--
-- TOC entry 3075 (class 1259 OID 41614)
-- Dependencies: 171
-- Name: idx_refdoss_arbres; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX idx_refdoss_arbres ON arbres USING btree (refdoss);


--
-- TOC entry 3080 (class 1259 OID 41634)
-- Dependencies: 173
-- Name: idx_refdoss_canalisations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX idx_refdoss_canalisations ON canalisations USING btree (refdoss);


--
-- TOC entry 3170 (class 1259 OID 46203)
-- Dependencies: 211
-- Name: idx_refdoss_cont_conception; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX idx_refdoss_cont_conception ON cont_conception USING btree (refdoss);


--
-- TOC entry 3166 (class 1259 OID 46185)
-- Dependencies: 209
-- Name: idx_refdoss_cont_periodiques; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX idx_refdoss_cont_periodiques ON cont_periodiques USING btree (refdoss);


--
-- TOC entry 3093 (class 1259 OID 42233)
-- Dependencies: 179
-- Name: idx_refdoss_filieres_agreees; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX idx_refdoss_filieres_agreees ON filieres_agreees USING btree (refdoss);


--
-- TOC entry 3098 (class 1259 OID 42253)
-- Dependencies: 181
-- Name: idx_refdoss_haies; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX idx_refdoss_haies ON haies USING btree (refdoss);


--
-- TOC entry 3104 (class 1259 OID 43907)
-- Dependencies: 183
-- Name: idx_refdoss_immeubles; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX idx_refdoss_immeubles ON immeubles USING btree (refdoss);


--
-- TOC entry 3114 (class 1259 OID 43985)
-- Dependencies: 187
-- Name: idx_refdoss_infiltrations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX idx_refdoss_infiltrations ON infiltrations USING btree (refdoss);


--
-- TOC entry 3179 (class 1259 OID 46389)
-- Dependencies: 217
-- Name: idx_refdoss_installations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX idx_refdoss_installations ON installations USING btree (refdoss);


--
-- TOC entry 3109 (class 1259 OID 43947)
-- Dependencies: 185
-- Name: idx_refdoss_origines; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX idx_refdoss_origines ON origines USING btree (refdoss);


--
-- TOC entry 3119 (class 1259 OID 44007)
-- Dependencies: 189
-- Name: idx_refdoss_pentes; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX idx_refdoss_pentes ON pentes USING btree (refdoss);


--
-- TOC entry 3123 (class 1259 OID 44027)
-- Dependencies: 191
-- Name: idx_refdoss_pieces; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX idx_refdoss_pieces ON pieces USING btree (refdoss);


--
-- TOC entry 3161 (class 1259 OID 46141)
-- Dependencies: 207
-- Name: idx_refdoss_pompages; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX idx_refdoss_pompages ON pompages USING btree (refdoss);


--
-- TOC entry 3189 (class 1259 OID 46433)
-- Dependencies: 221
-- Name: idx_refdoss_puits_d_eau; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX idx_refdoss_puits_d_eau ON puits_d_eau USING btree (refdoss);


--
-- TOC entry 3088 (class 1259 OID 42213)
-- Dependencies: 177
-- Name: idx_refdoss_puits_dispersion; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX idx_refdoss_puits_dispersion ON puits_dispersion USING btree (refdoss);


--
-- TOC entry 3128 (class 1259 OID 44084)
-- Dependencies: 193
-- Name: idx_refdoss_regards; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX idx_refdoss_regards ON regards USING btree (refdoss);


--
-- TOC entry 3133 (class 1259 OID 44109)
-- Dependencies: 195
-- Name: idx_refdoss_rejets; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX idx_refdoss_rejets ON rejets USING btree (refdoss);


--
-- TOC entry 3153 (class 1259 OID 44200)
-- Dependencies: 203
-- Name: idx_refdoss_sondages; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX idx_refdoss_sondages ON sondages USING btree (refdoss);


--
-- TOC entry 3138 (class 1259 OID 44130)
-- Dependencies: 197
-- Name: idx_refdoss_surfaces_terrain; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX idx_refdoss_surfaces_terrain ON surfaces_terrain USING btree (refdoss);


--
-- TOC entry 3184 (class 1259 OID 46408)
-- Dependencies: 219
-- Name: idx_refdoss_pretraitements; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX idx_refdoss_pretraitements ON pretraitements USING btree (refdoss);


--
-- TOC entry 3143 (class 1259 OID 44156)
-- Dependencies: 199
-- Name: idx_refdoss_traitements_classiques; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX idx_refdoss_traitements_classiques ON traitements_classiques USING btree (refdoss);


--
-- TOC entry 3148 (class 1259 OID 44174)
-- Dependencies: 201
-- Name: idx_refdoss_ventilations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX idx_refdoss_ventilations ON ventilations USING btree (refdoss);


--
-- TOC entry 3078 (class 1259 OID 41613)
-- Dependencies: 2352 171
-- Name: the_geom_gist_arbres; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX the_geom_gist_arbres ON arbres USING gist (the_geom);


--
-- TOC entry 3083 (class 1259 OID 41633)
-- Dependencies: 2352 173
-- Name: the_geom_gist_canalisations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX the_geom_gist_canalisations ON canalisations USING gist (the_geom);


--
-- TOC entry 3096 (class 1259 OID 42232)
-- Dependencies: 179 2352
-- Name: the_geom_gist_filieres_agreees; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX the_geom_gist_filieres_agreees ON filieres_agreees USING gist (the_geom);


--
-- TOC entry 3101 (class 1259 OID 42252)
-- Dependencies: 2352 181
-- Name: the_geom_gist_haies; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX the_geom_gist_haies ON haies USING gist (the_geom);


--
-- TOC entry 3107 (class 1259 OID 43906)
-- Dependencies: 183 2352
-- Name: the_geom_gist_immeubles; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX the_geom_gist_immeubles ON immeubles USING gist (the_geom);


--
-- TOC entry 3117 (class 1259 OID 43986)
-- Dependencies: 2352 187
-- Name: the_geom_gist_infiltrations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX the_geom_gist_infiltrations ON infiltrations USING gist (the_geom);


--
-- TOC entry 3182 (class 1259 OID 46388)
-- Dependencies: 2352 217
-- Name: the_geom_gist_installations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX the_geom_gist_installations ON installations USING gist (the_geom);


--
-- TOC entry 3112 (class 1259 OID 43946)
-- Dependencies: 185 2352
-- Name: the_geom_gist_origines; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX the_geom_gist_origines ON origines USING gist (the_geom);


--
-- TOC entry 3122 (class 1259 OID 44006)
-- Dependencies: 2352 189
-- Name: the_geom_gist_pentes; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX the_geom_gist_pentes ON pentes USING gist (the_geom);


--
-- TOC entry 3126 (class 1259 OID 44026)
-- Dependencies: 2352 191
-- Name: the_geom_gist_pieces; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX the_geom_gist_pieces ON pieces USING gist (the_geom);


--
-- TOC entry 3164 (class 1259 OID 46140)
-- Dependencies: 207 2352
-- Name: the_geom_gist_pompages; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX the_geom_gist_pompages ON pompages USING gist (the_geom);


--
-- TOC entry 3192 (class 1259 OID 46434)
-- Dependencies: 221 2352
-- Name: the_geom_gist_puits_d_eau; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX the_geom_gist_puits_d_eau ON puits_d_eau USING gist (the_geom);


--
-- TOC entry 3091 (class 1259 OID 42212)
-- Dependencies: 2352 177
-- Name: the_geom_gist_puits_dispersion; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX the_geom_gist_puits_dispersion ON puits_dispersion USING gist (the_geom);


--
-- TOC entry 3131 (class 1259 OID 44083)
-- Dependencies: 2352 193
-- Name: the_geom_gist_regards; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX the_geom_gist_regards ON regards USING gist (the_geom);


--
-- TOC entry 3136 (class 1259 OID 44108)
-- Dependencies: 2352 195
-- Name: the_geom_gist_rejets; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX the_geom_gist_rejets ON rejets USING gist (the_geom);


--
-- TOC entry 3156 (class 1259 OID 44199)
-- Dependencies: 203 2352
-- Name: the_geom_gist_sondages; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX the_geom_gist_sondages ON sondages USING gist (the_geom);


--
-- TOC entry 3141 (class 1259 OID 44129)
-- Dependencies: 197 2352
-- Name: the_geom_gist_surfaces_terrain; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX the_geom_gist_surfaces_terrain ON surfaces_terrain USING gist (the_geom);


--
-- TOC entry 3187 (class 1259 OID 46409)
-- Dependencies: 219 2352
-- Name: the_geom_gist_pretraitements; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX the_geom_gist_pretraitements ON pretraitements USING gist (the_geom);


--
-- TOC entry 3146 (class 1259 OID 44155)
-- Dependencies: 2352 199
-- Name: the_geom_gist_traitements_classiques; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX the_geom_gist_traitements_classiques ON traitements_classiques USING gist (the_geom);


--
-- TOC entry 3151 (class 1259 OID 44175)
-- Dependencies: 201 2352
-- Name: the_geom_gist_ventilations; Type: INDEX; Schema: spanc; Owner: postgres; Tablespace:
--

CREATE INDEX the_geom_gist_ventilations ON ventilations USING gist (the_geom);


--
-- TOC entry 3200 (class 2620 OID 41479)
-- Dependencies: 894 169
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON dossiers FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3202 (class 2620 OID 41616)
-- Dependencies: 894 171
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON arbres FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3204 (class 2620 OID 41636)
-- Dependencies: 894 173
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON canalisations FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3206 (class 2620 OID 42215)
-- Dependencies: 177 894
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON puits_dispersion FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3208 (class 2620 OID 42235)
-- Dependencies: 894 179
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON filieres_agreees FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3210 (class 2620 OID 42255)
-- Dependencies: 894 181
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON haies FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3212 (class 2620 OID 43909)
-- Dependencies: 894 183
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON immeubles FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3214 (class 2620 OID 43949)
-- Dependencies: 894 185
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON origines FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3216 (class 2620 OID 43987)
-- Dependencies: 894 187
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON infiltrations FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3218 (class 2620 OID 44009)
-- Dependencies: 894 189
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON pentes FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3220 (class 2620 OID 44029)
-- Dependencies: 191 894
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON pieces FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3222 (class 2620 OID 44086)
-- Dependencies: 193 894
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON regards FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3224 (class 2620 OID 44111)
-- Dependencies: 195 894
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON rejets FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3226 (class 2620 OID 44132)
-- Dependencies: 894 197
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON surfaces_terrain FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3228 (class 2620 OID 44158)
-- Dependencies: 199 894
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON traitements_classiques FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3230 (class 2620 OID 44176)
-- Dependencies: 894 201
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON ventilations FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3232 (class 2620 OID 44202)
-- Dependencies: 894 203
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON sondages FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3234 (class 2620 OID 45991)
-- Dependencies: 205 894
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON usagers FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3237 (class 2620 OID 46143)
-- Dependencies: 207 894
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON pompages FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3239 (class 2620 OID 46187)
-- Dependencies: 209 894
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON cont_periodiques FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3241 (class 2620 OID 46204)
-- Dependencies: 894 211
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON cont_conception FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3243 (class 2620 OID 46231)
-- Dependencies: 894 212
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON entretiens FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3244 (class 2620 OID 46328)
-- Dependencies: 894 215
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON alim_aep FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3246 (class 2620 OID 46391)
-- Dependencies: 217 894
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON installations FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3248 (class 2620 OID 46410)
-- Dependencies: 894 219
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON pretraitements FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3250 (class 2620 OID 46435)
-- Dependencies: 894 221
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON puits_d_eau FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3245 (class 2620 OID 46330)
-- Dependencies: 1017 215
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON alim_aep FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3203 (class 2620 OID 46331)
-- Dependencies: 171 1017
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON arbres FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3205 (class 2620 OID 46332)
-- Dependencies: 173 1017
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON canalisations FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3240 (class 2620 OID 46333)
-- Dependencies: 211 1017
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON cont_conception FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3238 (class 2620 OID 46334)
-- Dependencies: 209 1017
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON cont_periodiques FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3201 (class 2620 OID 46335)
-- Dependencies: 169 1017
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON dossiers FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3242 (class 2620 OID 46336)
-- Dependencies: 212 1017
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON entretiens FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3209 (class 2620 OID 46337)
-- Dependencies: 1017 179
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON filieres_agreees FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3211 (class 2620 OID 46338)
-- Dependencies: 1017 181
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON haies FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3213 (class 2620 OID 46339)
-- Dependencies: 1017 183
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON immeubles FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3217 (class 2620 OID 46340)
-- Dependencies: 187 1017
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON infiltrations FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3215 (class 2620 OID 46342)
-- Dependencies: 185 1017
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON origines FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3219 (class 2620 OID 46343)
-- Dependencies: 189 1017
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON pentes FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3221 (class 2620 OID 46344)
-- Dependencies: 191 1017
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON pieces FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3236 (class 2620 OID 46345)
-- Dependencies: 207 1017
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON pompages FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3207 (class 2620 OID 46348)
-- Dependencies: 1017 177
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON puits_dispersion FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3223 (class 2620 OID 46349)
-- Dependencies: 193 1017
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON regards FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3225 (class 2620 OID 46350)
-- Dependencies: 195 1017
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON rejets FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3233 (class 2620 OID 46351)
-- Dependencies: 1017 203
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON sondages FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3227 (class 2620 OID 46352)
-- Dependencies: 197 1017
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON surfaces_terrain FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3229 (class 2620 OID 46353)
-- Dependencies: 199 1017
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON traitements_classiques FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3235 (class 2620 OID 46354)
-- Dependencies: 1017 205
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON usagers FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3231 (class 2620 OID 46355)
-- Dependencies: 201 1017
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON ventilations FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3247 (class 2620 OID 46390)
-- Dependencies: 1017 217
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON installations FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3249 (class 2620 OID 46411)
-- Dependencies: 219 1017
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON pretraitements FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3251 (class 2620 OID 46436)
-- Dependencies: 221 1017
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: postgres
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON puits_d_eau FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3194 (class 2606 OID 46251)
-- Dependencies: 191 183 3105
-- Name: FK1_pieces_immeubles; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY pieces
    ADD CONSTRAINT "FK_pieces_immeubles" FOREIGN KEY (immeuble_gid) REFERENCES immeubles(gid);


--
-- TOC entry 3197 (class 2606 OID 46232)
-- Dependencies: 169 212 3072
-- Name: FK_dossiers; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY entretiens
    ADD CONSTRAINT "FK_dossiers" FOREIGN KEY (refdoss) REFERENCES dossiers(refdoss);


--
-- TOC entry 3193 (class 2606 OID 46361)
-- Dependencies: 183 169 3072
-- Name: FK_immeubles; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY immeubles
    ADD CONSTRAINT "FK_immeubles" FOREIGN KEY (refdoss) REFERENCES dossiers(refdoss);


--
-- TOC entry 3199 (class 2606 OID 46438)
-- Dependencies: 217 219 3180
-- Name: FK_pretraitement; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY pretraitements
    ADD CONSTRAINT "FK_pretraitement" FOREIGN KEY (install_gid) REFERENCES installations(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3198 (class 2606 OID 46382)
-- Dependencies: 217 3072 169
-- Name: fk_dossier_installations; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY installations
    ADD CONSTRAINT fk_dossier_installations FOREIGN KEY (refdoss) REFERENCES dossiers(refdoss);


--
-- TOC entry 3195 (class 2606 OID 44193)
-- Dependencies: 203 169 3072
-- Name: fk_dossier_sondages; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY sondages
    ADD CONSTRAINT fk_dossier_sondages FOREIGN KEY (refdoss) REFERENCES dossiers(refdoss);


--
-- TOC entry 3196 (class 2606 OID 46356)
-- Dependencies: 183 3105 205
-- Name: fk_usagers; Type: FK CONSTRAINT; Schema: spanc; Owner: postgres
--

ALTER TABLE ONLY usagers
    ADD CONSTRAINT fk_usagers FOREIGN KEY (immeuble_id) REFERENCES immeubles(gid);


-- Completed on 2012-06-17 22:42:18 CEST

--
-- PostgreSQL database dump complete
--
