SELECT Usuario.Nome_Usuario ,Endereco_Usuario.Cidade
FROM Usuario
JOIN Endereco_Usuario ON Endereco_Usuario.ID_Endereco = Usuario.ID_Endereco
AND Cidade LIKE 'Petrópolis' 



SELECT Usuario.Nome_Usuario, Produto.Nome_Produto, Descricao_Produto.Marca 
FROM Usuario, Produto
JOIN Descricao_Produto ON Usuario.ID_Usuario = Produto.ID_Vendedor 
AND Produto.ID_Descricao_Produto = Descricao_Produto.ID_Descricao_Produto 
AND Marca = 'Adidas'

 



 

  
