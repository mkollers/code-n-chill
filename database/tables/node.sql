CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE node(
    pk_id UUID NOT NULL DEFAULT uuid_generate_v1(),
    fk_parent UUID,
    content varchar,
    icon_url varchar
);