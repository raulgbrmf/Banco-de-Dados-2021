-- Update Pedido 1
UPDATE Pedido 
SET Valor_Total = ((SELECT Valor_Unitario FROM Produto WHERE Id_Produto = 1) * (SELECT Quantidade FROM PedidoItem WHERE Id_Pedido = 1 AND Id_Produto = 1))
+ ((SELECT Valor_Unitario FROM Produto WHERE Id_Produto = 4) * (SELECT Quantidade FROM PedidoItem WHERE Id_Pedido = 1 AND Id_Produto = 4))
WHERE Id_Pedido = 1;
UPDATE Produto 
SET Qtd_Estoque = Qtd_Estoque - (SELECT Quantidade FROM PedidoItem WHERE Id_Produto = 1 AND Id_Pedido = 1)
WHERE Id_Produto = 1;
UPDATE Produto 
SET Qtd_Estoque = Qtd_Estoque + (SELECT Quantidade FROM PedidoItem WHERE Id_Produto = 4 AND Id_Pedido = 1)
WHERE Id_Produto = 4;

-- Update Pedido 2
UPDATE Pedido
SET Valor_Total = ((SELECT Valor_Unitario FROM Produto WHERE Id_Produto = 2) * (SELECT Quantidade FROM PedidoItem WHERE Id_Pedido = 2 AND Id_Produto = 2))
WHERE Id_Pedido = 2;
UPDATE Produto 
SET Qtd_Estoque = Qtd_Estoque - (SELECT Quantidade FROM PedidoItem WHERE Id_Pedido = 2 AND Id_Produto = 2)
WHERE Id_Produto = 2;

-- Update Pedido 3
UPDATE Pedido 
SET Valor_Total = ((SELECT Valor_Unitario FROM Produto WHERE Id_Produto = 5) * (SELECT Quantidade FROM PedidoItem WHERE Id_Pedido = 3 AND Id_Produto = 5))
WHERE Id_Pedido = 3;
UPDATE Produto 
SET Qtd_Estoque = Qtd_Estoque - (SELECT Quantidade FROM PedidoItem WHERE Id_Pedido = 3 AND Id_Produto = 5)
WHERE Id_Produto = 5;

-- Update Pedido 4
UPDATE Pedido 
SET Valor_Total = ((SELECT Valor_Unitario FROM Produto WHERE Id_Produto = 3) * (SELECT Quantidade FROM PedidoItem WHERE Id_Pedido = 4 AND Id_Produto = 3))
WHERE Id_Pedido = 4;
UPDATE  Produto 
SET Qtd_Estoque = Qtd_Estoque - (SELECT Quantidade FROM PedidoItem WHERE Id_Pedido = 4 AND Id_Produto = 3)
WHERE Id_Produto = 3;

-- Update Pedido 5
UPDATE Pedido 
SET Valor_Total = (SELECT Valor_Unitario FROM Produto WHERE Id_Produto = 4) * (SELECT Quantidade FROM PedidoItem WHERE Id_Pedido = 5 AND Id_Produto = 4)
WHERE Id_Pedido = 5;
UPDATE  Produto 
SET Qtd_Estoque = Qtd_Estoque - (SELECT Quantidade FROM PedidoItem WHERE Id_Pedido = 5 AND Id_Produto = 4)
WHERE Id_Produto = 4;

-- Deletando dados da tabela Funcionario
DELETE FROM Funcionario 
WHERE Id_Funcionario = 5;