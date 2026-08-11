--
-- PostgreSQL database dump
--

\restrict CFzGdpn6o2u0pI1oMnBavrZLkewcu7Kapq5GpeoQZIOZEQ12qqVTAyiuigfmGOh

-- Dumped from database version 14.23 (Debian 14.23-1.pgdg13+1)
-- Dumped by pg_dump version 14.23 (Debian 14.23-1.pgdg13+1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    id integer NOT NULL,
    name character varying(100),
    gender character varying(10)
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- Name: employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employee_id_seq OWNER TO postgres;

--
-- Name: employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_id_seq OWNED BY public.employee.id;


--
-- Name: salary; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salary (
    id integer NOT NULL,
    salary integer
);


ALTER TABLE public.salary OWNER TO postgres;

--
-- Name: zoo_1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zoo_1 (
    id integer NOT NULL,
    animal character varying(100) NOT NULL
);


ALTER TABLE public.zoo_1 OWNER TO postgres;

--
-- Name: zoo_2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zoo_2 (
    id integer NOT NULL,
    animal character varying(100) NOT NULL
);


ALTER TABLE public.zoo_2 OWNER TO postgres;

--
-- Name: employee id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee ALTER COLUMN id SET DEFAULT nextval('public.employee_id_seq'::regclass);


--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee (id, name, gender) FROM stdin;
1	Ravi	M
2	Anu	F
3	John	M
4	Priya	F
\.


--
-- Data for Name: salary; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.salary (id, salary) FROM stdin;
1	60000
2	45000
3	75000
4	40000
\.


--
-- Data for Name: zoo_1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.zoo_1 (id, animal) FROM stdin;
1	Lion
2	Tiger
3	Wolf
4	Fox
\.


--
-- Data for Name: zoo_2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.zoo_2 (id, animal) FROM stdin;
1	Tiger
2	Lion
3	Rhino
4	Panther
\.


--
-- Name: employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_id_seq', 4, true);


--
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);


--
-- Name: salary salary_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salary
    ADD CONSTRAINT salary_pkey PRIMARY KEY (id);


--
-- Name: zoo_1 zoo_1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zoo_1
    ADD CONSTRAINT zoo_1_pkey PRIMARY KEY (id);


--
-- Name: zoo_2 zoo_2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zoo_2
    ADD CONSTRAINT zoo_2_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict CFzGdpn6o2u0pI1oMnBavrZLkewcu7Kapq5GpeoQZIOZEQ12qqVTAyiuigfmGOh

