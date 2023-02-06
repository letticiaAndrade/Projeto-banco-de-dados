-- Table: Academia.academias

-- DROP TABLE IF EXISTS "Academia".academias;

CREATE TABLE IF NOT EXISTS "Academia".academias
(
    endereco_academia character varying(30) COLLATE pg_catalog."default" NOT NULL,
    cnpj integer NOT NULL,
    qtd_maquinas integer,
    lucro_mensal integer,
    lucro_anual integer,
    situacao "char",
    CONSTRAINT academias_pkey PRIMARY KEY (endereco_academia, cnpj)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Academia".academias
    OWNER to postgres;