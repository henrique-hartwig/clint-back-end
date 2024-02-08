CREATE DATABASE clint_db;
CREATE USER clint_user WITH PASSWORD 'senha123'
GRANT ALL PRIVILEGES ON DATABASE clint_db TO clint_user;
ALTER DATABASE clint_db OWNER TO clint_user;

CREATE TYPE status AS ENUM ('To Do', 'Doing', 'Ready');

CREATE TABLE tasks(
    id BIGSERIAL NOT NULL,
    title VARCHAR(100) NOT NULL,
    due_date DATE NOT NULL,
    "status" status NOT NULL,
    CONSTRAINT pk_tasks PRIMARY KEY (id)
);
