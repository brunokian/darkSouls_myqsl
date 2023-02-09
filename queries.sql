-- liste todos os bancos de dados
SHOW DATABASES

-- exiba informações sobre as keys (primaria, secundaria e estrangeira) da tabela characters
SHOW KEYS
FROM DarkSoulsDB.characters

-- exiba as colunas da tabela characters
SHOW COLUMNS
FROM DarkSoulsDB.characters


-- SELECIONANDO A TABELA

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

-- é possivel alterar o nome da coluna com o AS

SELECT name as 'nomeDosGames' FROM DarkSoulsDB.games;



--ORDENANDO OS DADOS

-- exiba os elementos da tabela em ordem alfabefica dos nomes (o ASC é facultativo, visto ser o valor default)

SELECT * FROM DarkSoulsDB.characters
ORDER BY name ASC

-- exiba os nomes e friendly em ordem decrescente dos nomes

SELECT name, friendly FROM DarkSoulsDB.characters
ORDER BY name DESC



-- FILTRANDO OS DADOS

-- exiba os characters que não possuam last_name

SELECT * FROM DarkSoulsDB.characters
WHERE last_name IS NULL;

-- exiba os characters que possuam last_name

SELECT * FROM DarkSoulsDB.characters
WHERE last_name IS NOT NULL;

-- é possivel fazer o filtro e a ordenação

SELECT * FROM DarkSoulsDB.weapons
WHERE damage > 250
ORDER BY weight ASC