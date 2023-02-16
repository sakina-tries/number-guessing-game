--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    u_id integer,
    guesses integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    u_id integer NOT NULL,
    name character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_u_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_u_id_seq OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_u_id_seq OWNED BY public.users.u_id;


--
-- Name: users u_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN u_id SET DEFAULT nextval('public.users_u_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 9);
INSERT INTO public.games VALUES (2, 118);
INSERT INTO public.games VALUES (2, 544);
INSERT INTO public.games VALUES (3, 385);
INSERT INTO public.games VALUES (3, 932);
INSERT INTO public.games VALUES (2, 862);
INSERT INTO public.games VALUES (2, 111);
INSERT INTO public.games VALUES (2, 960);
INSERT INTO public.games VALUES (1, 11);
INSERT INTO public.games VALUES (4, 146);
INSERT INTO public.games VALUES (4, 884);
INSERT INTO public.games VALUES (5, 720);
INSERT INTO public.games VALUES (5, 472);
INSERT INTO public.games VALUES (4, 583);
INSERT INTO public.games VALUES (4, 12);
INSERT INTO public.games VALUES (4, 486);
INSERT INTO public.games VALUES (6, 382);
INSERT INTO public.games VALUES (6, 926);
INSERT INTO public.games VALUES (7, 445);
INSERT INTO public.games VALUES (7, 575);
INSERT INTO public.games VALUES (6, 251);
INSERT INTO public.games VALUES (6, 576);
INSERT INTO public.games VALUES (6, 581);
INSERT INTO public.games VALUES (8, 567);
INSERT INTO public.games VALUES (8, 841);
INSERT INTO public.games VALUES (9, 409);
INSERT INTO public.games VALUES (9, 147);
INSERT INTO public.games VALUES (8, 130);
INSERT INTO public.games VALUES (8, 191);
INSERT INTO public.games VALUES (8, 253);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'sakina');
INSERT INTO public.users VALUES (2, 'user_1676559324352');
INSERT INTO public.users VALUES (3, 'user_1676559324351');
INSERT INTO public.users VALUES (4, 'user_1676559396667');
INSERT INTO public.users VALUES (5, 'user_1676559396665');
INSERT INTO public.users VALUES (6, 'user_1676559445826');
INSERT INTO public.users VALUES (7, 'user_1676559445825');
INSERT INTO public.users VALUES (8, 'user_1676559478937');
INSERT INTO public.users VALUES (9, 'user_1676559478936');


--
-- Name: users_u_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_u_id_seq', 9, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (u_id);


--
-- Name: users users_u_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_u_id_key UNIQUE (u_id);


--
-- Name: games games_u_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_u_id_fkey FOREIGN KEY (u_id) REFERENCES public.users(u_id);


--
-- PostgreSQL database dump complete
--

