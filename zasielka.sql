
CREATE TABLE public."zásielka"
(
    "ID" integer NOT NULL,
    "Obj_ID" integer,
    "Typ" integer,
    "Trvanie zásielky (dni)" integer,
    CONSTRAINT "Zás_ID" PRIMARY KEY ("ID"),
    CONSTRAINT "Obj_ID" FOREIGN KEY ("Obj_ID")
        REFERENCES public."objednávka" ("ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."zásielka"
    OWNER to postgres;

-- Index: fki_Obj_ID

-- DROP INDEX public."fki_Obj_ID";

CREATE INDEX "fki_Obj_ID"
    ON public."zásielka" USING btree
    (Obj_ID)
    TABLESPACE pg_default;