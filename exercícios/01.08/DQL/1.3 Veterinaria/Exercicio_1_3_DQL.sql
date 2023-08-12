SELECT * FROM Atendimento
SELECT * FROM Clinica
SELECT * FROM Dono
SELECT * FROM Pet
SELECT * FROM Raca
SELECT * FROM TipoPet
SELECT * FROM Veterinario

-- listar todos os veterinários (nome e CRMV) de uma clínica (razão social)
SELECT Veterinario.Nome,Veterinario.CRMV,Clinica.IdClinica AS [Razão Social] FROM Veterinario
INNER JOIN Clinica
ON Veterinario.IdClinica = Clinica.IdClinica
WHERE Clinica.IdClinica = 1;

-- listar todas as raças que começam com a letra S
SELECT
Descricao
FROM
Raca
WHERE
Descricao LIKE 'S%'

-- listar todos os tipos de pet que terminam com a letra O
SELECT
Descricao
FROM
Raca
WHERE
RIGHT (Descricao, 1) = 'O';

-- listar todos os pets mostrando os nomes dos seus donos
SELECT Dono.Nome AS [Nome do dono],Pet.Nome AS [Nome do pet],Raca.Descricao AS Raça FROM Dono
INNER JOIN Pet
ON Dono.IdDono = Pet.IdDono
INNER JOIN Raca
ON Raca.IdRaca = Pet.IdRaca;

-- listar todos os atendimentos mostrando o nome do veterinário que atendeu, o nome, a raça e o tipo do pet que foi atendido, o nome do dono do pet e o nome da clínica onde o pet foi atendido
SELECT Atendimento.Descricao AS [Atendimento],Veterinario.Nome AS [Veterinário],Pet.Nome AS [Nome do pet],Raca.Descricao AS Raça,TipoPet.Descricao AS Tipo,Dono.Nome AS [Nome do dono],Clinica.IdClinica AS [Clínica] FROM Atendimento
INNER JOIN Pet
ON Pet.IdPet = Atendimento.IdPet
INNER JOIN Raca
ON Raca.IdRaca = Pet.IdRaca
INNER JOIN Veterinario
ON Veterinario.IdVeterinario = Atendimento.IdVeterinario
INNER JOIN TipoPet
ON TipoPet.IdTipoPet = Raca.IdRaca
INNER JOIN Dono
ON Dono.IdDono = Pet.IdDono
INNER JOIN Clinica
ON Clinica.IdClinica = Veterinario.IdClinica;