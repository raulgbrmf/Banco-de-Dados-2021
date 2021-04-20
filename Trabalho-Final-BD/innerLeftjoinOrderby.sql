-- Item 7 Trabalho Final
-- Letra A
SELECT Produto.Nome, Funcionario.Nome
FROM ((Produto
INNER JOIN FuncionarioProduto ON Produto.Id_Produto = FuncionarioProduto.Id_Produto)
INNER JOIN Funcionario ON Funcionario.Id_Funcionario = FuncionarioProduto.Id_Funcionario);
-- OU
SELECT Produto.Nome, Funcionario.Nome 
FROM Produto, Funcionario, FuncionarioProduto
WHERE Produto.Id_Produto = FuncionarioProduto.Id_Produto AND Funcionario.Id_Funcionario = FuncionarioProduto.Id_Funcionario;


SELECT Pedido.Id_Pedido, Cliente.Nome_Completo 
FROM Cliente 
LEFT JOIN Pedido ON Pedido.Id_Cliente = Cliente.Id_Cliente
ORDER BY Cliente.Nome_Completo;