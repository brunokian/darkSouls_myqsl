-- liste todos os bancos de dados
SHOW DATABASES

-- exiba informações sobre as keys (primaria, secundaria e estrangeira) da tabela characters
SHOW KEYS
FROM DarkSoulsDB.characters

-- exiba as colunas da tabela characters
SHOW COLUMNS
FROM DarkSoulsDB.characters




-- exiba todos os dados da tabela characters

SELECT * FROM DarkSoulsDB.characters

-- exiba os nomes da tabela characters

SELECT name FROM DarkSoulsDB.characters;

-- exiba a quantidade de registros na coluna name da tabela characters

SELECT COUNT(name) FROM DarkSoulsDB.characters

-- exiba apenas os 3 primeiros valores da tabela characters

SELECT * FROM DarkSoulsDB.characters LIMIT 3

-- pule o primeiro elemento e exiba os priximos 2 da tabela characters

SELECT * FROM DarkSoulsDB.characters LIMIT 2 OFFSET 1

-- exiba os elementos da tabela em ordem alfabefica dos nomes

SELECT * FROM DarkSoulsDB.characters
ORDER BY name

-- exiba os nomes e friendly em ordem decrescente dos nomes

SELECT name, friendly FROM DarkSoulsDB.characters
ORDER BY name DESC