-- Para executar apenas uma parte especifica do código, selecione o trecho desejado com o mouse e pressione F5

-- Define o banco de dados que será utilizado durante os exercícios
USE MyDatabase;

/* Cria uma nova tabela chamada people (tradução é pessoas)
   com as colunas: id, person_name, birth_date e phone */
CREATE TABLE people (
	id INT NOT NULL,
	person_name VARCHAR(50) NOT NULL,
	birth_date DATE,
	phone VARCHAR(15) NOT NULL,
	CONSTRAINT pk_people PRIMARY KEY (id)
);

-- Adiciona uma nova coluna chamada email na tabela de pessoas
ALTER TABLE people 
ADD email VARCHAR(50) NOT NULL;

-- Remove a coluna telefone da tabela de pessoas
ALTER TABLE people
DROP COLUMN phone

-- Exclui a tabela de pessoas
DROP TABLE people