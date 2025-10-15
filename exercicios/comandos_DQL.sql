-- Para executar apenas uma parte específica do código, selecione o trecho desejado com o mouse e pressione F5

-- Define o banco de dados que será utilizado durante os exercícios
USE MyDatabase;

-- Retorna todos os dados dos clientes
SELECT *
FROM customers;

-- Retorna todos os dados dos pedidos
SELECT *
FROM orders;

-- Retorna o primeiro nome, país e pontuação de cada cliente
SELECT
	first_name,
	country,
	score
FROM customers;

-- Retorna os clientes que possuem pontuação diferente de 0
SELECT *
FROM customers
WHERE score != 0;

-- Retorna o primeiro nome e o país dos clientes que são da Alemanha
SELECT
	first_name,
	country
FROM customers
WHERE country = 'Germany';

/* Retorna os clientes e
   organiza os resultados pela maior pontuação primeiro */
SELECT *
FROM customers
ORDER BY score DESC;

/* Retorna os clientes e
   organiza os resultados pela menor pontuação primeiro */
SELECT *
FROM customers
ORDER BY score ASC;

/* Retorna os clientes e
   organiza os resultados por país em ordem alfabética,
   e, dentro de cada país, pela maior pontuação */
SELECT *
FROM customers
ORDER BY
	country ASC,
	score DESC;

/* Retorna a pontuação total de cada país e
   organiza em ordem descendente */
SELECT
	country,
	SUM(score) AS total_score
FROM customers
GROUP BY country
ORDER BY total_score DESC;

/* Retorna a pontuação total e
   o número total de clientes de cada país */
SELECT
	country,
	SUM(score) AS total_score,
	COUNT(id) AS total_customers
FROM customers
GROUP BY country;

/* Encontra a média de pontuação de cada país
   considerando somente clientes com uma pontuação diferente de 0
   e retorna somente os países com uma média maior que 430 */
SELECT
	country,
	AVG(score) AS average_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430
ORDER BY AVG(score) DESC;

-- Retorna lista única de todos os países
SELECT DISTINCT
	country
FROM customers;

-- Retorna somente três clientes
SELECT TOP 3 *
FROM customers;

-- Retorna os três clientes com a pontuação mais alta
SELECT TOP 3 *
FROM customers
ORDER BY score DESC;

-- Retorna os dois clientes com a pontuação mais baixa
SELECT TOP 2 *
FROM customers
ORDER BY score ASC;

-- Retorna os dois pedidos mais recentes
SELECT TOP 2 *
FROM orders
ORDER BY order_date DESC;

-- Aprendendo a usar valores estáticos
SELECT
	id,
	first_name,
	'New Customer' AS customer_type
FROM customers;