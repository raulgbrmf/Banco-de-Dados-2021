SELECT Produto.Nome_Produto NomeDoProduto, Produto.Descricao_Produto DescricaoDoProduto, Funcionario.Nome_Funcionario NomeDoFuncionario
FROM Produto , Funcionario
WHERE Produto.Cod_Funcionario = Funcionario.Cod_Funcionario

SELECT Produto.Nome_Produto NomeDoProduto, Produto.Descricao_Produto DescricaoDoProduto, Funcionario.Nome_Funcionario NomeDoFuncionario
FROM Produto 
INNER JOIN Funcionario
ON Produto.Cod_Funcionario = Funcionario.Cod_Funcionario


SELECT Categoria.Descricao_Categoria, Produto.Nome_Produto
FROM Categoria, Produto
WHERE Categoria.Cod_Categoria = Produto.Cod_Categoria 

SELECT Categoria.Descricao_Categoria, Produto.Nome_Produto
FROM Categoria
INNER JOIN Produto
ON Categoria.Cod_Categoria = Produto.Cod_Categoria 
