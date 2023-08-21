INSERT INTO Cliente (Nome, CPF)
VALUES ('Enzo', '12345768912')

INSERT INTO Empresa (Nome)
VALUES ('Rentcars')

INSERT INTO Marca (Nome)
VALUES ('Ford')

INSERT INTO Modelo (Nome)
VALUES ('Mustang')

INSERT INTO Veiculo (IdEmpresa,IdModelo, IdMarca, Placa)
VALUES (1, 1, 1, 'ABN8888')

INSERT INTO Aluguel (IdVeiculo,IdCliente, DataInicio, DataFim, Protocolo)
VALUES (1, 1, '02-02-2023', '12-02-2023', '56789fghij')