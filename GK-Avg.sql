-- Table: public."GK-Avg"

-- DROP TABLE public."GK-Avg";

CREATE TABLE public."GK-Avg"
(
    "Player" character(1) COLLATE pg_catalog."default" NOT NULL,
    "Assist" integer NOT NULL,
    "Card-Red" integer NOT NULL,
    "Card-Yellow" integer NOT NULL,
    "Goals" integer NOT NULL,
    "Matches Played" integer NOT NULL,
    "Minutes" integer NOT NULL,
    "Penalty Kicks" integer NOT NULL,
    "Penalty Attempts" integer NOT NULL,
    "Starts" integer NOT NULL,
    "Non-Penalty Expected Goals" integer NOT NULL,
    "Expected Attempts" integer NOT NULL,
    "Expected Goals" integer NOT NULL,
    CONSTRAINT "GK-Avg_pkey" PRIMARY KEY ("Player")
)

TABLESPACE pg_default;

ALTER TABLE public."GK-Avg"
    OWNER to tklyplugonrpes;