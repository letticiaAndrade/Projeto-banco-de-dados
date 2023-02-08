-- Table: Academia.clientes

-- DROP TABLE IF EXISTS "Academia".clientes;

CREATE TABLE IF NOT EXISTS "Academia".clientes
(
    cpf integer NOT NULL,
    nome character varying(30) COLLATE pg_catalog."default",
    total_desconto integer,
    idade integer,
    instrutor character varying(30) COLLATE pg_catalog."default",
    CONSTRAINT clientes_pkey PRIMARY KEY (cpf)
   -- CONSTRAINT clientes_cpf_fkey FOREIGN KEY (cpf)
        --REFERENCES "Academia".reservas_de_entrada (cpf) MATCH SIMPLE
        --ON UPDATE NO ACTION
       -- ON DELETE NO ACTION
      --  NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Academia".clientes
    OWNER to postgres;