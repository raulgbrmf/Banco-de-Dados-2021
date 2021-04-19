SELECT Descricao_Produto.Cor 
FROM Descricao_Produto 
GROUP BY (Cor)


SELECT COUNT(Categoria.Nome_Categoria) Quantidade_Vestimentas
FROM Categoria, Produto
WHERE Produto.ID_Categoria = Categoria.ID_Categoria 
AND Nome_Categoria = 'Vestimentas'


