Select (Pedido.ID_Pedido), (Cliente.Nome_Completo), (Pedido.Data_Pedido), (Produto.Nome), (Pedido_Item.Quantidade), (Produto.Valor_unitário), (Pedido_Item.Quantidade * Produto.Valor_unitário) as Subtotal, (Pedido.Valor_Total)
from Pedido
join Cliente on Cliente.ID_Cliente = Pedido.ID_Cliente
join Pedido_Item on Pedido.ID_Pedido = Pedido_Item.ID_Pedido 
join Produto on Pedido_Item.ID_Produto = Produto.ID_Produto
where Pedido.ID_Pedido = 5