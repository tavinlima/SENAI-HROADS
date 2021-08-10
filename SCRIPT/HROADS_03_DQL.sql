--DQL
USE SENAI_HROADS_TARDE;
GO

-- Selecionar todos os personagens:
SELECT * FROM PERSONAGEM;
GO

-- Selecionar todas as classes:
SELECT * FROM CLASSE;
GO

-- Selecionar somente o nome das classes:
SELECT nomeClasse FROM CLASSE;
GO

-- Selecionar todas as habilidadees:
SELECT * FROM HABILIDADE;
GO

-- Realizar a contagem de quantas habilidades estão cadastradas:
SELECT COUNT(idHabilidade) FROM HABILIDADE;
GO

-- Selecionar somente os id’s das habilidades classificando-os por ordem crescente:
SELECT idHabilidade FROM HABILIDADE
ORDER BY idHabilidade ASC
GO

-- Selecionar todos os tipos de habilidades:
SELECT * FROM TIPOHABILIDADE;
GO

-- Selecionar todas as habilidades e a quais tipos de habilidades elas fazem parte:
SELECT * FROM HABILIDADE
INNER JOIN TIPOHABILIDADE
ON HABILIDADE.idTipoHabilidade = TIPOHABILIDADE.idTipoHabilidade;
GO

-- Selecionar todos os personagens e suas respectivas classes:
SELECT * FROM PERSONAGEM 
INNER JOIN CLASSE
ON PERSONAGEM.idClasse = CLASSE.idClasse;
GO

-- Selecionar todos os personagens e as classes (mesmo que elas não tenham correspondência em personagens:
SELECT * FROM PERSONAGEM
RIGHT JOIN CLASSE
ON PERSONAGEM.idClasse = CLASSE.idClasse;
GO

-- Selecionar todas as classes e suas respectivas habilidades:
SELECT * FROM CLASSEHABILIDADE;
GO

-- Selecionar todas as habilidades e suas classes (somente as que possuem correspondência):
SELECT nomeHabilidade Habilidade, nomeClasse Classe FROM HABILIDADE
INNER JOIN CLASSEHABILIDADE
ON HABILIDADE.idHabilidade = CLASSEHABILIDADE.idHabilidade
INNER JOIN CLASSE
ON CLASSEHABILIDADE.idClasse = CLASSE.idClasse
GO

-- Selecionar todas as habilidades e suas classes (mesmo que elas não tenham correspondência:
SELECT nomeHabilidade Habilidade, nomeClasse Classe FROM HABILIDADE
FULL OUTER JOIN CLASSEHABILIDADE
ON HABILIDADE.idHabilidade = CLASSEHABILIDADE.idHabilidade
FULL OUTER JOIN CLASSE
ON CLASSEHABILIDADE.idClasse = CLASSE.idClasse
GO