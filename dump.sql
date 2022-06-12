--
-- PostgreSQL database dump
--

-- Dumped from database version 13.7
-- Dumped by pg_dump version 14.3

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
-- Data for Name: conference; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.conference (id, city, year, is_international) FROM stdin;
1	Tokyo	2022	f
2	NewYork	2023	t
\.


--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.comment (id, conference_id, authorauthor, text, email, created_at, photo_filename) FROM stdin;
\.


--
-- Data for Name: doctrine_migration_versions; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.doctrine_migration_versions (version, executed_at, execution_time) FROM stdin;
DoctrineMigrations\\Version20220612062513	2022-06-12 06:26:18	240
DoctrineMigrations\\Version20220612114210	2022-06-12 11:42:41	45
\.


--
-- Data for Name: messenger_messages; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.messenger_messages (id, body, headers, queue_name, created_at, available_at, delivered_at) FROM stdin;
\.


--
-- Name: comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.comment_id_seq', 1, true);


--
-- Name: conference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.conference_id_seq', 2, true);


--
-- Name: messenger_messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.messenger_messages_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

