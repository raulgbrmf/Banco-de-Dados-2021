-- Letra B
-- Mostrando o Nome de clientes que já fizeram pedidos e a quantidade de pedidos feitos por cada um
SELECT Nome_Completo, COUNT(*) 
FROM Cliente, Pedido
WHERE Pedido.Id_Cliente = Cliente.Id_Cliente
GROUP BY Nome_Completo;

-- Mostrando o Nome dos funcionários que já cadastraram produtos e a quantidade de produtos cadastrados por cada um
SELECT Nome, COUNT(*) 
FROM Funcionario, FuncionarioProduto
WHERE Funcionario.Id_Funcionario = FuncionarioProduto.Id_Funcionario
GROUP BY Nome;
