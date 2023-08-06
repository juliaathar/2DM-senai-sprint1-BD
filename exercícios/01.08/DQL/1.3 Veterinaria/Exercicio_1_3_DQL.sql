SELECT * FROM Atendimento
SELECT * FROM Clinica
SELECT * FROM Dono
SELECT * FROM Pet
SELECT * FROM Raca
SELECT * FROM TipoPet
SELECT * FROM Veterinario

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
