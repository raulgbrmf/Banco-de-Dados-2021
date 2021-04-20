SELECT Cliente.Nome_Cliente Cliente, Funcionario.Nome_Funcionario Funcionario, Produto.Nome_Produto Produto, PedidoItem.Quant_Pedido Quantidade, Produto.Valor_Unitario ValorUnitario,
(PedidoItem.Quant_Pedido*Produto.Valor_Unitario) AS ValorPorProduto,
(SELECT SUM (PedidoItem.Quant_Pedido*Produto.Valor_Unitario)
FROM Cliente, Pedido, Funcionario, Produto, PedidoItem
WHERE (Cliente.Cod_Cliente = Pedido.Cod_Cliente
		AND Pedido.Cod_Pedido = PedidoItem.Cod_Pedido
		AND Produto.Cod_Produto = PedidoItem.Cod_Produto
		AND Funcionario.Cod_Funcionario = Pedido.Cod_Funcionario
		AND Pedido.Cod_Pedido = 2)) AS ValorTotal,
(Quant_Estoque - Quant_Pedido) AS Estoque_Atual
FROM Cliente, Pedido, Funcionario, Produto, PedidoItem
WHERE 	Quant_Estoque >= Quant_Pedido
		AND Cliente.Cod_Cliente = Pedido.Cod_Cliente
		AND Pedido.Cod_Pedido = PedidoItem.Cod_Pedido
		AND Produto.Cod_Produto = PedidoItem.Cod_Produto
		AND Funcionario.Cod_Funcionario = Pedido.Cod_Funcionario
		AND Pedido.Cod_Pedido = 2

		
SELECT Cliente.Nome_Cliente Cliente, Funcionario.Nome_Funcionario Funcionario, Produto.Nome_Produto Produto, PedidoItem.Quant_Pedido Quantidade, Produto.Valor_Unitario ValorUnitario,
(PedidoItem.Quant_Pedido*Produto.Valor_Unitario) AS ValorPorProduto,
(SELECT SUM (PedidoItem.Quant_Pedido*Produto.Valor_Unitario)
FROM Cliente, Pedido, Funcionario, Produto, PedidoItem
WHERE (Cliente.Cod_Cliente = Pedido.Cod_Cliente
		AND Pedido.Cod_Pedido = PedidoItem.Cod_Pedido
		AND Produto.Cod_Produto = PedidoItem.Cod_Produto
		AND Funcionario.Cod_Funcionario = Pedido.Cod_Funcionario
		AND Pedido.Cod_Pedido = 1)) AS ValorTotal,
(Quant_Estoque - Quant_Pedido) AS Estoque_Atual
FROM Cliente, Pedido, Funcionario, Produto, PedidoItem
WHERE 	Quant_Estoque >= Quant_Pedido
		AND Cliente.Cod_Cliente = Pedido.Cod_Cliente
		AND Pedido.Cod_Pedido = PedidoItem.Cod_Pedido
		AND Produto.Cod_Produto = PedidoItem.Cod_Produto
		AND Funcionario.Cod_Funcionario = Pedido.Cod_Funcionario
		AND Pedido.Cod_Pedido = 1
