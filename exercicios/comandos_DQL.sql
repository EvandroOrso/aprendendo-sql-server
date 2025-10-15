-- Para executar apenas uma parte espec�fica do c�digo, selecione o trecho desejado com o mouse e pressione F5

-- Define o banco de dados que ser� utilizado durante os exerc�cios
USE MyDatabase;

-- Retorna todos os dados dos clientes
SELECT *
FROM customers;

-- Retorna todos os dados dos pedidos
SELECT *
FROM orders;

-- Retorna o primeiro nome, pa�s e pontua��o de cada cliente
SELECT
	first_name,
	country,
	score
FROM customers;

-- Retorna os clientes que possuem pontua��o diferente de 0
SELECT *
FROM customers
WHERE score != 0;

-- Retorna o primeiro nome e o pa�s dos clientes que s�o da Alemanha
SELECT
	first_name,
	country
FROM customers
WHERE country = 'Germany';

/* Retorna os clientes e
   organiza os resultados pela maior pontua��o primeiro */
SELECT *
FROM customers
ORDER BY score DESC;

/* Retorna os clientes e
   organiza os resultados pela menor pontua��o primeiro */
SELECT *
FROM customers
ORDER BY score ASC;

/* Retorna os clientes e
   organiza os resultados por pa�s em ordem alfab�tica,
   e, dentro de cada pa�s, pela maior pontua��o */
SELECT *
FROM customers
ORDER BY
	country ASC,
	score DESC;

/* Retorna a pontua��o total de cada pa�s e
   organiza em ordem descendente */
SELECT
	country,
	SUM(score) AS total_score
FROM customers
GROUP BY country
ORDER BY total_score DESC;

/* Retorna a pontua��o total e
   o n�mero total de clientes de cada pa�s */
SELECT
	country,
	SUM(score) AS total_score,
	COUNT(id) AS total_customers
FROM customers
GROUP BY country;

/* Encontra a m�dia de pontua��o de cada pa�s
   considerando somente clientes com uma pontua��o diferente de 0
   e retorna somente os pa�ses com uma m�dia maior que 430 */
SELECT
	country,
	AVG(score) AS average_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430
ORDER BY AVG(score) DESC;

-- Retorna lista �nica de todos os pa�ses
SELECT DISTINCT
	country
FROM customers;

-- Retorna somente tr�s clientes
SELECT TOP 3 *
FROM customers;

-- Retorna os tr�s clientes com a pontua��o mais alta
SELECT TOP 3 *
FROM customers
ORDER BY score DESC;

-- Retorna os dois clientes com a pontua��o mais baixa
SELECT TOP 2 *
FROM customers
ORDER BY score ASC;

-- Retorna os dois pedidos mais recentes
SELECT TOP 2 *
FROM orders
ORDER BY order_date DESC;

-- Aprendendo a usar valores est�ticos
SELECT
	id,
	first_name,
	'New Customer' AS customer_type
FROM customers;