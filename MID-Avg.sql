-- Table: public."MID-Avg"

-- DROP TABLE public."MID-Avg";

CREATE TABLE public."MID-Avg"
(
    "Player" character(1) COLLATE pg_catalog."default" NOT NULL,
    "Assist" integer NOT NULL,
    "Card - Yellow" integer NOT NULL,
    "Card - Red" integer NOT NULL,
    "Goals" integer NOT NULL,
    "Matches Played" integer NOT NULL,
    "Minutes" integer NOT NULL,
    "Penalty Kicks" integer NOT NULL,
    "Penalty Kick Attempts" integer NOT NULL,
    "Starts" integer NOT NULL,
    "Non-Penalty Expected Goals" integer NOT NULL,
    "Expected Assist" integer NOT NULL,
    "Expected Goal" integer NOT NULL,
    CONSTRAINT "MID-Avg_pkey" PRIMARY KEY ("Player")
)

TABLESPACE pg_default;

ALTER TABLE public."MID-Avg"
    OWNER to tklyplugonrpes;