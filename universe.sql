--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    g_type text,
    life boolean,
    sytems integer,
    element character varying(255) DEFAULT 'carbon'::character varying
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    water boolean,
    g_force numeric,
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    element character varying(255) DEFAULT 'carbon'::character varying
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255),
    life boolean DEFAULT false NOT NULL,
    star_id integer,
    element character varying(255) DEFAULT 'carbon'::character varying
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255),
    color character varying(255),
    galaxy_id integer NOT NULL,
    element character varying(255) DEFAULT 'carbon'::character varying
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: travel_log; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.travel_log (
    travel_log_id integer NOT NULL,
    name character varying(255),
    p_visited boolean DEFAULT false NOT NULL,
    element character varying(255) DEFAULT 'carbon'::character varying,
    times integer DEFAULT 1
);


ALTER TABLE public.travel_log OWNER TO freecodecamp;

--
-- Name: travel_log_travel_log_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.travel_log_travel_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.travel_log_travel_log_id_seq OWNER TO freecodecamp;

--
-- Name: travel_log_travel_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.travel_log_travel_log_id_seq OWNED BY public.travel_log.travel_log_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: travel_log travel_log_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.travel_log ALTER COLUMN travel_log_id SET DEFAULT nextval('public.travel_log_travel_log_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'g1', 'big', true, NULL, 'carbon');
INSERT INTO public.galaxy VALUES (2, 'g2', 'small', true, NULL, 'carbon');
INSERT INTO public.galaxy VALUES (3, 'g3', 'small', false, NULL, 'carbon');
INSERT INTO public.galaxy VALUES (4, 'g4', 'small', false, NULL, 'carbon');
INSERT INTO public.galaxy VALUES (5, 'g5', 'huge', false, NULL, 'carbon');
INSERT INTO public.galaxy VALUES (6, 'g6', 'tiny', true, NULL, 'carbon');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, NULL, 1, 'm1', 'carbon');
INSERT INTO public.moon VALUES (2, NULL, NULL, 1, 'm2', 'carbon');
INSERT INTO public.moon VALUES (3, NULL, NULL, 2, 'm3', 'carbon');
INSERT INTO public.moon VALUES (4, NULL, NULL, 2, 'm4', 'carbon');
INSERT INTO public.moon VALUES (5, NULL, NULL, 3, 'm5', 'carbon');
INSERT INTO public.moon VALUES (6, NULL, NULL, 3, 'm6', 'carbon');
INSERT INTO public.moon VALUES (7, NULL, NULL, 3, 'm7', 'carbon');
INSERT INTO public.moon VALUES (8, NULL, NULL, 4, 'm8', 'carbon');
INSERT INTO public.moon VALUES (9, NULL, NULL, 5, 'm9', 'carbon');
INSERT INTO public.moon VALUES (10, NULL, NULL, 10, 'm10', 'carbon');
INSERT INTO public.moon VALUES (11, NULL, NULL, 11, 'm11', 'carbon');
INSERT INTO public.moon VALUES (12, NULL, NULL, 1, 'm112', 'carbon');
INSERT INTO public.moon VALUES (13, NULL, NULL, 1, 'm14', 'carbon');
INSERT INTO public.moon VALUES (14, NULL, NULL, 1, 'm15', 'carbon');
INSERT INTO public.moon VALUES (15, NULL, NULL, 1, 'm16', 'carbon');
INSERT INTO public.moon VALUES (16, NULL, NULL, 1, 'm17', 'carbon');
INSERT INTO public.moon VALUES (17, NULL, NULL, 6, 'm18', 'carbon');
INSERT INTO public.moon VALUES (18, NULL, NULL, 6, 'm19', 'carbon');
INSERT INTO public.moon VALUES (19, NULL, NULL, 6, 'm20', 'carbon');
INSERT INTO public.moon VALUES (20, NULL, NULL, 4, 'm13', 'carbon');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p1', true, 2, 'carbon');
INSERT INTO public.planet VALUES (2, 'p2', true, 2, 'carbon');
INSERT INTO public.planet VALUES (3, 'p3', true, 2, 'carbon');
INSERT INTO public.planet VALUES (4, 'p4', false, 2, 'carbon');
INSERT INTO public.planet VALUES (5, 'p5', false, 2, 'carbon');
INSERT INTO public.planet VALUES (6, 'p6', true, 2, 'carbon');
INSERT INTO public.planet VALUES (7, 'p7', true, 2, 'carbon');
INSERT INTO public.planet VALUES (8, 'p8', true, 2, 'carbon');
INSERT INTO public.planet VALUES (9, 'p9', true, 2, 'carbon');
INSERT INTO public.planet VALUES (10, 'p10', true, 2, 'carbon');
INSERT INTO public.planet VALUES (11, 'p11', false, 2, 'carbon');
INSERT INTO public.planet VALUES (12, 'p12', false, 2, 'carbon');
INSERT INTO public.planet VALUES (13, NULL, false, 2, 'carbon');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 's1', NULL, 1, 'carbon');
INSERT INTO public.star VALUES (2, 's2', NULL, 2, 'carbon');
INSERT INTO public.star VALUES (3, 's3', NULL, 3, 'carbon');
INSERT INTO public.star VALUES (4, 's4', NULL, 4, 'carbon');
INSERT INTO public.star VALUES (5, 's5', NULL, 5, 'carbon');
INSERT INTO public.star VALUES (6, 's6', NULL, 6, 'carbon');


--
-- Data for Name: travel_log; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.travel_log VALUES (1, 't1', true, 'carbon', 1);
INSERT INTO public.travel_log VALUES (2, 't2', false, 'carbon', 1);
INSERT INTO public.travel_log VALUES (3, 't3', false, 'carbon', 1);
INSERT INTO public.travel_log VALUES (4, 't4', true, 'carbon', 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: travel_log_travel_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.travel_log_travel_log_id_seq', 4, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: travel_log travel_log_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.travel_log
    ADD CONSTRAINT travel_log_pkey PRIMARY KEY (travel_log_id);


--
-- Name: travel_log travel_log_travel_log_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.travel_log
    ADD CONSTRAINT travel_log_travel_log_id_key UNIQUE (travel_log_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

