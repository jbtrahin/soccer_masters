-- Table: public."Scoring"

-- DROP TABLE public."Scoring";

CREATE TABLE public."Scoring"
(
    "Goal" integer,
    "Assist" integer
)

TABLESPACE pg_default;

ALTER TABLE public."Scoring"
    OWNER to tklyplugonrpes;