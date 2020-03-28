-- Table: public."FWD_Data"

-- DROP TABLE public."FWD_Data";

CREATE TABLE public."FWD_Data"
(
    index bigint,
    "Player" text COLLATE pg_catalog."default",
    "Pos" text COLLATE pg_catalog."default",
    "Min" double precision,
    "Gls" bigint,
    "Ast" bigint,
    "xG" double precision,
    "npxG" double precision,
    "xA" double precision,
    "Sh" bigint,
    "SoT" bigint,
    "Fls" bigint,
    "Fld" bigint,
    "Crs" bigint,
    "TklW" bigint,
    "Int" bigint,
    "CrdY" bigint,
    "CrdR" bigint,
    year bigint,
    fantasy_points double precision,
    "Position Group" text COLLATE pg_catalog."default",
    "League" text COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public."FWD_Data"
    OWNER to tklyplugonrpes;
-- Index: ix_FWD_Data_index

-- DROP INDEX public."ix_FWD_Data_index";

CREATE INDEX "ix_FWD_Data_index"
    ON public."FWD_Data" USING btree
    (index ASC NULLS LAST)
    TABLESPACE pg_default;