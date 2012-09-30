--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.1
-- Dumped by pg_dump version 9.2.1
-- Started on 2012-09-26 23:40:40 CEST

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 7 (class 2615 OID 20349)
-- Name: spanc; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA spanc;


SET search_path = spanc, pg_catalog;

--
-- TOC entry 1148 (class 1255 OID 20350)
-- Name: set_cree(); Type: FUNCTION; Schema: spanc; Owner: -
--

CREATE FUNCTION set_cree() RETURNS trigger
    LANGUAGE plpgsql IMMUTABLE
    AS $$
BEGIN
NEW.cree_le = LOCALTIMESTAMP(0);
RETURN NEW;
END;
$$;


--
-- TOC entry 1149 (class 1255 OID 20351)
-- Name: set_modif(); Type: FUNCTION; Schema: spanc; Owner: -
--

CREATE FUNCTION set_modif() RETURNS trigger
    LANGUAGE plpgsql IMMUTABLE
    AS $$
BEGIN
NEW.modifie_le = LOCALTIMESTAMP(0);
RETURN NEW;
END;
$$;


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 182 (class 1259 OID 20352)
-- Name: alim_aep; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE alim_aep (
    gid integer NOT NULL,
    refdoss character varying(25),
    immeuble_gid integer NOT NULL,
    identif character varying(80),
    typ_alim character varying(80),
    reference character varying(80),
    conso_moyenne integer,
    comments text,
    marq_constructeur character varying(80),
    annee_pose date,
    desaffecte_le date DEFAULT '2100-12-31'::date,
    poseur character varying(80),
    photo character varying(250),
    docu2 character varying(250),
    profondeur real,
    taille real DEFAULT 1,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


--
-- TOC entry 183 (class 1259 OID 20363)
-- Name: alim_aep_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE alim_aep_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3600 (class 0 OID 0)
-- Dependencies: 183
-- Name: alim_aep_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE alim_aep_gid_seq OWNED BY alim_aep.gid;


--
-- TOC entry 3601 (class 0 OID 0)
-- Dependencies: 183
-- Name: alim_aep_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('alim_aep_gid_seq', 1, false);


--
-- TOC entry 184 (class 1259 OID 20365)
-- Name: arbres; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE arbres (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
    identif character varying(80),
    type_arbre character varying(80),
    a_couper boolean,
    comments text,
    annee_pose date,
    desaffecte_le date DEFAULT '2100-12-31'::date,
    photo character varying(250),
    docu2 character varying(250),
    largeur real,
    hauteur real,
    angle real,
    taille real DEFAULT 1,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


--
-- TOC entry 185 (class 1259 OID 20376)
-- Name: arbres_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE arbres_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3602 (class 0 OID 0)
-- Dependencies: 185
-- Name: arbres_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE arbres_gid_seq OWNED BY arbres.gid;


--
-- TOC entry 3603 (class 0 OID 0)
-- Dependencies: 185
-- Name: arbres_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('arbres_gid_seq', 1, false);


--
-- TOC entry 229 (class 1259 OID 21024)
-- Name: base; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE base (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
    identif character varying(80),
    type_entite character varying(80),
    comments text,
    marq_constructeur character varying(80),
    annee_pose date,
    desaffecte_le date DEFAULT '2100-12-31'::date,
    poseur character varying(80),
    renseignements character varying(80),
    accessibilite character varying(80),
    integrite character varying(80),
    proprete character varying(80),
    securite character varying(80),
    ecoulement character varying(80),
    photo character varying(250),
    docu2 character varying(250),
    longueur real,
    largeur real,
    haut_prof real,
    angle real,
    taille real DEFAULT 1,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry
);


--
-- TOC entry 228 (class 1259 OID 21022)
-- Name: base_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE base_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3604 (class 0 OID 0)
-- Dependencies: 228
-- Name: base_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE base_gid_seq OWNED BY base.gid;


--
-- TOC entry 3605 (class 0 OID 0)
-- Dependencies: 228
-- Name: base_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('base_gid_seq', 1, false);


--
-- TOC entry 186 (class 1259 OID 20388)
-- Name: canalisations; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE canalisations (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
    install_gid integer NOT NULL,
    identif character varying(80),
    type_eau character varying(80),
    materiau character varying(80),
    diametre integer DEFAULT 100,
    gravitaire character varying(3),
    comments text,
    annee_pose date,
    desaffecte_le date DEFAULT '2100-12-31'::date,
    poseur character varying(80),
    renseignements character varying(80),
    accessibilite character varying(80),
    integrite character varying(80),
    proprete character varying(80),
    ecoulement character varying(80),
    photo character varying(250),
    docu2 character varying(250),
    longueur real,
    angle real,
    taille real DEFAULT 1,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'MULTILINESTRING'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


--
-- TOC entry 187 (class 1259 OID 20400)
-- Name: canalisations_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE canalisations_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3606 (class 0 OID 0)
-- Dependencies: 187
-- Name: canalisations_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE canalisations_gid_seq OWNED BY canalisations.gid;


--
-- TOC entry 3607 (class 0 OID 0)
-- Dependencies: 187
-- Name: canalisations_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('canalisations_gid_seq', 1, false);


--
-- TOC entry 231 (class 1259 OID 21037)
-- Name: comptabilites; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE comptabilites (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
    usager_gid integer,
    type_facture character varying(80),
    date_emission date,
    date_limite date,
    montant_ht real,
    montant_tva real,
    montant_total real,
    bordereau integer NOT NULL,
    titre integer,
    ref_redevance character varying(25),
    regler boolean,
    etat_comptable character varying(80),
    comments text,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone
);


--
-- TOC entry 230 (class 1259 OID 21035)
-- Name: comptabilites_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE comptabilites_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3608 (class 0 OID 0)
-- Dependencies: 230
-- Name: comptabilites_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE comptabilites_gid_seq OWNED BY comptabilites.gid;


--
-- TOC entry 3609 (class 0 OID 0)
-- Dependencies: 230
-- Name: comptabilites_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('comptabilites_gid_seq', 1, false);


--
-- TOC entry 233 (class 1259 OID 21058)
-- Name: cont_conceptions; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE cont_conceptions (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
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
    document1 character varying(250),
    document2 character varying(250),
    comments text,
    comments_interne text,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25)
);


--
-- TOC entry 232 (class 1259 OID 21056)
-- Name: cont_conceptions_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE cont_conceptions_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3610 (class 0 OID 0)
-- Dependencies: 232
-- Name: cont_conceptions_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE cont_conceptions_gid_seq OWNED BY cont_conceptions.gid;


--
-- TOC entry 3611 (class 0 OID 0)
-- Dependencies: 232
-- Name: cont_conceptions_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('cont_conceptions_gid_seq', 1, false);


--
-- TOC entry 188 (class 1259 OID 20418)
-- Name: cont_periodiques; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE cont_periodiques (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
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
    document1 character varying(250),
    document2 character varying(250),
    comments text,
    comments_interne text,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25)
);


--
-- TOC entry 189 (class 1259 OID 20425)
-- Name: cont_periodiques_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE cont_periodiques_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3612 (class 0 OID 0)
-- Dependencies: 189
-- Name: cont_periodiques_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE cont_periodiques_gid_seq OWNED BY cont_periodiques.gid;


--
-- TOC entry 3613 (class 0 OID 0)
-- Dependencies: 189
-- Name: cont_periodiques_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('cont_periodiques_gid_seq', 1, false);


--
-- TOC entry 235 (class 1259 OID 21079)
-- Name: cont_realisations; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE cont_realisations (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
    install_gid integer,
    concept_gid integer,
    date_controle date,
    technicien_controle character varying(80),
    poseur character varying(80),
    conf_norme boolean,
    conf_projet boolean,
    conclusion character varying(12) DEFAULT 'conforme'::character varying NOT NULL,
    obs_travaux text,
    document1 character varying(250),
    document2 character varying(250),
    comments text,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25)
);


--
-- TOC entry 234 (class 1259 OID 21077)
-- Name: cont_realisations_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE cont_realisations_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3614 (class 0 OID 0)
-- Dependencies: 234
-- Name: cont_realisations_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE cont_realisations_gid_seq OWNED BY cont_realisations.gid;


--
-- TOC entry 3615 (class 0 OID 0)
-- Dependencies: 234
-- Name: cont_realisations_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('cont_realisations_gid_seq', 1, false);


--
-- TOC entry 190 (class 1259 OID 20436)
-- Name: dossiers; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE dossiers (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
    archivage character varying(80),
    etat character varying(80) DEFAULT 'en cours'::character varying,
    comments text,
    zrs character varying(50),
    zaee character varying(50),
    aut_zone character varying(100),
    secteur character varying(80),
    commune_id integer,
    photo character varying(250),
    docu2 character varying(250),
    angle real,
    taille real DEFAULT 1,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


--
-- TOC entry 191 (class 1259 OID 20447)
-- Name: dossiers_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE dossiers_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3616 (class 0 OID 0)
-- Dependencies: 191
-- Name: dossiers_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE dossiers_gid_seq OWNED BY dossiers.gid;


--
-- TOC entry 3617 (class 0 OID 0)
-- Dependencies: 191
-- Name: dossiers_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('dossiers_gid_seq', 3, true);


--
-- TOC entry 237 (class 1259 OID 21097)
-- Name: entretiens; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE entretiens (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
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
    photo character varying(250),
    docu2 character varying(250),
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(80)
);


--
-- TOC entry 236 (class 1259 OID 21095)
-- Name: entretiens_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE entretiens_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3618 (class 0 OID 0)
-- Dependencies: 236
-- Name: entretiens_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE entretiens_gid_seq OWNED BY entretiens.gid;


--
-- TOC entry 3619 (class 0 OID 0)
-- Dependencies: 236
-- Name: entretiens_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('entretiens_gid_seq', 1, false);


--
-- TOC entry 192 (class 1259 OID 20455)
-- Name: filieres_agreees; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE filieres_agreees (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
    install_gid integer NOT NULL,
    identif character varying(80),
    typ_filiere character varying(80),
    num_agrement character varying(15),
    marq_constructeur character varying(80),
    modele character varying(80),
    nb_eq_hab integer DEFAULT 3,
    doc_constructeur character varying(250),
    typ_cuve character varying(80),
    comments text,
    annee_pose date,
    desaffecte_le date DEFAULT '2100-12-31'::date,
    poseur character varying(80),
    renseignements character varying(80),
    accessibilite character varying(80),
    integrite character varying(80),
    proprete character varying(80),
    securite character varying(80),
    ecoulement character varying(80),
    photo character varying(250),
    docu2 character varying(250),
    longueur real,
    largeur real,
    haut_prof real,
    angle real,
    taille real DEFAULT 1,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


--
-- TOC entry 193 (class 1259 OID 20467)
-- Name: filieres_agreees_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE filieres_agreees_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3620 (class 0 OID 0)
-- Dependencies: 193
-- Name: filieres_agreees_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE filieres_agreees_gid_seq OWNED BY filieres_agreees.gid;


--
-- TOC entry 3621 (class 0 OID 0)
-- Dependencies: 193
-- Name: filieres_agreees_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('filieres_agreees_gid_seq', 1, false);


--
-- TOC entry 194 (class 1259 OID 20469)
-- Name: haies; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE haies (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
    identif character varying(80),
    type_haie character varying(80),
    longueur real,
    largeur real,
    hauteur real,
    comments text,
    annee_pose date,
    desaffecte_le date DEFAULT '2100-12-31'::date,
    poseur character varying(80),
    renseignements character varying(80),
    photo character varying(250),
    docu2 character varying(250),
    angle real,
    taille real DEFAULT 1,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'MULTILINESTRING'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


--
-- TOC entry 195 (class 1259 OID 20480)
-- Name: haies_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE haies_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3622 (class 0 OID 0)
-- Dependencies: 195
-- Name: haies_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE haies_gid_seq OWNED BY haies.gid;


--
-- TOC entry 3623 (class 0 OID 0)
-- Dependencies: 195
-- Name: haies_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('haies_gid_seq', 1, false);


--
-- TOC entry 239 (class 1259 OID 21116)
-- Name: immeubles; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE immeubles (
    gid integer NOT NULL,
    type_bati character varying(25),
    the_geom public.geometry,
    refdoss character varying(25),
    identif character varying(80),
    type_habitat character varying(80),
    tx_occupation character varying(80),
    nb_pp integer,
    an_construction integer,
    an_rehabilitation integer,
    date_acte_authentique integer,
    comments text,
    renseignements character varying(80),
    photo character varying(250),
    docu2 character varying(250),
    angle real,
    taille real DEFAULT 1,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POLYGON'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


--
-- TOC entry 238 (class 1259 OID 21114)
-- Name: immeubles_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE immeubles_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3624 (class 0 OID 0)
-- Dependencies: 238
-- Name: immeubles_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE immeubles_gid_seq OWNED BY immeubles.gid;


--
-- TOC entry 3625 (class 0 OID 0)
-- Dependencies: 238
-- Name: immeubles_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('immeubles_gid_seq', 1, false);


--
-- TOC entry 196 (class 1259 OID 20492)
-- Name: infiltrations; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE infiltrations (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
    install_gid integer NOT NULL,
    identif character varying(80),
    type_infiltration character varying(80),
    longueur real,
    largeur real,
    profondeur real,
    surface real,
    comments text,
    marq_constructeur character varying(80),
    annee_pose date,
    desaffecte_le date DEFAULT '2100-12-31'::date,
    poseur character varying(80),
    renseignements character varying(80),
    accessibilite character varying(80),
    integrite character varying(80),
    proprete character varying(80),
    securite character varying(80),
    ecoulement character varying(80),
    photo character varying(250),
    docu2 character varying(250),
    angle real,
    taille real DEFAULT 1,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'MULTIPOLYGON'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


--
-- TOC entry 197 (class 1259 OID 20503)
-- Name: infiltrations_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE infiltrations_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3626 (class 0 OID 0)
-- Dependencies: 197
-- Name: infiltrations_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE infiltrations_gid_seq OWNED BY infiltrations.gid;


--
-- TOC entry 3627 (class 0 OID 0)
-- Dependencies: 197
-- Name: infiltrations_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('infiltrations_gid_seq', 1, false);


--
-- TOC entry 198 (class 1259 OID 20505)
-- Name: installations; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE installations (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
    identif character varying(80),
    type_installations character varying(80),
    date_chgt date,
    comments text,
    angle real,
    taille real DEFAULT 1,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


--
-- TOC entry 199 (class 1259 OID 20515)
-- Name: installations_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE installations_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3628 (class 0 OID 0)
-- Dependencies: 199
-- Name: installations_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE installations_gid_seq OWNED BY installations.gid;


--
-- TOC entry 3629 (class 0 OID 0)
-- Dependencies: 199
-- Name: installations_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('installations_gid_seq', 2, true);


--
-- TOC entry 200 (class 1259 OID 20517)
-- Name: origines; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE origines (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
    identif character varying(80),
    typ_origine character varying(80),
    trace_fluo character varying(80),
    ecoulement character varying(80),
    comments text,
    renseignements character varying(80),
    photo character varying(250),
    docu2 character varying(250),
    angle real,
    taille real DEFAULT 1,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


--
-- TOC entry 201 (class 1259 OID 20527)
-- Name: origines_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE origines_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3630 (class 0 OID 0)
-- Dependencies: 201
-- Name: origines_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE origines_gid_seq OWNED BY origines.gid;


--
-- TOC entry 3631 (class 0 OID 0)
-- Dependencies: 201
-- Name: origines_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('origines_gid_seq', 1, false);


--
-- TOC entry 202 (class 1259 OID 20529)
-- Name: pentes; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE pentes (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
    pente real,
    longueur real,
    comments text,
    renseignements character varying(80),
    angle real,
    taille real DEFAULT 1,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'MULTILINESTRING'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


--
-- TOC entry 203 (class 1259 OID 20539)
-- Name: pentes_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE pentes_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3632 (class 0 OID 0)
-- Dependencies: 203
-- Name: pentes_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE pentes_gid_seq OWNED BY pentes.gid;


--
-- TOC entry 3633 (class 0 OID 0)
-- Dependencies: 203
-- Name: pentes_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('pentes_gid_seq', 1, false);


--
-- TOC entry 204 (class 1259 OID 20541)
-- Name: pieces; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE pieces (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
    immeuble_gid integer NOT NULL,
    identif character varying(80),
    piece character varying(80),
    etage integer DEFAULT 0,
    est_pp integer DEFAULT 0,
    genere_eu character varying(5),
    surface real,
    comments text,
    renseignements character varying(80),
    angle real,
    taille real DEFAULT 1,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


--
-- TOC entry 205 (class 1259 OID 20553)
-- Name: pieces_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE pieces_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3634 (class 0 OID 0)
-- Dependencies: 205
-- Name: pieces_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE pieces_gid_seq OWNED BY pieces.gid;


--
-- TOC entry 3635 (class 0 OID 0)
-- Dependencies: 205
-- Name: pieces_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('pieces_gid_seq', 1, true);


--
-- TOC entry 206 (class 1259 OID 20555)
-- Name: pompages; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE pompages (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
    install_gid integer NOT NULL,
    identif character varying(80),
    type_pompage character varying(80),
    marq_bache character varying(80),
    volume_bache integer,
    profondeur real,
    hmt real,
    nb_pompe integer DEFAULT 1,
    caract_pompe text,
    comments text,
    annee_pose date,
    desaffecte_le date DEFAULT '2100-12-31'::date,
    poseur character varying(80),
    renseignements character varying(80),
    accessibilite character varying(80),
    integrite character varying(80),
    proprete character varying(80),
    securite character varying(80),
    ecoulement character varying(80),
    photo character varying(250),
    docu2 character varying(250),
    angle real,
    taille real DEFAULT 1,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


--
-- TOC entry 207 (class 1259 OID 20567)
-- Name: pompages_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE pompages_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3636 (class 0 OID 0)
-- Dependencies: 207
-- Name: pompages_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE pompages_gid_seq OWNED BY pompages.gid;


--
-- TOC entry 3637 (class 0 OID 0)
-- Dependencies: 207
-- Name: pompages_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('pompages_gid_seq', 1, false);


--
-- TOC entry 208 (class 1259 OID 20569)
-- Name: pretraitements; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE pretraitements (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
    install_gid integer NOT NULL,
    identif character varying(80),
    type_pretr character varying(80),
    volume integer DEFAULT 3000,
    nb_acces integer DEFAULT 0,
    origine character varying(25),
    sortie character varying(25),
    comments text,
    marq_constructeur character varying(80),
    annee_pose date,
    desaffecte_le date DEFAULT '2100-12-31'::date,
    poseur character varying(80),
    renseignements character varying(80),
    accessibilite character varying(80),
    integrite character varying(80),
    proprete character varying(80),
    securite character varying(80),
    ecoulement character varying(80),
    photo character varying(250),
    docu2 character varying(250),
    longueur real,
    largeur real,
    haut_prof real,
    angle real,
    taille real DEFAULT 1,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


--
-- TOC entry 209 (class 1259 OID 20582)
-- Name: pretraitements_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE pretraitements_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3638 (class 0 OID 0)
-- Dependencies: 209
-- Name: pretraitements_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE pretraitements_gid_seq OWNED BY pretraitements.gid;


--
-- TOC entry 3639 (class 0 OID 0)
-- Dependencies: 209
-- Name: pretraitements_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('pretraitements_gid_seq', 1, false);


--
-- TOC entry 210 (class 1259 OID 20584)
-- Name: puits_d_eau; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE puits_d_eau (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
    identif character varying(80),
    type_puits character varying(80),
    utilisation character varying(80),
    declaration character varying(80),
    num_declaration character varying(80),
    profondeur real,
    niveau_haut real,
    hauteur_nappe real,
    date_haut_nappe date,
    niveau_bas real,
    comments text,
    annee_pose date,
    desaffecte_le date DEFAULT '2100-12-31'::date,
    renseignements character varying(80),
    photo character varying(250),
    docu2 character varying(250),
    angle real,
    taille real DEFAULT 1,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


--
-- TOC entry 211 (class 1259 OID 20595)
-- Name: puits_d_eau_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE puits_d_eau_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3640 (class 0 OID 0)
-- Dependencies: 211
-- Name: puits_d_eau_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE puits_d_eau_gid_seq OWNED BY puits_d_eau.gid;


--
-- TOC entry 3641 (class 0 OID 0)
-- Dependencies: 211
-- Name: puits_d_eau_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('puits_d_eau_gid_seq', 1, false);


--
-- TOC entry 212 (class 1259 OID 20597)
-- Name: puits_dispersion; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE puits_dispersion (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
    install_gid integer NOT NULL,
    identif character varying(80),
    typ_dispr character varying(80),
    autorisation character varying(80),
    ref_autorisation character varying(80),
    comments text,
    annee_pose date,
    desaffecte_le date DEFAULT '2100-12-31'::date,
    poseur character varying(80),
    renseignements character varying(80),
    accessibilite character varying(80),
    integrite character varying(80),
    proprete character varying(80),
    securite character varying(80),
    ecoulement character varying(80),
    photo character varying(250),
    docu2 character varying(250),
    longueur real,
    largeur real,
    profondeur real,
    angle real,
    taille real DEFAULT 1,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


--
-- TOC entry 213 (class 1259 OID 20608)
-- Name: puits_dispersion_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE puits_dispersion_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3642 (class 0 OID 0)
-- Dependencies: 213
-- Name: puits_dispersion_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE puits_dispersion_gid_seq OWNED BY puits_dispersion.gid;


--
-- TOC entry 3643 (class 0 OID 0)
-- Dependencies: 213
-- Name: puits_dispersion_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('puits_dispersion_gid_seq', 1, false);


--
-- TOC entry 214 (class 1259 OID 20610)
-- Name: regards; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE regards (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
    install_gid integer NOT NULL,
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
    annee_pose date,
    desaffecte_le date DEFAULT '2100-12-31'::date,
    poseur character varying(80),
    renseignements character varying(80),
    accessibilite character varying(80),
    integrite character varying(80),
    proprete character varying(80),
    securite character varying(80),
    ecoulement character varying(80),
    photo character varying(250),
    docu2 character varying(250),
    angle real,
    taille real DEFAULT 1,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


--
-- TOC entry 215 (class 1259 OID 20623)
-- Name: regards_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE regards_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3644 (class 0 OID 0)
-- Dependencies: 215
-- Name: regards_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE regards_gid_seq OWNED BY regards.gid;


--
-- TOC entry 3645 (class 0 OID 0)
-- Dependencies: 215
-- Name: regards_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('regards_gid_seq', 1, false);


--
-- TOC entry 216 (class 1259 OID 20625)
-- Name: rejets; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE rejets (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
    install_gid integer NOT NULL,
    identif character varying(80),
    type_rejet character varying(80),
    autorisation character varying(12),
    ref_autorisation character varying(80),
    comments text,
    marq_constructeur character varying(80),
    annee_pose date,
    desaffecte_le date DEFAULT '2100-12-31'::date,
    poseur character varying(80),
    renseignements character varying(80),
    accessibilite character varying(80),
    integrite character varying(80),
    proprete character varying(80),
    securite character varying(80),
    ecoulement character varying(80),
    photo character varying(250),
    docu2 character varying(250),
    haut_prof real,
    angle real,
    taille real DEFAULT 1,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


--
-- TOC entry 217 (class 1259 OID 20636)
-- Name: rejets_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE rejets_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3646 (class 0 OID 0)
-- Dependencies: 217
-- Name: rejets_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE rejets_gid_seq OWNED BY rejets.gid;


--
-- TOC entry 3647 (class 0 OID 0)
-- Dependencies: 217
-- Name: rejets_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('rejets_gid_seq', 1, false);


--
-- TOC entry 218 (class 1259 OID 20638)
-- Name: sondages; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE sondages (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
    identif character varying(80),
    type_sondage character varying(80),
    date_realisation date,
    bureau character varying(80),
    scan_doc character varying(250),
    profondeur real,
    hydromorphie real,
    nappe real,
    comments text,
    renseignements character varying(80),
    photo character varying(250),
    docu2 character varying(250),
    angle real,
    taille real DEFAULT 1,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


--
-- TOC entry 219 (class 1259 OID 20648)
-- Name: sondages_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE sondages_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3648 (class 0 OID 0)
-- Dependencies: 219
-- Name: sondages_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE sondages_gid_seq OWNED BY sondages.gid;


--
-- TOC entry 3649 (class 0 OID 0)
-- Dependencies: 219
-- Name: sondages_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('sondages_gid_seq', 1, false);


--
-- TOC entry 220 (class 1259 OID 20650)
-- Name: surfaces_terrain; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE surfaces_terrain (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
    identif character varying(80),
    type_surface character varying(80),
    surface real,
    impermeable character varying(3),
    comments text,
    renseignements character varying(80),
    photo character varying(250),
    docu2 character varying(250),
    taille real DEFAULT 1,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'MULTIPOLYGON'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


--
-- TOC entry 221 (class 1259 OID 20660)
-- Name: surfaces_terrain_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE surfaces_terrain_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3650 (class 0 OID 0)
-- Dependencies: 221
-- Name: surfaces_terrain_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE surfaces_terrain_gid_seq OWNED BY surfaces_terrain.gid;


--
-- TOC entry 3651 (class 0 OID 0)
-- Dependencies: 221
-- Name: surfaces_terrain_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('surfaces_terrain_gid_seq', 1, false);


--
-- TOC entry 222 (class 1259 OID 20662)
-- Name: traitements_classiks; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE traitements_classiks (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
    install_gid integer NOT NULL,
    identif character varying(80),
    typ_traitt character varying(80),
    longueur real,
    largeur real,
    profondeur real,
    surface real,
    angle real,
    details text,
    comments text,
    annee_pose date,
    desaffecte_le date DEFAULT '2100-12-31'::date,
    poseur character varying(80),
    renseignements character varying(80),
    accessibilite character varying(80),
    integrite character varying(80),
    proprete character varying(80),
    securite character varying(80),
    ecoulement character varying(80),
    photo character varying(250),
    docu2 character varying(250),
    taille real DEFAULT 1,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


--
-- TOC entry 223 (class 1259 OID 20673)
-- Name: traitements_classiks_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE traitements_classiks_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3652 (class 0 OID 0)
-- Dependencies: 223
-- Name: traitements_classiks_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE traitements_classiks_gid_seq OWNED BY traitements_classiks.gid;


--
-- TOC entry 3653 (class 0 OID 0)
-- Dependencies: 223
-- Name: traitements_classiks_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('traitements_classiks_gid_seq', 1, false);


--
-- TOC entry 224 (class 1259 OID 20675)
-- Name: usagers; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE usagers (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
    immeuble_id integer NOT NULL,
    num_ordre integer DEFAULT 1,
    type_usagers character varying(80),
    facturable boolean,
    nom character varying(200) NOT NULL,
    adresse text,
    code_postal character varying(12),
    ville_usagers character varying(250),
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


--
-- TOC entry 225 (class 1259 OID 20682)
-- Name: usagers_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE usagers_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3654 (class 0 OID 0)
-- Dependencies: 225
-- Name: usagers_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE usagers_gid_seq OWNED BY usagers.gid;


--
-- TOC entry 3655 (class 0 OID 0)
-- Dependencies: 225
-- Name: usagers_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('usagers_gid_seq', 1, false);


--
-- TOC entry 226 (class 1259 OID 20684)
-- Name: ventilations; Type: TABLE; Schema: spanc; Owner: -; Tablespace: 
--

CREATE TABLE ventilations (
    gid integer NOT NULL,
    refdoss character varying(25) DEFAULT 9999 NOT NULL,
    install_gid integer NOT NULL,
    identif character varying(100),
    typ_ventil character varying(80) NOT NULL,
    origine character varying(80),
    test_fumee character varying(25),
    diametre real DEFAULT 100,
    hauteur real,
    comments text,
    marq_constructeur character varying(80),
    annee_pose date,
    desaffecte_le date DEFAULT '2100-12-31'::date,
    poseur character varying(80),
    accessibilite character varying(80),
    integrite character varying(80),
    photo character varying(250),
    docu2 character varying(250),
    angle real,
    taille real DEFAULT 1,
    cree_le timestamp without time zone,
    modifie_le timestamp without time zone,
    saisie_par character varying(25),
    the_geom public.geometry,
    CONSTRAINT enforce_dims_the_geom CHECK ((public.st_ndims(the_geom) = 2)),
    CONSTRAINT enforce_geotype_the_geom CHECK (((public.geometrytype(the_geom) = 'POINT'::text) OR (the_geom IS NULL))),
    CONSTRAINT enforce_srid_the_geom CHECK ((public.st_srid(the_geom) = 2154))
);


--
-- TOC entry 227 (class 1259 OID 20696)
-- Name: ventilations_gid_seq; Type: SEQUENCE; Schema: spanc; Owner: -
--

CREATE SEQUENCE ventilations_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3656 (class 0 OID 0)
-- Dependencies: 227
-- Name: ventilations_gid_seq; Type: SEQUENCE OWNED BY; Schema: spanc; Owner: -
--

ALTER SEQUENCE ventilations_gid_seq OWNED BY ventilations.gid;


--
-- TOC entry 3657 (class 0 OID 0)
-- Dependencies: 227
-- Name: ventilations_gid_seq; Type: SEQUENCE SET; Schema: spanc; Owner: -
--

SELECT pg_catalog.setval('ventilations_gid_seq', 1, false);


--
-- TOC entry 3216 (class 2604 OID 20698)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY alim_aep ALTER COLUMN gid SET DEFAULT nextval('alim_aep_gid_seq'::regclass);


--
-- TOC entry 3222 (class 2604 OID 20699)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY arbres ALTER COLUMN gid SET DEFAULT nextval('arbres_gid_seq'::regclass);


--
-- TOC entry 3348 (class 2604 OID 21027)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY base ALTER COLUMN gid SET DEFAULT nextval('base_gid_seq'::regclass);


--
-- TOC entry 3229 (class 2604 OID 20701)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY canalisations ALTER COLUMN gid SET DEFAULT nextval('canalisations_gid_seq'::regclass);


--
-- TOC entry 3351 (class 2604 OID 21040)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY comptabilites ALTER COLUMN gid SET DEFAULT nextval('comptabilites_gid_seq'::regclass);


--
-- TOC entry 3353 (class 2604 OID 21061)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY cont_conceptions ALTER COLUMN gid SET DEFAULT nextval('cont_conceptions_gid_seq'::regclass);


--
-- TOC entry 3234 (class 2604 OID 20703)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY cont_periodiques ALTER COLUMN gid SET DEFAULT nextval('cont_periodiques_gid_seq'::regclass);


--
-- TOC entry 3355 (class 2604 OID 21082)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY cont_realisations ALTER COLUMN gid SET DEFAULT nextval('cont_realisations_gid_seq'::regclass);


--
-- TOC entry 3237 (class 2604 OID 20705)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY dossiers ALTER COLUMN gid SET DEFAULT nextval('dossiers_gid_seq'::regclass);


--
-- TOC entry 3357 (class 2604 OID 21100)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY entretiens ALTER COLUMN gid SET DEFAULT nextval('entretiens_gid_seq'::regclass);


--
-- TOC entry 3244 (class 2604 OID 20706)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY filieres_agreees ALTER COLUMN gid SET DEFAULT nextval('filieres_agreees_gid_seq'::regclass);


--
-- TOC entry 3250 (class 2604 OID 20707)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY haies ALTER COLUMN gid SET DEFAULT nextval('haies_gid_seq'::regclass);


--
-- TOC entry 3358 (class 2604 OID 21119)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY immeubles ALTER COLUMN gid SET DEFAULT nextval('immeubles_gid_seq'::regclass);


--
-- TOC entry 3256 (class 2604 OID 20708)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY infiltrations ALTER COLUMN gid SET DEFAULT nextval('infiltrations_gid_seq'::regclass);


--
-- TOC entry 3261 (class 2604 OID 20709)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY installations ALTER COLUMN gid SET DEFAULT nextval('installations_gid_seq'::regclass);


--
-- TOC entry 3266 (class 2604 OID 20710)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY origines ALTER COLUMN gid SET DEFAULT nextval('origines_gid_seq'::regclass);


--
-- TOC entry 3271 (class 2604 OID 20711)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY pentes ALTER COLUMN gid SET DEFAULT nextval('pentes_gid_seq'::regclass);


--
-- TOC entry 3278 (class 2604 OID 20712)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY pieces ALTER COLUMN gid SET DEFAULT nextval('pieces_gid_seq'::regclass);


--
-- TOC entry 3285 (class 2604 OID 20713)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY pompages ALTER COLUMN gid SET DEFAULT nextval('pompages_gid_seq'::regclass);


--
-- TOC entry 3293 (class 2604 OID 20714)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY pretraitements ALTER COLUMN gid SET DEFAULT nextval('pretraitements_gid_seq'::regclass);


--
-- TOC entry 3299 (class 2604 OID 20715)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY puits_d_eau ALTER COLUMN gid SET DEFAULT nextval('puits_d_eau_gid_seq'::regclass);


--
-- TOC entry 3305 (class 2604 OID 20716)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY puits_dispersion ALTER COLUMN gid SET DEFAULT nextval('puits_dispersion_gid_seq'::regclass);


--
-- TOC entry 3313 (class 2604 OID 20717)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY regards ALTER COLUMN gid SET DEFAULT nextval('regards_gid_seq'::regclass);


--
-- TOC entry 3319 (class 2604 OID 20718)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY rejets ALTER COLUMN gid SET DEFAULT nextval('rejets_gid_seq'::regclass);


--
-- TOC entry 3324 (class 2604 OID 20719)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY sondages ALTER COLUMN gid SET DEFAULT nextval('sondages_gid_seq'::regclass);


--
-- TOC entry 3329 (class 2604 OID 20720)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY surfaces_terrain ALTER COLUMN gid SET DEFAULT nextval('surfaces_terrain_gid_seq'::regclass);


--
-- TOC entry 3335 (class 2604 OID 20721)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY traitements_classiks ALTER COLUMN gid SET DEFAULT nextval('traitements_classiks_gid_seq'::regclass);


--
-- TOC entry 3340 (class 2604 OID 20722)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY usagers ALTER COLUMN gid SET DEFAULT nextval('usagers_gid_seq'::regclass);


--
-- TOC entry 3344 (class 2604 OID 20723)
-- Name: gid; Type: DEFAULT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY ventilations ALTER COLUMN gid SET DEFAULT nextval('ventilations_gid_seq'::regclass);


--
-- TOC entry 3567 (class 0 OID 20352)
-- Dependencies: 182
-- Data for Name: alim_aep; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3568 (class 0 OID 20365)
-- Dependencies: 184
-- Data for Name: arbres; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3590 (class 0 OID 21024)
-- Dependencies: 229
-- Data for Name: base; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3569 (class 0 OID 20388)
-- Dependencies: 186
-- Data for Name: canalisations; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3591 (class 0 OID 21037)
-- Dependencies: 231
-- Data for Name: comptabilites; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3592 (class 0 OID 21058)
-- Dependencies: 233
-- Data for Name: cont_conceptions; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3570 (class 0 OID 20418)
-- Dependencies: 188
-- Data for Name: cont_periodiques; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3593 (class 0 OID 21079)
-- Dependencies: 235
-- Data for Name: cont_realisations; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3571 (class 0 OID 20436)
-- Dependencies: 190
-- Data for Name: dossiers; Type: TABLE DATA; Schema: spanc; Owner: -
--

INSERT INTO dossiers (gid, refdoss, archivage, etat, comments, zrs, zaee, aut_zone, secteur, commune_id, photo, docu2, angle, taille, cree_le, modifie_le, saisie_par, the_geom) VALUES (1, '9999', '9999', 'ghost', 'premier dossier de la création', 'non', 'non', 'non plus', NULL, NULL, NULL, NULL, NULL, 1, '2012-09-26 15:36:56', '2012-09-26 23:36:32', 'spanc29', '01010000206A080000BBEE3D4F38B91C41525933E958BB5941');


--
-- TOC entry 3594 (class 0 OID 21097)
-- Dependencies: 237
-- Data for Name: entretiens; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3572 (class 0 OID 20455)
-- Dependencies: 192
-- Data for Name: filieres_agreees; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3573 (class 0 OID 20469)
-- Dependencies: 194
-- Data for Name: haies; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3595 (class 0 OID 21116)
-- Dependencies: 239
-- Data for Name: immeubles; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3574 (class 0 OID 20492)
-- Dependencies: 196
-- Data for Name: infiltrations; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3575 (class 0 OID 20505)
-- Dependencies: 198
-- Data for Name: installations; Type: TABLE DATA; Schema: spanc; Owner: -
--

INSERT INTO installations (gid, refdoss, identif, type_installations, date_chgt, comments, angle, taille, cree_le, modifie_le, saisie_par, the_geom) VALUES (1, '9999', NULL, 'ghost', '2012-09-30', 'premier installation de la création', 0, 1, '2012-09-26 15:37:51', '2012-09-26 23:37:24', 'spanc29', '01010000206A080000A56659A53AB91C41E3073D0357BB5941');


--
-- TOC entry 3576 (class 0 OID 20517)
-- Dependencies: 200
-- Data for Name: origines; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3577 (class 0 OID 20529)
-- Dependencies: 202
-- Data for Name: pentes; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3578 (class 0 OID 20541)
-- Dependencies: 204
-- Data for Name: pieces; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3579 (class 0 OID 20555)
-- Dependencies: 206
-- Data for Name: pompages; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3580 (class 0 OID 20569)
-- Dependencies: 208
-- Data for Name: pretraitements; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3581 (class 0 OID 20584)
-- Dependencies: 210
-- Data for Name: puits_d_eau; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3582 (class 0 OID 20597)
-- Dependencies: 212
-- Data for Name: puits_dispersion; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3583 (class 0 OID 20610)
-- Dependencies: 214
-- Data for Name: regards; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3584 (class 0 OID 20625)
-- Dependencies: 216
-- Data for Name: rejets; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3585 (class 0 OID 20638)
-- Dependencies: 218
-- Data for Name: sondages; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3586 (class 0 OID 20650)
-- Dependencies: 220
-- Data for Name: surfaces_terrain; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3587 (class 0 OID 20662)
-- Dependencies: 222
-- Data for Name: traitements_classiks; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3588 (class 0 OID 20675)
-- Dependencies: 224
-- Data for Name: usagers; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3589 (class 0 OID 20684)
-- Dependencies: 226
-- Data for Name: ventilations; Type: TABLE DATA; Schema: spanc; Owner: -
--



--
-- TOC entry 3489 (class 2606 OID 21128)
-- Name: batiment_pkey; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY immeubles
    ADD CONSTRAINT batiment_pkey PRIMARY KEY (gid);


--
-- TOC entry 3472 (class 2606 OID 21046)
-- Name: compta_pk; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY comptabilites
    ADD CONSTRAINT compta_pk PRIMARY KEY (gid);


--
-- TOC entry 3379 (class 2606 OID 20729)
-- Name: dossiers_pkey; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dossiers
    ADD CONSTRAINT dossiers_pkey PRIMARY KEY (gid);


--
-- TOC entry 3485 (class 2606 OID 21105)
-- Name: entretiens_pkey; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY entretiens
    ADD CONSTRAINT entretiens_pkey PRIMARY KEY (gid);


--
-- TOC entry 3382 (class 2606 OID 20733)
-- Name: pk_refdoss; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dossiers
    ADD CONSTRAINT pk_refdoss UNIQUE (refdoss);


--
-- TOC entry 3463 (class 2606 OID 20735)
-- Name: pk_usagers; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY usagers
    ADD CONSTRAINT pk_usagers PRIMARY KEY (gid);


--
-- TOC entry 3364 (class 2606 OID 20737)
-- Name: pkey_alim_aep; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY alim_aep
    ADD CONSTRAINT pkey_alim_aep PRIMARY KEY (gid);


--
-- TOC entry 3367 (class 2606 OID 20739)
-- Name: pkey_arbres; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY arbres
    ADD CONSTRAINT pkey_arbres PRIMARY KEY (gid);


--
-- TOC entry 3470 (class 2606 OID 21034)
-- Name: pkey_base; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY base
    ADD CONSTRAINT pkey_base PRIMARY KEY (gid);


--
-- TOC entry 3372 (class 2606 OID 20743)
-- Name: pkey_canalisations; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY canalisations
    ADD CONSTRAINT pkey_canalisations PRIMARY KEY (gid);


--
-- TOC entry 3478 (class 2606 OID 21067)
-- Name: pkey_cont_conception; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cont_conceptions
    ADD CONSTRAINT pkey_cont_conception PRIMARY KEY (gid);


--
-- TOC entry 3377 (class 2606 OID 20747)
-- Name: pkey_cont_periodique; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cont_periodiques
    ADD CONSTRAINT pkey_cont_periodique PRIMARY KEY (gid);


--
-- TOC entry 3483 (class 2606 OID 21088)
-- Name: pkey_cont_realisation; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cont_realisations
    ADD CONSTRAINT pkey_cont_realisation PRIMARY KEY (gid);


--
-- TOC entry 3386 (class 2606 OID 20751)
-- Name: pkey_filieres_agreees; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY filieres_agreees
    ADD CONSTRAINT pkey_filieres_agreees PRIMARY KEY (gid);


--
-- TOC entry 3391 (class 2606 OID 20753)
-- Name: pkey_haies; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY haies
    ADD CONSTRAINT pkey_haies PRIMARY KEY (gid);


--
-- TOC entry 3396 (class 2606 OID 20755)
-- Name: pkey_infiltrations; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY infiltrations
    ADD CONSTRAINT pkey_infiltrations PRIMARY KEY (gid);


--
-- TOC entry 3401 (class 2606 OID 20757)
-- Name: pkey_installations; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY installations
    ADD CONSTRAINT pkey_installations PRIMARY KEY (gid);


--
-- TOC entry 3406 (class 2606 OID 20759)
-- Name: pkey_origines; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY origines
    ADD CONSTRAINT pkey_origines PRIMARY KEY (gid);


--
-- TOC entry 3409 (class 2606 OID 20761)
-- Name: pkey_pentes; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pentes
    ADD CONSTRAINT pkey_pentes PRIMARY KEY (gid);


--
-- TOC entry 3413 (class 2606 OID 20763)
-- Name: pkey_pieces; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pieces
    ADD CONSTRAINT pkey_pieces PRIMARY KEY (gid);


--
-- TOC entry 3419 (class 2606 OID 20765)
-- Name: pkey_pompages; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pompages
    ADD CONSTRAINT pkey_pompages PRIMARY KEY (gid);


--
-- TOC entry 3424 (class 2606 OID 20767)
-- Name: pkey_pretraitements; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pretraitements
    ADD CONSTRAINT pkey_pretraitements PRIMARY KEY (gid);


--
-- TOC entry 3429 (class 2606 OID 20769)
-- Name: pkey_puits_d_eau; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY puits_d_eau
    ADD CONSTRAINT pkey_puits_d_eau PRIMARY KEY (gid);


--
-- TOC entry 3435 (class 2606 OID 20771)
-- Name: pkey_puits_dispersion; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY puits_dispersion
    ADD CONSTRAINT pkey_puits_dispersion PRIMARY KEY (gid);


--
-- TOC entry 3440 (class 2606 OID 20773)
-- Name: pkey_regards; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY regards
    ADD CONSTRAINT pkey_regards PRIMARY KEY (gid);


--
-- TOC entry 3445 (class 2606 OID 20775)
-- Name: pkey_rejets; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rejets
    ADD CONSTRAINT pkey_rejets PRIMARY KEY (gid);


--
-- TOC entry 3450 (class 2606 OID 20777)
-- Name: pkey_sondages; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sondages
    ADD CONSTRAINT pkey_sondages PRIMARY KEY (gid);


--
-- TOC entry 3455 (class 2606 OID 20779)
-- Name: pkey_surfaces_terrain; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY surfaces_terrain
    ADD CONSTRAINT pkey_surfaces_terrain PRIMARY KEY (gid);


--
-- TOC entry 3460 (class 2606 OID 20781)
-- Name: pkey_traitements_classiks; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY traitements_classiks
    ADD CONSTRAINT pkey_traitements_classiks PRIMARY KEY (gid);


--
-- TOC entry 3467 (class 2606 OID 20783)
-- Name: pkey_ventilations; Type: CONSTRAINT; Schema: spanc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ventilations
    ADD CONSTRAINT pkey_ventilations PRIMARY KEY (gid);


--
-- TOC entry 3487 (class 1259 OID 21134)
-- Name: FKI_immeubles; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX "FKI_immeubles" ON immeubles USING btree (refdoss);


--
-- TOC entry 3415 (class 1259 OID 20785)
-- Name: FKI_install_pompage; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX "FKI_install_pompage" ON pompages USING btree (install_gid);


--
-- TOC entry 3421 (class 1259 OID 20786)
-- Name: FKI_pretraitement; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX "FKI_pretraitement" ON pretraitements USING btree (install_gid);


--
-- TOC entry 3380 (class 1259 OID 20787)
-- Name: dossiers_the_geom_gist; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX dossiers_the_geom_gist ON dossiers USING gist (the_geom);


--
-- TOC entry 3479 (class 1259 OID 21089)
-- Name: fki_conception; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX fki_conception ON cont_realisations USING btree (concept_gid);


--
-- TOC entry 3369 (class 1259 OID 20789)
-- Name: fki_dossier_canalisations; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX fki_dossier_canalisations ON canalisations USING btree (refdoss);


--
-- TOC entry 3475 (class 1259 OID 21073)
-- Name: fki_dossier_cont_conception; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX fki_dossier_cont_conception ON cont_conceptions USING btree (refdoss);


--
-- TOC entry 3374 (class 1259 OID 20791)
-- Name: fki_dossier_cont_periodiques; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX fki_dossier_cont_periodiques ON cont_periodiques USING btree (refdoss);


--
-- TOC entry 3480 (class 1259 OID 21090)
-- Name: fki_dossier_cont_realisation; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX fki_dossier_cont_realisation ON cont_realisations USING btree (refdoss);


--
-- TOC entry 3383 (class 1259 OID 20793)
-- Name: fki_dossier_filieres_agreees; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX fki_dossier_filieres_agreees ON filieres_agreees USING btree (refdoss);


--
-- TOC entry 3388 (class 1259 OID 20794)
-- Name: fki_dossier_haies; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX fki_dossier_haies ON haies USING btree (refdoss);


--
-- TOC entry 3490 (class 1259 OID 21135)
-- Name: fki_dossier_immeubles; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX fki_dossier_immeubles ON immeubles USING btree (refdoss);


--
-- TOC entry 3393 (class 1259 OID 20796)
-- Name: fki_dossier_infiltrations; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX fki_dossier_infiltrations ON infiltrations USING btree (refdoss);


--
-- TOC entry 3398 (class 1259 OID 20797)
-- Name: fki_dossier_installations; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX fki_dossier_installations ON installations USING btree (refdoss);


--
-- TOC entry 3403 (class 1259 OID 20798)
-- Name: fki_dossier_origines; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX fki_dossier_origines ON origines USING btree (refdoss);


--
-- TOC entry 3416 (class 1259 OID 20799)
-- Name: fki_dossier_pompages; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX fki_dossier_pompages ON pompages USING btree (refdoss);


--
-- TOC entry 3431 (class 1259 OID 20800)
-- Name: fki_dossier_puits; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX fki_dossier_puits ON puits_dispersion USING btree (refdoss);


--
-- TOC entry 3426 (class 1259 OID 20801)
-- Name: fki_dossier_puits_d_eau; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX fki_dossier_puits_d_eau ON puits_d_eau USING btree (refdoss);


--
-- TOC entry 3432 (class 1259 OID 20802)
-- Name: fki_dossier_puits_dispersion; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX fki_dossier_puits_dispersion ON puits_dispersion USING btree (refdoss);


--
-- TOC entry 3437 (class 1259 OID 20803)
-- Name: fki_dossier_regards; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX fki_dossier_regards ON regards USING btree (refdoss);


--
-- TOC entry 3442 (class 1259 OID 20804)
-- Name: fki_dossier_rejets; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX fki_dossier_rejets ON rejets USING btree (refdoss);


--
-- TOC entry 3447 (class 1259 OID 20805)
-- Name: fki_dossier_sondages; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX fki_dossier_sondages ON sondages USING btree (refdoss);


--
-- TOC entry 3452 (class 1259 OID 20806)
-- Name: fki_dossier_surfaces_terrain; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX fki_dossier_surfaces_terrain ON surfaces_terrain USING btree (refdoss);


--
-- TOC entry 3457 (class 1259 OID 20807)
-- Name: fki_dossier_traitements_classiks; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX fki_dossier_traitements_classiks ON traitements_classiks USING btree (refdoss);


--
-- TOC entry 3464 (class 1259 OID 20808)
-- Name: fki_dossier_ventilations; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX fki_dossier_ventilations ON ventilations USING btree (refdoss);


--
-- TOC entry 3473 (class 1259 OID 21052)
-- Name: fki_refdoss_dossiers; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX fki_refdoss_dossiers ON comptabilites USING btree (refdoss);


--
-- TOC entry 3486 (class 1259 OID 21111)
-- Name: idx_entretiens_refdoss; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX idx_entretiens_refdoss ON entretiens USING btree (refdoss);


--
-- TOC entry 3474 (class 1259 OID 21053)
-- Name: idx_refdoss; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX idx_refdoss ON comptabilites USING btree (refdoss);


--
-- TOC entry 3370 (class 1259 OID 20812)
-- Name: idx_refdoss_canalisations; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX idx_refdoss_canalisations ON canalisations USING btree (refdoss);


--
-- TOC entry 3476 (class 1259 OID 21074)
-- Name: idx_refdoss_cont_conception; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX idx_refdoss_cont_conception ON cont_conceptions USING btree (refdoss);


--
-- TOC entry 3375 (class 1259 OID 20814)
-- Name: idx_refdoss_cont_periodiques; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX idx_refdoss_cont_periodiques ON cont_periodiques USING btree (refdoss);


--
-- TOC entry 3481 (class 1259 OID 21091)
-- Name: idx_refdoss_cont_realisation; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX idx_refdoss_cont_realisation ON cont_realisations USING btree (refdoss);


--
-- TOC entry 3384 (class 1259 OID 20816)
-- Name: idx_refdoss_filieres_agreees; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX idx_refdoss_filieres_agreees ON filieres_agreees USING btree (refdoss);


--
-- TOC entry 3389 (class 1259 OID 20817)
-- Name: idx_refdoss_haies; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX idx_refdoss_haies ON haies USING btree (refdoss);


--
-- TOC entry 3491 (class 1259 OID 21136)
-- Name: idx_refdoss_immeubles; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX idx_refdoss_immeubles ON immeubles USING btree (refdoss);


--
-- TOC entry 3394 (class 1259 OID 20819)
-- Name: idx_refdoss_infiltrations; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX idx_refdoss_infiltrations ON infiltrations USING btree (refdoss);


--
-- TOC entry 3399 (class 1259 OID 20820)
-- Name: idx_refdoss_installations; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX idx_refdoss_installations ON installations USING btree (refdoss);


--
-- TOC entry 3404 (class 1259 OID 20821)
-- Name: idx_refdoss_origines; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX idx_refdoss_origines ON origines USING btree (refdoss);


--
-- TOC entry 3411 (class 1259 OID 20822)
-- Name: idx_refdoss_pieces; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX idx_refdoss_pieces ON pieces USING btree (refdoss);


--
-- TOC entry 3417 (class 1259 OID 20823)
-- Name: idx_refdoss_pompages; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX idx_refdoss_pompages ON pompages USING btree (refdoss);


--
-- TOC entry 3422 (class 1259 OID 20824)
-- Name: idx_refdoss_pretraitements; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX idx_refdoss_pretraitements ON pretraitements USING btree (refdoss);


--
-- TOC entry 3427 (class 1259 OID 20825)
-- Name: idx_refdoss_puits_d_eau; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX idx_refdoss_puits_d_eau ON puits_d_eau USING btree (refdoss);


--
-- TOC entry 3433 (class 1259 OID 20826)
-- Name: idx_refdoss_puits_dispersion; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX idx_refdoss_puits_dispersion ON puits_dispersion USING btree (refdoss);


--
-- TOC entry 3438 (class 1259 OID 20827)
-- Name: idx_refdoss_regards; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX idx_refdoss_regards ON regards USING btree (refdoss);


--
-- TOC entry 3443 (class 1259 OID 20828)
-- Name: idx_refdoss_rejets; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX idx_refdoss_rejets ON rejets USING btree (refdoss);


--
-- TOC entry 3448 (class 1259 OID 20829)
-- Name: idx_refdoss_sondages; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX idx_refdoss_sondages ON sondages USING btree (refdoss);


--
-- TOC entry 3453 (class 1259 OID 20830)
-- Name: idx_refdoss_surfaces_terrain; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX idx_refdoss_surfaces_terrain ON surfaces_terrain USING btree (refdoss);


--
-- TOC entry 3458 (class 1259 OID 20831)
-- Name: idx_refdoss_traitements_classiks; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX idx_refdoss_traitements_classiks ON traitements_classiks USING btree (refdoss);


--
-- TOC entry 3465 (class 1259 OID 20832)
-- Name: idx_refdoss_ventilations; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX idx_refdoss_ventilations ON ventilations USING btree (refdoss);


--
-- TOC entry 3365 (class 1259 OID 20833)
-- Name: sidx_alim_aep_the_geom; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX sidx_alim_aep_the_geom ON alim_aep USING gist (the_geom);


--
-- TOC entry 3368 (class 1259 OID 20834)
-- Name: the_geom_gist_arbres; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX the_geom_gist_arbres ON arbres USING gist (the_geom);


--
-- TOC entry 3373 (class 1259 OID 20835)
-- Name: the_geom_gist_canalisations; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX the_geom_gist_canalisations ON canalisations USING gist (the_geom);


--
-- TOC entry 3387 (class 1259 OID 20836)
-- Name: the_geom_gist_filieres_agreees; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX the_geom_gist_filieres_agreees ON filieres_agreees USING gist (the_geom);


--
-- TOC entry 3392 (class 1259 OID 20837)
-- Name: the_geom_gist_haies; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX the_geom_gist_haies ON haies USING gist (the_geom);


--
-- TOC entry 3492 (class 1259 OID 21137)
-- Name: the_geom_gist_immeubles; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX the_geom_gist_immeubles ON immeubles USING gist (the_geom);


--
-- TOC entry 3397 (class 1259 OID 20839)
-- Name: the_geom_gist_infiltrations; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX the_geom_gist_infiltrations ON infiltrations USING gist (the_geom);


--
-- TOC entry 3402 (class 1259 OID 20840)
-- Name: the_geom_gist_installations; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX the_geom_gist_installations ON installations USING gist (the_geom);


--
-- TOC entry 3407 (class 1259 OID 20841)
-- Name: the_geom_gist_origines; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX the_geom_gist_origines ON origines USING gist (the_geom);


--
-- TOC entry 3410 (class 1259 OID 20842)
-- Name: the_geom_gist_pentes; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX the_geom_gist_pentes ON pentes USING gist (the_geom);


--
-- TOC entry 3414 (class 1259 OID 20843)
-- Name: the_geom_gist_pieces; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX the_geom_gist_pieces ON pieces USING gist (the_geom);


--
-- TOC entry 3420 (class 1259 OID 20844)
-- Name: the_geom_gist_pompages; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX the_geom_gist_pompages ON pompages USING gist (the_geom);


--
-- TOC entry 3425 (class 1259 OID 20845)
-- Name: the_geom_gist_pretraitements; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX the_geom_gist_pretraitements ON pretraitements USING gist (the_geom);


--
-- TOC entry 3430 (class 1259 OID 20846)
-- Name: the_geom_gist_puits_d_eau; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX the_geom_gist_puits_d_eau ON puits_d_eau USING gist (the_geom);


--
-- TOC entry 3436 (class 1259 OID 20847)
-- Name: the_geom_gist_puits_dispersion; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX the_geom_gist_puits_dispersion ON puits_dispersion USING gist (the_geom);


--
-- TOC entry 3441 (class 1259 OID 20848)
-- Name: the_geom_gist_regards; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX the_geom_gist_regards ON regards USING gist (the_geom);


--
-- TOC entry 3446 (class 1259 OID 20849)
-- Name: the_geom_gist_rejets; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX the_geom_gist_rejets ON rejets USING gist (the_geom);


--
-- TOC entry 3451 (class 1259 OID 20850)
-- Name: the_geom_gist_sondages; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX the_geom_gist_sondages ON sondages USING gist (the_geom);


--
-- TOC entry 3456 (class 1259 OID 20851)
-- Name: the_geom_gist_surfaces_terrain; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX the_geom_gist_surfaces_terrain ON surfaces_terrain USING gist (the_geom);


--
-- TOC entry 3461 (class 1259 OID 20852)
-- Name: the_geom_gist_traitements_classiks; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX the_geom_gist_traitements_classiks ON traitements_classiks USING gist (the_geom);


--
-- TOC entry 3468 (class 1259 OID 20853)
-- Name: the_geom_gist_ventilations; Type: INDEX; Schema: spanc; Owner: -; Tablespace: 
--

CREATE INDEX the_geom_gist_ventilations ON ventilations USING gist (the_geom);


--
-- TOC entry 3519 (class 2620 OID 20854)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON dossiers FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3513 (class 2620 OID 20855)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON arbres FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3515 (class 2620 OID 20856)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON canalisations FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3541 (class 2620 OID 20857)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON puits_dispersion FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3521 (class 2620 OID 20858)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON filieres_agreees FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3523 (class 2620 OID 20859)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON haies FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3529 (class 2620 OID 20860)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON origines FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3525 (class 2620 OID 20861)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON infiltrations FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3531 (class 2620 OID 20862)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON pentes FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3533 (class 2620 OID 20863)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON pieces FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3543 (class 2620 OID 20864)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON regards FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3545 (class 2620 OID 20865)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON rejets FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3549 (class 2620 OID 20866)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON surfaces_terrain FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3555 (class 2620 OID 20867)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON ventilations FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3547 (class 2620 OID 20868)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON sondages FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3553 (class 2620 OID 20869)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON usagers FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3535 (class 2620 OID 20870)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON pompages FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3517 (class 2620 OID 20871)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON cont_periodiques FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3511 (class 2620 OID 20874)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON alim_aep FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3527 (class 2620 OID 20875)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON installations FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3537 (class 2620 OID 20876)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON pretraitements FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3539 (class 2620 OID 20877)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON puits_d_eau FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3551 (class 2620 OID 20881)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON traitements_classiks FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3557 (class 2620 OID 21054)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON comptabilites FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3559 (class 2620 OID 21075)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON cont_conceptions FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3561 (class 2620 OID 21092)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON cont_realisations FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3563 (class 2620 OID 21112)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON entretiens FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3565 (class 2620 OID 21138)
-- Name: date_cree_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_cree_le BEFORE INSERT ON immeubles FOR EACH ROW EXECUTE PROCEDURE set_cree();


--
-- TOC entry 3512 (class 2620 OID 20882)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON alim_aep FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3514 (class 2620 OID 20883)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON arbres FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3516 (class 2620 OID 20884)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON canalisations FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3518 (class 2620 OID 20886)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON cont_periodiques FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3520 (class 2620 OID 20887)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON dossiers FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3522 (class 2620 OID 20889)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON filieres_agreees FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3524 (class 2620 OID 20890)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON haies FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3526 (class 2620 OID 20891)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON infiltrations FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3530 (class 2620 OID 20892)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON origines FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3532 (class 2620 OID 20893)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON pentes FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3534 (class 2620 OID 20894)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON pieces FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3536 (class 2620 OID 20895)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON pompages FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3542 (class 2620 OID 20896)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON puits_dispersion FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3544 (class 2620 OID 20897)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON regards FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3546 (class 2620 OID 20898)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON rejets FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3548 (class 2620 OID 20899)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON sondages FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3550 (class 2620 OID 20900)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON surfaces_terrain FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3554 (class 2620 OID 20901)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON usagers FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3556 (class 2620 OID 20902)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON ventilations FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3528 (class 2620 OID 20903)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON installations FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3538 (class 2620 OID 20904)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON pretraitements FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3540 (class 2620 OID 20905)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON puits_d_eau FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3552 (class 2620 OID 20909)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON traitements_classiks FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3558 (class 2620 OID 21055)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON comptabilites FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3560 (class 2620 OID 21076)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON cont_conceptions FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3562 (class 2620 OID 21093)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON cont_realisations FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3564 (class 2620 OID 21113)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON entretiens FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3566 (class 2620 OID 21139)
-- Name: date_modifie_le; Type: TRIGGER; Schema: spanc; Owner: -
--

CREATE TRIGGER date_modifie_le BEFORE INSERT OR UPDATE ON immeubles FOR EACH ROW EXECUTE PROCEDURE set_modif();


--
-- TOC entry 3509 (class 2606 OID 21106)
-- Name: FK_dossiers; Type: FK CONSTRAINT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY entretiens
    ADD CONSTRAINT "FK_dossiers" FOREIGN KEY (refdoss) REFERENCES dossiers(refdoss);


--
-- TOC entry 3493 (class 2606 OID 20920)
-- Name: canalisations_install_gid_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY canalisations
    ADD CONSTRAINT canalisations_install_gid_fkey FOREIGN KEY (install_gid) REFERENCES installations(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3508 (class 2606 OID 21068)
-- Name: cont_conception_refdoss_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY cont_conceptions
    ADD CONSTRAINT cont_conception_refdoss_fkey FOREIGN KEY (refdoss) REFERENCES dossiers(refdoss) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3494 (class 2606 OID 20930)
-- Name: cont_periodiques_refdoss_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY cont_periodiques
    ADD CONSTRAINT cont_periodiques_refdoss_fkey FOREIGN KEY (refdoss) REFERENCES dossiers(refdoss) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3496 (class 2606 OID 20935)
-- Name: filieres_agreees_install_gid_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY filieres_agreees
    ADD CONSTRAINT filieres_agreees_install_gid_fkey FOREIGN KEY (install_gid) REFERENCES installations(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3495 (class 2606 OID 20940)
-- Name: filieres_agreees_install_gid_fkey1; Type: FK CONSTRAINT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY filieres_agreees
    ADD CONSTRAINT filieres_agreees_install_gid_fkey1 FOREIGN KEY (install_gid) REFERENCES installations(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3498 (class 2606 OID 20950)
-- Name: fk_dossier_installations; Type: FK CONSTRAINT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY installations
    ADD CONSTRAINT fk_dossier_installations FOREIGN KEY (refdoss) REFERENCES dossiers(refdoss);


--
-- TOC entry 3505 (class 2606 OID 20955)
-- Name: fk_dossier_traitements_classiks; Type: FK CONSTRAINT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY traitements_classiks
    ADD CONSTRAINT fk_dossier_traitements_classiks FOREIGN KEY (refdoss) REFERENCES dossiers(refdoss);


--
-- TOC entry 3510 (class 2606 OID 21129)
-- Name: fk_immeubles; Type: FK CONSTRAINT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY immeubles
    ADD CONSTRAINT fk_immeubles FOREIGN KEY (refdoss) REFERENCES dossiers(refdoss) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3507 (class 2606 OID 21047)
-- Name: fk_refdoss_dossiers; Type: FK CONSTRAINT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY comptabilites
    ADD CONSTRAINT fk_refdoss_dossiers FOREIGN KEY (refdoss) REFERENCES dossiers(refdoss) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3497 (class 2606 OID 20970)
-- Name: infiltrations_install_gid_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY infiltrations
    ADD CONSTRAINT infiltrations_install_gid_fkey FOREIGN KEY (install_gid) REFERENCES installations(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3499 (class 2606 OID 20980)
-- Name: pompages_install_gid_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY pompages
    ADD CONSTRAINT pompages_install_gid_fkey FOREIGN KEY (install_gid) REFERENCES installations(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3500 (class 2606 OID 20985)
-- Name: pretraitements_install_gid_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY pretraitements
    ADD CONSTRAINT pretraitements_install_gid_fkey FOREIGN KEY (install_gid) REFERENCES installations(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3501 (class 2606 OID 20990)
-- Name: puits_dispersion_install_gid_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY puits_dispersion
    ADD CONSTRAINT puits_dispersion_install_gid_fkey FOREIGN KEY (install_gid) REFERENCES installations(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3502 (class 2606 OID 20995)
-- Name: regards_install_gid_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY regards
    ADD CONSTRAINT regards_install_gid_fkey FOREIGN KEY (install_gid) REFERENCES installations(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3503 (class 2606 OID 21000)
-- Name: rejets_install_gid_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY rejets
    ADD CONSTRAINT rejets_install_gid_fkey FOREIGN KEY (install_gid) REFERENCES installations(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3504 (class 2606 OID 21005)
-- Name: sondages_refdoss_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY sondages
    ADD CONSTRAINT sondages_refdoss_fkey FOREIGN KEY (refdoss) REFERENCES dossiers(refdoss) ON UPDATE CASCADE;


--
-- TOC entry 3506 (class 2606 OID 21015)
-- Name: ventilations_install_gid_fkey; Type: FK CONSTRAINT; Schema: spanc; Owner: -
--

ALTER TABLE ONLY ventilations
    ADD CONSTRAINT ventilations_install_gid_fkey FOREIGN KEY (install_gid) REFERENCES installations(gid) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2012-09-26 23:40:41 CEST

--
-- PostgreSQL database dump complete
--

