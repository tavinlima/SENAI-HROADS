--DML
USE SENAI_HROADS_TARDE;
GO

INSERT INTO CLASSE (nomeClasse)
VALUES ('Bárbaro'), ('Cruzado'), ('Caçadora de demônios'), ('Monge'), ('Necromante'), ('Feiticeiro'), ('Arcanista');
GO

INSERT INTO TIPOHABILIDADE (nomeTipoHabilidade)
VALUES ('ATAQUE'), ('DEFESA'), ('CURA'), ('MAGIA'); 
GO

INSERT INTO HABILIDADE (idTipoHabilidade, nomeHabilidade)
VALUES (1, 'Lança Mortal'), (2, 'Escudo Supremo'), (3, 'Recuperar Vida');
GO

INSERT INTO CLASSEHABILIDADE (idHabilidade, idClasse)
VALUES (1, 1), (2, 1), (1, 2), (1, 3), (3, 4), (2, 4), (3, 6);
GO 

INSERT INTO PERSONAGEM (idClasse, nomePersonagem, capMaxVida, capMaxMana, dataAtualizacao, DataCriacao)
VALUES (1, 'DeuBug', 100, 80, '10/08/2021', '18/01/2019'), (4, 'BitBug', 70, 100, '10/08/2021', '17/03/2016'), (7, 'Fer8', 75, 60, '10/08/2021', '18/03/2018');
GO

/* Atualizar o nome do personagem Fer8 para Fer7;
UPDATE PERSONAGEM
SET nomePersonagem = 'Fer7'
WHERE idPersonagem = 4;
GO

Atualizar o nome da classe de Necromante para Necromancer:
UPDATE CLASSE
SET nomeClasse = 'Necromancer'
WHERE IdClasse = 5;
GO
*/