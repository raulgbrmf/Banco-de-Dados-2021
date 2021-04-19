SELECT  Pedido.Data_Pedido,
Pedido.ID_Pedido,
Usuario.Nome_Usuario Comprador,
Usuario.CPF_Usuario CPF_Comprador,

	(SELECT Usuario.Nome_Usuario 
    FROM Produto, Usuario, Pedido_Item 
    WHERE Usuario.ID_Usuario = Produto.ID_Vendedor
    AND Pedido_Item.ID_Produto = Produto.ID_Produto
    AND Pedido_Item.ID_Pedido = Pedido.ID_Pedido) AS Vendedor,
    
    (SELECT Usuario.CPF_Usuario 
    FROM Produto, Usuario, Pedido_Item 
    WHERE Usuario.ID_Usuario = Produto.ID_Vendedor
    AND Pedido_Item.ID_Produto = Produto.ID_Produto
    AND Pedido_Item.ID_Pedido = Pedido.ID_Pedido) AS CPF_Vendedor,

Produto.Nome_Produto,
Descricao_Produto.Marca,
Categoria.Nome_Categoria,
Pedido.Quantidade_Produtos,
Produto.Valor_Unitario,
(Quantidade_Produtos * Valor_Unitario) AS Valor_Total

    
FROM Produto, Pedido, Pedido_Item, Descricao_Produto,Categoria
JOIN Usuario ON Pedido_Item.ID_Produto = Produto.ID_Produto 
AND Pedido_Item.ID_Pedido = Pedido.ID_Pedido 
AND Usuario.ID_Usuario = Pedido.ID_Comprador
AND Descricao_Produto.ID_Descricao_Produto = Produto.ID_Descricao_Produto 
AND Categoria.ID_Categoria = Produto.ID_Categoria 

AND Pedido.ID_Pedido = '4'




 




 




