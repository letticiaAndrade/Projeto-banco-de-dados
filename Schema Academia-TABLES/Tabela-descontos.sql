-- Table: Academia.descontos

-- DROP TABLE IF EXISTS "Academia".descontos;

CREATE TABLE IF NOT EXISTS "Academia".descontos
(
    numero_convites integer,
    total_desconto integer,
    qtd_desconto integer,
    brindes character varying(30) COLLATE pg_catalog."default",
    id_numero integer,
    CONSTRAINT foreignkey_idnumero FOREIGN KEY (id_numero)
        REFERENCES "Academia".clientes (cpf) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Academia".descontos
    OWNER to postgres;