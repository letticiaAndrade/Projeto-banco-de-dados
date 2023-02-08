-- Table: Academia.reservas_de_entrada

-- DROP TABLE IF EXISTS "Academia".reservas_de_entrada;

CREATE TABLE IF NOT EXISTS "Academia".reservas_de_entrada
(
    turno character varying(30) COLLATE pg_catalog."default",
    cpf integer NOT NULL,
    horario_inicio date,
    numero_maquina integer,
    CONSTRAINT reservas_de_entrada_pkey PRIMARY KEY (cpf),
    CONSTRAINT foreignkey_cpf FOREIGN KEY (cpf)
        REFERENCES "Academia".clientes (cpf) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Academia".reservas_de_entrada
    OWNER to postgres;