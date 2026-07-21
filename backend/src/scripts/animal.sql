CREATE TABLE animal (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    idade INT,
    status_saude VARCHAR(50) DEFAULT 'Saudável'
  
);
INSERT INTO animal (nome, especie, idade, status_saude) VALUES
    ('Rex', 'Cão', 5, DEFAULT),
    ('Miau', 'Gato', 3, DEFAULT),
    ('Thor', 'Cão', 2, 'Em tratamento'),
    ('Luna', 'Gato', 1, DEFAULT),
    ('Louro', 'Papagaio', 12, DEFAULT),
    ('Bob esponja', 'Cão', 7, 'Em observação'),
    ('Belinha', 'Coelho', 2, DEFAULT),
    ('Pipoca', 'Hamster', 1, DEFAULT),
    ('Mel', 'Gato', 4, DEFAULT),
    ('Max', 'Cão', 6, 'Recuperando')
RETURNING *;