--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: categories; Type: TABLE; Schema: public; Owner: Faputa
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    stock integer,
    prices numeric(10,2),
    attributes text
);


ALTER TABLE public.categories OWNER TO "Faputa";

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: Faputa
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO "Faputa";

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Faputa
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: Faputa
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    status character varying(50)
);


ALTER TABLE public.customers OWNER TO "Faputa";

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: Faputa
--

CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_id_seq OWNER TO "Faputa";

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Faputa
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- Name: inventory; Type: TABLE; Schema: public; Owner: Faputa
--

CREATE TABLE public.inventory (
    product_id integer NOT NULL,
    size character varying(50)
);


ALTER TABLE public.inventory OWNER TO "Faputa";

--
-- Name: orders; Type: TABLE; Schema: public; Owner: Faputa
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    number character varying(50) NOT NULL,
    address text,
    total_price numeric(10,2),
    customer_id integer,
    product_id integer
);


ALTER TABLE public.orders OWNER TO "Faputa";

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: Faputa
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_id_seq OWNER TO "Faputa";

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Faputa
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: payments; Type: TABLE; Schema: public; Owner: Faputa
--

CREATE TABLE public.payments (
    id integer NOT NULL,
    type character varying(50),
    date date,
    order_id integer
);


ALTER TABLE public.payments OWNER TO "Faputa";

--
-- Name: payments_id_seq; Type: SEQUENCE; Schema: public; Owner: Faputa
--

CREATE SEQUENCE public.payments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payments_id_seq OWNER TO "Faputa";

--
-- Name: payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Faputa
--

ALTER SEQUENCE public.payments_id_seq OWNED BY public.payments.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: Faputa
--

CREATE TABLE public.products (
    id integer NOT NULL,
    price numeric(10,2) NOT NULL,
    quantity integer NOT NULL,
    type character varying(50),
    version character varying(50)
);


ALTER TABLE public.products OWNER TO "Faputa";

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: Faputa
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_id_seq OWNER TO "Faputa";

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Faputa
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: suppliers; Type: TABLE; Schema: public; Owner: Faputa
--

CREATE TABLE public.suppliers (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    order_id integer
);


ALTER TABLE public.suppliers OWNER TO "Faputa";

--
-- Name: suppliers_id_seq; Type: SEQUENCE; Schema: public; Owner: Faputa
--

CREATE SEQUENCE public.suppliers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.suppliers_id_seq OWNER TO "Faputa";

--
-- Name: suppliers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Faputa
--

ALTER SEQUENCE public.suppliers_id_seq OWNED BY public.suppliers.id;


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: Faputa
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: Faputa
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: Faputa
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: payments id; Type: DEFAULT; Schema: public; Owner: Faputa
--

ALTER TABLE ONLY public.payments ALTER COLUMN id SET DEFAULT nextval('public.payments_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: Faputa
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: suppliers id; Type: DEFAULT; Schema: public; Owner: Faputa
--

ALTER TABLE ONLY public.suppliers ALTER COLUMN id SET DEFAULT nextval('public.suppliers_id_seq'::regclass);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: Faputa
--

COPY public.categories (id, stock, prices, attributes) FROM stdin;
1	100	1200.00	Electronics
2	50	35.50	Books
3	30	250.00	Clothing
4	20	500.00	Home Appliances
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: Faputa
--

COPY public.customers (id, name, status) FROM stdin;
1	Alice Dupont	active
2	Bob Martin	inactive
3	Charlie Leroy	active
4	Diana Smith	active
\.


--
-- Data for Name: inventory; Type: TABLE DATA; Schema: public; Owner: Faputa
--

COPY public.inventory (product_id, size) FROM stdin;
1	Medium
2	Small
3	Large
4	Medium
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: Faputa
--

COPY public.orders (id, number, address, total_price, customer_id, product_id) FROM stdin;
1	ORD001	123 Main St	1235.50	1	1
2	ORD002	456 Park Ave	35.50	2	2
3	ORD003	789 Broadway	500.00	3	4
4	ORD004	321 Oak St	250.00	4	3
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: Faputa
--

COPY public.payments (id, type, date, order_id) FROM stdin;
1	Credit Card	2025-09-12	1
2	PayPal	2025-09-13	2
3	Credit Card	2025-09-14	3
4	Bank Transfer	2025-09-15	4
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: Faputa
--

COPY public.products (id, price, quantity, type, version) FROM stdin;
1	1200.00	10	Electronics	v1
2	35.50	50	Books	1st Edition
3	250.00	30	Clothing	v2
4	500.00	20	Home Appliances	v1
\.


--
-- Data for Name: suppliers; Type: TABLE DATA; Schema: public; Owner: Faputa
--

COPY public.suppliers (id, name, order_id) FROM stdin;
1	Supplier A	1
2	Supplier B	2
3	Supplier C	3
4	Supplier D	4
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Faputa
--

SELECT pg_catalog.setval('public.categories_id_seq', 4, true);


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Faputa
--

SELECT pg_catalog.setval('public.customers_id_seq', 4, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Faputa
--

SELECT pg_catalog.setval('public.orders_id_seq', 4, true);


--
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Faputa
--

SELECT pg_catalog.setval('public.payments_id_seq', 4, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Faputa
--

SELECT pg_catalog.setval('public.products_id_seq', 4, true);


--
-- Name: suppliers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Faputa
--

SELECT pg_catalog.setval('public.suppliers_id_seq', 4, true);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: Faputa
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: Faputa
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: inventory inventory_pkey; Type: CONSTRAINT; Schema: public; Owner: Faputa
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (product_id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: Faputa
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: Faputa
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: Faputa
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: suppliers suppliers_pkey; Type: CONSTRAINT; Schema: public; Owner: Faputa
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (id);


--
-- Name: inventory inventory_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Faputa
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Faputa
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id);


--
-- Name: orders orders_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Faputa
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- Name: payments payments_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Faputa
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- PostgreSQL database dump complete
--

