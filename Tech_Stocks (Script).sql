-- This script was generated by a beta version of the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public."Tech_Stocks"
(
    "Datetime" date,
    "Open" numeric,
    "Close" numeric,
    "High" numeric,
    "Low" numeric,
    "Volume" numeric,
    "Gain%" numeric,
    "Ticker" character varying COLLATE pg_catalog."default",
    future numeric,
    "Mov_Ticker" character varying COLLATE pg_catalog."default",
    "Current_R/G" integer,
    "Inflation" numeric,
    "Unemployment" numeric,
    "Industrial" numeric,
    "Interest" numeric,
    "Retail_Sales" integer,
    "Interest_pct" numeric,
    "Inflation_pct" numeric,
    "Unemployment_pct" numeric,
    "Industrial_pct" numeric,
    "Volume_pct" numeric,
    "Retail_Sales_pct" numeric,
    "R/G" integer
)
WITH (
    OIDS = FALSE
);

CREATE TABLE IF NOT EXISTS public."Fed_Funds"
(
    "Year" integer,
    "Month" integer,
    "FEDFUNDS" numeric
)
WITH (
    OIDS = FALSE
);
END;