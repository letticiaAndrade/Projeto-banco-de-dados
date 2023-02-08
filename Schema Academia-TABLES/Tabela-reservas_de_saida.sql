-- Table: Academia.reservas_de_saida

-- DROP TABLE IF EXISTS "Academia".reservas_de_saida;

CREATE TABLE IF NOT EXISTS "Academia".reservas_de_saida
(
    turno character varying(30) COLLATE pg_catalog."default",
    cpf integer NOT NULL,
    horario_fim date,
    numero_maquina integer,
    CONSTRAINT reservas_de_saida_pkey PRIMARY KEY (cpf),
    CONSTRAINT foreignkey_cpf FOREIGN KEY (cpf)
        REFERENCES "Academia".clientes (cpf) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Academia".reservas_de_saida
    OWNER to postgres;