CREATE TABLE public.typkonzolu
(
    "ID" integer NOT NULL,
    "Hra_ID" integer,
    "Konzol_ID" integer,
    CONSTRAINT "HK_ID" PRIMARY KEY ("ID"),
    CONSTRAINT "Hra_ID" FOREIGN KEY ("Hra_ID")
        REFERENCES public.hra (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.typkonzolu
    OWNER to postgres;

CREATE INDEX "fki_Konzol_ID"
    ON public.typkonzolu USING btree
    (Konzol_ID)
    TABLESPACE pg_default;
CREATE INDEX "fki_Region_ID"
    ON public.shop USING btree
    (Region_ID)
    TABLESPACE pg_default;