CREATE TABLE public.shop
(
    "ID" integer NOT NULL,
    "E-Mail" character varying(40) COLLATE pg_catalog."default" NOT NULL,
    "Region_ID" integer,
    CONSTRAINT "Shop_ID" PRIMARY KEY ("ID"),
    CONSTRAINT "Region_ID" FOREIGN KEY ("Region_ID")
        REFERENCES public."región" ("ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.shop
    OWNER to postgres;

CREATE INDEX "fki_Region_ID"
    ON public.shop USING btree
    (Region_ID)
    TABLESPACE pg_default;