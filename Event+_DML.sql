USE [Event+_Tarde]

--INSERT INTO TiposDeUsuario(TituloTiposUsuario)
--VALUES('Administrador'), ('Comum')

--INSERT INTO TiposDeEvento(TituloTipoEvento)
--VALUES('SQL Server')

--INSERT INTO Instituicao(CNPJ, Endereco, NomeFantasia)
--values('02321082000100', 'Rua Niteroi, 180', 'DevSchools')

--INSERT INTO Usuario(IdTiposDeUsuario, Nome, Email, Senha)
--VALUES
--	(1, 'Matheus', 'matheus@email.com', '1234'), 
--	(1, 'Murillo', 'murillo@email.com', '4321')

--INSERT INTO Evento(IdTiposDeEvento, IdInstituicao, Nome, Descricao, DataEvento, HorarioEvento)
--VALUES(1, 3, 'Evento SQL', 'Um Evento sobre sql', '2023-08-10', '16:55:45')

--INSERT INTO PresencasEvento(IdUsuario, IdEvento, Situacao)
--VALUES(1, 1, 1), (2, 1, 0)

INSERT INTO ComentarioEvento(IdUsuario, IdEvento, Descricao, Exibe)
VALUES(1, 1, 'Um otimo Evento', 0), (2, 1, 'Um Lixo de Evento', 0)

select*from TiposDeUsuario 
select*from TiposDeEvento
select*from Instituicao
select*from Usuario
select*from Evento
select*from PresencasEvento
select*from ComentarioEvento


