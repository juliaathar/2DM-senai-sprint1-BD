INSERT INTO Clinica(Endereco)
VALUES ('Rua José de Alencar, 45')

INSERT INTO Dono(Nome)
VALUES ('Matheus')

INSERT INTO Raca(Descricao)
VALUES ('Sphynx')

INSERT INTO TipoPet(Descricao)
VALUES ('Felino')

INSERT INTO Veterinario (IdClinica, Nome, CRMV)
VALUES (1, 'Raphaela', '56789')

INSERT INTO Pet (IdTipoPet, IdRaca, IdDono, Nome, DataNascimento)
VALUES (1, 1, 1, 'Bastet', '28-09-2023')

INSERT INTO Atendimento(IdVeterinario, IdPet, Descricao, DataAtendimento)
VALUES (1, 1, 'Vacina', '02-02-2023')