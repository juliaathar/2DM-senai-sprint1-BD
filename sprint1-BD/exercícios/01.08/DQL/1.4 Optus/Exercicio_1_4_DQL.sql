SELECT * FROM Artista;
SELECT * FROM Estilo;
SELECT * FROM Album;
SELECT * FROM TipoDeUsuario;
SELECT * FROM Usuario;

-- listar todos os usuários administradores, sem exibir suas senhas
SELECT TipoDeUsuario.Descricao,Usuario.Nome,Usuario.Email
FROM Usuario,TipoDeUsuario
WHERE TipoDeUsuario.IdTipoDeUsuario = Usuario.IdTipoDeUsuario AND TipoDeUsuario.IdTipoDeUsuario = 1;

-- listar todos os álbuns lançados após o um determinado ano de lançamento
SELECT Artista.Nome AS Artista,Album.Titulo,Estilo.Nome AS Estilo,Album.DataLancamento,Album.Localizacao,Album.Minutos,Album.Vizualizacao FROM Album
INNER JOIN Estilo
ON Album.IdEstilo = Estilo.IdEstilo
INNER JOIN Artista
ON Album.IdArtista = Artista.IdArtista
WHERE Album.DataLancamento > '02-01-2019';

-- listar os dados de um usuário através do e-mail e senha
SELECT TipoDeUsuario.Descricao,Usuario.Nome,Usuario.Email,Usuario.Senha
FROM Usuario,TipoDeUsuario
WHERE Usuario.Email = 'lucas@gmail.com.br' AND Usuario.Senha = 'lucas123' AND TipoDeUsuario.IdTipoDeUsuario = Usuario.IdTipoDeUsuario;

-- listar todos os álbuns ativos, mostrando o nome do artista e os estilos do álbum
SELECT Artista.Nome AS Artista,Album.Titulo,Estilo.Nome AS Estilo FROM Album
INNER JOIN Estilo
ON Album.IdEstilo = Estilo.IdEstilo
INNER JOIN Artista
ON Album.IdArtista = Artista.IdArtista;