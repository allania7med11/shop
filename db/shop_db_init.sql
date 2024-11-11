--
-- PostgreSQL database dump
--

-- Dumped from database version 14.13 (Ubuntu 14.13-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.13 (Ubuntu 14.13-0ubuntu0.22.04.1)

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
    uuid uuid,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
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
-- Name: products_payment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_payment (
    id bigint NOT NULL,
    payment_method character varying(20) NOT NULL,
    status character varying(20) NOT NULL,
    external_id character varying(255),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    order_id bigint NOT NULL
);


ALTER TABLE public.products_payment OWNER TO postgres;

--
-- Name: products_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_payment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_payment_id_seq OWNER TO postgres;

--
-- Name: products_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_payment_id_seq OWNED BY public.products_payment.id;


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
-- Name: products_payment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_payment ALTER COLUMN id SET DEFAULT nextval('public.products_payment_id_seq'::regclass);


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
89	Can add payment	23	add_payment
90	Can change payment	23	change_payment
91	Can delete payment	23	delete_payment
92	Can view payment	23	view_payment
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$320000$h5PlilPtj9u36bTfpzBq0u$zwkvUkBwohWAAaicLtC2u4x1cTQ5J+WmiNPYMLZVA/I=	2024-06-22 09:29:20+00	f	james	James	Mitchell	james.mitchell@gmail.com	f	t	2024-06-22 09:29:19+00
3	pbkdf2_sha256$320000$8yr2bwyQTd9BVYmEgHVfTB$4jdunprnz5bkmNiHSrooNf9tn3f+6w+ZkcuPuSNJxgU=	2024-06-22 11:31:33.825512+00	f	sophia	Sophia	Bennett	allaniahmedkr+sophia@gmail.com	f	t	2024-06-22 11:31:33.363407+00
1	pbkdf2_sha256$320000$oiSDVobTxfra35hNtsnxAR$WCSjMlyEtCRuObpZsX4D6AEUERI0PsgII2kjcWYZyOU=	2024-11-03 22:03:14.428131+00	t	allaniahmedkr	Oliver	Harrison	allaniahmedkr@gmail.com	t	t	2024-04-07 17:49:10+00
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
13	2024-11-03 22:04:56.727492+00	30	12%	1	[{"added": {}}]	16	1
14	2024-11-03 22:05:29.700981+00	31	25%	1	[{"added": {}}]	16	1
15	2024-11-03 22:05:33.55324+00	7	OnePlus Nord N200 | 5G	2	[{"changed": {"fields": ["Discount", "Description"]}}]	17	1
16	2024-11-03 22:05:52.710883+00	32	20%	1	[{"added": {}}]	16	1
17	2024-11-03 22:05:55.473356+00	6	SAMSUNG Galaxy Z Fold 3 5G Cell Phone	2	[{"changed": {"fields": ["Discount", "Description"]}}]	17	1
18	2024-11-03 22:06:39.271223+00	33	15%	1	[{"added": {}}]	16	1
19	2024-11-03 22:06:41.678762+00	5	Samsung Galaxy S20 FE 5G	2	[{"changed": {"fields": ["Discount", "Description"]}}]	17	1
20	2024-11-03 22:06:58.194307+00	34	15%	1	[{"added": {}}]	16	1
21	2024-11-03 22:07:01.623213+00	3	OnePlus 10 Pro | 5G Android Smartphone	2	[{"changed": {"fields": ["Discount", "Description"]}}]	17	1
22	2024-11-03 22:07:31.374935+00	9	SAMSUNG Galaxy S22+ Cell Phone	2	[{"changed": {"fields": ["Discount", "Description"]}}]	17	1
23	2024-11-03 22:07:55.339062+00	35	8%	1	[{"added": {}}]	16	1
24	2024-11-03 22:07:58.042653+00	2	Apple iPhone 12	2	[{"changed": {"fields": ["Discount", "Description"]}}]	17	1
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
23	products	payment
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
60	products	0012_order_created_at_order_updated_at_and_more	2024-07-29 11:53:42.05978+00
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
1jpwgyl8vhy1h68qk5njq8buwfhsyxmo	eyJvcmRlcl91dWlkIjoiNWNjMjFiOGYtZDViMy00YWZjLWI2YWQtZmNkMzc0ZTVkM2EzIn0:1sYCMK:1FcEzghQe32_PJ2pWVvg-UgKfJ46vNuOs08YFCCmm_I	2024-08-11 22:27:20.255115+00
t1oqkflobzil6wh2nkjuzv4nqzheucnd	eyJvcmRlcl91dWlkIjoiZGM2MDQxN2ItNDVjMi00Y2MzLWI3YWUtYWYzYThhMjJlZjMyIn0:1sYaUv:4oWtaGq9somLjlZnuAbuBWoVonScaIeXQQjZUlR2cd0	2024-08-13 00:13:49.286562+00
exexartsz8dwtrr3s68zc1z2nwg593j4	eyJvcmRlcl91dWlkIjoiOTc0MWZiMjAtZTY2Yy00NGU3LWE4NjAtOTg0YThhODYwMDczIn0:1sYxIE:X20cq9xMY79LeDGRkNolAeY9yerXgglu67LO7_SNJ-4	2024-08-14 00:34:14.726896+00
poboakgqf9ghy8pge6rn5edbqkw1knsx	eyJvcmRlcl91dWlkIjoiZjA4YjAxMjAtYTNiZC00MjMwLTliYzMtNjlhOTIwZjZlZmJlIn0:1sZK4H:bUTqejgtbPKfPhUUcCBdVPIDJQhJHDQZ8je0oM1PXOg	2024-08-15 00:53:21.255613+00
uu92a07webi7ub903dnu154omxgcuqli	eyJvcmRlcl91dWlkIjoiZmQ1YTQwZTAtY2E4Mi00N2NiLWI3YzItNjhkMzc3YzgwMTk2In0:1sZgf5:YC4L0aCHBJKmvgxKOGSz1ruOBG8L4PJFwLRPjqY9Z6A	2024-08-16 01:00:51.07499+00
nk968tuj7w7c0oox90rnlhf0t8w3xase	eyJvcmRlcl91dWlkIjoiNDQ5ZjFhM2MtNzZlNy00MWUyLThmOGMtMjBiZGY5MzExY2ZhIn0:1sa2Yh:elo9CmARV-yUhQ3PQnm-8TTMd4xdDq8C_YKgwWUk3YM	2024-08-17 00:23:43.854902+00
07h3enhhd5dcx6y0xh5q40gxjkrkiq2u	eyJvcmRlcl91dWlkIjoiZTA5YWYxN2QtNTI0Zi00MDcwLWEyM2YtYzA0NWI3NDg1NTVlIn0:1saXeZ:SXO4VOvYEBQu-j6U4XL2sk5fDXsQSN5DFdSu1D6zS94	2024-08-18 09:35:51.854062+00
ewhi7lz5cwc8vjsqelz8xao0tx81ftvy	eyJvcmRlcl91dWlkIjoiOTRjMGRiZGMtZmVjYi00ZjM2LWJlNjgtYWNiZjA2N2RkMWNmIn0:1sauDc:2G9gUvSRUHxgJivKK4WIaxt4MN-JYgglUm0B5ijKgLs	2024-08-19 09:41:32.430205+00
wvzlkusns4shea8jnbeqzirl5m7dbjxr	.eJxVjEsOgzAMRO-SdUH5YuiuvQhybEegIpCArKrevQGxYWfPzHtftawsa5_zyOqpWhZHNnLlndWVBw9VJFMu10Z2gJx0UA_VY96HPm8FPDFzzyLSR-ajwGk64hqJljzv9bm56q1-lU_mfSTcx2V-X9RNNeA2FE9jUuoasBgBxEBXFF30mi1YbT1pphCMpOASGAkSCVtuXKIgwZouiPr9AbCOSzI:1sav1y:XfQH0dLotf-1QeMULrwezNsepgLd2C7fMkkrleuT2-w	2024-08-19 10:33:34.460973+00
p7ii5y0so07xigmonrxeft4cjz5npqzt	eyJvcmRlcl91dWlkIjoiOTVmMDJmMzEtZDA0NS00MDg3LTg5YmEtOWJlZmRhMmNlYjg3In0:1sbE5v:9Ev7ePyv5gLSac_0UCxOyHefcZwqvsB2lk_DKX5IHzY	2024-08-20 06:54:55.869657+00
5jjau0akez8dxybf0omp8bpc2ipw3xu2	eyJvcmRlcl91dWlkIjoiNzE0NWE3YmUtNTI0NS00ZTViLThkMTMtNzc0YTkxMWI5ZGJmIn0:1sbae3:d6sJs4UbaBDNd4oQL0hqhehMsAyQ8Rv8Fnbd5helhpk	2024-08-21 06:59:39.085973+00
zezgsuft5e6psrwmwx8704wk879of95y	eyJvcmRlcl91dWlkIjoiNGM4YjdkYmItNWYyOC00NzkxLTkwYjItMWYzNWM1MjNlZjBmIn0:1sbjFe:6cOrRdZJ7PR5wxBUrDXIKy5V18ZxYXOQMV9caM8dykg	2024-08-21 16:11:02.899611+00
dwh8vj9ock095rmd0cfqcfqsn059gxqk	eyJvcmRlcl91dWlkIjoiNzRkZWQ4NzctMzRlZi00ZjJiLTkwMjYtYmFlM2M1MmEwMDhjIn0:1sbwyp:JF_1LZxz16-k9PcM2YFNFEZruvs4f7k7sBk1pBidk04	2024-08-22 06:50:35.286302+00
082fyhvuyjgg1fhgifyoos1h89n0xl11	eyJvcmRlcl91dWlkIjoiZmYzMGEyM2MtOGVhYS00MjMyLWE3NWItMjU4Y2QyN2UyOTA1In0:1sc56m:oScNjE4zbWpjEbusKrqCT73T9giWKfjC2_jk7XBGcP0	2024-08-22 15:31:20.482129+00
47xq6xg9et245v6e5elybxhyb0c2oeqs	eyJvcmRlcl91dWlkIjoiMDJiYjc3ZTEtNTIyOS00YjQzLWJmODQtZmQ0NThjMDIyY2U2In0:1scJUF:KTRKgepynKEJCAp1O7DidUtsikky0tPpBZ4CpZ20pZQ	2024-08-23 06:52:31.025699+00
vhas6nc7f3607aroyrmf1ti8itjjvuwi	eyJvcmRlcl91dWlkIjoiNDdmM2NlMDAtNGQzNS00ZGM2LWFmYjgtY2Y0OTcwOWYyYWM0In0:1scUkf:ItRgFvxQalwd6eT97tU105PYBu6KfCMtHQ2UShWAelg	2024-08-23 18:54:13.810256+00
9yner59z4d4e881wwwqyfc9byyd7to7i	eyJvcmRlcl91dWlkIjoiYzNkZWQ5N2ItM2NmMC00ZTVkLWFlN2EtNTc4YWFiYTBjMWM3In0:1scvUm:QnG8i6nWh-NRleUwVBSplBPHFF8NgPkWh3JgPQzCgIU	2024-08-24 23:27:36.757553+00
b7p0pjuzgg7bd48490hm64m9zhwub8jd	eyJvcmRlcl91dWlkIjoiMjBhM2E2NWItMDZlZi00YzBjLWJhMjItODlhYmYyMjgxYzc1In0:1sd7rO:PzwYexLIFvl2RPoTycgm-U2U60YmAM2BcTX6v6zSj_k	2024-08-25 12:39:46.152487+00
zqo0sgs45mzdoigenyaf8gwvczr76wha	eyJvcmRlcl91dWlkIjoiMDA2YTQ5ODQtYjJjNy00NmZkLTgzYmEtYzRmOGRkZDY1MDg5In0:1sdQkb:ZNHJ1mDCHCzAcgQHnTMI3Xv6Zr2xsPt1V2d86onETMM	2024-08-26 08:50:01.03475+00
oxu8x4f7nli8088r19vqgvj692d04ebf	eyJvcmRlcl91dWlkIjoiMzEwZTRkY2MtNzBmNC00YmM3LWI2YjMtYTg2MTBjOWYzYmI2In0:1sdnFO:FI_7IOLUC6IdKW4wiZdiGKsxZnrypCvrG9qp1TCZ_Po	2024-08-27 08:51:18.705163+00
ub45vh9hw03g70javsz1v41lmt5h5cg3	eyJvcmRlcl91dWlkIjoiYjE1NmVjMTQtZjgyNy00ZDNkLTllYzQtMjgzMmJkMWFiNTgyIn0:1sdpcL:OvVR_OMHbI5cIzKjDh7rfoh-phWMxfSHg8wu89EnCTc	2024-08-27 11:23:09.542706+00
p4yb6c4fmboo5jasx1m5xp4uaw4u8l1n	eyJvcmRlcl91dWlkIjoiMTdkMjliZmEtYzExNy00ZjBiLTgyOTctOTdiZTQ2ZjlhZjNlIn0:1sdpqY:szNrwosRD4-YNyxW1adbLmw5JXPUPOmUVC-0EJlfQcw	2024-08-27 11:37:50.738077+00
9ivl5n9pa312cvd4z6qrbvtjlbvbjosn	eyJvcmRlcl91dWlkIjoiZTY2OTYwMTYtY2VlNy00YTdkLTliMzMtYzJiYjViMmUxMmVjIn0:1se9ZE:nzp9TQTggtyIc8ortJTRatTbSlrDg8kbHXg8m-4bca4	2024-08-28 08:41:16.678891+00
g3tmqb27ex5eijjw384uybtqn55acmix	eyJvcmRlcl91dWlkIjoiYjc2OWQ3YjktNWVjNi00NDFmLTk4OGUtZDNmMzlmMDhiYmZjIn0:1secGm:iBiRNDITDoYHSdsBYMGQf3Wt118nMVWHjxaaCRawBGg	2024-08-29 15:20:08.480094+00
hc0nzl9s0dbgz7ybbwvsbvlyzj0u2akx	eyJvcmRlcl91dWlkIjoiNThjOTRmMmYtNTc2Zi00NzdmLThlNWEtZmM3MmNhNzMwYWMzIn0:1set9L:ZbU6WykfWWGsJv6Umt6v-EoY8cls4c-5ewu7Gl_2eO0	2024-08-30 09:21:35.969716+00
7x31tb30o9izcxes866wep3nt82fdl58	eyJvcmRlcl91dWlkIjoiY2QxZjBmODUtNDY4Yy00MDg2LTgyNGYtN2ZmMDc4NGQ5ZDFjIn0:1sf20Y:v6lvGuuUIBK_Fpz57pZbqXXT2FALLjFKuKIXfDPlySo	2024-08-30 18:49:06.156254+00
xfbdqtpyysschyieo8i5uz0z0pbbr90x	eyJvcmRlcl91dWlkIjoiNTM5YzJkYmYtZjhjOC00MjE2LWFhYjgtNDkwZWY2NTJiNjQxIn0:1sfOUY:Cao5-7WPfD-8ItYb9hAACZhviGXtroxxxJcCO85PVr8	2024-08-31 18:49:34.09865+00
vbrphcyerio29kkb8l2dhl8g83od2i3e	eyJvcmRlcl91dWlkIjoiZWZlOTAwMGMtY2EyNi00MjFhLWEyNGQtZTNkOTU0ZWE0YzVhIn0:1sfkuM:GZtjHb5UnPQ_i25wsSaQS6z_y6TpBl8Xn-uSBJyRYmc	2024-09-01 18:45:42.538858+00
wzm3bpr63dqvj43unc36i75j86rk31i1	eyJvcmRlcl91dWlkIjoiZTBmYjEyZmQtNDRiNi00ODllLWFhZGQtNGViNjNhMTQzOTJhIn0:1sgIY4:6m8rFSiYLJuHNNvA6AnZEc4KzY_HsxWPxrWljs4r0kU	2024-09-03 06:40:56.839039+00
hmtn4qieu5rte65dm5vxqzn3ovuz4wbj	eyJvcmRlcl91dWlkIjoiMjY1ZDg2MjktZWQzOS00NTRhLTgxZWEtYWU2ZTdiY2Y0MGQxIn0:1sgUMa:OkGarmd0S5PzuB12DmfA6LU5owpx41lfauSXcuYwI5Q	2024-09-03 19:17:52.713046+00
wclbl8h3961jb2fnxnzf3b576o8gpxjn	eyJvcmRlcl91dWlkIjoiZDE4NGM2ZTktY2VkNC00YjliLThiNmMtNWI4NTE1OWFjNjlhIn0:1sghMF:6EmUl8l3sdPjqU8KezPrDjWi7ay7yA7bmRsA4a9Ku2U	2024-09-04 09:10:23.874956+00
8jxcv5p6krv4u4g1up8c52bks49zm021	eyJvcmRlcl91dWlkIjoiY2NjNDRiNTItMjY2NS00NDRkLWFkZjctNjBlN2NhMDMyZDRmIn0:1sh3tL:QCsDdjDorfeRqoWsPEZfCvsD44oVpxfgDltGh1aBNHY	2024-09-05 09:14:03.06775+00
3db6xqz27fwkjnshokh25bvj48w9uo1r	eyJvcmRlcl91dWlkIjoiMzFiMzAzYzEtMmZmNy00NzUyLTlmMmYtODUyNjM4NzI0Mzk0In0:1shG9w:C1S0alajlVg1vr2n2T8UD3MYMO2eFZJNJCs0SLAjIOc	2024-09-05 22:20:00.765244+00
2i1pxpmp9d7bosolg3b26arrgrc9e5gm	eyJvcmRlcl91dWlkIjoiOWJhZDk0YTAtOGZkOC00MWRmLWI2OTUtYTBhODY2ZGJmZWJiIn0:1shQQf:OkOV3vSY0v8HgxqS15uieQD2dVQH9cFAJenx_YiD8Tk	2024-09-06 09:17:57.888529+00
27lyh02og1rham5kxelg714wt376qp1d	eyJvcmRlcl91dWlkIjoiNTMzNWFkMjktNDMzYS00NTAzLWExYjgtMzMzYzE2MWMzOTA3In0:1shkNT:y0CgJcDrCO7GIek00hiJFtr-FDqmQra_PTkQQX_2W3Y	2024-09-07 06:35:59.579992+00
51nd3nth0v5i2iqowq0m7s2zxsklyur6	eyJvcmRlcl91dWlkIjoiMjAwNjVmZTctZjNkMC00ODBiLWExZGQtZjc3YWJlN2FhMDFkIn0:1shuKU:Qnn_P8hDPIBSs3Nf0Rf1RPNQrCV75EE3fDlU1WuSOjs	2024-09-07 17:13:34.122374+00
ytum5d4x4wovw2f31re1dre2etndipso	eyJvcmRlcl91dWlkIjoiNThiZTk5YTAtNTJlMy00MTcxLWFkNWEtZWM3OTgwN2MwNDMwIn0:1si3Po:5bvpdLPkMkOedSvMLKq-sP_v7LZJd2-Ov8Q5-1pYutk	2024-09-08 02:55:40.540222+00
1epc9q8wu67asdwengubwb2xkp4zxn9j	eyJvcmRlcl91dWlkIjoiMjQxOGIzZDgtNzQzMC00MWNkLWFlMTYtMGExN2Y0MDM3YTBiIn0:1siGgE:xECkD9qvzA-3XN00HNFOtYX7EwymguwJzVeC5sEVfX4	2024-09-08 17:05:30.588444+00
5u29q6ch9ibnvfrlyeazwz7n5foyatrt	eyJvcmRlcl91dWlkIjoiOTc1NTM5ZjItNTVlZi00ZmE3LTkxNDQtMzhhZjhhNjQ0NGI0In0:1sidHh:YmbT_N6PZZATQjeV_Rib9uuRLacfbTCRT-L1DsTOBAc	2024-09-09 17:13:41.411466+00
cup071iia5senody3y2wm70oq0jvlk45	eyJvcmRlcl91dWlkIjoiNWUzYjgyOGUtNTUyYS00YTc4LWFkYjctNDIzMmEzOWNiNWE0In0:1sjMNJ:EhSnlm4ojPZYLnFoSPUWwelq_QCCw6g86nLB_GOtUKA	2024-09-11 17:22:29.40304+00
klo6bir0hmnpwrgczpg2j74lenpg38br	eyJvcmRlcl91dWlkIjoiZWZmZDk4ZTQtMmQwMS00YTVlLThmZGYtOTgxZGFhZjkwZjUwIn0:1sjV35:TpdwVwiSNqFfG1Ck-O914o20xSsXK_5LvHj_Gz_2UOM	2024-09-12 02:38:11.370371+00
lepkmwe5b43cs3mblzx64qe37gspf9ki	eyJvcmRlcl91dWlkIjoiMjlhNmRkNDYtNmQyMy00NzUxLTlkZGEtMjMxNzA0ZGUzYTZiIn0:1sjgb5:OGU9f68Uls4T2p-9KJfeRXlCDamOajxKITBXZchBoF8	2024-09-12 14:58:03.053628+00
a7lkqubvyw1oreik5f92eanjafx97wxw	eyJvcmRlcl91dWlkIjoiNjVhZWEyYTEtNTRjZS00ZDBiLWFkNmEtZTAwMzlkYjg1NzViIn0:1skGkE:-Ir63oAR9YPTPeL4fsGw6ekag5jZ6Hr32nFDfgVa4QA	2024-09-14 05:33:54.761751+00
1uayvzrkdqn7net4t1glvnbirf2viihw	eyJvcmRlcl91dWlkIjoiMzUzZWMwNGMtOTU4OC00ODUyLWE3NTQtOGMxZjAwNzc0NmY3In0:1skOm4:d1hBitbIjbWeA7JuY19sNrS5hCa6iMbHT5x9jeHfBPE	2024-09-14 14:08:20.396143+00
z52pixxtxn0tb4sx7qzr7v2gj2wvmzlf	eyJvcmRlcl91dWlkIjoiMDVjZmZiMGQtZGU3Ni00NzU1LTg0NWUtNDVmNzczNmI3Njg2In0:1skcJn:wsxMS_lW-4Bkn5VWO4-UeTIliict1zuqf7bRVrYMp_0	2024-09-15 04:36:03.019046+00
x5gvedu9gc2m1lriz6d11uvgugn25sqm	eyJvcmRlcl91dWlkIjoiYzYyMDlmM2QtYWE2YS00MTExLWEyY2QtZmVhZDMzM2I0ZjQzIn0:1sknE8:lkZ6GJWoqlhnXytGoyHli-0FwQ3sr6Og4CC_njtv_WM	2024-09-15 16:14:56.621038+00
lh4q1k19snu7b8i5q5wfccaswuox6mgo	eyJvcmRlcl91dWlkIjoiM2RlNjU3ZWMtMDBmMS00YTZlLWFjYjAtNjgxZmZlNzljMmIzIn0:1skypZ:rXOYb8IQmdWpVOAFkXezPE2A7fjaTfFgwh80dhpWql8	2024-09-16 04:38:21.233389+00
8wxm0jqml0n6khpc3j872ue0vf59222g	eyJvcmRlcl91dWlkIjoiMmRhYTMzOWUtOTJkNi00NTE5LThlMzAtMjJkYWRlMTRkOWIzIn0:1sl8TY:tWqXey8ETbFsFv-Anb953DcIC_1yWOeYoB8wDLVNK-c	2024-09-16 14:56:16.311025+00
udus73rwviu0wtfzntxuhptlka1u46p5	eyJvcmRlcl91dWlkIjoiMzEwNmY4NjQtMGJhNS00YmVhLTliMTktZGY1ZTU4MzMwN2ViIn0:1slOcd:5iHV_eqT8Bd-NcHoX1P1zpJduetaxIEWxbYEv5rjSPE	2024-09-17 08:10:43.546046+00
cm6qmgm4wv7etr3gs24uuyapuc1fq6st	eyJvcmRlcl91dWlkIjoiMjcwN2Y0ODctYzY5NC00NDMxLWFiODYtNzlmOTA1MjVhMzI3In0:1slRLy:0qHnJfDqVx5bSA_v2RxZqs41ZZTeL8FTKMZJ8HAS_B8	2024-09-17 11:05:42.435558+00
it86wecrus3e93kqmmovg86os5ltrjf1	eyJvcmRlcl91dWlkIjoiNzNiMjk0M2UtOGUxZC00N2JjLWIwNDktNjhiMGQ2MDE5Njc5In0:1slYDD:wzdLOjZGAD2G2g5cg_erzXSDjt_t6Ofmu3eYMoOtY1k	2024-09-17 18:25:07.172606+00
w5rw6px5mhl21pvxbrayzupexuovrgkq	eyJvcmRlcl91dWlkIjoiMWI3ZDQ1NzctNDNjOS00MmRlLTk4YzYtYjUzNDA3MTdmNzEwIn0:1sll7L:bBIJg0h2i_t4Pd5CjPnHdJj-N4ypoenpy9IUMl6SNRQ	2024-09-18 08:11:55.374637+00
9t3u5m2qb40om3aj7k07h5cenp50d05l	eyJvcmRlcl91dWlkIjoiOWJjYTI5ZmYtMDM5Yy00YjNiLTlhYjktZDdmZDc4ZThiZjQ4In0:1slwuo:XXxVSCvlEq5Sw8gSxN7kRtsCN70hWEWP-myRaItG-aM	2024-09-18 20:47:46.433394+00
vzepp6y06qjs6k8eokdcq844ws3ljlvr	eyJvcmRlcl91dWlkIjoiZGVjNmE0YTktM2Y5Ny00ZTEyLThiZGYtOTY4MTg2YzY5YzE5In0:1sm7Uk:epNfQtaaYxZRUCusi1IDKvxZEfNNfYlRCn3z-9dkegk	2024-09-19 08:05:34.844922+00
etc8fwj4mk1o95nbbwd7nfv5s0b5p3ey	eyJvcmRlcl91dWlkIjoiM2NhMjQ1NDAtOTc0Yy00YmMxLWJmNWYtMWIzN2RjMWNiNmUwIn0:1smJwi:kywqgnl5Sdw0O5LIOlxcpCcGuwMgAkUpI79EAf4wFtw	2024-09-19 21:23:16.424101+00
4di9hol0lzz8yzh2bezsnxo1bfk9akom	eyJvcmRlcl91dWlkIjoiMWMxZTg4YmUtZGZkZi00NzkxLThkOTAtMTRiZjBlYjk3YTlmIn0:1smUYJ:_LtB3g52mfGg6QjEOmgOokpsdRLHHE8jZExhNIj5ay4	2024-09-20 08:42:47.584655+00
6jhv7xge1bfaq2dn86roxjxg3h3zrc2h	eyJvcmRlcl91dWlkIjoiODkyNGFkMzgtODdjYS00NTIyLThhZjUtNDcwNGExNzE3NDE1In0:1smeMy:hrpRqGdzLGdyD_FCMHCe4rn1bJBuQ124taz-uzcNG_E	2024-09-20 19:11:44.767468+00
xqftccssicrz1jvjlhqsiatlggin6br1	eyJvcmRlcl91dWlkIjoiMDU1NTBjY2YtY2YzMy00NzJiLWEwODQtZTFjYjc1MzJiNGJjIn0:1smryL:mvlUEBm0_-4xcUkbVHJ-WgKK6n_MFZoqtYcuHZVlfDc	2024-09-21 09:43:13.867201+00
syv2p3s9eof4bczfenr5qz342gusafro	eyJvcmRlcl91dWlkIjoiNzJlYmMwYTQtYWQ5MS00OTNlLWE2YzMtMjY5NTZkZDNkYzdlIn0:1sn2wG:56MZsNQkrAv6qzqBrgGCrumiVLILkk3Ndx5llk6yBVw	2024-09-21 21:25:48.652077+00
lyemsjogvmgbvmfdjmz9mkxjfeplvbt8	eyJvcmRlcl91dWlkIjoiMDVmOWE1MzYtODY1ZS00NzVjLTg5ODQtY2FmM2U3N2VjN2E2In0:1snGBW:n_wz4gnJoNIKBuWKnM62qQFQMCwgc_Ano8nyMqAfrjc	2024-09-22 11:34:26.13684+00
mmtrwc3uat536idxt0xwna0lcgs5so9q	eyJvcmRlcl91dWlkIjoiMGMwZGU0OWQtMjgxZC00MDU0LWJlY2UtNjJjNmFiMTM1ZDYzIn0:1snWY9:JINr859jHMsQUW0-h_zp_W6GqT6CUeX1sqUi_gK939s	2024-09-23 05:02:53.829688+00
yfd8b6ss7cv8lyerlihyy0y1ghs1z584	eyJvcmRlcl91dWlkIjoiNzE3Mzk4ZjMtY2MyZi00Y2ZjLThjNzEtMGE1ZGIxNzgxMDA3In0:1snotZ:H5jvOHxZCj1zJJJG3SaaTan0wFMfGTkV9-UjmDMZm_k	2024-09-24 00:38:13.729516+00
axooul3a6df86rhfq6ssz1saxpcmogji	eyJvcmRlcl91dWlkIjoiMWEyMTg3YzItNGRhZS00MTMzLTk1Y2QtYWYxYjYzMGIyZTFiIn0:1snzcz:Z8LG8Ljs7V6NmP5g14k1-2Aea00mAVaWhP9K-1nRtBE	2024-09-24 12:05:49.258525+00
tzh9c532qf4489o2hcoqr6gsstyomyq1	eyJvcmRlcl91dWlkIjoiNjBkOGNhMGYtYjc2NC00Y2NlLTk2YTctMTcyZWZmOGU5N2RkIn0:1soES0:JysjHHrAsuj3xNx-NakgHbUdWMOG2TXCwezmIkMeoKQ	2024-09-25 03:55:28.035901+00
w90n2cedwp0dfxn5mhc5y7rkoadnzloq	eyJvcmRlcl91dWlkIjoiM2ZiZjJhZWItMzNlNi00Y2I4LWE0OTQtN2ZhZTg2YTBkYzAzIn0:1soQBa:STBVWw-GQVdsQscE0SZEE-_JQBz0IlYRalbW4gVSCzo	2024-09-25 16:27:18.531147+00
i89w0og6ygglw31j6xb12yw4u1ffl6gl	eyJvcmRlcl91dWlkIjoiYTI1YzBhZGItMDcwNC00NGJhLWEzOWEtYjdiMTViMzg1ODkzIn0:1soi5w:Lch60TYLKau0qICRT8X0TZEGRMZwtinH7bEHyxOp9rc	2024-09-26 11:34:40.892633+00
dggt39dslqzpoosnyq2omh633hs2fl35	eyJvcmRlcl91dWlkIjoiMWMwOGQ0OTAtNTZmNS00NDgzLWJhNTktZGFkMWE5NmM1ODU5In0:1soxuw:g7BSk3paKqmPDsWVHd4Zm3XaE9AyfPSa85Wwg8xNc_k	2024-09-27 04:28:22.936014+00
q1mxs5vsgyv8up49uf39bpv028btdlex	eyJvcmRlcl91dWlkIjoiMDgzNjgwYTUtYmI3ZS00NzZiLWIyOGYtZTM2NmNmODQzMDFiIn0:1spIjn:_82jIG9FwEmmpWoDBo4BmJ3qMd072iu_guL6_O6Ny-c	2024-09-28 02:42:15.840237+00
0toi5fc4fm874kqerkuhtyposp7gc9k2	eyJvcmRlcl91dWlkIjoiOGQyZDk1MGItN2EzMS00NmY1LTkxYjctNDFlZTA1ZmE2OGI0In0:1spUEt:fbGZRvoj8Xgg1DnizSiStVzrmTJaIpIPpttPkBwjR5w	2024-09-28 14:59:07.523714+00
z9eeszsnhzadvgadd0gx5bfn74p2hbff	eyJvcmRlcl91dWlkIjoiMjkxMmRjYmEtMTVkMS00ZjQ4LTllMDMtMmZiNzhmZGI4ZDZkIn0:1spfCp:sP13KXkMKPihpslh6NKRz0zcbMmVyBtzmQv9ZB2uUWA	2024-09-29 02:41:43.610257+00
9iacmwvevf8zhv4syqft5hk7fd2096lm	eyJvcmRlcl91dWlkIjoiOTU2NWMwYWYtNTlmNi00YzcwLTgyN2YtMTY2MzEzOGRmN2E1In0:1sq2q5:op9AH3rVQpNE9RJaPcknoJNL2rcjYD5BglxcnJh3-3Y	2024-09-30 03:55:49.196364+00
wpwn1rowtsmveb6320lppn1xfbv0pf7l	eyJvcmRlcl91dWlkIjoiOGY4NDllNzEtMDlhMC00Mzc0LWEzNTktODcwM2U5YTUxNDExIn0:1sqGtd:vM3bgCFb7SDT3nxyKONzf4E5FAOEffekb9OL_6woD0c	2024-09-30 18:56:25.987006+00
05mc09tpwrgk7qf74up4cktmc5zpgacm	eyJvcmRlcl91dWlkIjoiNGI2MDY2MWQtZWY0Ni00ZTIxLWI2YjQtZmM1NDczYzNmYjI2In0:1sqaWj:PGQ9FOLn2hMTxH7AG2Pcmpmxw93xVQVyCN-blBfR6zU	2024-10-01 15:54:05.59615+00
y2wqy65zxesci39ydyci121o26czhq7w	eyJvcmRlcl91dWlkIjoiMmYxM2Y2ZGUtNWM5Ny00NWFkLTlmMTQtNWUyODZkZGM4MmYwIn0:1sqsyN:u6R_RQzOgI14hLm6vLsdAIkKxDlUY9l5DMFonXIfDtA	2024-10-02 11:35:51.079735+00
736rwd5ueavjxlru5fzr01r152rgslz7	eyJvcmRlcl91dWlkIjoiMDg4NDE3MGEtN2ZlMy00ODdlLTlhMWEtYWYwMjg1N2VhY2JhIn0:1srCIj:4aOdFCTT-MyyuVJqAERuCCiKtdTRslak5o2ba-pSWq4	2024-10-03 08:14:09.242279+00
et3ftchd30zkr3rbcnol4y1nb1bbusss	eyJvcmRlcl91dWlkIjoiNTE4NzU1ODAtODkwMS00Y2U2LTg2YTctY2NhYTVkMDQ4YzRjIn0:1srQ1k:3GFRzKM8nIMHiZi-hgGt9SB1Ut2xECKYtWZ0GUz36OE	2024-10-03 22:53:32.76664+00
d2eae10quq2rfbxh36p7g6yljr6gfrtq	eyJvcmRlcl91dWlkIjoiZTVmZDIwZGEtNGY3Ni00OTEwLTk3ZTAtMjI2YTBlMDI5ZDllIn0:1srb97:xsiGNXKBQj7u-xPjV4jLOSU5_XZpCOclyyid1XpsIAM	2024-10-04 10:45:53.04777+00
0py89yh7r3cnmn6dwiuvxzesmfoodwgz	eyJvcmRlcl91dWlkIjoiM2UzMDAzYmYtYTU4YS00ZWVlLTg2ZDMtYWVkNzg1Njc5YzhhIn0:1srmaF:x8BYC44Ye2MA0gLqLrOqz-4vrwJ-WSRogXIo-gQGVTo	2024-10-04 22:58:39.997458+00
mkcihk4r28ts934a2xdgx6hin24yrqkk	eyJvcmRlcl91dWlkIjoiMGMyMWUwZTQtMGExOS00ZjNkLWFlNTctYjc1N2FhZmQ2OWJkIn0:1ssbjY:Ssrtpk0YpqNrX-mO4ffpV6rSfhgumYipNP8U3fhM5II	2024-10-07 05:35:40.819955+00
k4o50768jm8jm65ri5qt4l4ouqne2q6s	eyJvcmRlcl91dWlkIjoiNThiNTk1ZDItNGJhYy00NTk5LWE5M2EtODA4YzhiOWE3OWNkIn0:1sstyY:quRjeDtPVXJmSk3I2hb05FzOgusKHJR-a8D4FH7ImmA	2024-10-08 01:04:22.951741+00
7dxvkt6kyqj3u7m7a174oz68fyvly1pz	eyJvcmRlcl91dWlkIjoiYWU2ODI5MDctNTdmNC00OWZkLWE0MTEtYWU0YmZmNmFmMDIwIn0:1ssvjZ:TibMUpfNRZob2fTyHIh7s9vmyDiS4PytwqXzsA2Pprs	2024-10-08 02:57:01.910999+00
8lalr9bjy6xsnot34ifif3juzdi21cij	eyJvcmRlcl91dWlkIjoiNDliNDQ5YWMtNjc0Yy00MThlLWE3MjAtOWIxNDlkYTlhMTBhIn0:1sswWS:leB8kNo6prDLhUzLzlr8cJ4ZafD8OFWTEmojSGlgQQY	2024-10-08 03:47:32.912645+00
prjdi64csh4e339si6f0czsganllswnh	eyJvcmRlcl91dWlkIjoiMzlkMzRmNmMtMDc4MS00ZjdlLWFiYjctZjk5ZGE3OWI2ZmZlIn0:1stHDQ:JCmXDROm_4Y9dbuQitfm4-nSV3UADawyJjtJy_tgbUI	2024-10-09 01:53:16.183327+00
dl6su4v5uipbqqr76t801iu56yle6tcj	eyJvcmRlcl91dWlkIjoiNjlmODFkMjUtMDNiMy00NWQ3LWE3OGEtMmU1NzAwMWQ5M2NkIn0:1stY12:87tm-twTM10_FqQJF8qG84DKRqTTNHdMWE8VCNIHh3w	2024-10-09 19:49:36.920371+00
zke2egr9285av3rjww2ba287t6k7tje6	eyJvcmRlcl91dWlkIjoiZGM1MzA5NmYtZTQ3MS00M2Y1LTljNDYtNGYxNzM5MWJjNDZkIn0:1suAfY:mIyvO_5-f4ybAptJHI0smJ7Jir9SMlbPHGAFf6zr2wg	2024-10-11 13:06:00.627793+00
kht5k57jafu3x3bjr68xrb8nrjkww698	eyJvcmRlcl91dWlkIjoiYjA3YzFhNmYtMjhjNi00ZjZlLWI5NjgtY2E0MTU0OGU4OWJmIn0:1suNu9:GqLn85kJauamTTjOR10aO4m5Ln20ERY8k-ZIqC4DZ3c	2024-10-12 03:13:57.456279+00
i8ssgn3r6sa7d9npy0l6ugjupptesk29	eyJvcmRlcl91dWlkIjoiOTc0NTFmZWEtOGRjZC00MjQ5LTkyNzItODgwMzNmMTdkMGI1In0:1suWvX:2GdZrhbjl-z02u9-cPXeLMIZH3Vd-nfH7VobqTn9cX4	2024-10-12 12:51:59.72215+00
r4nwsgf76sq5f4sprsniq8agv1250109	eyJvcmRlcl91dWlkIjoiNGI5NGIwNTktYzJmZC00Y2U2LWI5YWEtYzgyNmE5NTdhY2I4In0:1sukKx:MiGhwKg3LAbKHSKwJ5vhcVdQBgVDTneuGjYhqQYlceA	2024-10-13 03:11:07.334416+00
tfbb1mv7xxklzaih2fd4wfzbqi4ruyyp	eyJvcmRlcl91dWlkIjoiMWFiNGMxMDMtNDBlMS00YTE5LWJkNTktOGU2MjQyYzVjZDc3In0:1sutLD:z7dBwL9Ph-YGDNCKRnBzD6vfJbM1oA5AD5OFgq7Ac7Y	2024-10-13 12:47:59.147989+00
dpunwsqntssbuez59de4uvygfqpfin4y	eyJvcmRlcl91dWlkIjoiNjY2OGU0ZjQtN2ZkMC00NWIyLTlmYWItNWJjNGI3NWRhYzgwIn0:1sv6Ut:va9G8EOlNIOncHZrzvDV6tTObMcekiM5fLTpUZfWs8o	2024-10-14 02:50:51.341052+00
csybshxkqva1lvnwvyjoj5y5c5u5ikk1	eyJvcmRlcl91dWlkIjoiZDAyYzk4ZGEtMTZmMy00Mzg4LWFmYzYtMjhhOTY2ZGQzMjY4In0:1svFla:0gPuzQbltUPEHhcuv8nUBnd_msUN_UebjA-hkLGsVxw	2024-10-14 12:44:42.47317+00
dn326uvwp2mzr9yusnw50s3e8g0ryipf	eyJvcmRlcl91dWlkIjoiMTBkOWFjOGUtN2EwMC00ZWRiLTkxMTQtNzdmNDk0Yzc2YTMzIn0:1svODF:1kVnT9YuPLDCDd68aP3h_RETaXkod0uX7llPaImlQfQ	2024-10-14 21:45:49.806872+00
6np5tocyzyls1cde9t3g1bdhoa56pbdi	eyJvcmRlcl91dWlkIjoiMTU4MjBlZjQtZDQ0NC00NTgwLWEzZmItZjFhZjVjNDkxMGZhIn0:1svcJ9:LkOvzSC6y8V3Fv6DoI72CPYCdrB4X3_Ipk3Bx3JGLng	2024-10-15 12:48:51.482853+00
m634rim7p7sy51yuyc4j1qq62e41rks0	eyJvcmRlcl91dWlkIjoiZThjNzhjYjQtZjllOC00ODFhLWE3NDktZDc0M2QzYmVhN2U0In0:1svzo0:-WU-SPR2lyi3hmSuyHFOvzLwVZxTodF7orohx581YZc	2024-10-16 13:54:16.755632+00
1nd23qweclea5n2utu58jx8f1ovyjbcr	eyJvcmRlcl91dWlkIjoiMjBjMGQzZDUtMDJlNC00OGU2LTljNDctNjNiNmJlYzFlMDdiIn0:1swMI0:4h-y02RQCQL_dwRLe1f6qxsD_hae0TVuKESzVUR1Sa4	2024-10-17 13:54:44.126634+00
9t4c3t188iqpf32ljd24n926egc8ugkk	eyJvcmRlcl91dWlkIjoiNmYzYjgwYTktY2VhYi00MjA0LWIyMDQtZjBlNTQwODIwODVkIn0:1swiQF:5FkQupqs-GWh19mWGwmz0Offq1VP_sTGTdSDES_7EU4	2024-10-18 13:32:43.165787+00
xknjkwsqxvlbplxf19os6kdun3v1vzxn	eyJvcmRlcl91dWlkIjoiMWQyNmE1ZDYtYzYwYy00ZTNlLWFhZTEtNWQ3Zjg1OWM4ZTRiIn0:1sx7pD:qynh7WYrVwq3uV1odwkU2m2gomx0bCYN3n4u7q3AcMU	2024-10-19 16:40:11.144943+00
qkbt82gzml20neogx315j7zm94v0o00s	eyJvcmRlcl91dWlkIjoiM2Y2ZTljOWMtODc5NC00Zjg1LThjNWUtMjY2Mzk3YTRiYzE0In0:1sxTX8:WpNDbY8qSvvVQ7JjF6lzyIKnVS7ySeRzNAAD4wQ-5UE	2024-10-20 15:50:58.667564+00
wbpw1o2v65l6rojg220pt4o3idcux2wl	eyJvcmRlcl91dWlkIjoiOWVmNTg0MjctNWUwZC00YzA2LTk4NGQtZDIxNjU2NDZkNDYzIn0:1sxmvY:zo-va2WXT-grkhBayhCKpnYEovzZqnB4MM29cGnd2KI	2024-10-21 12:33:28.139087+00
ubrirmsgnr0r3006qnyaw5et2acsc2ri	eyJvcmRlcl91dWlkIjoiOGE5NzY0ZTgtNzhmNC00NDA4LTgzZGUtNjc3MmJkZGY3MjVhIn0:1szdOb:sEztb7ct2648r9AGg-iJ6MU2WpudNSNgNrmQbXu9Tuo	2024-10-26 14:47:05.004831+00
r6jnk2bu1cxcehrayb5wtohpt8bpnzh5	eyJvcmRlcl91dWlkIjoiMGRiYzhjZWYtZDU0MS00M2VhLTlkYjEtNzE1ZTUxNWM4M2ZkIn0:1szhJf:Pcrozrp1OgFdJspNdJXTWQGBPzhORWSDlAr8x0ZBeWk	2024-10-26 18:58:15.0346+00
fqkplnlf6loh9j45w4m21qb6f6jz8o3j	eyJvcmRlcl91dWlkIjoiOTcwZGI2Y2EtZmYyZS00MTNmLTlkYzAtM2ZlMGY2ZDExNmZjIn0:1szqD9:8UWc-1WFbqaUooVhrA_I5qJ6Klg6sELGO_txjZ-sGSE	2024-10-27 04:28:07.581624+00
sruyylx7p2pkone6wqn2dim36wkbjlzs	eyJvcmRlcl91dWlkIjoiNGE4OTI2NzQtMDQ3ZC00YzIwLTllZDgtYjlkZTMxMTU3OWNhIn0:1t0IDV:cHIhicbGGyFJ1b42oqo8_PZzrTvyNjYsz0qqHGdNgBo	2024-10-28 10:22:21.951367+00
8eyvjb7ru2jdn17q2ejnzalsuwsyh9i1	eyJvcmRlcl91dWlkIjoiMTk2MDBjZDQtOTMwMi00YzJjLThiNTUtYmExOWRlZjNlNzQyIn0:1t0fjK:hiOrbnvSW7Uf9EB2EjJjohlu6iIxPVCMlmuDgykX9JI	2024-10-29 11:28:46.347411+00
x0dpi056ywwb236jygfz4asqvc9qt9h9	eyJvcmRlcl91dWlkIjoiYjUzZWU2ZTAtMzY0OC00ZjkyLTgwYTEtMzU1NWM2ZDE0ZjhmIn0:1t10U6:Wz4qA7mPBToAbMJadbBJIVqeDQ_tNCeuU3BjvBtVKGc	2024-10-30 09:38:26.156037+00
wdl8bef13zj394cnuzcp5w7sd5cisnxk	eyJvcmRlcl91dWlkIjoiNzc0ZTZkNWYtN2JkNS00NTlhLTlmZWQtYTAyM2M5ZmEyZGI4In0:1t1MmL:U_QTZ1Y8TGs_06qJy8myGy7Fyn3krCxlwhjN9XYHwsU	2024-10-31 09:26:45.958956+00
q5devvj1kskfz86ntvfz97w12a0mdy70	eyJvcmRlcl91dWlkIjoiOTM2YzM0NWItMjBhOC00NDI3LTgyM2QtNDI2MTFhODM2MjM2In0:1t1VxG:eL5tRvaqoZF4YlO9MAc4z8vQ0seE--1svFKqcpdwfq8	2024-10-31 19:14:38.549886+00
1qzh0xxeded75rv8vbrzmcqgv9cspvvs	eyJvcmRlcl91dWlkIjoiNDJiNDc4NTUtZDIxMS00YjU5LWI1NTktNmE0NzBjNmRkZGJkIn0:1t1i9b:TMhHPBi-EIrs_7xdnARCahGK3xB6G-aChHciRtOmwSY	2024-11-01 08:16:11.372334+00
k1br7ny2p6fqilzcm06r0ummfm8gpufg	eyJvcmRlcl91dWlkIjoiY2NmMGQwYWItMDdkNy00NTUwLTllOGMtNTA0YzVmN2MzMTIxIn0:1t1rcg:iFSBTvSw-5K0qRYJGiAgQn9VZCuo5xs6IkiObLIwY7A	2024-11-01 18:22:50.116435+00
dxrf9fytwkjjngja22parif28o2ruzlr	eyJvcmRlcl91dWlkIjoiZDI3ZWY2MDUtZmZlNS00NzVhLTk0YzktYWIwYTllMThjOTNmIn0:1t24SB:RUDG5HcuMK_v_qjah2XZ-H3sfaueQ-2x32-U2qwi8s4	2024-11-02 08:04:51.9669+00
04r3f98h0cv3u6x9o2argspubq32y8l2	eyJvcmRlcl91dWlkIjoiNjU5OGYzMWEtZDQ5OC00ZDMyLTk2ODgtZTYxODMyOTlhZWQzIn0:1t2RC1:vp2wBaEaxGn5ta78txOgXNOvfgrhSeUEV0QRs_AJ5aE	2024-11-03 08:21:41.710082+00
osje5w82rb1snpn7t727bn4hpcyypos9	eyJvcmRlcl91dWlkIjoiNGRhZTY1MDAtYTUyNi00YmRiLTgwMWMtYzYzMDQwMTRiZWM1In0:1t2c8q:fbRkiOmXXaFR-Y9fP_wvPUo1i7i658_BZEmhNnEOAZM	2024-11-03 20:03:08.186951+00
k8llg1opz41p4s313ukm0znkp2loms5m	eyJvcmRlcl91dWlkIjoiYTkxMWYxYjgtZWRjMC00NWVlLThiYTQtOTBhODk2NTgyNWYyIn0:1t2tHZ:4K41kIMk_XehgIDwc-F_PbFbyC6EpTmkxI5yAoWFxQQ	2024-11-04 14:21:17.656661+00
hxkuqv82z0prsyu8un0vkjl4ryd5fzon	eyJvcmRlcl91dWlkIjoiZTNjNzBiMjktZTNlMC00NmRkLTkyZmQtZTMxZTljYTAyMDNiIn0:1t340o:9xn4vmmBx_2CjlRhq9WM1xa9jomhtH_9K85TEMjaoRU	2024-11-05 01:48:42.646724+00
8iiab5h07ay4waoris2w7g4yhrh0ce9d	eyJvcmRlcl91dWlkIjoiNjQ0YzU5N2YtN2RkYi00ZjY4LTlkYmQtZmU2YmM5MGUwYzE3In0:1t3QNF:krtf6eZtvKgcZwEj-k6foaFQFkZljUIKzYjDs6eeTlE	2024-11-06 01:41:21.363555+00
ne4ao1c164ob5qa9o6ug3a4w9apa81mf	eyJvcmRlcl91dWlkIjoiZjVlZjU0MGEtNWU3Yi00N2JjLTk4NjQtM2I2MTQ2NmIxZGY4In0:1t3X0N:OJbffYRGsNEYWEUxlSzXQ5oAybf1MtIaVf1Rlua5MuE	2024-11-06 08:46:11.188151+00
1nbn0bmvmskramqo71jxjr4or9h58o6o	eyJvcmRlcl91dWlkIjoiYWMyNzU0MzItNzRhNy00YWIxLWFmYjMtNWRjMGI5YTFhNzVhIn0:1t3c18:f89CDml9yQzxL35Nj_7DEEVgwSk-GBB8nc5VPEuGTVM	2024-11-06 14:07:18.635956+00
ocfzlcpj5s4q9en5u1raa1tjlj6n99l1	eyJvcmRlcl91dWlkIjoiYjgyYjc4OWUtYzEyYy00YzlkLWJhNjUtODNkNGNmYzQ3YzJkIn0:1t3mbV:uILhIxc0S_BpwtFeBvXwKQzcprznUOMSq9xP8xAUyeg	2024-11-07 01:25:33.500229+00
jiqo03rzmfho224v4uuxjx8zm7vr74ss	eyJvcmRlcl91dWlkIjoiYmRkOGQ1M2YtNjQxNy00YmIyLThkYWEtMGI2Y2YzNzAwZDMyIn0:1t3yhM:VhQYz48_UqyAm3ruuWcO7btv5HQzK_l7jLHFXoJSg_A	2024-11-07 14:20:24.128185+00
7dgd70kkt5pbbj65qdbu05id3u7xc8rp	eyJvcmRlcl91dWlkIjoiZDY5YTg4YjItYjQxYy00ZmYwLWIzNWEtNGZlYmI1NzY2Y2FlIn0:1t4Ln6:s9RpACao3M4WIFDPBqVLIiKXtD9pKxH3V9gasbZIoqw	2024-11-08 14:59:52.455285+00
nfru32mok8u7530mk1bhlcg9b16ye68k	eyJvcmRlcl91dWlkIjoiOTA0OGY4MjItYjQzMi00N2NhLWFlYTktZDY2YjI2ODMxMjZhIn0:1t4hEK:DZzZGhPcqGCRg_sv92yQYa2GZl_mm3Wxdl9SO3wGt2Q	2024-11-09 13:53:24.959938+00
v23toa4ps7ivugu5iv6tfx9al5of5728	eyJvcmRlcl91dWlkIjoiYjAzYTMwZmUtNTkwMC00N2JiLWIzOWYtZjJjM2ViMTc2NjY1In0:1t54cC:AWaWE4rlscm1W3jEfk57pSbjCWG82EyY5pW078BTg34	2024-11-10 14:51:36.185326+00
9jmit2unwbvgzx5rf4u0lrshizabisma	eyJvcmRlcl91dWlkIjoiOWJjMTQxOWUtOThlOC00MGQ4LWE5NDAtZjI0NmIwZDNlM2MxIn0:1t5nAH:9fka8pZHgeW9NsvFYtnNV6joeRUTdSyNLzOWpECDSMU	2024-11-12 14:25:45.935968+00
1rro59mvy8w28igr1msvxvrwo00ono4s	eyJvcmRlcl91dWlkIjoiYTc4M2Y4MGUtNWNhNi00NjkyLTlmODUtZWFjMjAyNWI2MzdlIn0:1t67Mo:f659PeOF2ypme7HemUfRZJnSxfz-8Y_AxJ87H02bWI4	2024-11-13 12:00:02.80513+00
ksje42x56e40a56virx54ep9k0gpsp8b	eyJvcmRlcl91dWlkIjoiM2Y4MmM2MGItZjMzZi00ZjdlLTk3ZjUtNThhMTBmNjc2NGUwIn0:1t6WwK:azaQw0lm9znopgl7LO0nTX-mKRfjh7HJQ-vxU65y5YY	2024-11-14 15:18:24.550721+00
qvlum5f2nnshy4xb91wthcht3l6o5rt3	eyJvcmRlcl91dWlkIjoiYTQwNDM4NTAtOTkxYS00NWY5LTkwZGYtYWFhMThjMDdjMDZmIn0:1t6sqY:PDvYGGpTuqePM8ienj6qWcFmtQHxQJD3Wuq0ITubPV0	2024-11-15 14:41:54.400129+00
fbigqt4vezf3nhstoa4igppso7ddzgn9	eyJvcmRlcl91dWlkIjoiM2UyMzE0ZWEtYTAxNS00ZjI4LTkxZjAtODFmZGJjNGZhYmYwIn0:1t7FsN:WKrcZWdfMSFlwjwu3uHQg4TDEGsRx4HwHdDBuDuwydY	2024-11-16 15:17:19.288216+00
53td5yosqpgsli832fkc7win8gjino8m	eyJvcmRlcl91dWlkIjoiYzZkODkxNDUtNDU2Yy00NjYzLTk2YjMtZWIxMDRmMGYzMTI5In0:1t7dBl:KwbjbUlhFFBHdOyyWoresA1bUpxp2Rybayq5D9TCNYo	2024-11-17 16:10:53.944732+00
vafvgta94yrzb2hjoohvjf27q193y1a5	eyJvcmRlcl91dWlkIjoiM2ZhNmFmNzUtZGEyNy00ZTk2LWI2N2YtYzQ0MTZmZDEwYjZkIn0:1t7dBw:Xq-VcEPidNhQpgfuB6y0hZhzpFBMGbAofEOP-hj99MQ	2024-11-17 16:11:04.941019+00
cw36peyhmrqj5oi27rk3ja5uuy0wjkw8	.eJxVjE0OgyAQRu_CuhpAx4Hu2ouYYRiiqdFEYdX07lXjxuX3895XLWuUtS9ljOqpwFGDEFzljXFVG7CtAomtukYiaGQip9VD9VTy0JdtB0_M3LtA_JH5GGiajrom5qXMuT4_17zVrz3JnEemPC7z-6JuqoG2Yfd0JiXfoaWAKAb9rvCh1dGi1bZlHRnASIImoRGQwORi1yQGAWs8iPr9AY56Sw8:1t7igk:GUb9QwkqAZXblLFBvTXoeHHlrHnN7_EaAyLv5_vWKfk	2024-11-17 22:03:14.431617+00
l4dqjuplvko23jo4h8v3s05xjmo56lgw	eyJvcmRlcl91dWlkIjoiYTg2MWIwM2MtNDI2MS00MWE5LTk4MzYtNmQ1OWNjZWNlODA0In0:1t8iGx:gx4Ys0bX9JP5GlBhwmkqD9er_WomOcdlem2XSJZSFkk	2024-11-20 15:48:43.283159+00
uionlpoaytwwvs97ancxu3hw3xtzqybh	eyJvcmRlcl91dWlkIjoiYTI2ZThhZWUtZGJkOC00ZjhiLWJkZWItYTFmNDY5YjQ1NGFkIn0:1t964T:nLxWBeXDj5ihjblaD2g_zbDPOXesNSkgUTwN3gATFpI	2024-11-21 17:13:25.721961+00
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
30	12%	12.00	t
31	25%	25.00	t
32	20%	20.00	t
33	15%	15.00	t
34	15%	15.00	t
35	8%	8.00	t
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

COPY public.products_order (id, order_date, total_amount, status, user_id, uuid, created_at, updated_at) FROM stdin;
2	2024-04-08 00:57:44.287664+00	\N	draft	\N	df478e0d-8f8a-4eca-9f09-2f52007c1f75	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
3	2024-04-08 00:57:57.312006+00	\N	draft	\N	a8480274-97fc-4e35-8468-5807cf69fd04	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
4	2024-04-09 02:24:08.935389+00	\N	draft	\N	55d59e5a-6027-4a1e-b323-b9e3128fc68e	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
5	2024-04-09 02:24:10.538672+00	\N	draft	\N	c7cf5b51-013b-47c6-82f2-c8f2ed1a7340	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
6	2024-04-11 09:39:52.554506+00	\N	draft	\N	d0f89ad7-d40e-4d31-9e67-6bfff371d839	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
7	2024-04-14 22:55:55.12744+00	\N	draft	\N	21c67ab2-5af8-4e0f-b430-aa36f7ef477a	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
8	2024-04-20 15:30:44.394487+00	\N	draft	\N	0a038856-02e1-4d52-9d3f-880fa7c0d250	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
9	2024-04-29 00:02:01.808216+00	\N	draft	\N	5e2b9dc4-8ec2-4bcc-aa25-03c7d6357d02	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
10	2024-04-29 21:38:51.284723+00	\N	draft	\N	3c1a9da1-e737-4833-8c51-1d69b80c84e1	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
11	2024-05-05 21:18:47.598071+00	\N	draft	\N	280399c7-2474-48bf-a587-002bd0dbe014	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
12	2024-05-14 19:59:49.514207+00	\N	draft	\N	30b652f2-031a-4cb1-971f-a0229859862b	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
13	2024-05-16 21:14:53.971124+00	\N	draft	\N	76e950b2-ca1c-4cf1-b131-e24521b4a934	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
14	2024-05-20 22:17:00.531543+00	\N	draft	\N	fafc8bee-4a7c-4598-90be-c99f3fb504fb	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
15	2024-05-27 23:14:11.278733+00	\N	draft	\N	cdcf48ef-15a3-4ba8-a73d-fcd0343fffaa	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
16	2024-05-29 13:00:36.436108+00	\N	draft	\N	46949ae6-fec8-411b-9fcd-edd27a02ecdb	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
20	2024-06-01 06:11:06.790005+00	\N	draft	\N	d219171e-9b64-447a-b9ba-ab6f4f40fad2	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
22	2024-06-01 07:59:23.604203+00	\N	draft	\N	0c903b55-45f5-4880-8bcb-c1d23c9ff28f	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
23	2024-06-01 07:59:37.796816+00	\N	draft	\N	cd107afa-60f2-4c2f-a887-d5b44df18775	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
24	2024-06-09 13:22:49.104704+00	\N	draft	\N	e360a58f-08f6-446c-9c43-a3521afcef32	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
29	2024-06-09 19:02:47.721733+00	\N	draft	\N	c72b9871-41fa-4516-84dd-4f260b9b29ed	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
30	2024-06-10 05:42:26.020602+00	\N	draft	\N	8eb552f4-4739-4eec-808b-7de756b8923e	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
31	2024-06-12 03:02:33.236303+00	\N	draft	\N	81b0a07c-ffc4-4a38-b0ba-eaf4528143bc	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
32	2024-06-13 22:06:08.636752+00	\N	draft	\N	fd1c3e25-bb82-44bd-8a07-3651c967d0b6	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
33	2024-06-13 22:06:25.815032+00	\N	draft	\N	0a559e64-4905-4f74-afe8-aa509a518c1b	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
34	2024-06-13 22:06:35.54591+00	\N	draft	\N	944f3e94-d452-4e16-8565-d2cbca2c21c7	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
35	2024-06-17 15:51:31.651939+00	\N	draft	\N	8d6b2130-7c87-47d2-806b-bde5b67297a1	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
79	2024-08-01 00:53:21.237166+00	0.00	draft	\N	f08b0120-a3bd-4230-9bc3-69a920f6efbe	2024-08-01 00:53:21.237222+00	2024-08-01 00:53:21.244387+00
80	2024-08-02 01:00:51.012742+00	0.00	draft	\N	fd5a40e0-ca82-47cb-b7c2-68d377c80196	2024-08-02 01:00:51.012813+00	2024-08-02 01:00:51.060169+00
1	2024-04-08 00:35:53.905465+00	6173.91	shipped	1	d27d86b4-fcd1-4854-bf10-cd78c61068f7	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
39	2024-06-21 14:07:20.685747+00	\N	draft	\N	b2abb550-7251-4b00-82e9-5a9af5ecb533	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
81	2024-08-03 00:23:43.839143+00	0.00	draft	\N	449f1a3c-76e7-41e2-8f8c-20bdf9311cfa	2024-08-03 00:23:43.839187+00	2024-08-03 00:23:43.847096+00
86	2024-08-06 06:54:55.850482+00	0.00	draft	\N	95f02f31-d045-4087-89ba-9befda2ceb87	2024-08-06 06:54:55.850543+00	2024-08-06 06:54:55.858947+00
40	2024-06-22 09:42:56.719128+00	689.00	processing	2	b126deef-1e1b-4ef0-af0a-78d3350c0684	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
41	2024-06-22 10:06:31.097193+00	\N	draft	2	306ae5fd-8468-4bdd-824d-87965fa01bae	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
87	2024-08-07 06:59:39.071196+00	0.00	draft	\N	7145a7be-5245-4e5b-8d13-774a911b9dbf	2024-08-07 06:59:39.071242+00	2024-08-07 06:59:39.077194+00
92	2024-08-09 06:52:31.005767+00	0.00	draft	\N	02bb77e1-5229-4b43-bf84-fd458c022ce6	2024-08-09 06:52:31.005825+00	2024-08-09 06:52:31.014058+00
36	2024-06-17 15:52:02.204072+00	2921.60	delivered	2	\N	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
93	2024-08-09 18:54:13.793981+00	0.00	draft	\N	47f3ce00-4d35-4dc6-afb8-cf49709f2ac4	2024-08-09 18:54:13.79404+00	2024-08-09 18:54:13.800626+00
44	2024-06-22 11:31:43.585195+00	\N	draft	3	d025dc6d-5b29-4517-9ebd-77ebd7d0133a	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
88	2024-08-07 14:24:33.293526+00	1139.85	processing	1	7f58bad2-2064-469c-a95e-a4d489cf6a64	2024-08-07 14:24:33.293576+00	2024-08-12 18:31:41.481194+00
43	2024-06-22 11:30:20.774239+00	111.30	canceled	3	\N	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
46	2024-06-30 19:03:01.924798+00	\N	draft	\N	b2a4ea4a-897e-486d-bbdd-f3ba62ef19e6	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
47	2024-07-04 23:24:49.949134+00	\N	draft	\N	b5b5b576-7146-466e-8df4-2bbaa80bb8f8	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
48	2024-07-07 13:03:20.65158+00	\N	draft	\N	0553be72-a589-4e05-a153-88f7002f9619	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
49	2024-07-12 10:39:45.868998+00	\N	draft	\N	ab3c4df2-aca5-48bb-bcbf-05766519c015	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
50	2024-07-13 00:12:52.310928+00	\N	draft	\N	4cc16b92-1a35-45a7-a061-5b8e235171d3	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
51	2024-07-13 10:37:54.078243+00	\N	draft	\N	c89e562e-cf9f-4ba6-b835-cc20858a2f12	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
52	2024-07-13 15:00:50.683244+00	\N	draft	\N	0a39d763-6246-43aa-9f16-5805d743e162	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
54	2024-07-14 18:43:00.226687+00	\N	draft	\N	8cf5fd5f-8d89-470c-8fba-7c170b9a69ab	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
55	2024-07-15 18:51:48.003822+00	\N	draft	\N	e732ba36-f521-41f0-8a80-890f58e2a094	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
56	2024-07-17 02:26:39.741157+00	\N	draft	\N	4c026648-2965-451a-8912-8b53289964a9	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
57	2024-07-17 19:03:26.684941+00	\N	draft	\N	13f35cc7-08b0-46ca-a393-ce90386537db	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
58	2024-07-18 14:21:52.512966+00	\N	draft	\N	1ec18eaf-3bff-4637-896e-02b13566046e	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
59	2024-07-19 05:16:07.400583+00	\N	draft	\N	2f0737cd-3713-4975-8b37-4fa7a498a4b4	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
60	2024-07-20 14:40:14.449524+00	\N	draft	\N	715d8641-cf50-4e0b-86ca-2978ee485846	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
61	2024-07-21 01:16:57.294994+00	\N	draft	\N	8c2e1d77-ac33-4694-93b9-a793594f2a89	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
62	2024-07-22 08:40:35.705477+00	\N	draft	\N	66b64bf1-3e6c-4c40-9011-3d9c0bcf684d	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
63	2024-07-23 08:57:26.09942+00	\N	draft	\N	632c7789-5018-4757-80c8-3ca00a114f19	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
64	2024-07-23 17:53:15.997747+00	\N	draft	\N	0d1a114f-92ea-4d60-aabc-14275131befb	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
65	2024-07-24 01:14:07.804388+00	\N	draft	\N	f5c37d47-a4d4-43ce-b6af-9178d81a1b55	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
66	2024-07-24 08:55:48.224966+00	\N	draft	\N	e4b47fe0-eef0-482d-9b38-757f180ca68e	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
67	2024-07-24 21:01:52.750787+00	\N	draft	\N	b9a11d0e-1949-4b7e-b7b0-1422fba8ee3d	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
68	2024-07-25 08:00:46.398955+00	\N	draft	\N	3c6dd7ee-4b76-409e-a08c-5f1d5591b764	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
69	2024-07-25 22:46:15.14624+00	\N	draft	\N	3cfc7f26-9597-4bdd-962c-73f6edb53b67	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
70	2024-07-26 22:34:12.736306+00	\N	draft	\N	072d3ff2-64df-468d-b30e-d9bacc629a16	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
71	2024-07-27 22:56:52.200157+00	\N	draft	\N	1eec58d8-0cc3-4b33-ae63-2115c5da3709	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
72	2024-07-28 12:00:44.417105+00	\N	draft	\N	e4c16af0-7853-4e84-a85b-93a71571682f	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
74	2024-07-28 22:27:20.244557+00	\N	draft	\N	5cc21b8f-d5b3-4afc-b6ad-fcd374e5d3a3	2024-07-29 11:53:41.95468+00	2024-07-29 11:53:41.975666+00
82	2024-08-04 09:35:51.822974+00	0.00	draft	\N	e09af17d-524f-4070-a23f-c045b748555e	2024-08-04 09:35:51.823031+00	2024-08-04 09:35:51.837491+00
38	2024-06-20 08:15:33.637817+00	9211.91	processing	1	8b26d5f9-f063-444c-bab0-a2aa58ff5919	2024-07-29 11:53:41.95468+00	2024-07-29 11:59:47.160434+00
77	2024-07-30 00:13:49.268225+00	0.00	draft	\N	dc60417b-45c2-4cc3-b7ae-af3a8a22ef32	2024-07-30 00:13:49.268283+00	2024-07-30 00:13:49.274677+00
78	2024-07-31 00:34:14.711642+00	0.00	draft	\N	9741fb20-e66c-44e7-a860-984a8a860073	2024-07-31 00:34:14.711692+00	2024-07-31 00:34:14.717028+00
83	2024-08-05 09:41:32.414468+00	0.00	draft	\N	94c0dbdc-fecb-4f36-be68-acbf067dd1cf	2024-08-05 09:41:32.414525+00	2024-08-05 09:41:32.42044+00
104	2024-08-16 18:49:06.13953+00	0.00	draft	\N	cd1f0f85-468c-4086-824f-7ff0784d9d1c	2024-08-16 18:49:06.139588+00	2024-08-16 18:49:06.145911+00
85	2024-08-05 10:33:59.066977+00	1139.85	processing	1	a9eeffec-216f-4497-a62e-7007f7f15ba8	2024-08-05 10:33:59.06702+00	2024-08-07 14:24:33.108722+00
89	2024-08-07 16:11:02.880156+00	0.00	draft	\N	4c8b7dbb-5f28-4791-90b2-1f35c523ef0f	2024-08-07 16:11:02.880232+00	2024-08-07 16:11:02.887305+00
76	2024-07-29 11:59:47.467425+00	5595.21	processing	1	2f7b6b56-22f3-4188-ae39-fbb19f11c024	2024-07-29 11:59:47.467477+00	2024-08-05 10:33:58.247871+00
90	2024-08-08 06:50:35.268705+00	0.00	draft	\N	74ded877-34ef-4f2b-9026-bae3c52a008c	2024-08-08 06:50:35.268767+00	2024-08-08 06:50:35.275402+00
94	2024-08-10 23:27:36.736965+00	0.00	draft	\N	c3ded97b-3cf0-4e5d-ae7a-578aaba0c1c7	2024-08-10 23:27:36.73704+00	2024-08-10 23:27:36.744348+00
95	2024-08-11 12:39:46.128243+00	0.00	draft	\N	20a3a65b-06ef-4c0c-ba22-89abf2281c75	2024-08-11 12:39:46.128301+00	2024-08-11 12:39:46.140357+00
91	2024-08-08 15:31:20.460238+00	0.00	draft	\N	ff30a23c-8eaa-4232-a75b-258cd27e2905	2024-08-08 15:31:20.4603+00	2024-08-08 15:31:20.468325+00
96	2024-08-12 08:50:01.015724+00	0.00	draft	\N	006a4984-b2c7-46fd-83ba-c4f8ddd65089	2024-08-12 08:50:01.015785+00	2024-08-12 08:50:01.022581+00
98	2024-08-13 08:51:18.691557+00	0.00	draft	\N	310e4dcc-70f4-4bc7-b6b3-a8610c9f3bb6	2024-08-13 08:51:18.6916+00	2024-08-13 08:51:18.696935+00
99	2024-08-13 11:23:09.525985+00	0.00	draft	\N	b156ec14-f827-4d3d-9ec4-2832bd1ab582	2024-08-13 11:23:09.526063+00	2024-08-13 11:23:09.533212+00
97	2024-08-12 18:31:42.324014+00	0.00	draft	1	04ec8753-c49f-48ec-b9d1-1fb2fc1d68c8	2024-08-12 18:31:42.324064+00	2024-08-14 15:45:13.793483+00
100	2024-08-13 11:37:50.725144+00	0.00	draft	\N	17d29bfa-c117-4f0b-8297-97be46f9af3e	2024-08-13 11:37:50.725227+00	2024-08-13 11:37:50.729996+00
101	2024-08-14 08:41:16.661522+00	0.00	draft	\N	e6696016-cee7-4a7d-9b33-c2bb5b2e12ec	2024-08-14 08:41:16.661577+00	2024-08-14 08:41:16.668022+00
105	2024-08-17 18:49:34.081493+00	0.00	draft	\N	539c2dbf-f8c8-4216-aab8-490ef652b641	2024-08-17 18:49:34.081538+00	2024-08-17 18:49:34.087589+00
102	2024-08-15 15:20:08.459012+00	0.00	draft	\N	b769d7b9-5ec6-441f-988e-d3f39f08bbfc	2024-08-15 15:20:08.459075+00	2024-08-15 15:20:08.466998+00
103	2024-08-16 09:21:35.952384+00	0.00	draft	\N	58c94f2f-576f-477f-8e5a-fc72ca730ac3	2024-08-16 09:21:35.952443+00	2024-08-16 09:21:35.959391+00
106	2024-08-18 18:45:42.521822+00	0.00	draft	\N	efe9000c-ca26-421a-a24d-e3d954ea4c5a	2024-08-18 18:45:42.521882+00	2024-08-18 18:45:42.528061+00
108	2024-08-20 19:17:52.700452+00	0.00	draft	\N	265d8629-ed39-454a-81ea-ae6e7bcf40d1	2024-08-20 19:17:52.700496+00	2024-08-20 19:17:52.705054+00
109	2024-08-21 09:10:23.85768+00	0.00	draft	\N	d184c6e9-ced4-4b9b-8b6c-5b85159ac69a	2024-08-21 09:10:23.857738+00	2024-08-21 09:10:23.866665+00
110	2024-08-22 09:14:03.050557+00	0.00	draft	\N	ccc44b52-2665-444d-adf7-60e7ca032d4f	2024-08-22 09:14:03.050616+00	2024-08-22 09:14:03.056723+00
111	2024-08-22 22:20:00.748313+00	0.00	draft	\N	31b303c1-2ff7-4752-9f2f-852638724394	2024-08-22 22:20:00.748359+00	2024-08-22 22:20:00.754134+00
112	2024-08-23 09:17:57.865284+00	0.00	draft	\N	9bad94a0-8fd8-41df-b695-a0a866dbfebb	2024-08-23 09:17:57.865354+00	2024-08-23 09:17:57.87541+00
113	2024-08-24 06:35:59.565442+00	0.00	draft	\N	5335ad29-433a-4503-a1b8-333c161c3907	2024-08-24 06:35:59.565495+00	2024-08-24 06:35:59.571343+00
114	2024-08-24 17:13:34.110551+00	0.00	draft	\N	20065fe7-f3d0-480b-a1dd-f77abe7aa01d	2024-08-24 17:13:34.110596+00	2024-08-24 17:13:34.115032+00
115	2024-08-25 02:55:40.527034+00	0.00	draft	\N	58be99a0-52e3-4171-ad5a-ec79807c0430	2024-08-25 02:55:40.527078+00	2024-08-25 02:55:40.532432+00
116	2024-08-25 17:05:30.570573+00	0.00	draft	\N	2418b3d8-7430-41cd-ae16-0a17f4037a0b	2024-08-25 17:05:30.57063+00	2024-08-25 17:05:30.578211+00
117	2024-08-26 17:13:41.397305+00	0.00	draft	\N	975539f2-55ef-4fa7-9144-38af8a6444b4	2024-08-26 17:13:41.397366+00	2024-08-26 17:13:41.402307+00
107	2024-08-20 06:40:56.822162+00	910.00	draft	\N	e0fb12fd-44b6-489e-aadd-4eb63a14392a	2024-08-20 06:40:56.822276+00	2024-08-26 22:48:39.173846+00
118	2024-08-28 17:22:29.387528+00	0.00	draft	\N	5e3b828e-552a-4a78-adb7-4232a39cb5a4	2024-08-28 17:22:29.387574+00	2024-08-28 17:22:29.39299+00
119	2024-08-29 02:38:11.356571+00	0.00	draft	\N	effd98e4-2d01-4a5e-8fdf-981daaf90f50	2024-08-29 02:38:11.35663+00	2024-08-29 02:38:11.361628+00
120	2024-08-29 14:58:03.035703+00	0.00	draft	\N	29a6dd46-6d23-4751-9dda-231704de3a6b	2024-08-29 14:58:03.035763+00	2024-08-29 14:58:03.042344+00
121	2024-08-31 05:33:54.728634+00	0.00	draft	\N	65aea2a1-54ce-4d0b-ad6a-e0039db8575b	2024-08-31 05:33:54.728678+00	2024-08-31 05:33:54.75053+00
122	2024-08-31 14:08:20.383917+00	0.00	draft	\N	353ec04c-9588-4852-a754-8c1f007746f7	2024-08-31 14:08:20.38396+00	2024-08-31 14:08:20.38865+00
123	2024-09-01 04:36:03.002288+00	0.00	draft	\N	05cffb0d-de76-4755-845e-45f7736b7686	2024-09-01 04:36:03.002361+00	2024-09-01 04:36:03.009656+00
124	2024-09-01 16:14:56.606008+00	0.00	draft	\N	c6209f3d-aa6a-4111-a2cd-fead333b4f43	2024-09-01 16:14:56.606054+00	2024-09-01 16:14:56.612093+00
125	2024-09-02 04:38:21.097848+00	0.00	draft	\N	3de657ec-00f1-4a6e-acb0-681ffe79c2b3	2024-09-02 04:38:21.097903+00	2024-09-02 04:38:21.205343+00
126	2024-09-02 14:56:16.290781+00	0.00	draft	\N	2daa339e-92d6-4519-8e30-22dade14d9b3	2024-09-02 14:56:16.290839+00	2024-09-02 14:56:16.297311+00
127	2024-09-03 08:10:43.529017+00	0.00	draft	\N	3106f864-0ba5-4bea-9b19-df5e583307eb	2024-09-03 08:10:43.529076+00	2024-09-03 08:10:43.535532+00
128	2024-09-03 11:05:42.417841+00	0.00	draft	\N	2707f487-c694-4431-ab86-79f90525a327	2024-09-03 11:05:42.417898+00	2024-09-03 11:05:42.424464+00
129	2024-09-03 18:25:07.157286+00	0.00	draft	\N	73b2943e-8e1d-47bc-b049-68b0d6019679	2024-09-03 18:25:07.157347+00	2024-09-03 18:25:07.163438+00
130	2024-09-04 08:11:55.360114+00	0.00	draft	\N	1b7d4577-43c9-42de-98c6-b5340717f710	2024-09-04 08:11:55.360172+00	2024-09-04 08:11:55.36579+00
131	2024-09-04 20:47:46.416542+00	0.00	draft	\N	9bca29ff-039c-4b3b-9ab9-d7fd78e8bf48	2024-09-04 20:47:46.416609+00	2024-09-04 20:47:46.423056+00
132	2024-09-05 08:05:34.82031+00	0.00	draft	\N	dec6a4a9-3f97-4e12-8bdf-968186c69c19	2024-09-05 08:05:34.820456+00	2024-09-05 08:05:34.830145+00
133	2024-09-05 21:23:16.407054+00	0.00	draft	\N	3ca24540-974c-4bc1-bf5f-1b37dc1cb6e0	2024-09-05 21:23:16.407113+00	2024-09-05 21:23:16.413749+00
134	2024-09-06 08:42:47.567439+00	0.00	draft	\N	1c1e88be-dfdf-4791-8d90-14bf0eb97a9f	2024-09-06 08:42:47.567506+00	2024-09-06 08:42:47.573603+00
135	2024-09-06 19:11:44.753051+00	0.00	draft	\N	8924ad38-87ca-4522-8af5-4704a1717415	2024-09-06 19:11:44.753096+00	2024-09-06 19:11:44.75809+00
136	2024-09-07 09:43:13.855226+00	0.00	draft	\N	05550ccf-cf33-472b-a084-e1cb7532b4bc	2024-09-07 09:43:13.855284+00	2024-09-07 09:43:13.860017+00
137	2024-09-07 21:25:48.633458+00	0.00	draft	\N	72ebc0a4-ad91-493e-a6c3-26956dd3dc7e	2024-09-07 21:25:48.633522+00	2024-09-07 21:25:48.641557+00
138	2024-09-08 11:34:26.121451+00	0.00	draft	\N	05f9a536-865e-475c-8984-caf3e77ec7a6	2024-09-08 11:34:26.121497+00	2024-09-08 11:34:26.127213+00
139	2024-09-09 05:02:53.813314+00	0.00	draft	\N	0c0de49d-281d-4054-bece-62c6ab135d63	2024-09-09 05:02:53.813374+00	2024-09-09 05:02:53.819143+00
140	2024-09-10 00:38:13.715664+00	0.00	draft	\N	717398f3-cc2f-4cfc-8c71-0a5db1781007	2024-09-10 00:38:13.715708+00	2024-09-10 00:38:13.721113+00
141	2024-09-10 12:05:49.239097+00	0.00	draft	\N	1a2187c2-4dae-4133-95cd-af1b630b2e1b	2024-09-10 12:05:49.239156+00	2024-09-10 12:05:49.245484+00
142	2024-09-11 03:55:28.017561+00	0.00	draft	\N	60d8ca0f-b764-4cce-96a7-172eff8e97dd	2024-09-11 03:55:28.017627+00	2024-09-11 03:55:28.023975+00
143	2024-09-11 16:27:18.514274+00	0.00	draft	\N	3fbf2aeb-33e6-4cb8-a494-7fae86a0dc03	2024-09-11 16:27:18.514333+00	2024-09-11 16:27:18.520537+00
144	2024-09-12 11:34:40.7324+00	0.00	draft	\N	a25c0adb-0704-44ba-a39a-b7b15b385893	2024-09-12 11:34:40.732459+00	2024-09-12 11:34:40.877347+00
145	2024-09-13 04:28:22.919736+00	0.00	draft	\N	1c08d490-56f5-4483-ba59-dad1a96c5859	2024-09-13 04:28:22.919783+00	2024-09-13 04:28:22.925699+00
146	2024-09-14 02:42:15.8267+00	0.00	draft	\N	083680a5-bb7e-476b-b28f-e366cf84301b	2024-09-14 02:42:15.826745+00	2024-09-14 02:42:15.831793+00
147	2024-09-14 14:59:07.503377+00	0.00	draft	\N	8d2d950b-7a31-46f5-91b7-41ee05fa68b4	2024-09-14 14:59:07.503433+00	2024-09-14 14:59:07.510798+00
148	2024-09-15 02:41:43.594239+00	0.00	draft	\N	2912dcba-15d1-4f48-9e03-2fb78fdb8d6d	2024-09-15 02:41:43.594301+00	2024-09-15 02:41:43.600359+00
149	2024-09-16 03:55:49.17994+00	0.00	draft	\N	9565c0af-59f6-4c70-827f-1663138df7a5	2024-09-16 03:55:49.179997+00	2024-09-16 03:55:49.186217+00
150	2024-09-16 18:56:25.963963+00	0.00	draft	\N	8f849e71-09a0-4374-a359-8703e9a51411	2024-09-16 18:56:25.964022+00	2024-09-16 18:56:25.972462+00
151	2024-09-17 15:54:05.581135+00	0.00	draft	\N	4b60661d-ef46-4e21-b6b4-fc5473c3fb26	2024-09-17 15:54:05.581177+00	2024-09-17 15:54:05.587035+00
152	2024-09-18 11:35:51.063409+00	0.00	draft	\N	2f13f6de-5c97-45ad-9f14-5e286ddc82f0	2024-09-18 11:35:51.06347+00	2024-09-18 11:35:51.069705+00
153	2024-09-19 08:14:09.224277+00	0.00	draft	\N	0884170a-7fe3-487e-9a1a-af02857eacba	2024-09-19 08:14:09.224339+00	2024-09-19 08:14:09.231231+00
154	2024-09-19 22:53:32.751391+00	0.00	draft	\N	51875580-8901-4ce6-86a7-ccaa5d048c4c	2024-09-19 22:53:32.751446+00	2024-09-19 22:53:32.757086+00
155	2024-09-20 10:45:53.033532+00	0.00	draft	\N	e5fd20da-4f76-4910-97e0-226a0e029d9e	2024-09-20 10:45:53.033579+00	2024-09-20 10:45:53.03867+00
156	2024-09-20 22:58:39.979976+00	0.00	draft	\N	3e3003bf-a58a-4eee-86d3-aed785679c8a	2024-09-20 22:58:39.980046+00	2024-09-20 22:58:39.986424+00
157	2024-09-23 05:35:40.805109+00	0.00	draft	\N	0c21e0e4-0a19-4f3d-ae57-b757aafd69bd	2024-09-23 05:35:40.805168+00	2024-09-23 05:35:40.810984+00
158	2024-09-24 01:04:22.933076+00	0.00	draft	\N	58b595d2-4bac-4599-a93a-808c8b9a79cd	2024-09-24 01:04:22.933144+00	2024-09-24 01:04:22.93987+00
159	2024-09-24 02:57:01.891122+00	0.00	draft	\N	ae682907-57f4-49fd-a411-ae4bff6af020	2024-09-24 02:57:01.891177+00	2024-09-24 02:57:01.898024+00
160	2024-09-24 03:47:32.893334+00	0.00	draft	\N	49b449ac-674c-418e-a720-9b149da9a10a	2024-09-24 03:47:32.893394+00	2024-09-24 03:47:32.899315+00
161	2024-09-25 01:53:16.166282+00	0.00	draft	\N	39d34f6c-0781-4f7e-abb7-f99da79b6ffe	2024-09-25 01:53:16.166327+00	2024-09-25 01:53:16.173389+00
162	2024-09-25 19:49:36.901958+00	0.00	draft	\N	69f81d25-03b3-45d7-a78a-2e57001d93cd	2024-09-25 19:49:36.902002+00	2024-09-25 19:49:36.907406+00
163	2024-09-27 13:06:00.584978+00	0.00	draft	\N	dc53096f-e471-43f5-9c46-4f17391bc46d	2024-09-27 13:06:00.58504+00	2024-09-27 13:06:00.611316+00
164	2024-09-28 03:13:57.44286+00	0.00	draft	\N	b07c1a6f-28c6-4f6e-b968-ca41548e89bf	2024-09-28 03:13:57.442907+00	2024-09-28 03:13:57.448064+00
165	2024-09-28 12:51:59.710063+00	0.00	draft	\N	97451fea-8dcd-4249-9272-88033f17d0b5	2024-09-28 12:51:59.710108+00	2024-09-28 12:51:59.715054+00
166	2024-09-29 03:11:07.315084+00	0.00	draft	\N	4b94b059-c2fd-4ce6-b9aa-c826a957acb8	2024-09-29 03:11:07.315145+00	2024-09-29 03:11:07.322126+00
167	2024-09-29 12:47:59.132465+00	0.00	draft	\N	1ab4c103-40e1-4a19-bd59-8e6242c5cd77	2024-09-29 12:47:59.132531+00	2024-09-29 12:47:59.138786+00
168	2024-09-30 02:50:51.326553+00	0.00	draft	\N	6668e4f4-7fd0-45b2-9fab-5bc4b75dac80	2024-09-30 02:50:51.326598+00	2024-09-30 02:50:51.332336+00
169	2024-09-30 12:44:42.457623+00	0.00	draft	\N	d02c98da-16f3-4388-afc6-28a966dd3268	2024-09-30 12:44:42.457686+00	2024-09-30 12:44:42.463482+00
170	2024-09-30 21:45:49.785669+00	0.00	draft	\N	10d9ac8e-7a00-4edb-9114-77f494c76a33	2024-09-30 21:45:49.78572+00	2024-09-30 21:45:49.795762+00
171	2024-10-01 12:48:51.46454+00	0.00	draft	\N	15820ef4-d444-4580-a3fb-f1af5c4910fa	2024-10-01 12:48:51.464599+00	2024-10-01 12:48:51.471243+00
172	2024-10-02 13:54:16.737048+00	0.00	draft	\N	e8c78cb4-f9e8-481a-a749-d743d3bea7e4	2024-10-02 13:54:16.737104+00	2024-10-02 13:54:16.744523+00
173	2024-10-03 13:54:44.10718+00	0.00	draft	\N	20c0d3d5-02e4-48e6-9c47-63b6bec1e07b	2024-10-03 13:54:44.107239+00	2024-10-03 13:54:44.114153+00
174	2024-10-04 13:32:43.149486+00	0.00	draft	\N	6f3b80a9-ceab-4204-b204-f0e54082085d	2024-10-04 13:32:43.149533+00	2024-10-04 13:32:43.155279+00
175	2024-10-05 16:40:11.122073+00	0.00	draft	\N	1d26a5d6-c60c-4e3e-aae1-5d7f859c8e4b	2024-10-05 16:40:11.122141+00	2024-10-05 16:40:11.13234+00
176	2024-10-06 15:50:58.648719+00	0.00	draft	\N	3f6e9c9c-8794-4f85-8c5e-266397a4bc14	2024-10-06 15:50:58.648776+00	2024-10-06 15:50:58.655866+00
177	2024-10-07 12:33:28.121234+00	0.00	draft	\N	9ef58427-5e0d-4c06-984d-d2165646d463	2024-10-07 12:33:28.121389+00	2024-10-07 12:33:28.128143+00
178	2024-10-12 14:47:04.98777+00	0.00	draft	\N	8a9764e8-78f4-4408-83de-6772bddf725a	2024-10-12 14:47:04.987815+00	2024-10-12 14:47:04.99449+00
179	2024-10-12 18:58:15.017634+00	0.00	draft	\N	0dbc8cef-d541-43ea-9db1-715e515c83fd	2024-10-12 18:58:15.017686+00	2024-10-12 18:58:15.0244+00
180	2024-10-13 04:28:07.563243+00	0.00	draft	\N	970db6ca-ff2e-413f-9dc0-3fe0f6d116fc	2024-10-13 04:28:07.563303+00	2024-10-13 04:28:07.569747+00
181	2024-10-14 10:22:21.931649+00	0.00	draft	\N	4a892674-047d-4c20-9ed8-b9de311579ca	2024-10-14 10:22:21.931707+00	2024-10-14 10:22:21.938956+00
182	2024-10-15 11:28:46.326586+00	0.00	draft	\N	19600cd4-9302-4c2c-8b55-ba19def3e742	2024-10-15 11:28:46.326647+00	2024-10-15 11:28:46.334793+00
183	2024-10-16 09:38:26.137417+00	0.00	draft	\N	b53ee6e0-3648-4f92-80a1-3555c6d14f8f	2024-10-16 09:38:26.137463+00	2024-10-16 09:38:26.143949+00
184	2024-10-17 09:26:45.93993+00	0.00	draft	\N	774e6d5f-7bd5-459a-9fed-a023c9fa2db8	2024-10-17 09:26:45.939988+00	2024-10-17 09:26:45.947176+00
185	2024-10-17 19:14:38.524606+00	0.00	draft	\N	936c345b-20a8-4427-823d-42611a836236	2024-10-17 19:14:38.524666+00	2024-10-17 19:14:38.534366+00
186	2024-10-18 08:16:11.355849+00	0.00	draft	\N	42b47855-d211-4b59-b559-6a470c6dddbd	2024-10-18 08:16:11.355906+00	2024-10-18 08:16:11.362268+00
187	2024-10-18 18:22:50.095888+00	0.00	draft	\N	ccf0d0ab-07d7-4550-9e8c-504c5f7c3121	2024-10-18 18:22:50.095947+00	2024-10-18 18:22:50.105718+00
188	2024-10-19 08:04:51.950023+00	0.00	draft	\N	d27ef605-ffe5-475a-94c9-ab0a9e18c93f	2024-10-19 08:04:51.950069+00	2024-10-19 08:04:51.956072+00
189	2024-10-20 08:21:41.694338+00	0.00	draft	\N	6598f31a-d498-4d32-9688-e6183299aed3	2024-10-20 08:21:41.694394+00	2024-10-20 08:21:41.700653+00
190	2024-10-20 20:03:08.169859+00	0.00	draft	\N	4dae6500-a526-4bdb-801c-c6304014bec5	2024-10-20 20:03:08.169914+00	2024-10-20 20:03:08.176198+00
191	2024-10-21 14:21:17.637178+00	0.00	draft	\N	a911f1b8-edc0-45ee-8ba4-90a8965825f2	2024-10-21 14:21:17.637237+00	2024-10-21 14:21:17.644839+00
192	2024-10-22 01:48:42.620407+00	0.00	draft	\N	e3c70b29-e3e0-46dd-92fd-e31e9ca0203b	2024-10-22 01:48:42.620502+00	2024-10-22 01:48:42.630124+00
193	2024-10-23 01:41:21.345582+00	0.00	draft	\N	644c597f-7ddb-4f68-9dbd-fe6bc90e0c17	2024-10-23 01:41:21.345641+00	2024-10-23 01:41:21.352331+00
194	2024-10-23 08:46:11.166847+00	0.00	draft	\N	f5ef540a-5e7b-47bc-9864-3b61466b1df8	2024-10-23 08:46:11.166908+00	2024-10-23 08:46:11.174221+00
195	2024-10-23 14:07:18.614133+00	0.00	draft	\N	ac275432-74a7-4ab1-afb3-5dc0b9a1a75a	2024-10-23 14:07:18.614238+00	2024-10-23 14:07:18.622601+00
196	2024-10-24 01:25:33.479353+00	0.00	draft	\N	b82b789e-c12c-4c9d-ba65-83d4cfc47c2d	2024-10-24 01:25:33.479414+00	2024-10-24 01:25:33.487031+00
197	2024-10-24 14:20:24.105305+00	0.00	draft	\N	bdd8d53f-6417-4bb2-8daa-0b6cf3700d32	2024-10-24 14:20:24.105367+00	2024-10-24 14:20:24.113187+00
198	2024-10-25 14:59:52.438414+00	0.00	draft	\N	d69a88b2-b41c-4ff0-b35a-4febb5766cae	2024-10-25 14:59:52.438457+00	2024-10-25 14:59:52.444566+00
199	2024-10-26 13:53:24.94433+00	0.00	draft	\N	9048f822-b432-47ca-aea9-d66b2683126a	2024-10-26 13:53:24.944409+00	2024-10-26 13:53:24.950333+00
200	2024-10-27 14:51:36.167261+00	0.00	draft	\N	b03a30fe-5900-47bb-b39f-f2c3eb176665	2024-10-27 14:51:36.167304+00	2024-10-27 14:51:36.173734+00
201	2024-10-29 14:25:45.916484+00	0.00	draft	\N	9bc1419e-98e8-40d8-a940-f246b0d3e3c1	2024-10-29 14:25:45.916553+00	2024-10-29 14:25:45.923718+00
202	2024-10-30 12:00:02.772756+00	0.00	draft	\N	a783f80e-5ca6-4692-9f85-eac2025b637e	2024-10-30 12:00:02.772818+00	2024-10-30 12:00:02.782632+00
203	2024-10-31 15:18:24.536692+00	0.00	draft	\N	3f82c60b-f33f-4f7e-97f5-58a10f6764e0	2024-10-31 15:18:24.536738+00	2024-10-31 15:18:24.541726+00
204	2024-11-01 14:41:54.383434+00	0.00	draft	\N	a4043850-991a-45f9-90df-aaa18c07c06f	2024-11-01 14:41:54.383479+00	2024-11-01 14:41:54.389737+00
206	2024-11-02 15:17:19.271173+00	0.00	draft	\N	3e2314ea-a015-4f28-91f0-81fdbc4fabf0	2024-11-02 15:17:19.271229+00	2024-11-02 15:17:19.277584+00
207	2024-11-03 16:10:53.928513+00	0.00	draft	\N	c6d89145-456c-4663-96b3-eb104f0f3129	2024-11-03 16:10:53.928559+00	2024-11-03 16:10:53.934743+00
208	2024-11-03 16:11:04.923757+00	0.00	draft	\N	3fa6af75-da27-4e96-b67f-c4416fd10b6d	2024-11-03 16:11:04.923818+00	2024-11-03 16:11:04.929699+00
205	2024-11-02 10:51:29.57725+00	0.00	draft	\N	58a375b8-9118-4b74-bae2-63ed507caa80	2024-11-02 10:51:29.577321+00	2024-11-03 21:55:28.460154+00
209	2024-11-06 15:48:43.265585+00	0.00	draft	\N	a861b03c-4261-41a9-9836-6d59ccece804	2024-11-06 15:48:43.265645+00	2024-11-06 15:48:43.272898+00
210	2024-11-07 17:13:25.703504+00	0.00	draft	\N	a26e8aee-dbd8-4f8b-bdeb-a1f469b454ad	2024-11-07 17:13:25.703562+00	2024-11-07 17:13:25.710158+00
\.


--
-- Data for Name: products_orderaddress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_orderaddress (id, street, city, zip_code, country, phone, order_id) FROM stdin;
1	123 Main Street	Spin	12345	United States	+1 (555) 123-4567	1
3	MR MUSTAPHA ALLANI RUE OM MAKTOUM SAHBI 1 N32	KAIROUAN	3140	Tunisia	+21629667239	40
2	123 Main Street	Springfield	62701	United States	+1 217-555-1234	36
4	MR MUSTAPHA ALLANI RUE OM MAKTOUM SAHBI 1 N32	KAIROUAN	3140	Tunisia	+21629667239	43
5	MR MUSTAPHA ALLANI RUE OM MAKTOUM SAHBI 1 N32	KAIROUAN	3140	Tunisia	+21629667239	38
6	MR MUSTAPHA ALLANI RUE OM MAKTOUM SAHBI 1 N32	KAIROUAN	3140	Tunisia	+21629667239	76
7	MR MUSTAPHA ALLANI RUE OM MAKTOUM SAHBI 1 N32	KAIROUAN	3140	Tunisia	+21629667239	85
8	MR MUSTAPHA ALLANI RUE OM MAKTOUM SAHBI 1 N32	KAIROUAN	3140	Tunisia	+21629667239	88
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
7	1	\N	10	6
39	2	1820.00	76	9
43	1	229.85	76	13
40	2	2111.81	76	12
41	3	1433.55	76	10
10	1	189.99	1	7
9	2	459.70	1	13
12	1	689.00	1	8
13	2	2062.16	1	19
14	1	43.05	1	36
8	3	2730.00	1	9
44	1	910.00	85	9
19	1	689.00	40	8
45	1	229.85	85	13
15	1	910.00	36	9
16	1	1055.90	36	12
17	2	955.70	36	10
31	1	446.21	38	14
23	1	477.85	38	10
20	1	34.76	43	27
21	2	76.54	43	33
33	3	2730.00	38	9
29	3	2067.00	38	8
38	1	968.99	38	18
37	2	459.70	38	13
27	1	\N	48	8
28	1	\N	52	8
26	2	2062.16	38	19
46	1	910.00	88	9
47	1	229.85	88	13
48	1	910.00	107	9
\.


--
-- Data for Name: products_payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_payment (id, payment_method, status, external_id, created_at, updated_at, order_id) FROM stdin;
1	stripe	succeeded	pi_3PhsEwJGJbW9PNmv0bKYr77M	2024-07-29 11:59:47.154086+00	2024-07-29 11:59:47.154118+00	38
2	stripe	succeeded	pi_3PkOEjJGJbW9PNmv16u7OnSy	2024-08-05 10:33:58.222388+00	2024-08-05 10:33:58.222408+00	76
3	cash_on_delivery	pending	\N	2024-08-07 14:24:33.10299+00	2024-08-07 14:24:33.103022+00	85
4	stripe	succeeded	pi_3Pn31sJGJbW9PNmv07WN6eiR	2024-08-12 18:31:41.47585+00	2024-08-12 18:31:41.475888+00	88
\.


--
-- Data for Name: products_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_product (id, name, price_currency, price, category_id, discount_id, slug, description, created_at, updated_at) FROM stdin;
1	ONEPLUS 10T | Moonstone Black | 5G	USD	549.9900	1	\N	oneplus-10t-moonstone-black-5g	{"delta": "", "html": ""}	2024-04-07 18:25:59.820668+00	2024-04-07 18:25:59.820687+00
4	iPhone 13 Pro Max	USD	1101.0000	1	\N	iphone-13-pro-max	{"delta": "", "html": ""}	2024-04-07 18:26:02.757888+00	2024-04-07 18:26:02.757913+00
8	Apple iPhone 11 Pro Max	USD	689.0000	1	\N	apple-iphone-11-pro-max	{"delta": "", "html": ""}	2024-04-07 18:26:05.469465+00	2024-04-07 18:26:05.469485+00
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
6	SAMSUNG Galaxy Z Fold 3 5G Cell Phone	USD	1144.0000	1	32	samsung-galaxy-z-fold-3-5g-cell-phone	{"delta":"","html":""}	2024-04-07 18:26:04.080349+00	2024-11-03 22:05:55.471303+00
5	Samsung Galaxy S20 FE 5G	USD	550.0000	1	33	samsung-galaxy-s20-fe-5g	{"delta":"","html":""}	2024-04-07 18:26:03.241393+00	2024-11-03 22:06:41.676135+00
3	OnePlus 10 Pro | 5G Android Smartphone	USD	697.1700	1	34	oneplus-10-pro-5g-android-smartphone	{"delta":"","html":""}	2024-04-07 18:26:01.72234+00	2024-11-03 22:07:01.620496+00
2	Apple iPhone 12	USD	504.0000	1	35	apple-iphone-12	{"delta":"","html":""}	2024-04-07 18:26:01.177052+00	2024-11-03 22:07:58.040315+00
34	Gulab Powder 50 Gram	USD	70.0000	6	25	gulab-powder-50-gram	{"delta": "", "html": "Dry Rose Flower Powder Gulab Powder 50 Gram \\u2022 Treats Wounds"}	2024-04-07 19:26:20.89818+00	2024-04-07 19:26:20.898201+00
35	Plant Hanger For Home	USD	41.0000	7	26	plant-hanger-for-home	{"delta": "", "html": "Boho Decor Plant Hanger For Home Wall Decoration Macrame Wall Hanging Shelf"}	2024-04-07 19:26:23.456995+00	2024-04-07 19:26:23.457019+00
36	Flying Wooden Bird	USD	51.0000	7	22	flying-wooden-bird	{"delta": "", "html": "Package Include 6 Birds with Adhesive Tape Shape: 3D Shaped Wooden Birds Material: Wooden MDF, Laminated 3.5mm"}	2024-04-07 19:26:27.135262+00	2024-04-07 19:26:27.135285+00
37	3D Embellishment Art Lamp	USD	20.0000	7	27	3d-embellishment-art-lamp	{"delta": "", "html": "3D led lamp sticker Wall sticker 3d wall art light on/off button  cell operated (included)"}	2024-04-07 19:26:29.781656+00	2024-04-07 19:26:29.781683+00
38	Handcraft Chinese style	USD	60.0000	7	28	handcraft-chinese-style	{"delta": "", "html": "Handcraft Chinese style art luxury palace hotel villa mansion home decor ceramic vase with brass fruit plate"}	2024-04-07 19:26:32.866574+00	2024-04-07 19:26:32.866592+00
39	Key Holder	USD	30.0000	7	29	key-holder	{"delta":"{\\"ops\\":[{\\"insert\\":\\"Attractive DesignMetallic materialFour key hooksReliable & DurablePremium Quality\\\\n\\"}]}","html":"<p>Attractive DesignMetallic materialFour key hooksReliable &amp; DurablePremium Quality</p>"}	2024-04-07 19:26:35.631575+00	2024-04-09 02:28:45.130885+00
7	OnePlus Nord N200 | 5G	USD	189.9900	1	31	oneplus-nord-n200-5g	{"delta":"","html":""}	2024-04-07 18:26:04.953279+00	2024-11-03 22:05:33.549325+00
9	SAMSUNG Galaxy S22+ Cell Phone	USD	910.0000	1	30	samsung-galaxy-s22-cell-phone	{"delta":"{\\"ops\\":[{\\"insert\\":\\"6.6\\\\\\", 1080 x 2340pixels, Infinity-O FHD+ Dynamic AMOLED 2X Display, 4500mAh Battery, Wireless Powershare\\"},{\\"attributes\\":{\\"list\\":\\"bullet\\"},\\"insert\\":\\"\\\\n\\"},{\\"insert\\":\\"128GB ROM, 8GB RAM, No SD Card Slot, Qualcomm SM8450 Snapdragon 8 Gen 1 (4 nm), Octa-Core, Adreno 730\\"},{\\"attributes\\":{\\"list\\":\\"bullet\\"},\\"insert\\":\\"\\\\n\\"},{\\"insert\\":\\"Rear Camera: 50MP, f/1.8 + 10MP, f/2.4 + 12MP, f/2.2, Front Camera: 10 MP, f/2.2, Android 12, One UI 4.1\\"},{\\"attributes\\":{\\"list\\":\\"bullet\\"},\\"insert\\":\\"\\\\n\\"},{\\"insert\\":\\"2G: GSM 850/900/1800/1900, CDMA 800/1900, 3G: HSDPA 850/900/1700(AWS)/1900/2100, CDMA2000 1xEV-DO, 4G LTE: 1/2/3/4/5/7/8/12/13/14/18/19/20/25/26/28/29/30/38/39/40/41/46/48/66/71, 5G: 1/3/5/7/8/20/28/38/41/66/71/260/261SA/NSA/Sub6/mmWave - Single SIM\\"},{\\"attributes\\":{\\"list\\":\\"bullet\\"},\\"insert\\":\\"\\\\n\\"},{\\"insert\\":\\"No Warranty. Compatible with Most GSM and CDMA Carriers like T-Mobile, AT&T, MetroPCS, etc. Will Also work with CDMA Carriers Such as Verizon, Sprint.\\"},{\\"attributes\\":{\\"list\\":\\"bullet\\"},\\"insert\\":\\"\\\\n\\"},{\\"insert\\":\\"\\\\n\\"}]}","html":"<ul><li>6.6\\", 1080 x 2340pixels, Infinity-O FHD+ Dynamic AMOLED 2X Display, 4500mAh Battery, Wireless Powershare</li><li>128GB ROM, 8GB RAM, No SD Card Slot, Qualcomm SM8450 Snapdragon 8 Gen 1 (4 nm), Octa-Core, Adreno 730</li><li>Rear Camera: 50MP, f/1.8 + 10MP, f/2.4 + 12MP, f/2.2, Front Camera: 10 MP, f/2.2, Android 12, One UI 4.1</li><li>2G: GSM 850/900/1800/1900, CDMA 800/1900, 3G: HSDPA 850/900/1700(AWS)/1900/2100, CDMA2000 1xEV-DO, 4G LTE: 1/2/3/4/5/7/8/12/13/14/18/19/20/25/26/28/29/30/38/39/40/41/46/48/66/71, 5G: 1/3/5/7/8/20/28/38/41/66/71/260/261SA/NSA/Sub6/mmWave - Single SIM</li><li>No Warranty. Compatible with Most GSM and CDMA Carriers like T-Mobile, AT&amp;T, MetroPCS, etc. Will Also work with CDMA Carriers Such as Verizon, Sprint.</li></ul><p><br></p>"}	2024-04-07 18:26:05.998907+00	2024-11-03 22:07:31.371934+00
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

SELECT pg_catalog.setval('public.auth_permission_id_seq', 92, true);


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

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 24, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 23, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 60, true);


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

SELECT pg_catalog.setval('public.products_discount_id_seq', 35, true);


--
-- Name: products_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_file_id_seq', 145, true);


--
-- Name: products_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_order_id_seq', 210, true);


--
-- Name: products_orderaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_orderaddress_id_seq', 8, true);


--
-- Name: products_orderitems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_orderitems_id_seq', 48, true);


--
-- Name: products_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_payment_id_seq', 4, true);


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
-- Name: products_payment products_payment_order_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_payment
    ADD CONSTRAINT products_payment_order_id_key UNIQUE (order_id);


--
-- Name: products_payment products_payment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_payment
    ADD CONSTRAINT products_payment_pkey PRIMARY KEY (id);


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
-- Name: products_payment products_payment_order_id_13c5552c_fk_products_order_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_payment
    ADD CONSTRAINT products_payment_order_id_13c5552c_fk_products_order_id FOREIGN KEY (order_id) REFERENCES public.products_order(id) DEFERRABLE INITIALLY DEFERRED;


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

