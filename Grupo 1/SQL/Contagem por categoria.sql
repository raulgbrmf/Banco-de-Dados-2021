Select (Categoria.Tipo), count(Produto.ID_Produto) as "Quantidade de Produtos"
from Produto
join Categoria on Produto.ID_Categoria = Categoria.ID_Categoria
group by Categoria.Tipo