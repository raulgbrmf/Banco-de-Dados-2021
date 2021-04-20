Select (Pedido.ID_Pedido), (Cliente.Nome_Completo), (Pedido.Data_Pedido), (Produto.Nome) 
from Pedido
join Cliente on Cliente.ID_Cliente = Pedido.ID_Cliente
join Pedido_Item on Pedido.ID_Pedido = Pedido_Item.ID_Pedido 
join Produto on Pedido_Item.ID_Produto = Produto.ID_Produto
where Cliente.ID_Cliente = 2