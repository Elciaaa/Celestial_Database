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
-- Name: everything; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.everything (
    name character varying(50),
    everything_id integer NOT NULL,
    is_english boolean,
    is_polish boolean,
    surname character varying(30) NOT NULL
);


ALTER TABLE public.everything OWNER TO freecodecamp;

--
-- Name: everything_everything_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.everything_everything_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.everything_everything_id_seq OWNER TO freecodecamp;

--
-- Name: everything_everything_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.everything_everything_id_seq OWNED BY public.everything.everything_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(50),
    galaxy_id integer NOT NULL,
    classification text,
    movement boolean,
    constellation text NOT NULL
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
    name character varying(50),
    moon_id integer NOT NULL,
    planet_id integer,
    discovered_by integer NOT NULL,
    discovery_year integer NOT NULL
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
    name character varying(50),
    planet_id integer NOT NULL,
    diameter integer,
    weight integer NOT NULL,
    type text NOT NULL,
    distance numeric,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(50),
    star_id integer NOT NULL,
    constellation character varying(40) NOT NULL,
    stellar_class character varying(40) NOT NULL,
    diameter integer,
    galaxy_id integer
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
-- Name: everything everything_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.everything ALTER COLUMN everything_id SET DEFAULT nextval('public.everything_everything_id_seq'::regclass);


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
-- Data for Name: everything; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.everything VALUES ('Jagoda', 1, false, true, 'Brzezinska');
INSERT INTO public.everything VALUES ('Marian', 2, false, true, 'Nowak');
INSERT INTO public.everything VALUES ('Zosia', 3, false, true, 'Warzek');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Comet', 301, 'S', false, 'Sculptor');
INSERT INTO public.galaxy VALUES ('ESO 97', 302, 'S', false, 'Circinus');
INSERT INTO public.galaxy VALUES ('ESO510', 303, 'Sa', true, 'Hydra');
INSERT INTO public.galaxy VALUES ('IC342', 403, 'SAB', false, 'Camelopardalis');
INSERT INTO public.galaxy VALUES ('IC1296', 503, 'SBbc', true, 'Lyra');
INSERT INTO public.galaxy VALUES ('ISOHDFS27', 603, 'Sab', true, 'Polis');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon1', 10, 1, 2000, 1000);
INSERT INTO public.moon VALUES ('Moon2', 20, 2, 2002, 2001);
INSERT INTO public.moon VALUES ('Moon3', 30, 3, 3002, 3001);
INSERT INTO public.moon VALUES ('Moon4', 40, 4, 4002, 4001);
INSERT INTO public.moon VALUES ('Moon5', 50, 5, 5002, 5001);
INSERT INTO public.moon VALUES ('Moon6', 60, 6, 6002, 6001);
INSERT INTO public.moon VALUES ('Moon7', 70, 7, 7002, 7001);
INSERT INTO public.moon VALUES ('Moon8', 80, 8, 8002, 8001);
INSERT INTO public.moon VALUES ('Moon9', 90, 9, 9002, 9001);
INSERT INTO public.moon VALUES ('Moon10', 100, 10, 10002, 10001);
INSERT INTO public.moon VALUES ('Moon11', 110, 11, 11002, 11001);
INSERT INTO public.moon VALUES ('Moon12', 120, 12, 12002, 12001);
INSERT INTO public.moon VALUES ('Moon13', 130, 11, 13002, 13001);
INSERT INTO public.moon VALUES ('Moon14', 140, 10, 14002, 14001);
INSERT INTO public.moon VALUES ('Moon15', 150, 9, 15002, 15001);
INSERT INTO public.moon VALUES ('Moon16', 160, 8, 16002, 16001);
INSERT INTO public.moon VALUES ('Moon17', 170, 7, 17002, 17001);
INSERT INTO public.moon VALUES ('Moon18', 180, 6, 18002, 18001);
INSERT INTO public.moon VALUES ('Moon19', 190, 5, 19002, 19001);
INSERT INTO public.moon VALUES ('Moon20', 200, 4, 20002, 20001);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Merkury', 1, 1000, 1001, 'rock', 1003, 300);
INSERT INTO public.planet VALUES ('Wenus', 2, 2000, 2001, 'rock', 2003, 300);
INSERT INTO public.planet VALUES ('Ziemia', 3, 3000, 3001, 'rock', 3003, 300);
INSERT INTO public.planet VALUES ('Mars', 4, 4000, 4001, 'rock', 4003, 400);
INSERT INTO public.planet VALUES ('Jowisz', 5, 5000, 5001, 'rock', 5003, 500);
INSERT INTO public.planet VALUES ('Saturn', 6, 6000, 6001, 'rock', 6003, 600);
INSERT INTO public.planet VALUES ('Uran', 7, 7000, 7001, 'rock', 7003, 300);
INSERT INTO public.planet VALUES ('Neptun', 8, 8000, 8001, 'rock', 8003, 300);
INSERT INTO public.planet VALUES ('Ceres', 9, 9000, 9001, 'rock', 9003, 700);
INSERT INTO public.planet VALUES ('Pluto', 10, 10000, 10001, 'rock', 10003, 300);
INSERT INTO public.planet VALUES ('Haumea', 11, 11000, 11001, 'rock', 11003, 800);
INSERT INTO public.planet VALUES ('Makemake', 12, 12000, 12001, 'rock', 12003, 300);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Alpheratz', 300, 'Sculptor', 'B9p', NULL, 301);
INSERT INTO public.star VALUES ('Mirach', 400, 'Circinus', 'Molllvar', NULL, 302);
INSERT INTO public.star VALUES ('gamma_end', 500, 'Hydra', 'K3IIb', NULL, 303);
INSERT INTO public.star VALUES ('omega_end', 600, 'Camelopardalis', 'K3IIb', NULL, 403);
INSERT INTO public.star VALUES ('Andromeda', 700, 'Lyra', 'F8V', NULL, 503);
INSERT INTO public.star VALUES ('51_end', 800, 'Polis', 'A5V', NULL, 603);


--
-- Name: everything_everything_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.everything_everything_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: everything everything_everything_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.everything
    ADD CONSTRAINT everything_everything_id_key UNIQUE (everything_id);


--
-- Name: everything everything_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.everything
    ADD CONSTRAINT everything_pkey PRIMARY KEY (everything_id);


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
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


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

