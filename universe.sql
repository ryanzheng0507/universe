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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    distance_from_earch numeric,
    galaxy_id integer
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    galaxy_types character varying(50) NOT NULL,
    distance_from_earth numeric NOT NULL
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
    name character varying(100) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    moon_types character varying(50) NOT NULL,
    distance_from_earch numeric NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(100) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    planet_types character varying(50) NOT NULL,
    distance_from_earch numeric NOT NULL,
    star_id integer NOT NULL
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
    name character varying(100) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    star_types character varying(50) NOT NULL,
    distance_from_earch numeric NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sagittarius A*', 'None', 100, 5);
INSERT INTO public.black_hole VALUES (2, 'Cygnus X-1', 'None', 100, 5);
INSERT INTO public.black_hole VALUES (3, 'M87*', 'None', 100, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'None', false, 100, 'Spiral', 100);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'None', false, 100, 'Spiral', 100);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'None', false, 100, 'Spiral', 100);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'None', false, 100, 'Spiral', 100);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'None', false, 100, 'Spiral', 100);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 'None', false, 100, 'Spiral', 100);
INSERT INTO public.galaxy VALUES (7, 'NGC 1300', 'None', false, 100, 'Spiral', 100);
INSERT INTO public.galaxy VALUES (8, 'NGC 253', 'None', false, 100, 'Spiral', 100);
INSERT INTO public.galaxy VALUES (9, 'Centaurus', 'None', false, 100, 'Spiral', 100);
INSERT INTO public.galaxy VALUES (10, 'NGC 6744', 'None', false, 100, 'Spiral', 100);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'None', false, 100, 'Natural', 100, 2);
INSERT INTO public.moon VALUES (2, 'Phobos', 'None', false, 100, 'Natural', 100, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'None', false, 100, 'Natural', 100, 2);
INSERT INTO public.moon VALUES (4, 'Io', 'None', false, 100, 'Natural', 100, 2);
INSERT INTO public.moon VALUES (5, 'Europa', 'None', false, 100, 'Natural', 100, 2);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'None', false, 100, 'Natural', 100, 2);
INSERT INTO public.moon VALUES (7, 'Callisto', 'None', false, 100, 'Natural', 100, 2);
INSERT INTO public.moon VALUES (8, 'Titan', 'None', false, 100, 'Natural', 100, 2);
INSERT INTO public.moon VALUES (9, 'Rhea', 'None', false, 100, 'Natural', 100, 2);
INSERT INTO public.moon VALUES (10, 'Iapetus', 'None', false, 100, 'Natural', 100, 2);
INSERT INTO public.moon VALUES (11, 'Triton', 'None', false, 100, 'Natural', 100, 2);
INSERT INTO public.moon VALUES (12, 'Oberon', 'None', false, 100, 'Natural', 100, 4);
INSERT INTO public.moon VALUES (13, 'Umbriel', 'None', false, 100, 'Natural', 100, 4);
INSERT INTO public.moon VALUES (14, 'Ariel', 'None', false, 100, 'Natural', 100, 4);
INSERT INTO public.moon VALUES (15, 'Miranda', 'None', false, 100, 'Natural', 100, 4);
INSERT INTO public.moon VALUES (16, 'Nereid', 'None', false, 100, 'Natural', 100, 4);
INSERT INTO public.moon VALUES (17, 'Charon', 'None', false, 100, 'Natural', 100, 4);
INSERT INTO public.moon VALUES (18, 'Proxima Centauri b I', 'None', false, 100, 'Natural', 100, 4);
INSERT INTO public.moon VALUES (19, 'Alpha Centauri Bb I', 'None', false, 100, 'Natural', 100, 3);
INSERT INTO public.moon VALUES (20, 'Vega I Moon', 'None', false, 100, 'Natural', 100, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Mercury', 'None', false, 100, 'Terrestrial', 100, 2);
INSERT INTO public.planet VALUES (3, 'Venus', 'None', false, 100, 'Terrestrial', 100, 2);
INSERT INTO public.planet VALUES (4, 'Earth', 'None', false, 100, 'Terrestrial', 100, 2);
INSERT INTO public.planet VALUES (5, 'Mars', 'None', false, 100, 'Terrestrial', 100, 2);
INSERT INTO public.planet VALUES (6, 'Jupiter', 'None', false, 100, 'Terrestrial', 100, 2);
INSERT INTO public.planet VALUES (7, 'Saturn', 'None', false, 100, 'Terrestrial', 100, 2);
INSERT INTO public.planet VALUES (8, 'Uranus', 'None', false, 100, 'Terrestrial', 100, 2);
INSERT INTO public.planet VALUES (9, 'Neptune', 'None', false, 100, 'Terrestrial', 100, 2);
INSERT INTO public.planet VALUES (10, 'Proxima b', 'None', false, 100, 'Terrestrial', 100, 2);
INSERT INTO public.planet VALUES (11, 'Alpha centauri Bb', 'None', false, 100, 'Terrestrial', 100, 2);
INSERT INTO public.planet VALUES (12, 'Vega I', 'None', false, 100, 'Terrestrial', 100, 2);
INSERT INTO public.planet VALUES (13, 'Rigel A I', 'None', false, 100, 'Terrestrial', 100, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sun', 'None', false, 100, 'Main Sequence', 100, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 'None', false, 100, 'Main Sequence', 100, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'None', false, 100, 'Red Supergiant', 100, 2);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 'None', false, 100, 'Red Dwarf', 100, 2);
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', 'None', false, 100, 'Main Sequence', 100, 1);
INSERT INTO public.star VALUES (7, 'Rigel', 'None', false, 100, 'Blue Supergiant', 100, 3);
INSERT INTO public.star VALUES (8, 'Vega', 'None', false, 100, 'Main Sequence', 100, 1);
INSERT INTO public.star VALUES (9, 'Polaris', 'None', false, 100, 'Supergiant', 100, 4);
INSERT INTO public.star VALUES (10, 'Arcturus', 'None', false, 100, 'Red Giant', 100, 4);
INSERT INTO public.star VALUES (11, 'Aldebaran', 'None', false, 100, 'Red Giant', 100, 4);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: black_hole black_hole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

