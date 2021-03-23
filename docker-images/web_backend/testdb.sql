--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: quotes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.quotes (
    id bigint NOT NULL,
    message character varying(255)
);


ALTER TABLE public.quotes OWNER TO postgres;

--
-- Data for Name: quotes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.quotes (id, message) FROM stdin;
1	Live as if you were to die tomorrow. Learn as if you were to live forever.
2	That which does not kill us makes us stronger.
3	Do what you can, with what you have, where you are.
4	Be yourself; everyone else is already taken.
5	This above all: to thine own self be true.
6	If you cannot do great things, do small things in a great way.
7	Wise men speak because they have something to say; fools because they have to say something.
8	Strive not to be a success, but rather to be of value.
9	Two roads diverged in a wood, and I—I took the one less traveled by, And that has made all the difference.
10	I have learned that people will forget what you said, people will forget what you did, but people will never forget how you made them feel.
\.


--
-- Name: quotes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.quotes
    ADD CONSTRAINT quotes_pkey PRIMARY KEY (id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

