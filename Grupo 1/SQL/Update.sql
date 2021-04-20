update Pedido
    set Valor_Total = (select sum(Pedido_Item.Quantidade * Produto.Valor_unitário)
    from produto
    join Pedido_Item on Produto.ID_Produto = Pedido_Item.ID_Produto 
    where Pedido_Item.ID_Pedido = Pedido.ID_Pedido 
    group by Pedido_Item.ID_Pedido)
    where Pedido.ID_Pedido = 5