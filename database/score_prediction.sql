-- Table: public."Score_Prediction"

-- DROP TABLE public."Score_Prediction";

CREATE TABLE public."Score_Prediction"
(
    index bigint,
    "Unnamed: 0" bigint,
    "Player" text COLLATE pg_catalog."default",
    "Pred_Gls" double precision,
    "Pred_Ast" double precision,
    "Pred_SoT" double precision,
    "Pred_SoffT" double precision,
    "Pred_Int" double precision,
    "Pred_TlkW" double precision,
    "Pred_Fls" double precision,
    "Pred_yellow" double precision,
    "Pred_red" double precision,
    "Pred_FP" double precision
)

TABLESPACE pg_default;

ALTER TABLE public."Score_Prediction"
    OWNER to tklyplugonrpes;
-- Index: ix_Score_Prediction_index

-- DROP INDEX public."ix_Score_Prediction_index";

CREATE INDEX "ix_Score_Prediction_index"
    ON public."Score_Prediction" USING btree
    (index ASC NULLS LAST)
    TABLESPACE pg_default;