create table if not exists artistas_caju (
    id_artista SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE,
    pais VARCHAR(50)NOT NULL ,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


create table if not exists albuns_caju (
    id_album SERIAL PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    ano INTEGER NOT NULL CHECK (ano > 1850),
    preco DECIMAL(10,2) CHECK (preco > 0),
    id_artista INTEGER NOT NULL,
    CONSTRAINT fk_artista FOREIGN KEY (id_artista) 
        REFERENCES artistas_caju(id_artista)
);


create table if not exists faixas_caju (
    id_faixa SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    duracao_segundos INTEGER NOT NULL CHECK (duracao_segundos > 0),
    id_album INTEGER NOT NULL,
    CONSTRAINT fk_album FOREIGN KEY (id_album) 
        REFERENCES albuns_caju(id_album)
);

UPDATE albuns_caju
SET preco = 34.90
WHERE id_album = 1; 



