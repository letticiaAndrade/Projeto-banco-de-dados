-- Table: Academia.mensalidades

-- DROP TABLE IF EXISTS "Academia".mensalidades;

CREATE TABLE IF NOT EXISTS "Academia".mensalidades
(
    data_inicio date NOT NULL,
    data_fim date NOT NULL,
    valor_mensal integer NOT NULL,
    total_desconto integer,
    tipo_pagamento character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT mensalidades_pkey PRIMARY KEY (data_inicio, data_fim)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Academia".mensalidades
    OWNER to postgres;