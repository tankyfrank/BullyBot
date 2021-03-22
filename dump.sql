--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

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
-- Name: insults; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.insults (
    id integer NOT NULL,
    server_id bigint NOT NULL,
    insult text,
    uploaded_by text
);


--
-- Name: insults_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.insults_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: insults_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.insults_id_seq OWNED BY public.insults.id;


--
-- Name: servers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.servers (
    id bigint NOT NULL
);


--
-- Name: test; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.test (
    id integer NOT NULL,
    name text,
    age integer,
    comments text
);


--
-- Name: test_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.test_id_seq OWNED BY public.test.id;


--
-- Name: voice_insults; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.voice_insults (
    id integer NOT NULL,
    server_id bigint NOT NULL,
    link text,
    uploaded_by text
);


--
-- Name: voice_insults_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.voice_insults_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: voice_insults_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.voice_insults_id_seq OWNED BY public.voice_insults.id;


--
-- Name: insults id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.insults ALTER COLUMN id SET DEFAULT nextval('public.insults_id_seq'::regclass);


--
-- Name: test id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.test ALTER COLUMN id SET DEFAULT nextval('public.test_id_seq'::regclass);


--
-- Name: voice_insults id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.voice_insults ALTER COLUMN id SET DEFAULT nextval('public.voice_insults_id_seq'::regclass);


--
-- Data for Name: insults; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.insults (id, server_id, insult, uploaded_by) FROM stdin;
1	362760187775287308	You are a pig!	
2	362760187775287308	You filthy trash!	
3	362760187775287308	Fucking Weeb	
4	362760187775287308	There's a reason no one loves you!	
5	362760187775287308	If I had a gun with two bullets and I was in a room with Hitler, A grizzly bear, and you, I would shoot you twice.	
6	362760187775287308	You are living proof that God has a sense of humor	
7	362760187775287308	You're not fam anymore	
8	362760187775287308	Will you shut the fuck up	
9	362760187775287308	Don't make it gay!	
10	362760187775287308	CUNT!!!	
11	362760187775287308	Your mother was a hamster and your father smelt of elderberries	
12	362760187775287308	You ugly!	
13	362760187775287308	I hope you get T-bagged	
14	362760187775287308	Duck Fucker, allegedly	
15	362760187775287308	Master faggot	
16	362760187775287308	You are the dumb	
17	362760187775287308	You ain’t got no neck Dutch	
18	362760187775287308	Como chingas	
19	362760187775287308	You look like a bird!	
20	362760187775287308	I bet you bite whale bubbles!	
21	362760187775287308	My list of priorities goes something like this: Me> My spouse > My dog> My dogs shit> The dirt the shit is on > You	
22	362760187775287308	I may not be perfect but at least I'm not you	
23	362760187775287308	If my dog had a face like you, i'd paint his ass and teach him to walk backwards	
24	362760187775287308	You look like a before picture	
25	362760187775287308	At least you're not a whoop!	
26	362760187775287308	Keep rolling your eyes, perhaps you'll find a brain back there	
27	362760187775287308	Over a million sperm, and you were the first one to hit that egg?	
28	362760187775287308	You must have been a born on a highway because that's where most accidents happen	
29	362760187775287308	Everything happens for a reason. But sometimes the reason is that you're stupid and you make bad decisions	
30	362760187775287308	You're like a software update. Whenever i see you I think not now	
31	362760187775287308	I hope you step on a lego	
32	362760187775287308	You are so fake, even china denied they made you	
33	362760187775287308	If stupid could fly, you'd be a jet	
34	362760187775287308	I would slap you, but that would be called animal abuse	
35	362760187775287308	Somewhere out there, a tree is tirelessly producing oxygen for you. Go apologize to it	
36	362760187775287308	I treasure the time I don't spend with you	
37	362760187775287308	Your birth certificate is an apology letter from the condom factory	
38	362760187775287308	Don't you love nature, despite what it did to you?	
39	362760187775287308	You're about as important as a white crayon	
40	362760187775287308	Your parents must be furious with the one child policy	
41	362760187775287308	I may love to shop but i'm not buying your bullshit	
42	362760187775287308	If i agreed with you, we'd both be wrong	
43	362760187775287308	The last time i saw something like you... I flushed it	
44	362760187775287308	You talk so much shit, I don't know whether to offer you a breath mint or toilet paper	
45	362760187775287308	If you were a vegetable, you'd be a cabbitch	
46	362760187775287308	If only a closed mind came with a closed mouth	
47	362760187775287308	How many wrinkles does an asshole have? Smile! I'll count them	
48	362760187775287308	The trash gets picked up tomorrow. Be ready	
49	362760187775287308	I neither have the time nor the crayons to explain this to you	
50	362760187775287308	If i wanted to kill myself, I would climb to your ego and jump to your IQ	
51	362760187775287308	I'm not saying I hate you, but i'd unplug your life support to charge my phone	
52	362760187775287308	You are the reason why safety scissors were invented	
53	362760187775287308	You look like something I drew with my left hand	
54	362760187775287308	Dumber than snake mittens	
55	362760187775287308	I'm trying to see things from your point of view but I can't seem to get my head that far up my ass	
56	362760187775287308	Mirrors can't talk. Lucky for you, they can't laugh either	
57	362760187775287308	Hey, you have something on your chin... no, the 3rd one down	
58	362760187775287308	Some day you'll go far... and I hope you stay there	
59	362760187775287308	If laughter is the best medicine, your face must be curing the world	
60	362760187775287308	So, a thought crossed your mind? Must have been a long and lonely journey	
61	362760187775287308	When I see your face there's not a thing I would change... except the direction I was walking in	
62	362760187775287308	If I had a dollar for every time you said something smart, I'd be broke	
63	362760187775287308	When you were born the doctor threw you out the window and the window threw you back	
64	362760187775287308	I love what you've done with your hair. How do you get it to come out of the nostrils like that?	
65	362760187775287308	I refuse to enter a battle of wits with an unarmed opponent	
66	362760187775287308	You shouldn't act hard-to-get when you're hard-to-want	
67	362760187775287308	Roses are red, violets are blue. God made me pretty, what happened to you?	
68	362760187775287308	You were only invited, because you asked us to!	
69	362760187775287308	Some babies were dropped on their heads but you were clearly thrown at a wall	
70	362760187775287308	Oi!!! Bitch Nugget!!!	
71	362760187775287308	You sinner	
72	362760187775287308	Shut up. Your mother buys you Mega Blocks instead of Legos.	
73	362760187775287308	you face looks like something you clean out of the drain	
74	362760187775287308	Roses are red, Violets are blue, you look like trash and smell like it too	
75	362760187775287308	Fuck your couch	
76	362760187775287308	Mirrors don't lie. Lucky for you, they don't laugh either.	
\.


--
-- Data for Name: servers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.servers (id) FROM stdin;
769489034056958013
362760187775287308
784279629204553739
\.


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.test (id, name, age, comments) FROM stdin;
1	Franklin	23	Hello World!
2	Bill	45	Some kind of comments
\.


--
-- Data for Name: voice_insults; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.voice_insults (id, server_id, link, uploaded_by) FROM stdin;
1	784279629204553739	https://www.youtube.com/watch?v=qu_uJQQo_Us	112647048074944512
2	784279629204553739	https://www.youtube.com/watch?v=vDHtypVwbHQ	112647048074944512
3	362760187775287308	https://www.youtube.com/watch?v=ZBZMYH6sqIM	112647048074944512
\.


--
-- Name: insults_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.insults_id_seq', 76, true);


--
-- Name: test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.test_id_seq', 2, true);


--
-- Name: voice_insults_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.voice_insults_id_seq', 3, true);


--
-- Name: insults insults_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.insults
    ADD CONSTRAINT insults_pkey PRIMARY KEY (id);


--
-- Name: servers servers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.servers
    ADD CONSTRAINT servers_pkey PRIMARY KEY (id);


--
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (id);


--
-- Name: voice_insults voice_insults_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.voice_insults
    ADD CONSTRAINT voice_insults_pkey PRIMARY KEY (id);


--
-- Name: insults insults_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.insults
    ADD CONSTRAINT insults_server_id_fkey FOREIGN KEY (server_id) REFERENCES public.servers(id);


--
-- Name: voice_insults voice_insults_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.voice_insults
    ADD CONSTRAINT voice_insults_server_id_fkey FOREIGN KEY (server_id) REFERENCES public.servers(id);


--
-- PostgreSQL database dump complete
--

