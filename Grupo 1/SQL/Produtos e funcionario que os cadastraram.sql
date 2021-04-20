Select (Funcionario.Nome) as "Funcionário Responsável", (Produto.Nome), (Estoque.Quantidade_estoque), (Produto.Data_fabricacao) 
from Produto
join Func_Prod on Func_Prod.ID_Funcionario = Funcionario.ID_Funcionario 
join Funcionario on Funcionario.ID_Funcionario = Func_Prod.ID_Funcionario
join Estoque on Estoque.ID_Produto = Produto.ID_Produto