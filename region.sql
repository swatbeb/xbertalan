CREATE TABLE public."región"
(
    "ID" integer NOT NULL,
    "Mesto" character varying(30) COLLATE pg_catalog."default",
    "Krajina" character varying(30) COLLATE pg_catalog."default",
    CONSTRAINT "Region_ID" PRIMARY KEY ("ID")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."región"
    OWNER to postgres;