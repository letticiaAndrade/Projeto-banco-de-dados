-- Table: Academia.profissionais

-- DROP TABLE IF EXISTS "Academia".profissionais;

CREATE TABLE IF NOT EXISTS "Academia".profissionais
(
    nome character varying(30) COLLATE pg_catalog."default" NOT NULL,
    profissao character varying(30) COLLATE pg_catalog."default" NOT NULL,
    salario integer,
    categoria character varying(30) COLLATE pg_catalog."default" NOT NULL,
    endereco character varying(30) COLLATE pg_catalog."default",
    idade integer,
    CONSTRAINT profissionais_pkey PRIMARY KEY (nome)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Academia".profissionais
    OWNER to postgres;