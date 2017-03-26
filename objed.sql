CREATE TABLE public."objednávka"
(
    "ID" integer NOT NULL,
    "Shop_ID" integer,
    "Meno" character varying(20) COLLATE pg_catalog."default",
    "Priezvisko" character varying(20) COLLATE pg_catalog."default",
    "E-Mail" character varying(40) COLLATE pg_catalog."default",
    "Telefónne číslo" character varying(15) COLLATE pg_catalog."default",
    CONSTRAINT "Obj_ID" PRIMARY KEY ("ID"),
    CONSTRAINT "Shop_ID" FOREIGN KEY ("Shop_ID")
        REFERENCES public.shop ("ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."objednávka"
    OWNER to postgres;

CREATE INDEX "fko_Shop_ID"
    ON public."objednávka" USING btree
    (Shop_ID)
    TABLESPACE pg_default;