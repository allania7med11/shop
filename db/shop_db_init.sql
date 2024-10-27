--
-- PostgreSQL database dump
--

-- Dumped from database version 14.12 (Ubuntu 14.12-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.12 (Ubuntu 14.12-0ubuntu0.22.04.1)

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
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO postgres;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO postgres;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO postgres;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO postgres;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO postgres;

--
-- Name: core_commandhistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.core_commandhistory (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    applied_at timestamp with time zone NOT NULL
);


ALTER TABLE public.core_commandhistory OWNER TO postgres;

--
-- Name: core_commandhistory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.core_commandhistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_commandhistory_id_seq OWNER TO postgres;

--
-- Name: core_commandhistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.core_commandhistory_id_seq OWNED BY public.core_commandhistory.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: products_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_category (
    id bigint NOT NULL,
    name character varying(250) NOT NULL,
    slug character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.products_category OWNER TO postgres;

--
-- Name: products_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_category_id_seq OWNER TO postgres;

--
-- Name: products_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_category_id_seq OWNED BY public.products_category.id;


--
-- Name: products_discount; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_discount (
    id bigint NOT NULL,
    name character varying(250) NOT NULL,
    percent numeric(5,2) NOT NULL,
    active boolean NOT NULL
);


ALTER TABLE public.products_discount OWNER TO postgres;

--
-- Name: products_discount_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_discount_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_discount_id_seq OWNER TO postgres;

--
-- Name: products_discount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_discount_id_seq OWNED BY public.products_discount.id;


--
-- Name: products_file; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_file (
    id bigint NOT NULL,
    name character varying(250),
    file character varying(255) NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE public.products_file OWNER TO postgres;

--
-- Name: products_file_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_file_id_seq OWNER TO postgres;

--
-- Name: products_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_file_id_seq OWNED BY public.products_file.id;


--
-- Name: products_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_order (
    id bigint NOT NULL,
    order_date timestamp with time zone NOT NULL,
    total_amount numeric(10,2),
    status character varying(50) NOT NULL,
    user_id integer,
    uuid uuid
);


ALTER TABLE public.products_order OWNER TO postgres;

--
-- Name: products_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_order_id_seq OWNER TO postgres;

--
-- Name: products_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_order_id_seq OWNED BY public.products_order.id;


--
-- Name: products_orderaddress; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_orderaddress (
    id bigint NOT NULL,
    street character varying(255) NOT NULL,
    city character varying(100) NOT NULL,
    zip_code character varying(20) NOT NULL,
    country character varying(100) NOT NULL,
    phone character varying(20) NOT NULL,
    order_id bigint NOT NULL
);


ALTER TABLE public.products_orderaddress OWNER TO postgres;

--
-- Name: products_orderaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_orderaddress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_orderaddress_id_seq OWNER TO postgres;

--
-- Name: products_orderaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_orderaddress_id_seq OWNED BY public.products_orderaddress.id;


--
-- Name: products_orderitems; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_orderitems (
    id bigint NOT NULL,
    quantity integer NOT NULL,
    subtotal numeric(10,2),
    order_id bigint NOT NULL,
    product_id bigint NOT NULL,
    CONSTRAINT products_orderitems_quantity_check CHECK ((quantity >= 0))
);


ALTER TABLE public.products_orderitems OWNER TO postgres;

--
-- Name: products_orderitems_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_orderitems_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_orderitems_id_seq OWNER TO postgres;

--
-- Name: products_orderitems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_orderitems_id_seq OWNED BY public.products_orderitems.id;


--
-- Name: products_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_product (
    id bigint NOT NULL,
    name character varying(250) NOT NULL,
    price_currency character varying(3) NOT NULL,
    price numeric(19,4) NOT NULL,
    category_id bigint,
    discount_id bigint,
    slug character varying(100),
    description text,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.products_product OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_product_id_seq OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products_product.id;


--
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(200) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data jsonb NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO postgres;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialaccount_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL,
    provider_id character varying(200) NOT NULL,
    settings jsonb NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO postgres;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;


--
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialapp_sites (
    id bigint NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO postgres;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_sites_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO postgres;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialtoken_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;


--
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: core_commandhistory id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_commandhistory ALTER COLUMN id SET DEFAULT nextval('public.core_commandhistory_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: products_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_category ALTER COLUMN id SET DEFAULT nextval('public.products_category_id_seq'::regclass);


--
-- Name: products_discount id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_discount ALTER COLUMN id SET DEFAULT nextval('public.products_discount_id_seq'::regclass);


--
-- Name: products_file id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_file ALTER COLUMN id SET DEFAULT nextval('public.products_file_id_seq'::regclass);


--
-- Name: products_order id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_order ALTER COLUMN id SET DEFAULT nextval('public.products_order_id_seq'::regclass);


--
-- Name: products_orderaddress id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_orderaddress ALTER COLUMN id SET DEFAULT nextval('public.products_orderaddress_id_seq'::regclass);


--
-- Name: products_orderitems id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_orderitems ALTER COLUMN id SET DEFAULT nextval('public.products_orderitems_id_seq'::regclass);


--
-- Name: products_product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_product ALTER COLUMN id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- Name: socialaccount_socialaccount id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);


--
-- Name: socialaccount_socialapp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);


--
-- Name: socialaccount_socialapp_sites id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);


--
-- Name: socialaccount_socialtoken id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
1	allaniahmedkr@gmail.com	f	f	1
2	allaniahmedkr+cl1@gmail.com	f	t	2
3	allaniahmedkr+sophia@gmail.com	f	t	3
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add Token	7	add_token
26	Can change Token	7	change_token
27	Can delete Token	7	delete_token
28	Can view Token	7	view_token
29	Can add token	8	add_tokenproxy
30	Can change token	8	change_tokenproxy
31	Can delete token	8	delete_tokenproxy
32	Can view token	8	view_tokenproxy
33	Can add email address	9	add_emailaddress
34	Can change email address	9	change_emailaddress
35	Can delete email address	9	delete_emailaddress
36	Can view email address	9	view_emailaddress
37	Can add email confirmation	10	add_emailconfirmation
38	Can change email confirmation	10	change_emailconfirmation
39	Can delete email confirmation	10	delete_emailconfirmation
40	Can view email confirmation	10	view_emailconfirmation
41	Can add social account	11	add_socialaccount
42	Can change social account	11	change_socialaccount
43	Can delete social account	11	delete_socialaccount
44	Can view social account	11	view_socialaccount
45	Can add social application	12	add_socialapp
46	Can change social application	12	change_socialapp
47	Can delete social application	12	delete_socialapp
48	Can view social application	12	view_socialapp
49	Can add social application token	13	add_socialtoken
50	Can change social application token	13	change_socialtoken
51	Can delete social application token	13	delete_socialtoken
52	Can view social application token	13	view_socialtoken
53	Can add command history	14	add_commandhistory
54	Can change command history	14	change_commandhistory
55	Can delete command history	14	delete_commandhistory
56	Can view command history	14	view_commandhistory
57	Can add category	15	add_category
58	Can change category	15	change_category
59	Can delete category	15	delete_category
60	Can view category	15	view_category
61	Can add discount	16	add_discount
62	Can change discount	16	change_discount
63	Can delete discount	16	delete_discount
64	Can view discount	16	view_discount
65	Can add product	17	add_product
66	Can change product	17	change_product
67	Can delete product	17	delete_product
68	Can view product	17	view_product
69	Can add file	18	add_file
70	Can change file	18	change_file
71	Can delete file	18	delete_file
72	Can view file	18	view_file
73	Can add order	19	add_order
74	Can change order	19	change_order
75	Can delete order	19	delete_order
76	Can view order	19	view_order
77	Can add order items	20	add_orderitems
78	Can change order items	20	change_orderitems
79	Can delete order items	20	delete_orderitems
80	Can view order items	20	view_orderitems
81	Can add site	21	add_site
82	Can change site	21	change_site
83	Can delete site	21	delete_site
84	Can view site	21	view_site
85	Can add order address	22	add_orderaddress
86	Can change order address	22	change_orderaddress
87	Can delete order address	22	delete_orderaddress
88	Can view order address	22	view_orderaddress
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$320000$h5PlilPtj9u36bTfpzBq0u$zwkvUkBwohWAAaicLtC2u4x1cTQ5J+WmiNPYMLZVA/I=	2024-06-22 09:29:20+00	f	james	James	Mitchell	james.mitchell@gmail.com	f	t	2024-06-22 09:29:19+00
3	pbkdf2_sha256$320000$8yr2bwyQTd9BVYmEgHVfTB$4jdunprnz5bkmNiHSrooNf9tn3f+6w+ZkcuPuSNJxgU=	2024-06-22 11:31:33.825512+00	f	sophia	Sophia	Bennett	allaniahmedkr+sophia@gmail.com	f	t	2024-06-22 11:31:33.363407+00
1	pbkdf2_sha256$320000$oiSDVobTxfra35hNtsnxAR$WCSjMlyEtCRuObpZsX4D6AEUERI0PsgII2kjcWYZyOU=	2024-07-14 08:46:14.262828+00	t	allaniahmedkr	Oliver	Harrison	allaniahmedkr@gmail.com	t	t	2024-04-07 17:49:10+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
\.


--
-- Data for Name: core_commandhistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_commandhistory (id, name, applied_at) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2024-04-09 01:41:05.12078+00	39	Key Holder	2	[{"changed": {"fields": ["Description"]}}]	17	1
2	2024-04-09 02:28:31.635121+00	39	Key Holder	2	[]	17	1
3	2024-04-09 02:28:45.133692+00	39	Key Holder	2	[]	17	1
4	2024-06-09 16:38:52.544352+00	1	https://shop.effectivewebapp.com	2	[{"changed": {"fields": ["Domain name", "Display name"]}}]	21	1
5	2024-06-09 16:42:51.045041+00	1	shop.effectivewebapp.com	2	[{"changed": {"fields": ["Domain name"]}}]	21	1
6	2024-06-20 08:16:16.899358+00	1	Order #1 (Shipped)	2	[{"changed": {"fields": ["Status"]}}]	19	1
7	2024-06-22 11:01:43.424279+00	36	Order #36 (Processing)	2	[{"changed": {"name": "order address", "object": "Address for Order 36", "fields": ["Street", "City", "Zip code", "Country", "Phone"]}}]	19	1
8	2024-06-22 11:03:23.447134+00	2	james	2	[{"changed": {"fields": ["Email address"]}}]	4	1
9	2024-06-22 11:03:52.231531+00	2	james	2	[{"changed": {"fields": ["Email address"]}}]	4	1
10	2024-06-22 11:28:23.650816+00	36	Order #36 (Delivered)	2	[{"changed": {"fields": ["Status"]}}]	19	1
11	2024-06-22 11:29:16.576326+00	1	allaniahmedkr	2	[{"changed": {"fields": ["First name", "Last name"]}}]	4	1
12	2024-06-22 11:32:40.847163+00	43	Order #43 (Canceled)	2	[{"changed": {"fields": ["Status"]}}]	19	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	authtoken	token
8	authtoken	tokenproxy
9	account	emailaddress
10	account	emailconfirmation
11	socialaccount	socialaccount
12	socialaccount	socialapp
13	socialaccount	socialtoken
14	core	commandhistory
15	products	category
16	products	discount
17	products	product
18	products	file
19	products	order
20	products	orderitems
21	sites	site
22	products	orderaddress
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2024-04-07 17:35:45.139307+00
2	auth	0001_initial	2024-04-07 17:35:45.316761+00
3	account	0001_initial	2024-04-07 17:35:45.376201+00
4	account	0002_email_max_length	2024-04-07 17:35:45.390281+00
5	account	0003_alter_emailaddress_create_unique_verified_email	2024-04-07 17:35:45.418942+00
6	account	0004_alter_emailaddress_drop_unique_email	2024-04-07 17:35:45.436886+00
7	account	0005_emailaddress_idx_upper_email	2024-04-07 17:35:45.453274+00
8	admin	0001_initial	2024-04-07 17:35:45.489361+00
9	admin	0002_logentry_remove_auto_add	2024-04-07 17:35:45.505743+00
10	admin	0003_logentry_add_action_flag_choices	2024-04-07 17:35:45.521723+00
11	contenttypes	0002_remove_content_type_name	2024-04-07 17:35:45.555592+00
12	auth	0002_alter_permission_name_max_length	2024-04-07 17:35:45.573132+00
13	auth	0003_alter_user_email_max_length	2024-04-07 17:35:45.589202+00
14	auth	0004_alter_user_username_opts	2024-04-07 17:35:45.606045+00
15	auth	0005_alter_user_last_login_null	2024-04-07 17:35:45.623265+00
16	auth	0006_require_contenttypes_0002	2024-04-07 17:35:45.628067+00
17	auth	0007_alter_validators_add_error_messages	2024-04-07 17:35:45.640368+00
18	auth	0008_alter_user_username_max_length	2024-04-07 17:35:45.667506+00
19	auth	0009_alter_user_last_name_max_length	2024-04-07 17:35:45.688249+00
20	auth	0010_alter_group_name_max_length	2024-04-07 17:35:45.707719+00
21	auth	0011_update_proxy_permissions	2024-04-07 17:35:45.720544+00
22	auth	0012_alter_user_first_name_max_length	2024-04-07 17:35:45.731987+00
23	authtoken	0001_initial	2024-04-07 17:35:45.761393+00
24	authtoken	0002_auto_20160226_1747	2024-04-07 17:35:45.859484+00
25	authtoken	0003_tokenproxy	2024-04-07 17:35:45.864695+00
26	core	0001_initial	2024-04-07 17:35:45.875718+00
27	products	0001_initial	2024-04-07 17:35:45.95052+00
28	products	0002_product_slug_alter_category_name_alter_category_slug	2024-04-07 17:35:45.979067+00
29	products	0002_product_description	2024-04-07 17:35:45.992923+00
30	products	0003_merge_20230206_2022	2024-04-07 17:35:45.996586+00
31	products	0004_category_created_at_category_updated_at_and_more	2024-04-07 17:35:46.022191+00
32	products	0005_order_alter_product_options_orderitems	2024-04-07 17:35:46.094679+00
33	products	0006_alter_order_total_amount_alter_orderitems_subtotal	2024-04-07 17:35:46.119301+00
34	products	0007_alter_orderitems_unique_together	2024-04-07 17:35:46.135708+00
35	products	0008_alter_orderitems_quantity	2024-04-07 17:35:46.149696+00
36	products	0009_remove_order_session_id_order_uuid	2024-04-07 17:35:46.178084+00
37	products	0010_alter_order_uuid_alter_orderitems_order	2024-04-07 17:35:46.213893+00
38	sessions	0001_initial	2024-04-07 17:35:46.24436+00
51	sites	0001_initial	2024-06-09 16:34:46.770876+00
52	sites	0002_alter_domain_unique	2024-06-09 16:34:46.792444+00
53	socialaccount	0001_initial	2024-06-09 16:34:46.959272+00
54	socialaccount	0002_token_max_lengths	2024-06-09 16:34:47.029709+00
55	socialaccount	0003_extra_data_default_dict	2024-06-09 16:34:47.054027+00
56	socialaccount	0004_app_provider_id_settings	2024-06-09 16:34:47.102806+00
57	socialaccount	0005_socialtoken_nullable_app	2024-06-09 16:34:47.145787+00
58	socialaccount	0006_alter_socialaccount_extra_data	2024-06-09 16:34:47.188958+00
59	products	0011_orderaddress	2024-06-20 08:09:44.79342+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
o9b0t7hzriosoh6tihjpv4avhbnidl5f	.eJxVjDsOwyAQRO9CHSEwX6dM7zOgXRaCkwgkY1dR7h5bcpFounlv5s0CbGsJW09LmIldmWSX3w4hPlM9AD2g3huPra7LjPxQ-Ek7nxql1-10_w4K9LKvMWkSlBQKLxUioItmcNraSJpyJrsHvB5lEnE0nlT2ShorHQzWuajY5wsIazg2:1rtWeA:Vp55ZGq0lkjwMmTsvLJgmvXQURjSrrFkF3vpcnp9gHU	2024-04-21 17:49:38.479531+00
tyak9v1wc9s6z72osbt1ib6opz8jizze	.eJxVjDsOwyAQRO9CHSEwX6dM7zOgXRaCkwgkY1dR7h5bcpFounlv5s0CbGsJW09LmIldmWSX3w4hPlM9AD2g3huPra7LjPxQ-Ek7nxql1-10_w4K9LKvMWkSlBQKLxUioItmcNraSJpyJrsHvB5lEnE0nlT2ShorHQzWuajY5wsIazg2:1rtXvl:YC3J3frDiHgHKZUyZVP-Rce2OfYk-fBE51M-I-gFa3c	2024-04-21 19:11:53.261551+00
8o2tsoa3y6u70yosgt5nstqixhjzyz78	eyJvcmRlcl91dWlkIjoiZGY0NzhlMGQtOGY4YS00ZWNhLTlmMDktMmY1MjAwN2MxZjc1In0:1rtdKS:Px6N0gqczcv_-MsmRKXVg0td915CbiJfU9bNFpWPsZ4	2024-04-22 00:57:44.295896+00
nxo5dpldc742erqatsyeoa2mj2g62imz	eyJvcmRlcl91dWlkIjoiYTg0ODAyNzQtOTdmYy00ZTM1LTg0NjgtNTgwN2NmNjlmZDA0In0:1rtdKf:6cITsMUxIQZI_bXxy7uMnG3b9uzd3kwhYf4ccO-iBgE	2024-04-22 00:57:57.319527+00
gd8nsqfmoxougpcdfttsizn7xyvnqd07	eyJvcmRlcl91dWlkIjoiNTVkNTllNWEtNjAyNy00YTFlLWIzMjMtYjllMzEyOGZjNjhlIn0:1ru19c:553Q0dXW4FR_RR2h-ZMQ4OYZw_MXA2dq1osD9004ElU	2024-04-23 02:24:08.947485+00
6l8xeyifb5f3811oj0nr763ix3uyf9t7	eyJvcmRlcl91dWlkIjoiYzdjZjViNTEtMDEzYi00N2M2LTgyZjItYzhmMmVkMWE3MzQwIn0:1ru19e:sy7LC-6Ns_s_u46qtiMvQliHMbUt9TwSyRjFFiki74M	2024-04-23 02:24:10.548725+00
7psdzuzo75ju0f0u6abaxycbsittwyim	eyJvcmRlcl91dWlkIjoiZDBmODlhZDctZDQwZS00ZDMxLTllNjctNmJmZmYzNzFkODM5In0:1ruquO:14N3DNUg7y_rpj-9J8fVGCJY1byMpxFzZjYvt2odPNM	2024-04-25 09:39:52.567905+00
b1ur1dpd7b6enn91gq0lxxft1q77ebng	eyJvcmRlcl91dWlkIjoiMjFjNjdhYjItNWFmOC00ZTBmLWI0MzAtYWEzNmY3ZWY0NzdhIn0:1rw8lP:B7JIuP8eKp7UHq4LzJxLnb0DncMEEdfxSiNd_5Z8-vU	2024-04-28 22:55:55.140734+00
24anbexitj7to6lsanwsemqmh1uzq9b6	eyJvcmRlcl91dWlkIjoiMGEwMzg4NTYtMDJlMS00ZDUyLTlkM2YtODgwZmE3YzBkMjUwIn0:1ryCfs:APcwYR0K2sUXEutkdSuch7L9Np2VQqv8sTgfNEU0MoQ	2024-05-04 15:30:44.412656+00
tuiyxm6a3k3d6cdwb2wbmthzzm7fi8qy	eyJvcmRlcl91dWlkIjoiNWUyYjlkYzQtOGVjMi00YmNjLWFhMjUtMDNjN2Q2MzU3ZDAyIn0:1s1ET3:hdcXExYBglN3XsM51fVxj_buzR1RhEXXG2snBQ5bP3k	2024-05-13 00:02:01.912496+00
ht5xpyje6m65hhhv9m2sdq1k0p3mb3km	eyJvcmRlcl91dWlkIjoiM2MxYTlkYTEtZTczNy00ODMzLThjNTEtMWQ2OWI4MGM4NGUxIn0:1s1Yi3:berUhuPxQPhBBjuCLm3kYW8M6yTyto3IkMcl-JXh3XY	2024-05-13 21:38:51.303589+00
mh77saqfnpzlk0luv9yttlr6j2v3sc9j	eyJvcmRlcl91dWlkIjoiMjgwMzk5YzctMjQ3NC00OGJmLWE1ODctMDAyYmQwZGJlMDE0In0:1s3jFv:NJ6e6D9xNsxe749F6Suxa7RNjQGsUnP-o3ezOMvCkz4	2024-05-19 21:18:47.623524+00
hwev314ium8tspm550ipfa4m8xir0kcb	eyJvcmRlcl91dWlkIjoiMzBiNjUyZjItMDMxYS00Y2IxLTk3MWYtYTAyMjk4NTk4NjJiIn0:1s6yJR:rhPd8UkK7_MTZEwl6mMBAlrNycX5oVZO-SMLfbkQzpI	2024-05-28 19:59:49.528813+00
9wr9xilemrvwsxu4155wuotfuvcfm5qv	eyJvcmRlcl91dWlkIjoiNzZlOTUwYjItY2ExYy00Y2YxLWIxMzEtZTI0NTIxYjRhOTM0In0:1s7iRB:m_VPrxaqBhVFpNv9HQ2hXxTR_56KQ3thdkpeA0aqPOM	2024-05-30 21:14:53.985942+00
c4jnlhhnj0skuug3xpe1e9kyf552esbh	eyJvcmRlcl91dWlkIjoiZmFmYzhiZWUtNGE3Yy00NTk4LTkwYmUtYzk5ZjNmYjUwNGZiIn0:1s9BJU:5z2Fpk7zaoL-Kcumtb46c7Dy-qriApa4bEwBLFgrgj4	2024-06-03 22:17:00.549158+00
83cr6q28yj12on7ses1e82lqmrbfrois	eyJvcmRlcl91dWlkIjoiY2RjZjQ4ZWYtMTVhMy00YmE4LWE3M2QtZmNkMDM0M2ZmZmFhIn0:1sBjXf:EBam2SbYENNIpiPVc4b1Wk39r-OBHjKZgSa28LU9y8M	2024-06-10 23:14:11.28812+00
uakxn4z25inzoc4jwy6a6x7hxuugux96	eyJvcmRlcl91dWlkIjoiNDY5NDlhZTYtZmVjOC00MTFiLTlmY2QtZWRkMjdhMDJlY2RiIn0:1sCIuy:Bmt_wjSly5j-xKtlw4CIvuXrUomRcU6T5MkTIZY0r_k	2024-06-12 13:00:36.446559+00
vjg48vs9vgqdc2lm17k9fd0xjpbmoecv	.eJxVjDsOgzAQRO_iOkZ2_FmTLrkI2o8RKMhIgKsodw9BNGiqmd33PmpeJC9draOoh0LgGIwz2rbUag-Bdcq91458MpZ8gADqpjqs29DVdQcPzF43Qn7ncvim6T83yDzXsjXHz3lem-fectlGxm2cy-ukLqoB12H3UPZiJDsyyToiJOBwBx8ji5e-l7gHk29tNtyGJK5PzoZoAe8RgJ36_gBMLkqG:1sCJIs:f87aiphWiE3KWsMpurj4d98kvS3lRZJlzRJ3t551l0s	2024-06-12 13:25:18.058879+00
99ydchvizh6d6jh3cy9xgoage1yd58qd	eyJvcmRlcl91dWlkIjoiMGM5MDNiNTUtNDVmNS00ODgwLThiY2ItYzFkMjNjOWZmMjhmIn0:1sDJe7:II5bMCMj62Og_6Ytl5UZ7HZJG2V8D_owq2MPAOZ-5NE	2024-06-15 07:59:23.614999+00
ktu670pz147imhtjs9n0ecn4rvpoboc8	eyJvcmRlcl91dWlkIjoiY2QxMDdhZmEtNjBmMi00YzJmLWE4ODctZDViNDRkZjE4Nzc1In0:1sDJeL:Ke5hNWN3y-AqLbsneyw7LU_KWm26_NjGW7I2WJh4S1c	2024-06-15 07:59:37.807328+00
w2pf6o841i8774lwps6rse52twuev8rc	eyJvcmRlcl91dWlkIjoiYzcyYjk4NzEtNDFmYS00NTE2LTg0ZGQtNGYyNjBiOWIyOWVkIn0:1sGNoV:59XAeHnrnp6TPAO2SwrnELmMcHArYYNO0e9posJ5SI4	2024-06-23 19:02:47.732553+00
7700729osay0b7mlr9tb55ve45yw9j4e	eyJvcmRlcl91dWlkIjoiOGViNTUyZjQtNDczOS00ZWVjLTgwOGItN2RlNzU2Yjg5MjNlIn0:1sGXnW:8LwGvBdXKLTNCv29VqymbE8UsXs15k8LJjRp95hIF48	2024-06-24 05:42:26.032402+00
p7vavdetnkui6fn0g7hyhg1wimkoi238	eyJvcmRlcl91dWlkIjoiODFiMGEwN2MtZmZjNC00YTM4LWIwYmEtZWFmNDUyODE0M2JjIn0:1sHEFt:QFOZu1cQoVtf1WBuag-ivPqQGXGnM9hdC9BYdbcwTyI	2024-06-26 03:02:33.246446+00
xht5zl3o2f0uf72enr5vr7gzt6n30v1y	eyJvcmRlcl91dWlkIjoiZmQxYzNlMjUtYmI4Mi00NGJkLThhMDctMzY1MWM5NjdkMGI2In0:1sHsa8:_ItaFI3_QuRwdaifcBsxat-9h7XAWX9_m40KRZPBM_I	2024-06-27 22:06:08.648255+00
sq41sjczla273kvrjf1kmf1wiio7jnr5	eyJvcmRlcl91dWlkIjoiMGE1NTllNjQtNDkwNS00Zjc0LWFmZTgtYWE1MDlhNTE4YzFiIn0:1sHsaP:4R8qj7qI9tAP6XBelF3CZye3V9v5idVwRxu-dholXxE	2024-06-27 22:06:25.825874+00
e98vkixbgxluz74ypz2rqfxas8j1gqj9	eyJvcmRlcl91dWlkIjoiOTQ0ZjNlOTQtZDQ1Mi00ZTE2LTg1NjUtZDJjYmNhMmMyMWM3In0:1sHsaZ:rr16stJM2EP0INGkZZFHYFO8UNzdC_rK13LTmpCvyZk	2024-06-27 22:06:35.579731+00
2tyopnqyka7w29wyozh9xvzaysyhmwb8	eyJvcmRlcl91dWlkIjoiOGQ2YjIxMzAtN2M4Ny00N2QyLTgwNmItYmRlNWI2NzI5N2ExIn0:1sJEdn:lYfXPsBp4emHCgNfKyqqFXJdRFesGyxCMTiGs1eaSYI	2024-07-01 15:51:31.66115+00
c3ypw90pf6abgml3bq2u87q7bzgdyrqe	.eJxVjE0KgzAQhe-SdZWYSeJMd-1FZDJJUCoKalald6-KGzcP3s_3vmpeYlq6UoaonoowBGCvK51zqCwKVxwdVkgGAIP1IWb1UB2Xre_KuoMn1tyzwPJJ01HwOB5xzSJzmbb63Fz1Wr92l6ZtEN6GeXpf1O2q57Xff3RLoUkGiCw5D212BFaM1xYcJUTS0WQw4MQlEAQvwlkj-WQS7Kp-f8YbShs:1sKCus:3NWbH7_nPeLv5-OHyl_g0EFyq00NgxQqLx2ehq1NfIM	2024-07-04 08:13:10.739407+00
4nny7wgmegpji2y6ei5k7ayg9dcq7p95	eyJvcmRlcl91dWlkIjoiYjJhYmI1NTAtNzI1MS00YjAwLTgyZTktNWE5YWY1ZWNiNTMzIn0:1sKevA:HpLxjzN6hB1fW_anKTTD2JDc9llr5pTby-DgjDS5i0Q	2024-07-05 14:07:20.70026+00
0wev55bs3eqd1u8bde1w8ksxl4ju49u5	.eJxVj8EOgyAQRP-FczXACrK9tT9iYF2iqcFE4dT034utFy-b7My-yexbrNvI21DKPIq7UOSjcpYb15NpOmTTILvQSAgUouSowIqbGHzJ01D2Cv6xqxY8vTgdhl-WQ2490VpSbn83p723j7pxyjP5PK_peVKXqMnvU82RPQbFGhA7NBb6aBA60lZ2YGpBh3LUETQYMgzkwFJ9RDq0rBnqFJ8vxulKHQ:1sKyyU:twdMAlt6n-a1Fu0Fj1Tqwddet0znJh5GCSldWtU6j20	2024-07-06 11:32:06.077407+00
2tpavcfrbnj5vw4779nak0v08muearzu	eyJvcmRlcl91dWlkIjoiYjJhNGVhNGEtODk3ZS00ODZkLWJiZGQtZjNiYTYyZWYxOWU2In0:1sNzpF:qfxrEVbt62nboJFM7mLqy9V8V9sGffv4xb7RnIni2Q8	2024-07-14 19:03:01.937103+00
k1nu7elnh1f48lwhkzsmd0cr8suoik0b	eyJvcmRlcl91dWlkIjoiYjViNWI1NzYtNzE0Ni00NjZlLThkZjQtMmJiYWE4MGJiOGY4In0:1sPVon:cUd5wPGqivUP5DHrcFRnp3Z2arviVxmugCuiDoGjfI8	2024-07-18 23:24:49.960368+00
9w7f9takftzlew13yu51uyvhunpyspki	eyJvcmRlcl91dWlkIjoiMDU1M2JlNzItYTU4OS00ZTA1LWExNTMtODhmNzAwMmY5NjE5In0:1sQRY0:EEjlIGFrACYaXFHENs8y6Kr7AD1wQrgJueVK0-PPvBM	2024-07-21 13:03:20.674406+00
vv6r64s6sqzn9pyly7uy1d058luf98hn	eyJvcmRlcl91dWlkIjoiYWIzYzRkZjItYWNhNS00OGJiLWJjYmYtMDU3NjY1MTljMDE1In0:1sSDgn:l4SP7yjE3DwGqZuKfRXJnjh1438W6WVkNaQa-8lnE0k	2024-07-26 10:39:45.879324+00
3i9qde6df69cm2p5aj47ozfrnx8zo7c0	eyJvcmRlcl91dWlkIjoiNGNjMTZiOTItMWEzNS00NWE3LWEwNjEtNWI4ZTIzNTE3MWQzIn0:1sSQNg:686wWUVNBqck1mPB_4yNdLoITYmtpHimQt3LiuCXCy8	2024-07-27 00:12:52.320861+00
2tuv0bac52c7q3eml1ga5llfke2vdxcn	eyJvcmRlcl91dWlkIjoiYzg5ZTU2MmUtY2Y5Zi00YmE2LWI4MzUtY2MyMDg1OGEyZjEyIn0:1sSa8Y:kbSwCbYA_k2m8VDZp0PLaTPEpkKAILa2cH-KI1ZDNK4	2024-07-27 10:37:54.093068+00
uvgr8oa31uahwcmczl4jl5u4w4obhoah	eyJvcmRlcl91dWlkIjoiMGEzOWQ3NjMtNjI0Ni00M2FhLTlmMTYtNTgwNWQ3NDNlMTYyIn0:1sSeF0:c0VkJ8_-JDQKwNPZO5TlWj6U4BQkP1ilXvJyuRyqLmM	2024-07-27 15:00:50.703113+00
7ndqy4mbqpdl4b9ucsqly120cvax4ztg	.eJxVjj0OgzAMhe-SuaAQJyHu1l4EGccRqAgkSKaqdy8gFhZL7-ez3lcta5S1K2WM6qk0UZ84uMpA4sraGCqMoCuASEYaR64l9VAdlTx0ZdvBE2vuXk_8kfkIaJoOuybmpcy5PjtXvNWvXcmcR6Y8LvP7om6vBtqGY1eLfSMGEC06D21yCJaN1xYcSgioo0lgwLET4ACemZIO6MUI7Ff9_rmiSgU:1sSus2:5DC3pJFspcnmGJliAamqnb0EMs-1_VjPFR4rrnd5sEM	2024-07-28 08:46:14.265883+00
vg9kqjf5j6l9zaz82rk3gi6c3fvylswq	eyJvcmRlcl91dWlkIjoiOGNmNWZkNWYtOGQ4OS00NzBjLThmYmEtN2MxNzBiOWE2OWFiIn0:1sT4BY:BA7Tvame5f--O3ps3hpVqAbgO_tbDXFnWpXIlhsGbys	2024-07-28 18:43:00.236932+00
znl42b1nzdns7g6ywswckmzcgy8dpgsr	eyJvcmRlcl91dWlkIjoiZTczMmJhMzYtZjUyMS00MWYwLThhODAtODkwZjU4ZTJhMDk0In0:1sTQnc:xBH9AEbzLrPCYEokhovIgYiR1RFjF4hUQWakh85Ssho	2024-07-29 18:51:48.018993+00
rlk5zr19keqw0ics4tznum5mr2ocvpwt	eyJvcmRlcl91dWlkIjoiNGMwMjY2NDgtMjk2NS00NTFhLTg5MTItOGI1MzI4OTk2NGE5In0:1sTuNL:ZbDIvlNU7fjrrWAMNs7BGEeXREuQrJJvnM5iHET2UzI	2024-07-31 02:26:39.752349+00
40cncdh8w4clvd0l89cn4t3r4ou5fx58	eyJvcmRlcl91dWlkIjoiMTNmMzVjYzctMDhiMC00NmNhLWEzOTMtY2U5MDM4NjUzN2RiIn0:1sU9vy:vyi0pz2nB5G7RrfGkG_ri1FtSTQeydc3AgKdyLkVEt8	2024-07-31 19:03:26.696858+00
2rf2z7b08nbl2beef9q9apifl7xf7yq7	eyJvcmRlcl91dWlkIjoiMWVjMThlYWYtM2JmZi00NjM3LTg5NmUtMDJiMTM1NjYwNDZlIn0:1sUS12:X2xtIyBaF6YVdXE8o7hIqbFHivqlzzYAuMEja0GM6Cs	2024-08-01 14:21:52.524269+00
4o1yjo25qkifoih2hb43ssixivckib9v	eyJvcmRlcl91dWlkIjoiMmYwNzM3Y2QtMzcxMy00OTc1LThiMzctNGZhN2E0OThhNGI0In0:1sUfyR:37RsMJgCU23DfF_UKBMsRdkLcXI30kpYLX9ATcdbeE8	2024-08-02 05:16:07.412641+00
p82kpo79fb6waaxtagdnpztjnxr3lct9	eyJvcmRlcl91dWlkIjoiNzE1ZDg2NDEtY2Y1MC00ZTBiLTg2Y2EtMjk3OGVlNDg1ODQ2In0:1sVBFu:BEHZAI_TLLiQcwfNEQCfgxWq4zNlySVR0Ol1__FmFGo	2024-08-03 14:40:14.459188+00
lqanvlxmya09f88w6no3svsi0jvs3mgb	eyJvcmRlcl91dWlkIjoiOGMyZTFkNzctYWMzMy00Njk0LTkzYjktYTc5MzU5NGYyYTg5In0:1sVLC5:tgqGfNJLILhXbpOaHGPQTHnYlwmQ3PFXs2tr1RCRInw	2024-08-04 01:16:57.304682+00
mgiheo7tv0b2vn00yg1pfko6ipof1m96	eyJvcmRlcl91dWlkIjoiNjZiNjRiZjEtM2U2Yy00YzQwLTkwMTEtM2Q5YzBiY2Y2ODRkIn0:1sVoax:8dzBRiQYl5U6TXe9wQ1y12D3xXQwvYhPipd3voTpBLE	2024-08-05 08:40:35.715118+00
3zmq64a43yyyu6nipanfbmbwk4hgsoem	eyJvcmRlcl91dWlkIjoiNjMyYzc3ODktNTAxOC00NzU3LTgwYzgtM2NhMDBhMTE0ZjE5In0:1sWBKo:O3Dw9aT4xi7235qoafLRF5KR3Jzg8BZUgcK5vIfejkU	2024-08-06 08:57:26.109018+00
72av75p20rfkjeyslj4dmc9pdch36eva	eyJvcmRlcl91dWlkIjoiMGQxYTExNGYtOTJlYS00ZDYwLWFhYmMtMTQyNzUxMzFiZWZiIn0:1sWJhM:0MZPQrsMrwNOQ1GMRV--RT3hjDxAmGhWZh6lUm5Xwws	2024-08-06 17:53:16.008495+00
my3m25selns8umvalf0pvsoeu2lr862l	eyJvcmRlcl91dWlkIjoiZjVjMzdkNDctYTRkNC00M2NlLWI2YWYtOTE3OGQ4MWExYjU1In0:1sWQZz:S2wFy8PFqI2cKTgxTBSPOvvdmoE7mt309tCeKCkWmLg	2024-08-07 01:14:07.815133+00
iy6y612mn2qgz3du2od94mke7gqw88xy	eyJvcmRlcl91dWlkIjoiZTRiNDdmZTAtZWVmMC00ODJkLTliMzgtNzU3ZjE4MGNhNjhlIn0:1sWXmm:S5hLJo6yZaHWdalt0F8TpRVP8CERW6NQPRnfcAViXV0	2024-08-07 08:55:48.235623+00
i33exqrtbooryf9vh7e2pj485f8nx3y5	eyJvcmRlcl91dWlkIjoiYjlhMTFkMGUtMTk0OS00YjdlLWI3YjAtMTQyMmZiYThlZTNkIn0:1sWj7Q:haY2OCxgb5ZnnASuEjfCoHT2FeJv9I9juHfyiK1pDCQ	2024-08-07 21:01:52.760052+00
213c4hk56b19dlxm0c43eqokadgfs8ld	eyJvcmRlcl91dWlkIjoiM2M2ZGQ3ZWUtNGI3Ni00MDllLWEwOGMtNWYxZDU1OTFiNzY0In0:1sWtP4:_xYCDYR0upu-OUw8gbGqD2GXWfjpIBu2M5t_LuQpzoo	2024-08-08 08:00:46.407934+00
tb2xfli908l0qkw984em3i2tq2t36d5e	eyJvcmRlcl91dWlkIjoiM2NmYzdmMjYtOTU5Ny00YmRkLTk2MmMtNzNmNmVkYjUzYjY3In0:1sX7Dz:I3kp_EVcFhcT3ocTq6t5uA4jTYsxMX-3NW-xqz8UzVo	2024-08-08 22:46:15.15367+00
8xyzlamwu10zs194cpidizrz4con9g3t	eyJvcmRlcl91dWlkIjoiMDcyZDNmZjItNjRkZi00NjhkLWIzMGUtZDliYWNjNjI5YTE2In0:1sXTVs:JRR11fu4QmrarDaeHjscrGWvfd57TJxBoAFTuMda8xM	2024-08-09 22:34:12.74496+00
0c74znelo9x0tkakypec2go4gl32of1h	eyJvcmRlcl91dWlkIjoiMWVlYzU4ZDgtMGNjMy00YjMzLWFlNjMtMjExNWM1ZGEzNzA5In0:1sXqLM:nC_p7fESo5qCm3ASdGdkKQDlootdT4VCTJmU2yHiKoM	2024-08-10 22:56:52.213157+00
23s6ymjyttv4rvixj2ni142asl4x4rlp	eyJvcmRlcl91dWlkIjoiZTRjMTZhZjAtNzg1My00ZTg0LWE4NWItOTNhNzE1NzE2ODJmIn0:1sY2Zw:dEihxjAp0O-MpQz-2Q7MA4z31hupLLUgEwhAoD1XaKo	2024-08-11 12:00:44.428621+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_site (id, domain, name) FROM stdin;
1	shop.effectivewebapp.com	Shoppingify
\.


--
-- Data for Name: products_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_category (id, name, slug, created_at, updated_at) FROM stdin;
1	mobiles	mobiles	2024-04-07 18:25:59.814252+00	2024-04-07 18:25:59.81428+00
2	Smartphones	smartphones	2024-04-07 19:25:24.13837+00	2024-04-07 19:25:24.138398+00
3	Laptops	laptops	2024-04-07 19:25:33.6448+00	2024-04-07 19:25:33.644824+00
4	Fragrances	fragrances	2024-04-07 19:25:46.831722+00	2024-04-07 19:25:46.831746+00
5	Skincare	skincare	2024-04-07 19:25:59.153274+00	2024-04-07 19:25:59.153293+00
6	Groceries	groceries	2024-04-07 19:26:12.640297+00	2024-04-07 19:26:12.640323+00
7	Home-decoration	home-decoration	2024-04-07 19:26:23.440061+00	2024-04-07 19:26:23.440087+00
\.


--
-- Data for Name: products_discount; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_discount (id, name, percent, active) FROM stdin;
1	12.96 %	12.96	t
2	17.94 %	17.94	t
3	15.46 %	15.46	t
4	17.91 %	17.91	t
5	10.58 %	10.58	t
6	11.02 %	11.02	t
7	4.15 %	4.15	t
8	10.23 %	10.23	t
9	11.83 %	11.83	t
10	6.18 %	6.18	t
11	8.4 %	8.40	t
12	15.66 %	15.66	t
13	8.14 %	8.14	t
14	15.6 %	15.60	t
15	10.99 %	10.99	t
16	13.31 %	13.31	t
17	4.09 %	4.09	t
18	13.1 %	13.10	t
19	10.68 %	10.68	t
20	16.99 %	16.99	t
21	4.81 %	4.81	t
22	15.58 %	15.58	t
23	8.04 %	8.04	t
24	16.8 %	16.80	t
25	13.58 %	13.58	t
26	17.86 %	17.86	t
27	16.49 %	16.49	t
28	15.34 %	15.34	t
29	2.92 %	2.92	t
\.


--
-- Data for Name: products_file; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_file (id, name, file, product_id) FROM stdin;
1	\N	rd8hljp8cuqvqcaqwmze	1
2	\N	b0xvdb48uxt38vqrchay	2
3	\N	yngmbtkihr7n99d2mfwm	3
4	\N	vmkz9sxhtp4uxjam9qea	4
5	\N	dytxrmxlgvefmadw44lb	5
6	\N	boxuazmwrnpy1cn0dcvz	6
7	\N	s0bxxv5hi3fxofbzyofd	7
8	\N	mh7j5ezrnajgtbagtk8o	8
9	\N	visxlcqd5oupmogu54gx	9
10	\N	bb3ikyr1nap2gxxvacqq	9
11	\N	pndn7mjat1ba4faacexm	9
12	\N	hqwb3ee0fky70jeg49ex	9
13	\N	qyo6dywltkhfxiejiijw	9
14	\N	lk79h3jipyqvtozyadgj	10
15	\N	btz4wbykt9ljex15c4qv	10
16	\N	o5n88zcgh52qbj4chmmr	10
17	\N	fhpmsfphnkawwzsfmkeh	10
18	\N	p14ccbcqjrsqboo2dqfy	10
19	\N	iwic3oieonmpjv5kvv4o	11
20	\N	neptbyknl2gjmhdg5uts	11
21	\N	uoby1r2ab2v6oyufmygv	11
22	\N	k6roeh4oh52h0jraofya	11
23	\N	ciftmt8ulqtifluihogb	12
24	\N	vywcdzqeymmdokkiwtmd	13
25	\N	sbxmyokfadpgeb25vmlx	13
26	\N	w9dnnfgjjtjjnfrks7gl	13
27	\N	ai2x0k3uwpplsuyvylfp	13
28	\N	qghonx8t6guvas0vaxxg	13
29	\N	hq2on7g5zrgsst37dq1y	14
30	\N	gvwpefcyasekzrbtwi2e	14
31	\N	hfxsskxbjq6jl6batojf	14
32	\N	oqfhbm3p55n8dyaastcz	15
33	\N	ubxvzogw1mdpksfzbzmq	15
34	\N	bk6g9h7lf613ygvmabjm	15
35	\N	l2spbmpzhpaickbire71	15
36	\N	ax8jh8glxdyudwjym6hf	16
37	\N	ydoyl2mrjjrcuz6haoxj	16
38	\N	zzehhbxhemtzqruai7gi	16
39	\N	t2kgoemgsljehud2tcxb	16
40	\N	mgvhaorgapa3oma3iz8a	17
41	\N	y4duapjxmameql4txwgk	17
42	\N	snikefhermlkzfind4pi	17
43	\N	zvmaogbg8pr34lk2tvdy	17
44	\N	vtxpr8ha20je37tfvk8k	17
45	\N	zqc8fcdbid4idbpughrd	18
46	\N	zg3xmxrh0s6drx9dfonz	18
47	\N	rm3m0ioi8938zt3i4slf	18
48	\N	nxast60ccr2ndckxlvsh	18
49	\N	u1o73gqx3fhbzx0vos43	18
50	\N	fy2l6xau2chziou6igvw	19
51	\N	awen1o5l7fgm1bcmgypn	19
52	\N	oyzsstpmmi05kwijd8mp	19
53	\N	pjza3p0loqfv1qmtgxao	19
54	\N	fmnwzrie19hgcsbqdadz	20
55	\N	islwr6ubbakfsqptew8l	20
56	\N	vxluytg2snixn8qr44xd	20
57	\N	zwkaiiqunmyiuuzjoffh	20
58	\N	ysdbvxgipmdt7si0slxf	21
59	\N	v6wgvt9nylkb9ruxuopa	21
60	\N	w7uk49hphiava6r7n5qz	21
61	\N	j5h4g7k6xlps0bif7vwx	21
62	\N	r1d9hxbvv5ffrgwgfnef	21
63	\N	hy5jkubpzj87gezkwxpp	22
64	\N	pdrn7xbewop6p03xepod	22
65	\N	trfnl4p03zolxwjuktww	22
66	\N	fihk7htkg8zxvfpovl9l	22
67	\N	mogionhs69ovfm0ezz1v	22
68	\N	gyc2zugo6tf0zeu3bkkq	23
69	\N	tkf91angdfrvaah4iar5	23
70	\N	qxk90ty2nzthz433qz9u	23
71	\N	ug3xdi5itrko7x4res9v	23
72	\N	d87toszxtsubh5yfh4sn	24
73	\N	vbth9ouhpkv826ug7o00	24
74	\N	ay6asaareolrorgsipgo	24
75	\N	ufii9urokb14qbrcp1b4	24
76	\N	gmwgqzxa57ondefubodx	24
77	\N	xjirmqsetp5wbpnaepqm	25
78	\N	cnvt6kaprebzeqvc0akf	25
79	\N	mgol5i3zoneatbctwmcr	25
80	\N	v1zdfg3s3xqfpmuls3t4	25
81	\N	zy4mgzozb8u4wucprwht	25
82	\N	zdrcyk2wxort2c2phfdk	26
83	\N	yaa0m82uykx9nvruudbx	26
84	\N	oktasonbc4cwyeffbtlr	26
85	\N	afbn0obtpasp6c7i6sqb	26
86	\N	ti0fcs6nyrrd1al0tmdf	27
87	\N	kfgteoqvrp1jyoav9zgq	27
88	\N	faqnosxjk0vo4zl5z5hb	27
89	\N	q9g101q5zf9mouelcd2p	27
90	\N	numzyfliw42usn0kt9bn	27
91	\N	dvosmhl5qjnqyqylqm4k	28
92	\N	hza9pcdcm4oknvezzvto	28
93	\N	gxzewurywt033wpyileg	28
94	\N	xpjf82dc0wdocfpcl0ur	28
95	\N	jhtltlh1kbh0doiz9ik7	29
96	\N	njgpqsemr6zbc8mbtctd	29
97	\N	ewamotqbptraztkr5shk	29
98	\N	ua8ij9ivwtd9corlrdbl	29
99	\N	qrurjeo6o05rfaplv2q6	29
100	\N	eitak33vzycvouiuy1c8	30
101	\N	bwm8ouek257smrvzwbaw	30
102	\N	swrinaahhjbfvlmb8yrd	30
103	\N	k7hmr5tdjmpfigpx9ewy	31
104	\N	tfpb2zyqgmw7wr4xkviq	31
105	\N	gl2yopnn16hdl2hjiaqe	31
106	\N	afbmrbrggdhlzj6vklfa	32
107	\N	pqhasnttp2lyahcfc6yy	32
108	\N	pevv9vxhaxxxisotsha8	32
109	\N	irhflxri2n4lblhgefuk	32
110	\N	hnt1x36men5ittxhi5ep	32
111	\N	xzpzjcupdaoajw16vffm	33
112	\N	uszlto5h93mtrtkl8jj5	33
113	\N	x96f4m368isjzezex97d	33
114	\N	fofuhsbyvj0k3ofwgkym	33
115	\N	pif5mg7f05tebw1qcsuj	33
116	\N	ycyt59klmyyvwbwu6n14	34
117	\N	jkhitr88f2bhhavdrsz7	34
118	\N	l4dyiwge3yozanbvhvq1	34
119	\N	bv9rckaozvdzs35baadc	34
120	\N	vzcqpwiqwcmkady4f3dt	34
121	\N	hoxxnocjjsf3ispxbxpv	35
122	\N	k9bjkawgjvwtswdkmyhb	35
123	\N	j8hukuzq1ajgpckhqaes	35
124	\N	lwsdkcsuidbg1fgngss	35
125	\N	fpfies00rs8f8duj5jts	35
126	\N	gvb0kl9cn8m8wh11yxte	35
127	\N	udt5zwhqic6dffg8rsf4	36
128	\N	q3cp6kel3fpmdjf5hufb	36
129	\N	mfusgru9ee5rjqvxs62r	36
130	\N	dc06f76i1c2ytssvzmat	36
131	\N	soqmi1ccrj3ctko5atyq	36
132	\N	tmj0vaphiyckbaua2nft	37
133	\N	bo2x5p68p9oxlbdpjden	37
134	\N	dgh4qtv46hsuh3fussyv	37
135	\N	wfc35onuxzbzkiqbiskr	37
136	\N	ybc9fwcrxronsaaw5fbi	37
137	\N	chqilerkaiynwyk72ey6	38
138	\N	vzkbqspbfxcbkucabfn1	38
139	\N	ocptr3vabscawvrxyp6d	38
140	\N	frxcdtj0xqpsa0hfunkg	38
141	\N	lb9wbqtlwv8p3jiqsbpp	38
142	\N	c8ork5mtkretnrjqdgnv	39
143	\N	gwc3w6mkm1e35shpbjzb	39
144	\N	e7cjwk99kazc0azzah5c	39
145	\N	aodpqskz545vfrmdmsfx	39
\.


--
-- Data for Name: products_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_order (id, order_date, total_amount, status, user_id, uuid) FROM stdin;
2	2024-04-08 00:57:44.287664+00	\N	draft	\N	df478e0d-8f8a-4eca-9f09-2f52007c1f75
3	2024-04-08 00:57:57.312006+00	\N	draft	\N	a8480274-97fc-4e35-8468-5807cf69fd04
4	2024-04-09 02:24:08.935389+00	\N	draft	\N	55d59e5a-6027-4a1e-b323-b9e3128fc68e
5	2024-04-09 02:24:10.538672+00	\N	draft	\N	c7cf5b51-013b-47c6-82f2-c8f2ed1a7340
6	2024-04-11 09:39:52.554506+00	\N	draft	\N	d0f89ad7-d40e-4d31-9e67-6bfff371d839
7	2024-04-14 22:55:55.12744+00	\N	draft	\N	21c67ab2-5af8-4e0f-b430-aa36f7ef477a
8	2024-04-20 15:30:44.394487+00	\N	draft	\N	0a038856-02e1-4d52-9d3f-880fa7c0d250
9	2024-04-29 00:02:01.808216+00	\N	draft	\N	5e2b9dc4-8ec2-4bcc-aa25-03c7d6357d02
10	2024-04-29 21:38:51.284723+00	\N	draft	\N	3c1a9da1-e737-4833-8c51-1d69b80c84e1
11	2024-05-05 21:18:47.598071+00	\N	draft	\N	280399c7-2474-48bf-a587-002bd0dbe014
12	2024-05-14 19:59:49.514207+00	\N	draft	\N	30b652f2-031a-4cb1-971f-a0229859862b
13	2024-05-16 21:14:53.971124+00	\N	draft	\N	76e950b2-ca1c-4cf1-b131-e24521b4a934
14	2024-05-20 22:17:00.531543+00	\N	draft	\N	fafc8bee-4a7c-4598-90be-c99f3fb504fb
15	2024-05-27 23:14:11.278733+00	\N	draft	\N	cdcf48ef-15a3-4ba8-a73d-fcd0343fffaa
16	2024-05-29 13:00:36.436108+00	\N	draft	\N	46949ae6-fec8-411b-9fcd-edd27a02ecdb
20	2024-06-01 06:11:06.790005+00	\N	draft	\N	d219171e-9b64-447a-b9ba-ab6f4f40fad2
22	2024-06-01 07:59:23.604203+00	\N	draft	\N	0c903b55-45f5-4880-8bcb-c1d23c9ff28f
23	2024-06-01 07:59:37.796816+00	\N	draft	\N	cd107afa-60f2-4c2f-a887-d5b44df18775
24	2024-06-09 13:22:49.104704+00	\N	draft	\N	e360a58f-08f6-446c-9c43-a3521afcef32
29	2024-06-09 19:02:47.721733+00	\N	draft	\N	c72b9871-41fa-4516-84dd-4f260b9b29ed
30	2024-06-10 05:42:26.020602+00	\N	draft	\N	8eb552f4-4739-4eec-808b-7de756b8923e
31	2024-06-12 03:02:33.236303+00	\N	draft	\N	81b0a07c-ffc4-4a38-b0ba-eaf4528143bc
32	2024-06-13 22:06:08.636752+00	\N	draft	\N	fd1c3e25-bb82-44bd-8a07-3651c967d0b6
33	2024-06-13 22:06:25.815032+00	\N	draft	\N	0a559e64-4905-4f74-afe8-aa509a518c1b
34	2024-06-13 22:06:35.54591+00	\N	draft	\N	944f3e94-d452-4e16-8565-d2cbca2c21c7
35	2024-06-17 15:51:31.651939+00	\N	draft	\N	8d6b2130-7c87-47d2-806b-bde5b67297a1
38	2024-06-20 08:15:33.637817+00	\N	draft	1	8b26d5f9-f063-444c-bab0-a2aa58ff5919
1	2024-04-08 00:35:53.905465+00	6173.91	shipped	1	d27d86b4-fcd1-4854-bf10-cd78c61068f7
39	2024-06-21 14:07:20.685747+00	\N	draft	\N	b2abb550-7251-4b00-82e9-5a9af5ecb533
40	2024-06-22 09:42:56.719128+00	689.00	processing	2	b126deef-1e1b-4ef0-af0a-78d3350c0684
41	2024-06-22 10:06:31.097193+00	\N	draft	2	306ae5fd-8468-4bdd-824d-87965fa01bae
36	2024-06-17 15:52:02.204072+00	2921.60	delivered	2	\N
44	2024-06-22 11:31:43.585195+00	\N	draft	3	d025dc6d-5b29-4517-9ebd-77ebd7d0133a
43	2024-06-22 11:30:20.774239+00	111.30	canceled	3	\N
46	2024-06-30 19:03:01.924798+00	\N	draft	\N	b2a4ea4a-897e-486d-bbdd-f3ba62ef19e6
47	2024-07-04 23:24:49.949134+00	\N	draft	\N	b5b5b576-7146-466e-8df4-2bbaa80bb8f8
48	2024-07-07 13:03:20.65158+00	\N	draft	\N	0553be72-a589-4e05-a153-88f7002f9619
49	2024-07-12 10:39:45.868998+00	\N	draft	\N	ab3c4df2-aca5-48bb-bcbf-05766519c015
50	2024-07-13 00:12:52.310928+00	\N	draft	\N	4cc16b92-1a35-45a7-a061-5b8e235171d3
51	2024-07-13 10:37:54.078243+00	\N	draft	\N	c89e562e-cf9f-4ba6-b835-cc20858a2f12
52	2024-07-13 15:00:50.683244+00	\N	draft	\N	0a39d763-6246-43aa-9f16-5805d743e162
54	2024-07-14 18:43:00.226687+00	\N	draft	\N	8cf5fd5f-8d89-470c-8fba-7c170b9a69ab
55	2024-07-15 18:51:48.003822+00	\N	draft	\N	e732ba36-f521-41f0-8a80-890f58e2a094
56	2024-07-17 02:26:39.741157+00	\N	draft	\N	4c026648-2965-451a-8912-8b53289964a9
57	2024-07-17 19:03:26.684941+00	\N	draft	\N	13f35cc7-08b0-46ca-a393-ce90386537db
58	2024-07-18 14:21:52.512966+00	\N	draft	\N	1ec18eaf-3bff-4637-896e-02b13566046e
59	2024-07-19 05:16:07.400583+00	\N	draft	\N	2f0737cd-3713-4975-8b37-4fa7a498a4b4
60	2024-07-20 14:40:14.449524+00	\N	draft	\N	715d8641-cf50-4e0b-86ca-2978ee485846
61	2024-07-21 01:16:57.294994+00	\N	draft	\N	8c2e1d77-ac33-4694-93b9-a793594f2a89
62	2024-07-22 08:40:35.705477+00	\N	draft	\N	66b64bf1-3e6c-4c40-9011-3d9c0bcf684d
63	2024-07-23 08:57:26.09942+00	\N	draft	\N	632c7789-5018-4757-80c8-3ca00a114f19
64	2024-07-23 17:53:15.997747+00	\N	draft	\N	0d1a114f-92ea-4d60-aabc-14275131befb
65	2024-07-24 01:14:07.804388+00	\N	draft	\N	f5c37d47-a4d4-43ce-b6af-9178d81a1b55
66	2024-07-24 08:55:48.224966+00	\N	draft	\N	e4b47fe0-eef0-482d-9b38-757f180ca68e
67	2024-07-24 21:01:52.750787+00	\N	draft	\N	b9a11d0e-1949-4b7e-b7b0-1422fba8ee3d
68	2024-07-25 08:00:46.398955+00	\N	draft	\N	3c6dd7ee-4b76-409e-a08c-5f1d5591b764
69	2024-07-25 22:46:15.14624+00	\N	draft	\N	3cfc7f26-9597-4bdd-962c-73f6edb53b67
70	2024-07-26 22:34:12.736306+00	\N	draft	\N	072d3ff2-64df-468d-b30e-d9bacc629a16
71	2024-07-27 22:56:52.200157+00	\N	draft	\N	1eec58d8-0cc3-4b33-ae63-2115c5da3709
72	2024-07-28 12:00:44.417105+00	\N	draft	\N	e4c16af0-7853-4e84-a85b-93a71571682f
\.


--
-- Data for Name: products_orderaddress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_orderaddress (id, street, city, zip_code, country, phone, order_id) FROM stdin;
1	123 Main Street	Spin	12345	United States	+1 (555) 123-4567	1
3	MR MUSTAPHA ALLANI RUE OM MAKTOUM SAHBI 1 N32	KAIROUAN	3140	Tunisia	+21629667239	40
2	123 Main Street	Springfield	62701	United States	+1 217-555-1234	36
4	MR MUSTAPHA ALLANI RUE OM MAKTOUM SAHBI 1 N32	KAIROUAN	3140	Tunisia	+21629667239	43
\.


--
-- Data for Name: products_orderitems; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_orderitems (id, quantity, subtotal, order_id, product_id) FROM stdin;
1	1	\N	6	8
2	1	\N	7	9
3	1	\N	7	7
4	1	\N	10	9
5	1	\N	10	7
29	2	\N	38	8
31	1	\N	38	14
7	1	\N	10	6
10	1	189.99	1	7
9	2	459.70	1	13
12	1	689.00	1	8
13	2	2062.16	1	19
14	1	43.05	1	36
8	3	2730.00	1	9
19	1	689.00	40	8
15	1	910.00	36	9
16	1	1055.90	36	12
17	2	955.70	36	10
20	1	34.76	43	27
21	2	76.54	43	33
23	3	\N	38	10
26	2	\N	38	19
27	1	\N	48	8
28	1	\N	52	8
\.


--
-- Data for Name: products_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_product (id, name, price_currency, price, category_id, discount_id, slug, description, created_at, updated_at) FROM stdin;
1	ONEPLUS 10T | Moonstone Black | 5G	USD	549.9900	1	\N	oneplus-10t-moonstone-black-5g	{"delta": "", "html": ""}	2024-04-07 18:25:59.820668+00	2024-04-07 18:25:59.820687+00
2	Apple iPhone 12	USD	504.0000	1	\N	apple-iphone-12	{"delta": "", "html": ""}	2024-04-07 18:26:01.177052+00	2024-04-07 18:26:01.177081+00
3	OnePlus 10 Pro | 5G Android Smartphone	USD	697.1700	1	\N	oneplus-10-pro-5g-android-smartphone	{"delta": "", "html": ""}	2024-04-07 18:26:01.72234+00	2024-04-07 18:26:01.722371+00
4	iPhone 13 Pro Max	USD	1101.0000	1	\N	iphone-13-pro-max	{"delta": "", "html": ""}	2024-04-07 18:26:02.757888+00	2024-04-07 18:26:02.757913+00
5	Samsung Galaxy S20 FE 5G	USD	550.0000	1	\N	samsung-galaxy-s20-fe-5g	{"delta": "", "html": ""}	2024-04-07 18:26:03.241393+00	2024-04-07 18:26:03.241414+00
6	SAMSUNG Galaxy Z Fold 3 5G Cell Phone	USD	1144.0000	1	\N	samsung-galaxy-z-fold-3-5g-cell-phone	{"delta": "", "html": ""}	2024-04-07 18:26:04.080349+00	2024-04-07 18:26:04.080368+00
7	OnePlus Nord N200 | 5G	USD	189.9900	1	\N	oneplus-nord-n200-5g	{"delta": "", "html": ""}	2024-04-07 18:26:04.953279+00	2024-04-07 18:26:04.953311+00
8	Apple iPhone 11 Pro Max	USD	689.0000	1	\N	apple-iphone-11-pro-max	{"delta": "", "html": ""}	2024-04-07 18:26:05.469465+00	2024-04-07 18:26:05.469485+00
9	SAMSUNG Galaxy S22+ Cell Phone	USD	910.0000	1	\N	samsung-galaxy-s22-cell-phone	{"delta": "", "html": "<ul><li>6.6\\", 1080 x 2340pixels, Infinity-O FHD+ Dynamic AMOLED 2X Display, 4500mAh Battery, Wireless Powershare</li><li>128GB ROM, 8GB RAM, No SD Card Slot, Qualcomm SM8450 Snapdragon 8 Gen 1 (4 nm), Octa-Core, Adreno 730</li><li>Rear Camera: 50MP, f/1.8 + 10MP, f/2.4 + 12MP, f/2.2, Front Camera: 10 MP, f/2.2, Android 12, One UI 4.1</li><li>2G: GSM 850/900/1800/1900, CDMA 800/1900, 3G: HSDPA 850/900/1700(AWS)/1900/2100, CDMA2000 1xEV-DO, 4G LTE: 1/2/3/4/5/7/8/12/13/14/18/19/20/25/26/28/29/30/38/39/40/41/46/48/66/71, 5G: 1/3/5/7/8/20/28/38/41/66/71/260/261SA/NSA/Sub6/mmWave - Single SIM</li><li>No Warranty. Compatible with Most GSM and CDMA Carriers like T-Mobile, AT&amp;T, MetroPCS, etc. Will Also work with CDMA Carriers Such as Verizon, Sprint.</li></ul>"}	2024-04-07 18:26:05.998907+00	2024-04-07 18:26:05.998937+00
10	iPhone 9	USD	549.0000	2	1	iphone-9	{"delta": "", "html": "An apple mobile which is nothing like apple"}	2024-04-07 19:25:24.156818+00	2024-04-07 19:25:24.156849+00
11	iPhone X	USD	899.0000	2	2	iphone-x	{"delta": "", "html": "SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ..."}	2024-04-07 19:25:27.102134+00	2024-04-07 19:25:27.102157+00
12	Samsung Universe 9	USD	1249.0000	2	3	samsung-universe-9	{"delta": "", "html": "Samsung's new variant which goes beyond Galaxy to the Universe"}	2024-04-07 19:25:29.131537+00	2024-04-07 19:25:29.131558+00
13	OPPOF19	USD	280.0000	2	4	oppof19	{"delta": "", "html": "OPPO F19 is officially announced on April 2021."}	2024-04-07 19:25:29.624478+00	2024-04-07 19:25:29.624498+00
14	Huawei P30	USD	499.0000	2	5	huawei-p30	{"delta": "", "html": "Huawei\\u2019s re-badged P30 Pro New Edition was officially unveiled yesterday in Germany and now the device has made its way to the UK."}	2024-04-07 19:25:32.104508+00	2024-04-07 19:25:32.104529+00
15	MacBook Pro	USD	1749.0000	3	6	macbook-pro	{"delta": "", "html": "MacBook Pro 2021 with mini-LED display may launch between September, November"}	2024-04-07 19:25:33.648918+00	2024-04-07 19:25:33.648937+00
16	Samsung Galaxy Book	USD	1499.0000	3	7	samsung-galaxy-book	{"delta": "", "html": "Samsung Galaxy Book S (2020) Laptop With Intel Lakefield Chip, 8GB of RAM Launched"}	2024-04-07 19:25:35.778211+00	2024-04-07 19:25:35.778231+00
17	Microsoft Surface Laptop 4	USD	1499.0000	3	8	microsoft-surface-laptop-4	{"delta": "", "html": "Style and speed. Stand out on HD video calls backed by Studio Mics. Capture ideas on the vibrant touchscreen."}	2024-04-07 19:25:38.229833+00	2024-04-07 19:25:38.229855+00
18	Infinix INBOOK	USD	1099.0000	3	9	infinix-inbook	{"delta": "", "html": "Infinix Inbook X1 Ci3 10th 8GB 256GB 14 Win10 Grey \\u2013 1 Year Warranty"}	2024-04-07 19:25:41.888734+00	2024-04-07 19:25:41.888754+00
19	HP Pavilion 15-DK1056WM	USD	1099.0000	3	10	hp-pavilion-15-dk1056wm	{"delta": "", "html": "HP Pavilion 15-DK1056WM Gaming Laptop 10th Gen Core i5, 8GB, 256GB SSD, GTX 1650 4GB, Windows 10"}	2024-04-07 19:25:44.296643+00	2024-04-07 19:25:44.296664+00
20	perfume Oil	USD	13.0000	4	11	perfume-oil	{"delta": "", "html": "Mega Discount, Impression of Acqua Di Gio by GiorgioArmani concentrated attar perfume Oil"}	2024-04-07 19:25:46.839414+00	2024-04-07 19:25:46.839439+00
21	Brown Perfume	USD	40.0000	4	12	brown-perfume	{"delta": "", "html": "Royal_Mirage Sport Brown Perfume for Men & Women - 120ml"}	2024-04-07 19:25:48.833548+00	2024-04-07 19:25:48.833567+00
22	Fog Scent Xpressio Perfume	USD	13.0000	4	13	fog-scent-xpressio-perfume	{"delta": "", "html": "Product details of Best Fog Scent Xpressio Perfume 100ml For Men cool long lasting perfumes for Men"}	2024-04-07 19:25:51.399302+00	2024-04-07 19:25:51.399328+00
23	Non-Alcoholic Concentrated Perfume Oil	USD	120.0000	4	14	non-alcoholic-concentrated-perfume-oil	{"delta": "", "html": "Original Al Munakh\\u00ae by Mahal Al Musk | Our Impression of Climate | 6ml Non-Alcoholic Concentrated Perfume Oil"}	2024-04-07 19:25:54.194931+00	2024-04-07 19:25:54.19495+00
24	Eau De Perfume Spray	USD	30.0000	4	15	eau-de-perfume-spray	{"delta": "", "html": "Genuine  Al-Rehab spray perfume from UAE/Saudi Arabia/Yemen High Quality"}	2024-04-07 19:25:56.33616+00	2024-04-07 19:25:56.336188+00
25	Hyaluronic Acid Serum	USD	19.0000	5	16	hyaluronic-acid-serum	{"delta": "", "html": "L'Or\\u00c3\\u00a9al Paris introduces Hyaluron Expert Replumping Serum formulated with 1.5% Hyaluronic Acid"}	2024-04-07 19:25:59.15713+00	2024-04-07 19:25:59.157147+00
26	Tree Oil 30ml	USD	12.0000	5	17	tree-oil-30ml	{"delta": "", "html": "Tea tree oil contains a number of compounds, including terpinen-4-ol, that have been shown to kill certain bacteria,"}	2024-04-07 19:26:01.759437+00	2024-04-07 19:26:01.759463+00
27	Oil Free Moisturizer 100ml	USD	40.0000	5	18	oil-free-moisturizer-100ml	{"delta": "", "html": "Dermive Oil Free Moisturizer with SPF 20 is specifically formulated with ceramides, hyaluronic acid & sunscreen."}	2024-04-07 19:26:03.919059+00	2024-04-07 19:26:03.919098+00
28	Skin Beauty Serum.	USD	46.0000	5	19	skin-beauty-serum	{"delta": "", "html": "Product name: rorec collagen hyaluronic acid white face serum riceNet weight: 15 m"}	2024-04-07 19:26:07.667774+00	2024-04-07 19:26:07.667798+00
29	Freckle Treatment Cream- 15gm	USD	70.0000	5	20	freckle-treatment-cream-15gm	{"delta": "", "html": "Fair & Clear is Pakistan's only pure Freckle cream which helpsfade Freckles, Darkspots and pigments. Mercury level is 0%, so there are no side effects."}	2024-04-07 19:26:09.877876+00	2024-04-07 19:26:09.877895+00
30	- Daal Masoor 500 grams	USD	20.0000	6	21	daal-masoor-500-grams	{"delta": "", "html": "Fine quality Branded Product Keep in a cool and dry place"}	2024-04-07 19:26:12.64502+00	2024-04-07 19:26:12.645038+00
31	Elbow Macaroni - 400 gm	USD	14.0000	6	22	elbow-macaroni-400-gm	{"delta": "", "html": "Product details of Bake Parlor Big Elbow Macaroni - 400 gm"}	2024-04-07 19:26:14.354971+00	2024-04-07 19:26:14.354991+00
32	Orange Essence Food Flavou	USD	14.0000	6	23	orange-essence-food-flavou	{"delta": "", "html": "Specifications of Orange Essence Food Flavour For Cakes and Baking Food Item"}	2024-04-07 19:26:16.243595+00	2024-04-07 19:26:16.243613+00
33	cereals muesli fruit nuts	USD	46.0000	6	24	cereals-muesli-fruit-nuts	{"delta": "", "html": "original fauji cereal muesli 250gm box pack original fauji cereals muesli fruit nuts flakes breakfast cereal break fast faujicereals cerels cerel foji fouji"}	2024-04-07 19:26:18.591718+00	2024-04-07 19:26:18.591744+00
34	Gulab Powder 50 Gram	USD	70.0000	6	25	gulab-powder-50-gram	{"delta": "", "html": "Dry Rose Flower Powder Gulab Powder 50 Gram \\u2022 Treats Wounds"}	2024-04-07 19:26:20.89818+00	2024-04-07 19:26:20.898201+00
35	Plant Hanger For Home	USD	41.0000	7	26	plant-hanger-for-home	{"delta": "", "html": "Boho Decor Plant Hanger For Home Wall Decoration Macrame Wall Hanging Shelf"}	2024-04-07 19:26:23.456995+00	2024-04-07 19:26:23.457019+00
36	Flying Wooden Bird	USD	51.0000	7	22	flying-wooden-bird	{"delta": "", "html": "Package Include 6 Birds with Adhesive Tape Shape: 3D Shaped Wooden Birds Material: Wooden MDF, Laminated 3.5mm"}	2024-04-07 19:26:27.135262+00	2024-04-07 19:26:27.135285+00
37	3D Embellishment Art Lamp	USD	20.0000	7	27	3d-embellishment-art-lamp	{"delta": "", "html": "3D led lamp sticker Wall sticker 3d wall art light on/off button  cell operated (included)"}	2024-04-07 19:26:29.781656+00	2024-04-07 19:26:29.781683+00
38	Handcraft Chinese style	USD	60.0000	7	28	handcraft-chinese-style	{"delta": "", "html": "Handcraft Chinese style art luxury palace hotel villa mansion home decor ceramic vase with brass fruit plate"}	2024-04-07 19:26:32.866574+00	2024-04-07 19:26:32.866592+00
39	Key Holder	USD	30.0000	7	29	key-holder	{"delta":"{\\"ops\\":[{\\"insert\\":\\"Attractive DesignMetallic materialFour key hooksReliable & DurablePremium Quality\\\\n\\"}]}","html":"<p>Attractive DesignMetallic materialFour key hooksReliable &amp; DurablePremium Quality</p>"}	2024-04-07 19:26:35.631575+00	2024-04-09 02:28:45.130885+00
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key, provider_id, settings) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
\.


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 3, true);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 88, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: core_commandhistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_commandhistory_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 12, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 22, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 59, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: products_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_category_id_seq', 7, true);


--
-- Name: products_discount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_discount_id_seq', 29, true);


--
-- Name: products_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_file_id_seq', 145, true);


--
-- Name: products_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_order_id_seq', 72, true);


--
-- Name: products_orderaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_orderaddress_id_seq', 4, true);


--
-- Name: products_orderitems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_orderitems_id_seq', 32, true);


--
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_product_id_seq', 39, true);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: account_emailaddress account_emailaddress_user_id_email_987c8728_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_email_987c8728_uniq UNIQUE (user_id, email);


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: core_commandhistory core_commandhistory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_commandhistory
    ADD CONSTRAINT core_commandhistory_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: products_category products_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_category
    ADD CONSTRAINT products_category_pkey PRIMARY KEY (id);


--
-- Name: products_category products_category_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_category
    ADD CONSTRAINT products_category_slug_key UNIQUE (slug);


--
-- Name: products_discount products_discount_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_discount
    ADD CONSTRAINT products_discount_pkey PRIMARY KEY (id);


--
-- Name: products_file products_file_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_file
    ADD CONSTRAINT products_file_pkey PRIMARY KEY (id);


--
-- Name: products_order products_order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_order
    ADD CONSTRAINT products_order_pkey PRIMARY KEY (id);


--
-- Name: products_order products_order_uuid_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_order
    ADD CONSTRAINT products_order_uuid_key UNIQUE (uuid);


--
-- Name: products_orderaddress products_orderaddress_order_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_orderaddress
    ADD CONSTRAINT products_orderaddress_order_id_key UNIQUE (order_id);


--
-- Name: products_orderaddress products_orderaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_orderaddress
    ADD CONSTRAINT products_orderaddress_pkey PRIMARY KEY (id);


--
-- Name: products_orderitems products_orderitems_order_id_product_id_46191271_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_orderitems
    ADD CONSTRAINT products_orderitems_order_id_product_id_46191271_uniq UNIQUE (order_id, product_id);


--
-- Name: products_orderitems products_orderitems_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_orderitems
    ADD CONSTRAINT products_orderitems_pkey PRIMARY KEY (id);


--
-- Name: products_product products_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_pkey PRIMARY KEY (id);


--
-- Name: products_product products_product_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_slug_key UNIQUE (slug);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);


--
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- Name: account_emailaddress_upper; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailaddress_upper ON public.account_emailaddress USING btree (upper((email)::text));


--
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: products_category_slug_c558efae_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX products_category_slug_c558efae_like ON public.products_category USING btree (slug varchar_pattern_ops);


--
-- Name: products_file_product_id_fff42171; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX products_file_product_id_fff42171 ON public.products_file USING btree (product_id);


--
-- Name: products_order_user_id_dfb540d8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX products_order_user_id_dfb540d8 ON public.products_order USING btree (user_id);


--
-- Name: products_orderitems_order_id_4e93d267; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX products_orderitems_order_id_4e93d267 ON public.products_orderitems USING btree (order_id);


--
-- Name: products_orderitems_product_id_06cb5ae9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX products_orderitems_product_id_06cb5ae9 ON public.products_orderitems USING btree (product_id);


--
-- Name: products_product_category_id_9b594869; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX products_product_category_id_9b594869 ON public.products_product USING btree (category_id);


--
-- Name: products_product_discount_id_8fe9ca7a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX products_product_discount_id_8fe9ca7a ON public.products_product USING btree (discount_id);


--
-- Name: products_product_slug_70d3148d_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX products_product_slug_70d3148d_like ON public.products_product USING btree (slug varchar_pattern_ops);


--
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);


--
-- Name: socialaccount_socialapp_sites_site_id_2579dee5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);


--
-- Name: socialaccount_socialapp_sites_socialapp_id_97fb6e7d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);


--
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);


--
-- Name: unique_verified_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX unique_verified_email ON public.account_emailaddress USING btree (email) WHERE verified;


--
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_file products_file_product_id_fff42171_fk_products_product_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_file
    ADD CONSTRAINT products_file_product_id_fff42171_fk_products_product_id FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_order products_order_user_id_dfb540d8_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_order
    ADD CONSTRAINT products_order_user_id_dfb540d8_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_orderaddress products_orderaddress_order_id_0a96d41e_fk_products_order_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_orderaddress
    ADD CONSTRAINT products_orderaddress_order_id_0a96d41e_fk_products_order_id FOREIGN KEY (order_id) REFERENCES public.products_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_orderitems products_orderitems_order_id_4e93d267_fk_products_order_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_orderitems
    ADD CONSTRAINT products_orderitems_order_id_4e93d267_fk_products_order_id FOREIGN KEY (order_id) REFERENCES public.products_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_orderitems products_orderitems_product_id_06cb5ae9_fk_products_product_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_orderitems
    ADD CONSTRAINT products_orderitems_product_id_06cb5ae9_fk_products_product_id FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_product products_product_category_id_9b594869_fk_products_category_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_category_id_9b594869_fk_products_category_id FOREIGN KEY (category_id) REFERENCES public.products_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_product products_product_discount_id_8fe9ca7a_fk_products_discount_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_discount_id_8fe9ca7a_fk_products_discount_id FOREIGN KEY (discount_id) REFERENCES public.products_discount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

