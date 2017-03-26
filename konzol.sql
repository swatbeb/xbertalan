CREATE TABLE public.konzol
(
    "ID" integer NOT NULL,
    "Typ" integer,
    CONSTRAINT konzol_pkey PRIMARY KEY ("ID")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.konzol
    OWNER to postgres;