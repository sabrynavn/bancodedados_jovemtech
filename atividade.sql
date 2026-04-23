
CREATE TABLE IF NOT EXISTS clients(
  id  SERIAL primary key,
  nome  VARCHAR(100) not null,
  email VARCHAR(255) unique not null,
  status VARCHAR(20) default 'ativo',
  limite NUMERIC(10,2) check (limite >= 0),
  criado_em TIMESTAMPTZ default NOW()
);

CREATE TABLE autores (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL
);

CREATE TABLE livros (
  id SERIAL PRIMARY KEY,
  titulo VARCHAR(150) NOT NULL,
  preco NUMERIC(10,2) NOT NULL,
  autor_id INTEGER REFERENCES autores(id) ON DELETE RESTRICT
);