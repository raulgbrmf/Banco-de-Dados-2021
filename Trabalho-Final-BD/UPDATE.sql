SELECT Nome_Usuario,Telefone_Usuario
FROM Usuario
WHERE (ID_Usuario=2);

UPDATE Usuario
SET Telefone_Usuario = 24999652318
WHERE (ID_Usuario = 2)