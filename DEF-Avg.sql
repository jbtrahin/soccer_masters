-- Table: public."DEF - Avg"

-- DROP TABLE public."DEF - Avg";

CREATE TABLE public."DEF - Avg"
(
    "Player" character(1) COLLATE pg_catalog."default" NOT NULL,
    "Matches Played" integer NOT NULL,
    "Minutes" integer NOT NULL,
    "Goals" integer NOT NULL,
    "Assists" integer NOT NULL,
    "Penalty Kicks" integer NOT NULL,
    "Penalty Kick Attempts" integer NOT NULL,
    "Card - Yellow" integer NOT NULL,
    "Card - Red" integer NOT NULL,
    "Expected Goals" integer NOT NULL,
    "Non-Penalty Goals" integer NOT NULL,
    "Expected Assists" integer NOT NULL,
    CONSTRAINT "DEF - Avg_pkey" PRIMARY KEY ("Player")
)

TABLESPACE pg_default;

ALTER TABLE public."DEF - Avg"
    OWNER to tklyplugonrpes;