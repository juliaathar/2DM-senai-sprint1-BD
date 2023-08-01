INSERT INTO Cliente (Nome, CPF)
VALUES ('Paulo', '12345768912')

INSERT INTO Empresa (Nome)
VALUES ('Rentcars')

INSERT INTO Marca (Nome)
VALUES ('Ford')

INSERT INTO Modelo (Nome)
VALUES ('Mustang')

INSERT INTO Veiculo (IdEmpresa,IdModelo, IdMarca, Placa)
VALUES (1, 2, 2, 'ABN8888')

INSERT INTO Aluguel (IdVeiculo,IdCliente,Protocolo)
VALUES (2,2, '56789fghij')