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
    name character varying(40) NOT NULL,
    dist_ly numeric(9,0),
    radius_ly numeric(9,0),
    age_milyears integer,
    tokenowner text
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
    name character varying(40) NOT NULL,
    tokenowner text,
    dist_ly numeric(9,0),
    radius_km numeric(9,0),
    age_milyears integer,
    planet_id integer
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
    name character varying(40) NOT NULL,
    tokenowner text,
    dist_milkm numeric(9,0),
    radius_km numeric(9,0),
    age_milyears integer,
    star_id integer
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
-- Name: rocket; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rocket (
    rocket_id integer NOT NULL,
    name character varying(40) NOT NULL,
    tokenowner text,
    launched boolean,
    reusable boolean
);


ALTER TABLE public.rocket OWNER TO freecodecamp;

--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rocket_rocket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rocket_rocket_id_seq OWNER TO freecodecamp;

--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rocket_rocket_id_seq OWNED BY public.rocket.rocket_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    dist_ly numeric(9,0),
    radius_r numeric(9,0),
    age_milyears integer,
    galaxy_id integer,
    tokenowner text
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
-- Name: rocket rocket_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket ALTER COLUMN rocket_id SET DEFAULT nextval('public.rocket_rocket_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 25600, 52850, 13610, NULL);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 2537000, 110000, 10010, NULL);
INSERT INTO public.galaxy VALUES (3, 'virgo a', 65230000, 7500000, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'cygnus a', 500000000, NULL, 5, NULL);
INSERT INTO public.galaxy VALUES (5, 'canis major', 4892, 15, 8, NULL);
INSERT INTO public.galaxy VALUES (6, 'magellanic clouds', 158200, 7000, 1101, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'phobos', NULL, NULL, 13, NULL, 4);
INSERT INTO public.moon VALUES (2, 'amalthea', NULL, NULL, 100, NULL, 4);
INSERT INTO public.moon VALUES (3, 'io', NULL, NULL, 1815, NULL, 4);
INSERT INTO public.moon VALUES (4, 'europa', NULL, NULL, 1569, NULL, 5);
INSERT INTO public.moon VALUES (5, 'ganymede', NULL, NULL, 2631, NULL, 5);
INSERT INTO public.moon VALUES (6, 'pan', NULL, NULL, 10, NULL, 5);
INSERT INTO public.moon VALUES (7, 'atlas', NULL, NULL, 20, NULL, 5);
INSERT INTO public.moon VALUES (8, 'prometheus', NULL, NULL, 40, NULL, 5);
INSERT INTO public.moon VALUES (9, 'pandora', NULL, NULL, 50, NULL, 5);
INSERT INTO public.moon VALUES (10, 'dione', NULL, NULL, 1560, NULL, 6);
INSERT INTO public.moon VALUES (11, 'rhea', NULL, NULL, 765, NULL, 6);
INSERT INTO public.moon VALUES (12, 'titan', NULL, NULL, 2575, NULL, 6);
INSERT INTO public.moon VALUES (13, 'hyperion', NULL, NULL, 135, NULL, 6);
INSERT INTO public.moon VALUES (14, 'puck', NULL, NULL, 85, NULL, 6);
INSERT INTO public.moon VALUES (15, 'miranda', NULL, NULL, 242, NULL, 6);
INSERT INTO public.moon VALUES (16, 'ariel', NULL, NULL, 580, NULL, 6);
INSERT INTO public.moon VALUES (17, 'titania', NULL, NULL, 805, NULL, 8);
INSERT INTO public.moon VALUES (18, 'umbriel', NULL, NULL, 595, NULL, 8);
INSERT INTO public.moon VALUES (19, 'charon', NULL, NULL, 600, NULL, 7);
INSERT INTO public.moon VALUES (20, 'styx', NULL, NULL, 10, NULL, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', NULL, 162, 2440, 4503, 4);
INSERT INTO public.planet VALUES (2, 'venus', NULL, 137, 6052, 4504, 4);
INSERT INTO public.planet VALUES (3, 'earth', NULL, 0, 6371, 4543, 4);
INSERT INTO public.planet VALUES (4, 'mars', NULL, 254, 3390, 4603, 4);
INSERT INTO public.planet VALUES (5, 'jupiter', NULL, 864, 69911, 4603, 4);
INSERT INTO public.planet VALUES (6, 'saturn', NULL, 1533, 58232, 4503, 4);
INSERT INTO public.planet VALUES (7, 'neptune', NULL, 4596, 24622, 4503, 4);
INSERT INTO public.planet VALUES (8, 'uranus', NULL, 3093, 25362, 4503, 4);
INSERT INTO public.planet VALUES (13, 'proxima centauri b', NULL, 4011350, 6536, NULL, 39);
INSERT INTO public.planet VALUES (14, 'andromedae b', NULL, NULL, 87389, 3300, NULL);
INSERT INTO public.planet VALUES (15, 'proxima centauri c', NULL, NULL, NULL, NULL, 39);
INSERT INTO public.planet VALUES (16, 'proxima centauri d', NULL, NULL, NULL, NULL, 39);


--
-- Data for Name: rocket; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rocket VALUES (1, 'voyager', NULL, true, false);
INSERT INTO public.rocket VALUES (2, 'galileo', NULL, true, false);
INSERT INTO public.rocket VALUES (3, 'gme', NULL, false, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'kw sagittarii', 7800, 1009, 32, 1, NULL);
INSERT INTO public.star VALUES (2, 'uy scuti', 5219, 1700, NULL, 1, NULL);
INSERT INTO public.star VALUES (3, 'antares', 550, 883, 11, 1, NULL);
INSERT INTO public.star VALUES (4, 'sol', 0, 1, 4603, 1, NULL);
INSERT INTO public.star VALUES (5, 'alpheratz', 97, 2, 60, 2, NULL);
INSERT INTO public.star VALUES (6, 'mirach', 199, 100, NULL, 2, NULL);
INSERT INTO public.star VALUES (39, 'proxima centauri', 4, NULL, 4853, 1, NULL);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rocket_rocket_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 39, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_tokenowner_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_tokenowner_key UNIQUE (tokenowner);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_tokenowner_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_tokenowner_key UNIQUE (tokenowner);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_tokenowner_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_tokenowner_key UNIQUE (tokenowner);


--
-- Name: rocket rocket_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket
    ADD CONSTRAINT rocket_pkey PRIMARY KEY (rocket_id);


--
-- Name: rocket rocket_tokenowner_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket
    ADD CONSTRAINT rocket_tokenowner_key UNIQUE (tokenowner);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_tokenowner_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_tokenowner_key UNIQUE (tokenowner);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

