--> UPDATE do valor total da nota fiscal do pedido 5 
update Pedido
    set Valor_Total = (select sum(Pedido_Item.Quantidade * Produto.Valor_unitário)
    from produto
    join Pedido_Item on Produto.ID_Produto = Pedido_Item.ID_Produto 
    where Pedido_Item.ID_Pedido = Pedido.ID_Pedido 
    group by Pedido_Item.ID_Pedido)
    where Pedido.ID_Pedido = 5;

   
   
   
---> UPDATE de controle de estoque do pedido 1
UPDATE Estoque
	SET Quantidade_estoque = Quantidade_estoque - (SELECT Pedido_Item.Quantidade
													FROM Pedido_Item
													WHERE ID_Pedido = 1 and ID_Produto = 1)
WHERE Estoque.ID_Produto = 1;
----------

----------
UPDATE Estoque
	SET Quantidade_estoque = Quantidade_estoque - (SELECT Pedido_Item.Quantidade
													FROM Pedido_Item
													WHERE ID_Pedido = 1 and ID_Produto = 23)
WHERE Estoque.ID_Produto = 23;
----------

----------
UPDATE Estoque
	SET Quantidade_estoque = Quantidade_estoque - (SELECT Pedido_Item.Quantidade
													FROM Pedido_Item
													WHERE ID_Pedido = 1 and ID_Produto = 33)
WHERE Estoque.ID_Produto = 33;
----------

----------
UPDATE Estoque
	SET Quantidade_estoque = Quantidade_estoque - (SELECT Pedido_Item.Quantidade
													FROM Pedido_Item
													WHERE ID_Pedido = 1 and ID_Produto = 40)
WHERE Estoque.ID_Produto = 40;
-----------

