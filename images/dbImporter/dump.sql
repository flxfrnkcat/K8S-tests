--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4 (Debian 17.4-1.pgdg120+2)
-- Dumped by pg_dump version 17.4 (Debian 17.4-1.pgdg120+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: testuser
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 20000
    CACHE 1;


ALTER SEQUENCE public.products_id_seq OWNER TO testuser;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: products; Type: TABLE; Schema: public; Owner: testuser
--

CREATE TABLE public.products (
    id text DEFAULT nextval('public.products_id_seq'::regclass) NOT NULL,
    name text,
    description_s text,
    description_l text,
    preview_pic text,
    pic text,
    price text,
    category text
);


ALTER TABLE public.products OWNER TO testuser;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: testuser
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO testuser;

--
-- Name: users; Type: TABLE; Schema: public; Owner: testuser
--

CREATE TABLE public.users (
    id text DEFAULT nextval('public.users_id_seq'::regclass) NOT NULL,
    vorname text NOT NULL,
    nachname text NOT NULL,
    plz text NOT NULL,
    stadt text NOT NULL,
    "straße" text NOT NULL,
    hausnummer text NOT NULL,
    email text NOT NULL,
    passwd text NOT NULL,
    token text
);


ALTER TABLE public.users OWNER TO testuser;

--
-- Name: warenkorb; Type: TABLE; Schema: public; Owner: testuser
--

CREATE TABLE public.warenkorb (
    token text,
    data text
);


ALTER TABLE public.warenkorb OWNER TO testuser;

--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: testuser
--

COPY public.products (id, name, description_s, description_l, preview_pic, pic, price, category) FROM stdin;
1	K2	Test	TEST long	http://localhost:5283/api/Picture/K2_s	http://localhost:5283/api/Picture/K2	209	Hochdruckreiniger
2	K3	Test	TEST long	http://localhost:5283/api/Picture/K3_s	http://localhost:5283/api/Picture/K3	160	Hochdruckreiniger
3	K4	Test	TEST long	http://localhost:5283/api/Picture/K4_s	http://localhost:5283/api/Picture/K4	235	Hochdruckreiniger
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: testuser
--

COPY public.users (id, vorname, nachname, plz, stadt, "straße", hausnummer, email, passwd, token) FROM stdin;
2	string	string	0	string	string	0	string	473287f8298dba7163a897908958f7c0eae733e25d2e027992ea2edc9bed2fa8	43d4a2dd-4019-447a-b955-780002626900
0	test	test	12345	testdtadt	teststraße	1	a@b.local	bbba37fba5c03a42092a4ea5e51a5b132ef6e5e968ca3a9cba580dec4f7f8f78	7ed1cd01-6398-4d79-84b5-de2e17c362ff
\.


--
-- Data for Name: warenkorb; Type: TABLE DATA; Schema: public; Owner: testuser
--

COPY public.warenkorb (token, data) FROM stdin;
7ed1cd01-6398-4d79-84b5-de2e17c362ff	{}
43d4a2dd-4019-447a-b955-780002626900	{"additionalProp1":0,"additionalProp2":0,"additionalProp3":0,"string":3}
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: testuser
--

SELECT pg_catalog.setval('public.products_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: testuser
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: testuser
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: testuser
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

