-- Table: public."FWD-Avg"

-- DROP TABLE public."FWD-Avg";

CREATE TABLE public."FWD-Avg"
(
    "Player" character(1) COLLATE pg_catalog."default" NOT NULL,
    "Matches Played" integer NOT NULL,
    "Starts" integer NOT NULL,
    "Minutes" integer NOT NULL,
    "Goals" integer NOT NULL,
    "Assists" integer NOT NULL,
    "Penalty Kick" integer NOT NULL,
    "Penalty Kick Attempt" integer NOT NULL,
    "Card - Yellow" integer NOT NULL,
    "Card - Red" integer NOT NULL,
    "Expected Goals" integer NOT NULL,
    "Non-Penalty Expected Goals" integer NOT NULL,
    "Expected Assists" integer NOT NULL,
    CONSTRAINT "FWD-Avg_pkey" PRIMARY KEY ("Player")
)

TABLESPACE pg_default;

ALTER TABLE public."FWD-Avg"
    OWNER to tklyplugonrpes;