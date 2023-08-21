SELECT 
   Pessoa.Nome,
   Pessoa.CNH,
   Email.Endereco AS Email,
   Telefone.Numero AS Telefone
FROM 
   Pessoa,
   Email,
   Telefone
WHERE 
   Pessoa.IdPessoa = Email.IdPessoa
   AND Pessoa.IdPessoa = Telefone.IdPessoa

-- USANDO JOIN

SELECT 
    Pessoa.Nome AS Cliente,
    Email.Endereco AS Email,
    Telefone.Numero AS Telefone
FROM 
    Pessoa
LEFT JOIN 
    Email ON Pessoa.IdPessoa = Email.IdPessoa
LEFT JOIN 
    Telefone ON Pessoa.IdPessoa = Telefone.IdPessoa;