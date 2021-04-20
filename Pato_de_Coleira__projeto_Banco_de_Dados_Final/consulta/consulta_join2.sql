SELECT categoria.descricao, produto.*
from categoria,produto 
where categoria.id = produto.id_categoria;