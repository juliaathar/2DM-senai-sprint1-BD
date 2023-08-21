SELECT * FROM Cliente
SELECT * FROM Empresa
SELECT * FROM Marca
SELECT * FROM Modelo
SELECT * FROM Veiculo
SELECT * FROM Aluguel;

SELECT 
   Aluguel.DataInicio AS Retirada,
   Aluguel.DataFim AS Devolução,
   Cliente.Nome AS Nome,
   Modelo.Nome AS Modelo
FROM
   Aluguel
LEFT JOIN 
   Modelo ON Aluguel.IdVeiculo = Modelo.IdModelo
LEFT JOIN 
   Cliente ON Aluguel.IdCliente = Cliente.IdCliente