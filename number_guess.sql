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
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    n_guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(25) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 4);
INSERT INTO public.games VALUES (2, 1, 1);
INSERT INTO public.games VALUES (3, 2, 3);
INSERT INTO public.games VALUES (4, 2, 5);
INSERT INTO public.games VALUES (5, 3, 282);
INSERT INTO public.games VALUES (6, 3, 166);
INSERT INTO public.games VALUES (7, 4, 989);
INSERT INTO public.games VALUES (8, 4, 299);
INSERT INTO public.games VALUES (9, 3, 310);
INSERT INTO public.games VALUES (10, 5, 394);
INSERT INTO public.games VALUES (11, 5, 937);
INSERT INTO public.games VALUES (12, 6, 620);
INSERT INTO public.games VALUES (13, 6, 599);
INSERT INTO public.games VALUES (14, 5, 440);
INSERT INTO public.games VALUES (15, 7, 312);
INSERT INTO public.games VALUES (16, 7, 328);
INSERT INTO public.games VALUES (17, 8, 231);
INSERT INTO public.games VALUES (18, 8, 21);
INSERT INTO public.games VALUES (19, 7, 319);
INSERT INTO public.games VALUES (20, 1, 10);
INSERT INTO public.games VALUES (21, 9, 33);
INSERT INTO public.games VALUES (22, 9, 413);
INSERT INTO public.games VALUES (23, 10, 553);
INSERT INTO public.games VALUES (24, 10, 811);
INSERT INTO public.games VALUES (25, 9, 821);
INSERT INTO public.games VALUES (26, 11, 85);
INSERT INTO public.games VALUES (27, 11, 36);
INSERT INTO public.games VALUES (28, 12, 347);
INSERT INTO public.games VALUES (29, 12, 966);
INSERT INTO public.games VALUES (30, 11, 221);
INSERT INTO public.games VALUES (31, 13, 732);
INSERT INTO public.games VALUES (32, 13, 220);
INSERT INTO public.games VALUES (33, 14, 538);
INSERT INTO public.games VALUES (34, 14, 417);
INSERT INTO public.games VALUES (35, 13, 472);
INSERT INTO public.games VALUES (36, 15, 911);
INSERT INTO public.games VALUES (37, 15, 336);
INSERT INTO public.games VALUES (38, 16, 460);
INSERT INTO public.games VALUES (39, 16, 263);
INSERT INTO public.games VALUES (40, 15, 96);
INSERT INTO public.games VALUES (41, 17, 646);
INSERT INTO public.games VALUES (42, 17, 884);
INSERT INTO public.games VALUES (43, 18, 21);
INSERT INTO public.games VALUES (44, 18, 405);
INSERT INTO public.games VALUES (45, 17, 55);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Simon');
INSERT INTO public.users VALUES (2, 'bliabo');
INSERT INTO public.users VALUES (3, 'user_1660383107359');
INSERT INTO public.users VALUES (4, 'user_1660383107358');
INSERT INTO public.users VALUES (5, 'user_1660383166914');
INSERT INTO public.users VALUES (6, 'user_1660383166913');
INSERT INTO public.users VALUES (7, 'user_1660383215841');
INSERT INTO public.users VALUES (8, 'user_1660383215840');
INSERT INTO public.users VALUES (9, 'user_1660383517190');
INSERT INTO public.users VALUES (10, 'user_1660383517189');
INSERT INTO public.users VALUES (11, 'user_1660383526620');
INSERT INTO public.users VALUES (12, 'user_1660383526619');
INSERT INTO public.users VALUES (13, 'user_1660383566212');
INSERT INTO public.users VALUES (14, 'user_1660383566211');
INSERT INTO public.users VALUES (15, 'user_1660383587022');
INSERT INTO public.users VALUES (16, 'user_1660383587021');
INSERT INTO public.users VALUES (17, 'user_1660383628639');
INSERT INTO public.users VALUES (18, 'user_1660383628638');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 45, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 18, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

