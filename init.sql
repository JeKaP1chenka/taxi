CREATE DATABASE taxi
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LOCALE_PROVIDER = 'libc'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

-- Table: public.Users

-- DROP TABLE IF EXISTS public."Users";

CREATE TABLE IF NOT EXISTS public."Users"
(
    "UserID" bigint NOT NULL,
    "UserName" text NOT NULL,
    "Email" text NOT NULL,
    "Password" text NOT NULL,
    "Login" boolean NOT NULL,
    "Token" text NOT NULL,
    PRIMARY KEY ("UserID")
);

ALTER TABLE IF EXISTS public."Users"
    OWNER to postgres;
	
	

CREATE TABLE IF NOT EXISTS public."Cars"
(
    "CarID" bigint NOT NULL,
    "Model" text NOT NULL,
    "Color" text NOT NULL,
    "Number" text NOT NULL,
	"IsFree" boolean NOT NULL,
    "LocationX" double precision NOT NULL,
    "LocationY" double precision NOT NULL,
    PRIMARY KEY ("CarID")
);

ALTER TABLE IF EXISTS public."Cars"
    OWNER to postgres;

CREATE TABLE IF NOT EXISTS public."History"
(
    "HistoryID" bigint NOT NULL,
    "UserID" bigint NOT NULL,
    "CarID" bigint NOT NULL,
    "TravelTime" time(6) without time zone NOT NULL,
    PRIMARY KEY ("HistoryID")
);

ALTER TABLE IF EXISTS public."History"
    OWNER to postgres;