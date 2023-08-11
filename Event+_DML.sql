USE [Event+_Tarde]

--INSERT INTO TiposDeUsuario(TituloTiposUsuario)
--VALUES('Administrador'), ('Comum')

--INSERT INTO TiposDeEvento(TituloTipoEvento)
--VALUES('SQL Server')

--INSERT INTO Instituicao(CNPJ, Endereco, NomeFantasia)
--VALUES('02321082000100', 'Rua Niteroi, 180', 'DevSchools')

--INSERT INTO Usuario(IdTiposDeUsuario, Nome, Email, Senha)
--VALUES
--	(1, 'Matheus', 'matheus@email.com', '1234'), 
--	(2, 'Murillo', 'murillo@email.com', '4321')

--INSERT INTO Evento(IdTiposDeEvento, IdInstituicao, Nome, Descricao, DataEvento, HorarioEvento)
--VALUES(1, 1, 'Evento SQL', 'Um Evento sobre sql', '2023-08-10', '16:55:45')

--INSERT INTO PresencasEvento(IdUsuario, IdEvento, Situacao)
--VALUES(1, 2, 1), (2, 2, 0)

--INSERT INTO ComentarioEvento(IdUsuario, IdEvento, Descricao, Exibe)
--VALUES(1, 2, 'Um otimo Evento', 1), (2, 2, 'Um Lixo de Evento, realmente uma lastima !!!', 0)

select TiposDeUsuario.TituloTiposUsuario as [Tipos de Usuario] from TiposDeUsuario
-----------------------------------------------------------------
select TiposDeEvento.TituloTipoEvento as [Tipos de Evento] from TiposDeEvento
-----------------------------------------------------------------
select 
	Instituicao.CNPJ, 
	Instituicao.NomeFantasia as [Nome Fantasia], 
	Instituicao.Endereco as Endereço  
from Instituicao
-----------------------------------------------------------------
select 
	TiposDeUsuario.TituloTiposUsuario as [Tipo de Usuario],
	Usuario.Nome as [Nome do Usuario],
	Usuario.Email as [Email do Usuario]
from TiposDeUsuario
inner join Usuario on Usuario.IdTiposDeUsuario = TiposDeUsuario.IdTiposDeUsuario
-----------------------------------------------------------------
select
	TiposDeEvento.TituloTipoEvento as [Tipo de Evento],
	Instituicao.NomeFantasia as [Nome da Instituição],
	Evento.Nome as [Nome do Evento],
	Evento.Descricao as [Descrição do Evento],
	Evento.DataEvento as [Data do Evento],
	Evento.HorarioEvento as [Horario do Evento],
	Instituicao.Endereco as [Endereço do Evento]
from Evento
inner join TiposDeEvento on Evento.IdTiposDeEvento = TiposDeEvento.IdTiposDeEvento
inner join Instituicao on Evento.IdInstituicao = Instituicao.IdInstituicao
-----------------------------------------------------------------
select 
	Usuario.Nome as [Nome do Usuario],
	Evento.Nome as [Nome do Evento],
	PresencasEvento.Situacao as [Presente no Evento]
from PresencasEvento
inner join Usuario on Usuario.IdUsuario = PresencasEvento.IdUsuario
inner join Evento on Evento.IdEvento = PresencasEvento.IdEvento
-----------------------------------------------------------------
select 
	Usuario.Nome as [Nome do Usuario],
	Evento.Nome as [Nome do Evento],
	ComentarioEvento.Descricao as [Comentario],
	ComentarioEvento.Exibe as [Exibe Cometario]
from ComentarioEvento
inner join Usuario on Usuario.IdUsuario = ComentarioEvento.IdUsuario
inner join Evento on Evento.IdEvento = ComentarioEvento.IdEvento
-----------------------------------------------------------------

