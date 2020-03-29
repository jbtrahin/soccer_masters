-- Table: public."Player_List"

-- DROP TABLE public."Player_List";

CREATE TABLE public."Player_List"
(
    index bigint,
    player_id bigint,
    last_name text COLLATE pg_catalog."default",
    first_name text COLLATE pg_catalog."default",
    "position" bigint,
    club text COLLATE pg_catalog."default",
    team_id bigint
)

TABLESPACE pg_default;

ALTER TABLE public."Player_List"
    OWNER to tklyplugonrpes;
-- Index: ix_Player_List_index

-- DROP INDEX public."ix_Player_List_index";

CREATE INDEX "ix_Player_List_index"
    ON public."Player_List" USING btree
    (index ASC NULLS LAST)
    TABLESPACE pg_default;