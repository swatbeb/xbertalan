
CREATE TABLE public.hve
(
    "ID" integer NOT NULL,
    "Shop_ID" integer,
    "Hra_ID" integer,
    CONSTRAINT "HS_ID" PRIMARY KEY ("ID"),
    CONSTRAINT "Hra_ID" FOREIGN KEY ("Hra_ID")
        REFERENCES public.hra (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "Shop_ID" FOREIGN KEY ("Shop_ID")
        REFERENCES public.shop ("ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.hve
    OWNER to postgres;

CREATE INDEX "fki_Hra_ID"
    ON public.hve USING btree
    (Hra_ID)
    TABLESPACE pg_default;

CREATE INDEX "fki_Shop_ID"
    ON public.hve USING btree
    (Shop_ID)
    TABLESPACE pg_default;