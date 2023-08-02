INSERT INTO Artista (Nome)
VALUES ('Tasha e Tracie')

INSERT INTO Estilo (Nome)
VALUES ('Rap')

INSERT INTO Usuario (Nome, Email, Senha, Permissao)
VALUES ('Lucas', 'lucas@gmail.com', 'lucas123', 'sim')

INSERT INTO Album (IdArtista, TiTulo, DataLancamento, Localizacao, QtdMinutos, Ativo)
VALUES (2, 'YinYang', '10-06-2023', 'Zona Norte', '01:00', 'SIM')

INSERT INTO AlbumEstilo (IdAlbum, IdEstilo)
VALUES (4, 2)