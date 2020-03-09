-- Table: public."Player_Data"

-- DROP TABLE public."Player_Data";

CREATE TABLE public."Player_Data"
(
    "Player Data" "char" NOT NULL,
    "Club" "char",
    CONSTRAINT "Player_Data_pkey" PRIMARY KEY ("Player Data")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Player_Data"
    OWNER to postgres;