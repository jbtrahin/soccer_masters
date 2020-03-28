-- Table: public."FWD_Avg"

-- DROP TABLE public."FWD_Avg";

CREATE TABLE public."FWD_Avg"
(
    index bigint,
    "Player" text COLLATE pg_catalog."default",
    "MP" double precision,
    "Starts" double precision,
    "Min" double precision,
    "Gls" double precision,
    "Ast" double precision,
    "PK" double precision,
    "PKatt" double precision,
    "CrdY" double precision,
    "CrdR" double precision,
    "xG" double precision,
    "npxG" double precision,
    "xA" double precision
)

TABLESPACE pg_default;

ALTER TABLE public."FWD_Avg"
    OWNER to tklyplugonrpes;
-- Index: ix_FWD_Avg_index

-- DROP INDEX public."ix_FWD_Avg_index";

CREATE INDEX "ix_FWD_Avg_index"
    ON public."FWD_Avg" USING btree
    (index ASC NULLS LAST)
    TABLESPACE pg_default;