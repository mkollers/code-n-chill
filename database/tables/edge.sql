CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE edge(
    fk_prev_node UUID,
    fk_next_node UUID,
    PRIMARY KEY (fk_prev_node, fk_next_node)
);