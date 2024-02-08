--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Ubuntu 16.1-1.pgdg22.04+1)
-- Dumped by pg_dump version 16.1 (Ubuntu 16.1-1.pgdg22.04+1)

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
-- Name: state; Type: TYPE; Schema: public; Owner: clint_user
--

CREATE TYPE public.state AS ENUM (
    'To Do',
    'Doing',
    'Ready'
);


ALTER TYPE public.state OWNER TO clint_user;

--
-- Name: status; Type: TYPE; Schema: public; Owner: clint_user
--

CREATE TYPE public.status AS ENUM (
    'To Do',
    'Doing',
    'Ready'
);


ALTER TYPE public.status OWNER TO clint_user;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: tasks; Type: TABLE; Schema: public; Owner: clint_user
--

CREATE TABLE public.tasks (
    id bigint NOT NULL,
    title character varying(100) NOT NULL,
    due_date date NOT NULL,
    status public.status NOT NULL
);


ALTER TABLE public.tasks OWNER TO clint_user;

--
-- Name: tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: clint_user
--

CREATE SEQUENCE public.tasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tasks_id_seq OWNER TO clint_user;

--
-- Name: tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: clint_user
--

ALTER SEQUENCE public.tasks_id_seq OWNED BY public.tasks.id;


--
-- Name: tasks id; Type: DEFAULT; Schema: public; Owner: clint_user
--

ALTER TABLE ONLY public.tasks ALTER COLUMN id SET DEFAULT nextval('public.tasks_id_seq'::regclass);


--
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: clint_user
--

COPY public.tasks (id, title, due_date, status) FROM stdin;
1	Work 1	2024-05-28	To Do
3	Opportunity 3	2024-02-10	Ready
24	Clean the house	2024-02-09	Ready
15	Another task To do	2024-02-06	Doing
25	Go to grocery	2024-02-11	Ready
5	Very easy	2024-02-14	To Do
2	Some task	2024-02-14	To Do
6	Hard task	2023-07-14	Doing
26	Loads of work	2024-02-15	To Do
4	Work	2024-05-09	Doing
\.


--
-- Name: tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: clint_user
--

SELECT pg_catalog.setval('public.tasks_id_seq', 26, true);


--
-- Name: tasks pk_tasks; Type: CONSTRAINT; Schema: public; Owner: clint_user
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT pk_tasks PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

