--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6
-- Dumped by pg_dump version 15.1

-- Started on 2023-01-12 10:36:20

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 209 (class 1259 OID 16401)
-- Name: tst_atletas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tst_atletas (
    codorg integer NOT NULL,
    codreg integer NOT NULL,
    nome character varying NOT NULL,
    idade integer NOT NULL,
    altura numeric(3,2) NOT NULL,
    codpais integer NOT NULL,
    codrua integer NOT NULL,
    numeroend integer NOT NULL,
    email character varying NOT NULL
);


ALTER TABLE public.tst_atletas OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16502)
-- Name: tst_atletas_orgs_modalidades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tst_atletas_orgs_modalidades (
    codorg integer NOT NULL,
    codreg integer NOT NULL,
    codmod integer NOT NULL
);


ALTER TABLE public.tst_atletas_orgs_modalidades OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16433)
-- Name: tst_bairros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tst_bairros (
    codbai integer NOT NULL,
    codcid integer NOT NULL,
    descrbairro character varying NOT NULL
);


ALTER TABLE public.tst_bairros OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16432)
-- Name: tst_bairro_codbai_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tst_bairros ALTER COLUMN codbai ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tst_bairro_codbai_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 213 (class 1259 OID 16417)
-- Name: tst_cidades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tst_cidades (
    codcid integer NOT NULL,
    codest integer NOT NULL,
    descrcidade character varying NOT NULL,
    cep integer NOT NULL
);


ALTER TABLE public.tst_cidades OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16416)
-- Name: tst_cidades_codcidade_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tst_cidades ALTER COLUMN codcid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tst_cidades_codcidade_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 215 (class 1259 OID 16425)
-- Name: tst_estados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tst_estados (
    codest integer NOT NULL,
    codpais integer NOT NULL,
    descrestado character varying NOT NULL,
    siglaestado character varying(3) NOT NULL
);


ALTER TABLE public.tst_estados OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16424)
-- Name: tst_estados_codestado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tst_estados ALTER COLUMN codest ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tst_estados_codestado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 223 (class 1259 OID 16463)
-- Name: tst_modalidades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tst_modalidades (
    codmod integer NOT NULL,
    nome character varying NOT NULL
);


ALTER TABLE public.tst_modalidades OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16462)
-- Name: tst_modalidades_codmodalidade_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tst_modalidades ALTER COLUMN codmod ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tst_modalidades_codmodalidade_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 221 (class 1259 OID 16455)
-- Name: tst_organizacoes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tst_organizacoes (
    codorg integer NOT NULL,
    codpais integer NOT NULL,
    descrorg character varying NOT NULL,
    siglaorg character varying NOT NULL,
    apelidoorg character varying NOT NULL,
    codrua integer NOT NULL,
    numeroend integer NOT NULL,
    email character varying NOT NULL
);


ALTER TABLE public.tst_organizacoes OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16454)
-- Name: tst_organizacoes_codorg_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tst_organizacoes ALTER COLUMN codorg ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tst_organizacoes_codorg_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 211 (class 1259 OID 16409)
-- Name: tst_paises; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tst_paises (
    codpais integer NOT NULL,
    descrpais character varying NOT NULL,
    sigla character varying(3),
    descrnacionalidade character varying
);


ALTER TABLE public.tst_paises OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16408)
-- Name: tst_paises_codpais_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tst_paises ALTER COLUMN codpais ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tst_paises_codpais_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 16439)
-- Name: tst_ruas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tst_ruas (
    codrua integer NOT NULL,
    codbai integer NOT NULL,
    descrrua character varying NOT NULL,
    cep integer
);


ALTER TABLE public.tst_ruas OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16438)
-- Name: tst_rua_codrua_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tst_ruas ALTER COLUMN codrua ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tst_rua_codrua_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3370 (class 0 OID 16401)
-- Dependencies: 209
-- Data for Name: tst_atletas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (10, 6, 'AZENETH PIZARRO ROCA', 36, 1.62, 5, 14, 93433, 'AZENETH_PIZARRO_ROCA@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (4, 7, 'DONALD GALLAGHER', 21, 1.96, 2, 13, 31453, 'DONALD_GALLAGHER@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (3, 6, 'LINDSEY FREY', 16, 1.87, 2, 18, 41982, 'LINDSEY_FREY@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (1, 3, 'LUIZ HENRIQUE OLIVEIRA', 25, 1.77, 1, 8, 41332, 'LUIZ_HENRIQUE_OLIVEIRA@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (1, 4, 'ERICK FERREIRA', 38, 1.60, 1, 5, 66734, 'ERICK_FERREIRA@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (1, 5, 'NICOLE VIEIRA', 34, 1.69, 1, 3, 4151, 'NICOLE_VIEIRA@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (1, 6, 'LARISSA PORTO', 18, 1.94, 1, 13, 49035, 'LARISSA_PORTO@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (1, 7, 'CAUE ARAGAO', 23, 1.59, 1, 13, 89009, 'CAUE_ARAGAO@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (1, 8, 'MIGUEL GOMES', 21, 1.80, 1, 7, 76697, 'MIGUEL_GOMES@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (1, 9, 'YASMIN TEIXEIRA', 25, 1.81, 1, 12, 24307, 'YASMIN_TEIXEIRA@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (2, 1, 'RENAN DA ROCHA', 28, 1.71, 1, 15, 97361, 'RENAN_DA_ROCHA@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (2, 2, 'ENRICO PEIXOTO', 33, 1.86, 1, 10, 94141, 'ENRICO_PEIXOTO@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (2, 3, 'ANA SOPHIA RODRIGUES', 36, 1.93, 1, 13, 31323, 'ANA_SOPHIA_RODRIGUES@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (2, 4, 'LUCCA RIBEIRO', 31, 1.59, 1, 12, 14442, 'LUCCA_RIBEIRO@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (2, 5, 'NICOLE RODRIGUES', 31, 1.60, 1, 11, 5412, 'NICOLE_RODRIGUES@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (2, 6, 'DR. JOAQUIM VIEIRA', 30, 1.96, 1, 13, 1636, 'DR._JOAQUIM_VIEIRA@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (2, 7, 'DANIELA DA CRUZ', 33, 1.73, 1, 14, 86469, 'DANIELA_DA_CRUZ@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (2, 8, 'YURI PORTO', 19, 1.70, 1, 5, 64355, 'YURI_PORTO@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (2, 9, 'GUSTAVO HENRIQUE DA MATA', 28, 1.92, 1, 4, 81429, 'GUSTAVO_HENRIQUE_DA_MATA@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (3, 1, 'SCOTT ROACH', 20, 1.70, 2, 23, 23437, 'SCOTT_ROACH@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (3, 2, 'ALYSSA BRADY', 21, 1.86, 2, 26, 88982, 'ALYSSA_BRADY@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (3, 3, 'RANDALL WHITE', 16, 1.60, 2, 31, 38912, 'RANDALL_WHITE@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (3, 4, 'JASMINE KENNEDY', 26, 1.67, 2, 19, 60775, 'JASMINE_KENNEDY@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (3, 5, 'KARA GONZALEZ', 24, 1.64, 2, 18, 48605, 'KARA_GONZALEZ@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (3, 7, 'KRISTIN MUELLER', 38, 1.92, 2, 29, 57774, 'KRISTIN_MUELLER@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (3, 8, 'CHRISTOPHER PAYNE PHD', 23, 1.68, 2, 22, 90960, 'CHRISTOPHER_PAYNE_PHD@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (3, 9, 'JAMES HEBERT', 26, 1.73, 2, 21, 64242, 'JAMES_HEBERT@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (3, 10, 'SCOTT ROBERTS DVM', 17, 1.89, 2, 31, 28572, 'SCOTT_ROBERTS_DVM@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (4, 1, 'JORDAN PARKER', 22, 1.81, 2, 25, 90849, 'JORDAN_PARKER@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (4, 2, 'JOHN ROMERO', 31, 1.94, 2, 19, 93583, 'JOHN_ROMERO@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (4, 3, 'MARCUS ROACH', 16, 1.86, 2, 24, 28123, 'MARCUS_ROACH@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (4, 4, 'STEPHEN RODRIGUEZ', 26, 1.68, 2, 30, 52250, 'STEPHEN_RODRIGUEZ@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (4, 5, 'AMY LIVINGSTON', 34, 1.89, 2, 30, 73578, 'AMY_LIVINGSTON@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (4, 6, 'JOHN HUERTA', 33, 1.79, 2, 32, 94745, 'JOHN_HUERTA@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (4, 8, 'KAREN SOTO', 31, 1.78, 2, 29, 98639, 'KAREN_SOTO@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (4, 9, 'DARLENE NEWTON', 34, 1.66, 2, 28, 15855, 'DARLENE_NEWTON@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (5, 1, 'MICHAEL BRIGGS', 28, 1.79, 3, 44, 65446, 'MICHAEL_BRIGGS@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (5, 2, 'JULIE CASTRO', 38, 1.86, 3, 41, 76686, 'JULIE_CASTRO@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (5, 3, 'MARIA FRENCH', 34, 1.52, 3, 48, 8500, 'MARIA_FRENCH@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (5, 5, 'TODD GOMEZ', 34, 1.70, 3, 48, 68309, 'TODD_GOMEZ@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (5, 6, 'CINDY EVANS', 23, 1.78, 3, 37, 63477, 'CINDY_EVANS@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (5, 7, 'JERRY MARTINEZ', 24, 1.56, 3, 39, 84381, 'JERRY_MARTINEZ@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (5, 8, 'JOSE WILLIAMS', 38, 1.88, 3, 44, 51772, 'JOSE_WILLIAMS@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (5, 9, 'CHARLES BENDER', 37, 1.84, 3, 33, 31133, 'CHARLES_BENDER@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (6, 1, 'ROGER GREEN', 31, 1.68, 3, 46, 25926, 'ROGER_GREEN@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (6, 3, 'ERICA HUNT', 31, 1.79, 3, 47, 42030, 'ERICA_HUNT@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (6, 4, 'JUSTIN WOLFE', 18, 1.82, 3, 40, 26230, 'JUSTIN_WOLFE@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (6, 5, 'ANGELA HALL', 20, 1.94, 3, 47, 87311, 'ANGELA_HALL@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (6, 6, 'JAMES KELLY', 28, 1.58, 3, 47, 46836, 'JAMES_KELLY@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (6, 8, 'DONALD DAWSON', 21, 1.77, 3, 46, 95220, 'DONALD_DAWSON@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (6, 9, 'MATTHEW SMITH', 32, 1.72, 3, 42, 18299, 'MATTHEW_SMITH@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (6, 10, 'ALEXANDRIA CAMACHO', 34, 1.80, 3, 36, 78976, 'ALEXANDRIA_CAMACHO@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (7, 1, 'MASSIMO MODIGLIANI', 29, 1.81, 4, 54, 90046, 'MASSIMO_MODIGLIANI@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (7, 3, 'MARCELLA PIOVANI', 37, 1.85, 4, 58, 52912, 'MARCELLA_PIOVANI@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (7, 4, 'TONI SORRENTINO', 16, 1.66, 4, 57, 58788, 'TONI_SORRENTINO@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (7, 5, 'TINA COLUMBO', 26, 1.54, 4, 61, 379, 'TINA_COLUMBO@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (7, 6, 'DOTT ANNETTA BIAGIOTTI', 19, 1.65, 4, 56, 24829, 'DOTT_ANNETTA_BIAGIOTTI@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (7, 7, 'SIGRA ELVIRA BELLETINI', 21, 1.92, 4, 62, 49638, 'SIGRA_ELVIRA_BELLETINI@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (7, 9, 'FIORENZO MAJEWSKI', 31, 1.95, 4, 54, 75923, 'FIORENZO_MAJEWSKI@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (8, 1, 'DOTT ANGELINA VIANELLO', 28, 1.97, 4, 64, 34653, 'DOTT_ANGELINA_VIANELLO@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (8, 2, 'DOTT SOLE METELLA', 37, 1.97, 4, 59, 19050, 'DOTT_SOLE_METELLA@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (8, 3, 'SILVESTRO GUARATO', 28, 1.91, 4, 60, 82456, 'SILVESTRO_GUARATO@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (8, 4, 'NICCOLI MANTEGAZZA', 33, 1.51, 4, 54, 21665, 'NICCOLI_MANTEGAZZA@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (8, 5, 'SIG RAFFAELE MALATESTA', 21, 1.54, 4, 54, 78300, 'SIG_RAFFAELE_MALATESTA@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (8, 6, 'MASSIMILIANO NIGGLI', 31, 1.56, 4, 61, 87356, 'MASSIMILIANO_NIGGLI@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (8, 7, 'CARLA ZOLA', 18, 1.81, 4, 64, 53748, 'CARLA_ZOLA@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (8, 8, 'STEFANI PIAZZI', 17, 1.66, 4, 64, 92316, 'STEFANI_PIAZZI@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (9, 1, 'VICENTA RIBERA CASARES', 16, 1.50, 5, 76, 25561, 'VICENTA_RIBERA_CASARES@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (9, 2, 'MIGUELA GONZALO COLLADO', 18, 1.53, 5, 67, 4954, 'MIGUELA_GONZALO_COLLADO@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (9, 3, 'EMILIANO ALBERDI HOYOS', 28, 1.57, 5, 78, 56737, 'EMILIANO_ALBERDI_HOYOS@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (9, 5, 'AZAHAR AGUILAR CANALES', 31, 1.57, 5, 69, 55797, 'AZAHAR_AGUILAR_CANALES@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (9, 6, 'CECILIO DE QUEVEDO', 19, 1.58, 5, 70, 77232, 'CECILIO_DE_QUEVEDO@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (9, 7, 'ESTER GARZON ALFARO', 29, 1.52, 5, 69, 73409, 'ESTER_GARZON_ALFARO@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (9, 8, 'CLEMENTE RAMOS', 31, 1.90, 5, 78, 90435, 'CLEMENTE_RAMOS@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (10, 1, 'TORIBIO AVILES HOZ', 34, 1.96, 5, 76, 90715, 'TORIBIO_AVILES_HOZ@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (10, 2, 'CINTIA JIMENEZ SALA', 28, 1.68, 5, 74, 81026, 'CINTIA_JIMENEZ_SALA@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (10, 3, 'PLINIO SUREDA CORONADO', 38, 1.71, 5, 74, 33983, 'PLINIO_SUREDA_CORONADO@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (10, 4, 'PATRICIO BAUTISTA-SAENZ', 35, 1.63, 5, 77, 98643, 'PATRICIO_BAUTISTA-SAENZ@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (10, 5, 'AURELIA PINEDO RICART', 23, 1.87, 5, 77, 52288, 'AURELIA_PINEDO_RICART@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (10, 7, 'ENCARNACION CAMPOS PORTERO', 21, 1.51, 5, 80, 6840, 'ENCARNACION_CAMPOS_PORTERO@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (1, 1, 'DAVI LUCAS DA MOTA', 20, 1.95, 1, 7, 59215, 'DAVI_LUCAS_DA_MOTA@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (1, 2, 'VALENTINA NUNES', 20, 1.66, 1, 13, 29709, 'VALENTINA_NUNES@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (5, 4, 'NICOLE RAMIREZ', 32, 1.85, 3, 10, 36641, 'NICOLE_RAMIREZ@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (6, 2, 'MRS. BARBARA AGUILAR', 34, 1.87, 3, 22, 2460, 'MRS._BARBARA_AGUILAR@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (6, 7, 'ADAM EVANS', 34, 1.53, 3, 14, 93805, 'ADAM_EVANS@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (7, 2, 'GASPARE TREBBI', 25, 1.60, 4, 9, 89122, 'GASPARE_TREBBI@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (7, 8, 'DOTT GIANPAOLO FANTONI', 38, 1.85, 4, 24, 66259, 'DOTT_GIANPAOLO_FANTONI@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (8, 9, 'DOTT PANFILO MADERNO', 33, 1.88, 4, 29, 75421, 'DOTT_PANFILO_MADERNO@GMAIL.COM');
INSERT INTO public.tst_atletas (codorg, codreg, nome, idade, altura, codpais, codrua, numeroend, email) VALUES (9, 4, 'SALUD MENENDEZ-ARIÑO', 29, 1.70, 5, 5, 10646, 'SALUD_MENENDEZ-ARIÑO@GMAIL.COM');


--
-- TOC entry 3385 (class 0 OID 16502)
-- Dependencies: 224
-- Data for Name: tst_atletas_orgs_modalidades; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (1, 1, 8);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (1, 2, 2);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (1, 3, 5);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (1, 4, 7);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (1, 5, 10);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (1, 6, 9);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (1, 7, 3);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (1, 8, 6);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (1, 9, 4);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (2, 1, 4);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (2, 2, 7);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (2, 3, 2);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (2, 4, 8);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (2, 5, 3);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (2, 6, 1);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (2, 7, 6);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (2, 8, 9);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (2, 9, 5);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (3, 1, 6);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (3, 2, 4);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (3, 3, 3);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (3, 4, 10);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (3, 5, 2);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (3, 6, 5);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (3, 7, 9);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (3, 8, 7);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (3, 9, 8);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (3, 10, 1);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (4, 1, 7);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (4, 2, 8);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (4, 3, 3);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (4, 4, 4);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (4, 5, 9);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (4, 6, 10);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (4, 7, 6);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (4, 8, 2);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (4, 9, 5);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (5, 1, 4);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (5, 2, 3);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (5, 3, 1);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (5, 4, 10);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (5, 5, 8);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (5, 6, 2);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (5, 7, 6);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (5, 8, 5);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (5, 9, 7);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (6, 1, 7);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (6, 2, 8);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (6, 3, 6);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (6, 4, 3);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (6, 5, 1);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (6, 6, 5);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (6, 7, 4);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (6, 8, 10);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (6, 9, 9);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (6, 10, 2);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (7, 1, 3);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (7, 2, 4);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (7, 3, 10);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (7, 4, 1);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (7, 5, 7);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (7, 6, 9);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (7, 7, 8);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (7, 8, 5);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (7, 9, 6);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (8, 1, 3);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (8, 2, 10);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (8, 3, 6);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (8, 4, 2);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (8, 5, 7);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (8, 6, 8);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (8, 7, 1);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (8, 8, 9);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (8, 9, 4);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (9, 1, 10);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (9, 2, 2);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (9, 3, 3);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (9, 4, 6);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (9, 5, 4);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (9, 6, 5);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (9, 7, 7);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (9, 8, 1);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (10, 1, 6);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (10, 2, 8);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (10, 3, 1);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (10, 4, 2);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (10, 5, 7);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (10, 6, 10);
INSERT INTO public.tst_atletas_orgs_modalidades (codorg, codreg, codmod) VALUES (10, 7, 4);


--
-- TOC entry 3378 (class 0 OID 16433)
-- Dependencies: 217
-- Data for Name: tst_bairros; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (1, 1, 'SAO BASILIO MAGNO');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (2, 1, 'LIMEIRA');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (3, 2, 'CIC');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (4, 2, 'BOQUEIRAO');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (5, 3, 'SANTA ROSA');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (6, 3, 'CIDADE NOVA');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (7, 4, 'CAPOEIRAS');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (8, 4, 'TRINDADE');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (9, 5, 'OLD TORONTO');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (10, 5, 'EAST YORK');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (11, 6, 'THE GLEBE');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (12, 6, 'BYWARD MARKET');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (13, 7, 'OLD QUEBEC');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (14, 7, 'NOQUERO');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (15, 8, 'FLEURIMONT');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (16, 8, 'JACQUES-CARTIER');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (17, 9, 'NEXISTE');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (18, 9, 'NENHUM');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (19, 10, 'ANCOREI');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (20, 10, 'DESANCOREI');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (21, 11, 'WOLOLO');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (22, 11, 'DOWNTOWN HONOLULU');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (23, 12, 'ROBARO-MIYAMOTO');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (24, 12, 'TAKAROISHIFODA');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (25, 13, 'CIGARET');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (26, 13, 'PAPELCASA');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (27, 14, 'NOMIRECUSO');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (28, 14, 'OLD ROMAN');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (29, 15, 'PRINVERA');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (30, 15, 'PARMEJIANNA');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (31, 16, 'NOPISO');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (32, 16, 'TORRITA');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (33, 17, 'NUEVA REALIDAD');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (34, 17, 'NENADA');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (35, 18, 'NAOMEXI');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (36, 18, 'CHINATOWN');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (37, 19, 'VIVERILIA');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (38, 19, 'PALASSETE');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (39, 20, 'PASCOAL');
INSERT INTO public.tst_bairros (codbai, codcid, descrbairro) OVERRIDING SYSTEM VALUE VALUES (40, 20, 'CUEIOZIN');


--
-- TOC entry 3374 (class 0 OID 16417)
-- Dependencies: 213
-- Data for Name: tst_cidades; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tst_cidades (codcid, codest, descrcidade, cep) OVERRIDING SYSTEM VALUE VALUES (1, 16, 'UNIAO DA VITORIA', 84600000);
INSERT INTO public.tst_cidades (codcid, codest, descrcidade, cep) OVERRIDING SYSTEM VALUE VALUES (2, 16, 'CURITIBA', 81880000);
INSERT INTO public.tst_cidades (codcid, codest, descrcidade, cep) OVERRIDING SYSTEM VALUE VALUES (3, 24, 'PORTO UNIAO', 89400000);
INSERT INTO public.tst_cidades (codcid, codest, descrcidade, cep) OVERRIDING SYSTEM VALUE VALUES (4, 24, 'FLORIANOPOLIS', 88010000);
INSERT INTO public.tst_cidades (codcid, codest, descrcidade, cep) OVERRIDING SYSTEM VALUE VALUES (5, 28, 'TORONTO', 15614);
INSERT INTO public.tst_cidades (codcid, codest, descrcidade, cep) OVERRIDING SYSTEM VALUE VALUES (6, 28, 'OTTAWA', 45875);
INSERT INTO public.tst_cidades (codcid, codest, descrcidade, cep) OVERRIDING SYSTEM VALUE VALUES (7, 29, 'QUEBEC', 48584);
INSERT INTO public.tst_cidades (codcid, codest, descrcidade, cep) OVERRIDING SYSTEM VALUE VALUES (8, 29, 'SHERBROOKE', 48765);
INSERT INTO public.tst_cidades (codcid, codest, descrcidade, cep) OVERRIDING SYSTEM VALUE VALUES (9, 41, 'JUNEAU', 99801);
INSERT INTO public.tst_cidades (codcid, codest, descrcidade, cep) OVERRIDING SYSTEM VALUE VALUES (10, 41, 'ANCHORAGE', 99501);
INSERT INTO public.tst_cidades (codcid, codest, descrcidade, cep) OVERRIDING SYSTEM VALUE VALUES (11, 51, 'HONOLULU', 96801);
INSERT INTO public.tst_cidades (codcid, codest, descrcidade, cep) OVERRIDING SYSTEM VALUE VALUES (12, 51, 'PEARL CITY', 96782);
INSERT INTO public.tst_cidades (codcid, codest, descrcidade, cep) OVERRIDING SYSTEM VALUE VALUES (13, 105, 'PALERMO', 90100);
INSERT INTO public.tst_cidades (codcid, codest, descrcidade, cep) OVERRIDING SYSTEM VALUE VALUES (14, 105, 'SIRACUSA', 96100);
INSERT INTO public.tst_cidades (codcid, codest, descrcidade, cep) OVERRIDING SYSTEM VALUE VALUES (15, 106, 'FLORENCA', 50100);
INSERT INTO public.tst_cidades (codcid, codest, descrcidade, cep) OVERRIDING SYSTEM VALUE VALUES (16, 106, 'PISA', 56121);
INSERT INTO public.tst_cidades (codcid, codest, descrcidade, cep) OVERRIDING SYSTEM VALUE VALUES (17, 112, 'ENSENADA', 22785);
INSERT INTO public.tst_cidades (codcid, codest, descrcidade, cep) OVERRIDING SYSTEM VALUE VALUES (18, 112, 'MEXICALI', 21000);
INSERT INTO public.tst_cidades (codcid, codest, descrcidade, cep) OVERRIDING SYSTEM VALUE VALUES (19, 127, 'MORELIA', 58000);
INSERT INTO public.tst_cidades (codcid, codest, descrcidade, cep) OVERRIDING SYSTEM VALUE VALUES (20, 127, 'PATZCUARO', 16319);


--
-- TOC entry 3376 (class 0 OID 16425)
-- Dependencies: 215
-- Data for Name: tst_estados; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (1, 1, 'ACRE', 'AC');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (2, 1, 'ALAGOAS', 'AL');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (3, 1, 'AMAPA', 'AP');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (4, 1, 'AMAZONAS', 'AM');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (5, 1, 'BAHIA', 'BA');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (6, 1, 'CEARA', 'CE');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (7, 1, 'DISTRITO FEDERAL', 'DF');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (8, 1, 'ESPIRITO SANTO', 'ES');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (9, 1, 'GOIAS', 'GO');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (10, 1, 'MARANHAO', 'MA');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (11, 1, 'MATO GROSSO', 'MT');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (12, 1, 'MATO GROSSO DO SUL', 'MS');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (13, 1, 'MINAS GERAIS', 'MG');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (14, 1, 'PARA', 'PA');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (15, 1, 'PARAIBA', 'PB');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (16, 1, 'PARANA', 'PR');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (17, 1, 'PERNAMBUCO', 'PE');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (18, 1, 'PIAUI', 'PI');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (19, 1, 'RIO DE JANEIRO', 'RJ');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (20, 1, 'RIO GRANDE DO NORTE', 'RN');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (21, 1, 'RIO GRANDE DO SUL', 'RS');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (22, 1, 'RONDONIA', 'RO');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (23, 1, 'RORAIMA', 'RR');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (24, 1, 'SANTA CATARINA', 'SC');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (25, 1, 'SAO PAULO', 'SP');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (26, 1, 'SERGIPE', 'SE');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (27, 1, 'TOCANTINS', 'TO');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (28, 2, 'ONTARIO', 'ON');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (29, 2, 'QUEBEC', 'QC');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (30, 2, 'NOVA ESCOCIA', 'NS');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (31, 2, 'NOVO BRUNSWICK', 'NB');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (32, 2, 'MANITOBA', 'MB');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (33, 2, 'COLUMBIA BRITANICA', 'BC');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (34, 2, 'ILHA DO PRINCIPE EDUARDO', 'PE');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (35, 2, 'SASKATCHEWAN', 'SK');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (36, 2, 'ALBERTA', 'AB');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (37, 2, 'TERRA NOVA E LABRADOR', 'NL');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (38, 2, 'TERRITORIOS DO NOROESTE', 'NT');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (39, 2, 'YUKON', 'YT');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (40, 2, 'NUNAVUT', 'NU');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (41, 3, 'ALASCA', 'AK');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (42, 3, 'ALABAMA', 'AL');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (43, 3, 'ARKANSAS', 'AR');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (44, 3, 'ARIZONA', 'AZ');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (45, 3, 'CALIFORNIA', 'CA');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (46, 3, 'COLORADO', 'CO');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (47, 3, 'CONNECTICUT', 'CT');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (48, 3, 'DELAWARE', 'DE');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (49, 3, 'FLORIDA', 'FL');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (50, 3, 'GEORGIA', 'GA');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (51, 3, 'HAVAI', 'HI');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (52, 3, 'IOWA', 'IA');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (53, 3, 'IDAHO', 'ID');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (54, 3, 'ILLINOIS', 'IL');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (55, 3, 'INDIANA', 'IN');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (56, 3, 'KANSAS', 'KS');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (57, 3, 'KENTUCKY', 'KY');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (58, 3, 'LOUISIANA', 'LA');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (59, 3, 'MASSACHUSETTS', 'MA');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (60, 3, 'MARYLAND', 'MD');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (61, 3, 'MAINE', 'ME');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (62, 3, 'MICHIGAN', 'MI');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (63, 3, 'MINNESOTA', 'MN');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (64, 3, 'MISSOURI', 'MO');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (65, 3, 'MISSISSIPPI', 'MS');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (66, 3, 'MONTANA', 'MT');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (67, 3, 'CAROLINA DO NORTE', 'NC');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (68, 3, 'DAKOTA DO NORTE', 'ND');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (69, 3, 'NEBRASKA', 'NE');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (70, 3, 'NOVA HAMPSHIRE', 'NH');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (71, 3, 'NOVA JERSEI', 'NJ');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (72, 3, 'NOVO MEXICO', 'NM');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (73, 3, 'NEVADA', 'NV');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (74, 3, 'NOVA IORQUE', 'NY');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (75, 3, 'OHIO', 'OH');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (76, 3, 'OKLAHOMA', 'OK');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (77, 3, 'OREGON', 'OR');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (78, 3, 'PENSILVANIA', 'PA');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (79, 3, 'RHODE ISLAND', 'RI');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (80, 3, 'CAROLINA DO SUL', 'SC');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (81, 3, 'DAKOTA DO SUL', 'SD');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (82, 3, 'TENNESSEE', 'TN');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (83, 3, 'TEXAS', 'TX');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (84, 3, 'UTAH', 'UT');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (85, 3, 'VERMONT', 'VT');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (86, 3, 'VIRGINIA', 'VA');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (87, 3, 'WASHINGTON', 'WA');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (88, 3, 'WISCONSIN', 'WI');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (89, 3, 'VIRGINIA OCIDENTAL', 'WV');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (90, 3, 'WYOMING', 'WY');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (91, 4, 'ABRUZZO', 'AB');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (92, 4, 'BASILICATA', 'BA');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (93, 4, 'CALABRIA', 'CA');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (94, 4, 'CAMPANIA', 'CM');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (95, 4, 'EMILIA-ROMAGNA', 'EM');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (96, 4, 'FRIULI-VENEZIA GIULIA', 'FR');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (97, 4, 'LAZIO', 'LA');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (98, 4, 'LIGURIA', 'LI');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (99, 4, 'LOMBARDIA', 'LO');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (100, 4, 'MARCHE', 'MA');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (101, 4, 'MOLISE', 'MO');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (102, 4, 'PIEMONTE', 'PI');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (103, 4, 'PUGLIA', 'PU');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (104, 4, 'SARDEGNA', 'SA');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (105, 4, 'SICILIA', 'SI');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (106, 4, 'TOSCANA', 'TO');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (107, 4, 'TRENTINO-ALTO ADIGE', 'TR');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (108, 4, 'UMBRIA', 'UM');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (109, 4, 'VALE D''AOSTA', 'VA');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (110, 4, 'VENETO', 'VE');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (111, 5, 'AGUASCALIENTES', 'AG');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (112, 5, 'BAJA CALIFORNIA', 'BA');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (113, 5, 'BAJA CALIFORNIA SUR', 'BS');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (114, 5, 'CAMPECHE', 'CA');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (115, 5, 'CHIAPAS', 'CH');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (116, 5, 'CHIHUAHUA', 'CI');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (117, 5, 'CIDADE DO MEXICO', 'CM');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (118, 5, 'COAHUILA', 'CO');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (119, 5, 'COLIMA', 'CL');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (120, 5, 'DURANGO', 'DU');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (121, 5, 'GUANAJUATO', 'GU');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (122, 5, 'GUERRERO', 'GE');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (123, 5, 'HIDALGO', 'HI');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (124, 5, 'IUCATA', 'IU');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (125, 5, 'JALISCO', 'JA');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (126, 5, 'MEXICO', 'ME');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (127, 5, 'MICHOACAN', 'MI');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (128, 5, 'MORELOS', 'MO');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (129, 5, 'NAYARIT', 'NA');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (130, 5, 'NUEVO LEON', 'NU');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (131, 5, 'OAXACA', 'OA');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (132, 5, 'PUEBLA', 'PU');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (133, 5, 'QUERETARO', 'QE');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (134, 5, 'QUINTANA ROO', 'QI');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (135, 5, 'SAN LUIS POTOSI', 'SA');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (136, 5, 'SINALOA', 'SI');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (137, 5, 'SONORA', 'SO');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (138, 5, 'TABASCO', 'TB');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (139, 5, 'TAMAULIPAS', 'TM');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (140, 5, 'TLAXCALA', 'TL');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (141, 5, 'VERACRUZ', 'VE');
INSERT INTO public.tst_estados (codest, codpais, descrestado, siglaestado) OVERRIDING SYSTEM VALUE VALUES (142, 5, 'ZACATECAS', 'ZA');


--
-- TOC entry 3384 (class 0 OID 16463)
-- Dependencies: 223
-- Data for Name: tst_modalidades; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tst_modalidades (codmod, nome) OVERRIDING SYSTEM VALUE VALUES (1, 'Jiu Jitsu');
INSERT INTO public.tst_modalidades (codmod, nome) OVERRIDING SYSTEM VALUE VALUES (2, 'Boxe');
INSERT INTO public.tst_modalidades (codmod, nome) OVERRIDING SYSTEM VALUE VALUES (3, 'Tenis');
INSERT INTO public.tst_modalidades (codmod, nome) OVERRIDING SYSTEM VALUE VALUES (4, 'Natacao');
INSERT INTO public.tst_modalidades (codmod, nome) OVERRIDING SYSTEM VALUE VALUES (5, 'Esgrima');
INSERT INTO public.tst_modalidades (codmod, nome) OVERRIDING SYSTEM VALUE VALUES (6, 'Tiro ao Alvo');
INSERT INTO public.tst_modalidades (codmod, nome) OVERRIDING SYSTEM VALUE VALUES (7, 'Surfe');
INSERT INTO public.tst_modalidades (codmod, nome) OVERRIDING SYSTEM VALUE VALUES (8, 'Ciclismo');
INSERT INTO public.tst_modalidades (codmod, nome) OVERRIDING SYSTEM VALUE VALUES (9, 'Ginastica Artistica');
INSERT INTO public.tst_modalidades (codmod, nome) OVERRIDING SYSTEM VALUE VALUES (10, 'Peteca');


--
-- TOC entry 3382 (class 0 OID 16455)
-- Dependencies: 221
-- Data for Name: tst_organizacoes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tst_organizacoes (codorg, codpais, descrorg, siglaorg, apelidoorg, codrua, numeroend, email) OVERRIDING SYSTEM VALUE VALUES (1, 1, 'OS VIKINGS', 'OSV', 'VIKINGS', 1, 875, 'osvikings@esporteclub.com.br');
INSERT INTO public.tst_organizacoes (codorg, codpais, descrorg, siglaorg, apelidoorg, codrua, numeroend, email) OVERRIDING SYSTEM VALUE VALUES (2, 1, 'CLUB DE REGATAS VASCO DA GAMA', 'VAS', 'VASCO', 10, 689, 'vasco@segundona.com.br');
INSERT INTO public.tst_organizacoes (codorg, codpais, descrorg, siglaorg, apelidoorg, codrua, numeroend, email) OVERRIDING SYSTEM VALUE VALUES (3, 2, 'THE DETERMINED WOLVES', 'DEW', 'WOLVES', 22, 3215, 'contact@dwolves.com');
INSERT INTO public.tst_organizacoes (codorg, codpais, descrorg, siglaorg, apelidoorg, codrua, numeroend, email) OVERRIDING SYSTEM VALUE VALUES (5, 3, 'THE ROYAL DUCKS', 'RDU', 'DUCKS', 36, 145, 'royalducks@hotmail.com');
INSERT INTO public.tst_organizacoes (codorg, codpais, descrorg, siglaorg, apelidoorg, codrua, numeroend, email) OVERRIDING SYSTEM VALUE VALUES (6, 3, 'THE BLUE GIBBONS', 'BGI', 'GIBBONS', 45, 3215, 'gibbons@gmail.com');
INSERT INTO public.tst_organizacoes (codorg, codpais, descrorg, siglaorg, apelidoorg, codrua, numeroend, email) OVERRIDING SYSTEM VALUE VALUES (7, 4, 'I MANGIATORI DI MASSA', 'MDM', 'MANGIATORI', 50, 897, 'mangiatoriteam@italy.it');
INSERT INTO public.tst_organizacoes (codorg, codpais, descrorg, siglaorg, apelidoorg, codrua, numeroend, email) OVERRIDING SYSTEM VALUE VALUES (8, 4, 'LE AQUILE MALTESI', 'AMA', 'AQUILE', 60, 546, 'aquile@maltesi.it');
INSERT INTO public.tst_organizacoes (codorg, codpais, descrorg, siglaorg, apelidoorg, codrua, numeroend, email) OVERRIDING SYSTEM VALUE VALUES (9, 5, 'LAS CABRAS ROJAS', 'CAR', 'CABRAS', 68, 324, 'cabarasrojas@mexicocartel.mx');
INSERT INTO public.tst_organizacoes (codorg, codpais, descrorg, siglaorg, apelidoorg, codrua, numeroend, email) OVERRIDING SYSTEM VALUE VALUES (10, 5, 'LOS POLLOS HERMANOS', 'POH', 'POLLOS', 77, 8789, 'polloshermanos@pollos.mx');
INSERT INTO public.tst_organizacoes (codorg, codpais, descrorg, siglaorg, apelidoorg, codrua, numeroend, email) OVERRIDING SYSTEM VALUE VALUES (4, 2, 'THE PRIME RAMS', 'PRA', 'RAMS', 23, 7487, 'rams@sportteam.com');


--
-- TOC entry 3372 (class 0 OID 16409)
-- Dependencies: 211
-- Data for Name: tst_paises; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tst_paises (codpais, descrpais, sigla, descrnacionalidade) OVERRIDING SYSTEM VALUE VALUES (1, 'BRASIL', 'BRA', 'brasileiro(a)');
INSERT INTO public.tst_paises (codpais, descrpais, sigla, descrnacionalidade) OVERRIDING SYSTEM VALUE VALUES (2, 'CANADA', 'CAN', 'canadense');
INSERT INTO public.tst_paises (codpais, descrpais, sigla, descrnacionalidade) OVERRIDING SYSTEM VALUE VALUES (3, 'ESTADOS UNIDOS DA AMERICA', 'EUA', 'estadunidense');
INSERT INTO public.tst_paises (codpais, descrpais, sigla, descrnacionalidade) OVERRIDING SYSTEM VALUE VALUES (4, 'ITALIA', 'ITA', 'italiano(a)');
INSERT INTO public.tst_paises (codpais, descrpais, sigla, descrnacionalidade) OVERRIDING SYSTEM VALUE VALUES (5, 'MEXICO', 'MEX', 'mexicano(a)');
INSERT INTO public.tst_paises (codpais, descrpais, sigla, descrnacionalidade) OVERRIDING SYSTEM VALUE VALUES (6, 'FRANCA', 'FRA', 'frances(a)');
INSERT INTO public.tst_paises (codpais, descrpais, sigla, descrnacionalidade) OVERRIDING SYSTEM VALUE VALUES (7, 'ESPANHA', 'ESP', 'espanhol(a)');
INSERT INTO public.tst_paises (codpais, descrpais, sigla, descrnacionalidade) OVERRIDING SYSTEM VALUE VALUES (8, 'PORTUGAL', 'POR', 'portugues(a)');


--
-- TOC entry 3380 (class 0 OID 16439)
-- Dependencies: 219
-- Data for Name: tst_ruas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (1, 1, 'RUA LEOPOLDO SASS', 84600550);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (2, 1, 'RUA ELKYS', 84600317);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (3, 2, 'AVENIDA MANOEL RIBAS', 84600084);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (4, 2, 'ESTRADA DOS HORIZONTE', 84599851);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (5, 3, 'RUA DESOLACAO', 84599618);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (6, 3, 'RUA BRUTAMONDE', 84599385);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (7, 4, 'AVENIDA REI PELE', 84599152);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (8, 4, 'AVENIDA NAOREI MARADONA', 84598919);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (9, 5, 'RUA DOS SALGADOS', 84598686);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (10, 5, 'RUA BACHARELADO', 84598453);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (11, 6, 'RUA DOS PROGRAMADOR', 84598220);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (12, 6, 'AVENIDA BENTO MUNHOZ DA ROCHA NETO', 84597987);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (13, 7, 'RUA PRUDENTE DE MORAIS', 84597754);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (14, 7, 'RUA ALEGRETE', 84597521);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (15, 8, 'RUA TCHE', 84597288);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (16, 8, 'RUA POWPOWPOW', 84597055);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (17, 9, 'ROAD ROEBUCK BEECHES', 84596822);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (18, 9, 'ROAD INGLEBY GLEBE', 84596589);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (19, 10, 'ROAD MAITLAND COURT', 84596356);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (20, 10, 'ROAD LISTER GARDEN', 84596123);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (21, 11, 'ROAD OLD NOOK', 84595890);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (22, 11, 'ROAD CARRICK HEIGHTS', 84595657);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (23, 12, 'ROAD STOKE MEAD', 84595424);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (24, 12, 'ROAD BROAD ESTATE', 84595191);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (25, 13, 'ROAD LORNE WHARF', 84594958);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (26, 13, 'ROAD EASTERN CIRCLE', 84594725);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (27, 14, 'ROAD STANPOINT WAY', 84594492);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (28, 14, 'ROAD WINCKLEY CLOSE', 84594259);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (29, 15, 'ROAD SOUTHWELL BROW', 84594026);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (30, 15, 'ROAD OLD YARD', 84593793);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (31, 16, 'ROAD CHERRY TREE TOP', 84593560);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (32, 16, 'ROAD ANDREWS CREST', 84593327);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (33, 17, 'ROAD ST BOTOLPH''S CLOSE', 84593094);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (34, 17, 'ROAD FLEET ISAF', 84592861);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (35, 18, 'ROAD ROSEBANK WAY', 84592628);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (36, 18, 'ROAD PANKHURST LOAN', 84592395);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (37, 19, 'ROAD WOODHOUSE POPLARS', 84592162);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (38, 19, 'ROAD ST DAVIDS WAY', 84591929);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (39, 20, 'ROAD BARNARD HEIGHTS', 84591696);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (40, 20, 'ROAD WOBURN BUILDINGS', 84591463);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (41, 21, 'ROAD MARLOW BUILDINGS', 84591230);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (42, 21, 'ROAD PROBY CLOSE', 84590997);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (43, 22, 'ROAD GILL CROFT', 84590764);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (44, 22, 'ROAD HUTTON WYND', 84590531);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (45, 23, 'ROAD RHODDFA WILSON', 84590298);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (46, 23, 'ROAD BALMORAL NEWYDD', 84590065);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (47, 24, 'ROAD RANELAGH WYND', 84589832);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (48, 24, 'ROAD ONSLOW PROMENADE', 84589599);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (49, 25, 'ROAD HAREWOOD BRIDGE', 84589366);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (50, 25, 'ROAD LYNDHURST SPUR', 84589133);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (51, 26, 'ROAD FRONT STREET', 84588900);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (52, 26, 'ROAD MORETON DALE', 84588667);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (53, 27, 'ROAD TIRCARRA BANK', 84588434);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (54, 27, 'ROAD JOHN BRADSHAW COURT', 84588201);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (55, 28, 'ROAD POOLE VILLAS', 84587968);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (56, 28, 'ROAD LEOPOLD VIEW', 84587735);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (57, 29, 'ROAD TURNPIKE LINK', 84587502);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (58, 29, 'ROAD WYE VILLAS', 84587269);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (59, 30, 'ROAD LEWIS ROYD', 84587036);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (60, 30, 'ROAD DENTON VILLAGE', 84586803);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (61, 31, 'ROAD COLTSFOOT PARC', 84586570);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (62, 31, 'ROAD ANDREWS ORCHARDS', 84586337);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (63, 32, 'ROAD DENHAM BOTTOM', 84586104);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (64, 32, 'ROAD MARLBOROUGH LINKS', 84585871);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (66, 33, 'ROAD PATTERDALE SQUARE', 84585405);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (67, 34, 'ROAD PATERSON CLIFF', 84585172);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (68, 34, 'ROAD DEER PARK WYND', 84584939);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (69, 35, 'ROAD NEW MEADOW LANE', 84584706);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (70, 35, 'ROAD PALM WEST', 84584473);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (71, 36, 'ROAD MANSE EAST', 84584240);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (72, 36, 'ROAD RICHARD CLIFF', 84584007);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (73, 37, 'ROAD AINTREE CAUSEWAY', 84583774);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (74, 37, 'ROAD BELL PATH', 84583541);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (75, 38, 'ROAD ARUNDEL ORCHARDS', 84583308);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (76, 38, 'ROAD GREEN COPPICE', 84583075);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (77, 39, 'ROAD KEW COURTYARD', 84582842);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (78, 39, 'ROAD LONDON TOP', 84582609);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (79, 40, 'ROAD HEATHER PARK', 84582376);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (80, 40, 'ROAD EDWARD CRESCENT', 84582143);
INSERT INTO public.tst_ruas (codrua, codbai, descrrua, cep) OVERRIDING SYSTEM VALUE VALUES (65, 33, 'ROAD RUGGS DROVE', 84585638);


--
-- TOC entry 3408 (class 0 OID 0)
-- Dependencies: 216
-- Name: tst_bairro_codbai_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tst_bairro_codbai_seq', 40, true);


--
-- TOC entry 3409 (class 0 OID 0)
-- Dependencies: 212
-- Name: tst_cidades_codcidade_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tst_cidades_codcidade_seq', 20, true);


--
-- TOC entry 3410 (class 0 OID 0)
-- Dependencies: 214
-- Name: tst_estados_codestado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tst_estados_codestado_seq', 142, true);


--
-- TOC entry 3411 (class 0 OID 0)
-- Dependencies: 222
-- Name: tst_modalidades_codmodalidade_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tst_modalidades_codmodalidade_seq', 10, true);


--
-- TOC entry 3412 (class 0 OID 0)
-- Dependencies: 220
-- Name: tst_organizacoes_codorg_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tst_organizacoes_codorg_seq', 10, true);


--
-- TOC entry 3413 (class 0 OID 0)
-- Dependencies: 210
-- Name: tst_paises_codpais_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tst_paises_codpais_seq', 8, true);


--
-- TOC entry 3414 (class 0 OID 0)
-- Dependencies: 218
-- Name: tst_rua_codrua_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tst_rua_codrua_seq', 80, true);


--
-- TOC entry 3219 (class 2606 OID 16506)
-- Name: tst_atletas_orgs_modalidades tst_atletas_orgs_modalidades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tst_atletas_orgs_modalidades
    ADD CONSTRAINT tst_atletas_orgs_modalidades_pkey PRIMARY KEY (codorg, codreg, codmod);


--
-- TOC entry 3203 (class 2606 OID 16407)
-- Name: tst_atletas tst_atletas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tst_atletas
    ADD CONSTRAINT tst_atletas_pkey PRIMARY KEY (codorg, codreg);


--
-- TOC entry 3211 (class 2606 OID 16437)
-- Name: tst_bairros tst_bairro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tst_bairros
    ADD CONSTRAINT tst_bairro_pkey PRIMARY KEY (codbai);


--
-- TOC entry 3207 (class 2606 OID 16423)
-- Name: tst_cidades tst_cidades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tst_cidades
    ADD CONSTRAINT tst_cidades_pkey PRIMARY KEY (codcid);


--
-- TOC entry 3209 (class 2606 OID 16431)
-- Name: tst_estados tst_estados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tst_estados
    ADD CONSTRAINT tst_estados_pkey PRIMARY KEY (codest);


--
-- TOC entry 3217 (class 2606 OID 16469)
-- Name: tst_modalidades tst_modalidades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tst_modalidades
    ADD CONSTRAINT tst_modalidades_pkey PRIMARY KEY (codmod);


--
-- TOC entry 3215 (class 2606 OID 16461)
-- Name: tst_organizacoes tst_organizacoes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tst_organizacoes
    ADD CONSTRAINT tst_organizacoes_pkey PRIMARY KEY (codorg);


--
-- TOC entry 3205 (class 2606 OID 16415)
-- Name: tst_paises tst_paises_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tst_paises
    ADD CONSTRAINT tst_paises_pkey PRIMARY KEY (codpais);


--
-- TOC entry 3213 (class 2606 OID 16445)
-- Name: tst_ruas tst_rua_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tst_ruas
    ADD CONSTRAINT tst_rua_pkey PRIMARY KEY (codrua);


--
-- TOC entry 3229 (class 2606 OID 16512)
-- Name: tst_atletas_orgs_modalidades fk_tst_atletas_orgs_modalidades_to_tst_atletas; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tst_atletas_orgs_modalidades
    ADD CONSTRAINT fk_tst_atletas_orgs_modalidades_to_tst_atletas FOREIGN KEY (codorg, codreg) REFERENCES public.tst_atletas(codorg, codreg);


--
-- TOC entry 3230 (class 2606 OID 16517)
-- Name: tst_atletas_orgs_modalidades fk_tst_atletas_orgs_modalidades_to_tst_modalidades; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tst_atletas_orgs_modalidades
    ADD CONSTRAINT fk_tst_atletas_orgs_modalidades_to_tst_modalidades FOREIGN KEY (codmod) REFERENCES public.tst_modalidades(codmod);


--
-- TOC entry 3220 (class 2606 OID 16482)
-- Name: tst_atletas fk_tst_atletas_to_tst_organizacoes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tst_atletas
    ADD CONSTRAINT fk_tst_atletas_to_tst_organizacoes FOREIGN KEY (codorg) REFERENCES public.tst_organizacoes(codorg);


--
-- TOC entry 3221 (class 2606 OID 16487)
-- Name: tst_atletas fk_tst_atletas_to_tst_paises; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tst_atletas
    ADD CONSTRAINT fk_tst_atletas_to_tst_paises FOREIGN KEY (codpais) REFERENCES public.tst_paises(codpais);


--
-- TOC entry 3222 (class 2606 OID 16492)
-- Name: tst_atletas fk_tst_atletas_to_tst_ruas; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tst_atletas
    ADD CONSTRAINT fk_tst_atletas_to_tst_ruas FOREIGN KEY (codrua) REFERENCES public.tst_ruas(codrua);


--
-- TOC entry 3225 (class 2606 OID 16522)
-- Name: tst_bairros fk_tst_bairros_to_tst_cidades; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tst_bairros
    ADD CONSTRAINT fk_tst_bairros_to_tst_cidades FOREIGN KEY (codcid) REFERENCES public.tst_cidades(codcid);


--
-- TOC entry 3223 (class 2606 OID 16527)
-- Name: tst_cidades fk_tst_cidades_to_tst_estados; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tst_cidades
    ADD CONSTRAINT fk_tst_cidades_to_tst_estados FOREIGN KEY (codest) REFERENCES public.tst_estados(codest);


--
-- TOC entry 3224 (class 2606 OID 16532)
-- Name: tst_estados fk_tst_estados_to_tst_paises; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tst_estados
    ADD CONSTRAINT fk_tst_estados_to_tst_paises FOREIGN KEY (codpais) REFERENCES public.tst_paises(codpais);


--
-- TOC entry 3227 (class 2606 OID 16537)
-- Name: tst_organizacoes fk_tst_organizacoes_to_tst_paises; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tst_organizacoes
    ADD CONSTRAINT fk_tst_organizacoes_to_tst_paises FOREIGN KEY (codpais) REFERENCES public.tst_paises(codpais);


--
-- TOC entry 3228 (class 2606 OID 16542)
-- Name: tst_organizacoes fk_tst_organizacoes_to_tst_ruas; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tst_organizacoes
    ADD CONSTRAINT fk_tst_organizacoes_to_tst_ruas FOREIGN KEY (codrua) REFERENCES public.tst_ruas(codrua);


--
-- TOC entry 3226 (class 2606 OID 16547)
-- Name: tst_ruas fk_tst_ruas_to_tst_bairros; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tst_ruas
    ADD CONSTRAINT fk_tst_ruas_to_tst_bairros FOREIGN KEY (codbai) REFERENCES public.tst_bairros(codbai);


--
-- TOC entry 3391 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- TOC entry 3392 (class 0 OID 0)
-- Dependencies: 209
-- Name: TABLE tst_atletas; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,REFERENCES ON TABLE public.tst_atletas TO acessoavaliativo;


--
-- TOC entry 3393 (class 0 OID 0)
-- Dependencies: 224
-- Name: TABLE tst_atletas_orgs_modalidades; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,REFERENCES ON TABLE public.tst_atletas_orgs_modalidades TO acessoavaliativo;


--
-- TOC entry 3394 (class 0 OID 0)
-- Dependencies: 217
-- Name: TABLE tst_bairros; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,REFERENCES ON TABLE public.tst_bairros TO acessoavaliativo;


--
-- TOC entry 3395 (class 0 OID 0)
-- Dependencies: 216
-- Name: SEQUENCE tst_bairro_codbai_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON SEQUENCE public.tst_bairro_codbai_seq TO acessoavaliativo;


--
-- TOC entry 3396 (class 0 OID 0)
-- Dependencies: 213
-- Name: TABLE tst_cidades; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,REFERENCES ON TABLE public.tst_cidades TO acessoavaliativo;


--
-- TOC entry 3397 (class 0 OID 0)
-- Dependencies: 212
-- Name: SEQUENCE tst_cidades_codcidade_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON SEQUENCE public.tst_cidades_codcidade_seq TO acessoavaliativo;


--
-- TOC entry 3398 (class 0 OID 0)
-- Dependencies: 215
-- Name: TABLE tst_estados; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,REFERENCES ON TABLE public.tst_estados TO acessoavaliativo;


--
-- TOC entry 3399 (class 0 OID 0)
-- Dependencies: 214
-- Name: SEQUENCE tst_estados_codestado_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON SEQUENCE public.tst_estados_codestado_seq TO acessoavaliativo;


--
-- TOC entry 3400 (class 0 OID 0)
-- Dependencies: 223
-- Name: TABLE tst_modalidades; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,REFERENCES ON TABLE public.tst_modalidades TO acessoavaliativo;


--
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 222
-- Name: SEQUENCE tst_modalidades_codmodalidade_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON SEQUENCE public.tst_modalidades_codmodalidade_seq TO acessoavaliativo;


--
-- TOC entry 3402 (class 0 OID 0)
-- Dependencies: 221
-- Name: TABLE tst_organizacoes; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,REFERENCES ON TABLE public.tst_organizacoes TO acessoavaliativo;


--
-- TOC entry 3403 (class 0 OID 0)
-- Dependencies: 220
-- Name: SEQUENCE tst_organizacoes_codorg_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON SEQUENCE public.tst_organizacoes_codorg_seq TO acessoavaliativo;


--
-- TOC entry 3404 (class 0 OID 0)
-- Dependencies: 211
-- Name: TABLE tst_paises; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,REFERENCES ON TABLE public.tst_paises TO acessoavaliativo;


--
-- TOC entry 3405 (class 0 OID 0)
-- Dependencies: 210
-- Name: SEQUENCE tst_paises_codpais_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON SEQUENCE public.tst_paises_codpais_seq TO acessoavaliativo;


--
-- TOC entry 3406 (class 0 OID 0)
-- Dependencies: 219
-- Name: TABLE tst_ruas; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,REFERENCES ON TABLE public.tst_ruas TO acessoavaliativo;


--
-- TOC entry 3407 (class 0 OID 0)
-- Dependencies: 218
-- Name: SEQUENCE tst_rua_codrua_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON SEQUENCE public.tst_rua_codrua_seq TO acessoavaliativo;


-- Completed on 2023-01-12 10:36:20

--
-- PostgreSQL database dump complete
--

