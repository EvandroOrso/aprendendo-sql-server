-- Para executar apenas uma parte especifica do código, selecione o trecho desejado com o mouse e pressione F5

-- Define o banco de dados que será utilizado durante os exercícios
USE MyDatabase;

-- Insere dois novos clientes na tabela de clientes
INSERT INTO customers (id, first_name, country, score)
VALUES 
	(6, 'Anna', 'USA', NULL),
	(7, 'Sam', NULL, 100);

-- Insere um novo cliente com dados errados
INSERT INTO customers (id, first_name, country, score)
VALUES (8, 'USA', 'Max', NULL);

-- Insere um novo cliente com só duas informações
INSERT INTO customers (id, first_name)
VALUES 
	(9, 'Sahra');

-- Insere os dados da tabela 'clientes' na tabela 'pessoas'
INSERT INTO people (id, person_name, birth_date, phone) 
SELECT 
	id,
	first_name,
	NULL,
	'Unknown'
FROM customers;

-- Muda a pontuação do cliente com id 6 para 0
UPDATE customers
SET score = 0
WHERE id = 6;

-- Muda a pontuação do cliente com o id 9 para 0 e atualiza o país para 'UK'
UPDATE customers
SET country = 'UK',
	score = 0
WHERE id = 9;

-- Atualiza todos os clientes com uma pontuação nula mudando a pontuação para 0
UPDATE customers
SET score = 0
WHERE score IS NULL;

-- Deleta todos os clientes com o id maior que 5
DELETE FROM customers
WHERE id > 5;

-- Deleta todos os dados da tabela de pessoas
TRUNCATE TABLE people;