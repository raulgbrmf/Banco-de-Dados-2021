-- Letra C
SELECT Cliente.Nome_Completo, Cliente.Cpf, Info_Cliente.Rua, Info_Cliente.Numero, Info_Cliente.Bairro, Info_Cliente.Complemento, Info_Cliente.CEP,
Info_Cliente.Celular, Produto.Nome Nome_Produto, PedidoItem.Quantidade, Produto.Valor_Unitario, Pedido.Valor_Total 
FROM Cliente, Info_Cliente, Produto, PedidoItem, Pedido
WHERE Pedido.Id_Pedido = 2 AND Pedido.Id_Cliente = Cliente.Id_Cliente AND PedidoItem.Id_Pedido = Pedido.Id_Pedido AND Info_Cliente.Id_Cliente = Cliente.Id_Cliente
AND PedidoItem.Id_Produto = Produto.Id_Produto;
-- OU
SELECT Cliente.Nome_Completo, Cliente.Cpf, Info_Cliente.Rua, Info_Cliente.Numero, Info_Cliente.Bairro, Info_Cliente.Complemento, Info_Cliente.CEP,
Info_Cliente.Celular, Produto.Nome Nome_Produto, PedidoItem.Quantidade, Produto.Valor_Unitario, Pedido.Valor_Total 
FROM ((((Cliente
INNER JOIN Pedido ON Pedido.Id_Pedido = 2 AND Pedido.Id_Cliente = Cliente.Id_Cliente)
INNER JOIN PedidoItem ON PedidoItem.Id_Pedido = Pedido.Id_Pedido)
INNER JOIN Info_Cliente ON Info_Cliente.Id_Cliente = Cliente.Id_Cliente)
INNER JOIN Produto ON PedidoItem.Id_Produto = Produto.Id_Produto);