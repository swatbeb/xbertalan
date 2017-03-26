CREATE TABLE public.hra
(
    id integer NOT NULL,
    "Meno" character varying(80) COLLATE pg_catalog."default",
    "Na sklade" integer,
    "Typ" integer,
    CONSTRAINT "Hra_ID" PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.hra
    OWNER to postgres;