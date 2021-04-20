--Junção

select * from categoria,endereco,pedido,pedidoitem,produto,usuario,vendedor, comprador
where usuario.id = endereco.id_usuario and vendedor.id_usuario = usuario.id 
and pedido.id_comprador = comprador.id and pedido.id = pedidoitem.id_pedido and pedido.id_vendedor = vendedor.id
and pedidoitem.id_produto = produto.id and vendedor.id = produto.id_vendedor 
and categoria.id = produto.id_categoria

select * from usuario
inner join endereco
on endereco.id_usuario = usuario.id

select usuario.nome_completo as "Nome_Completo", categoria.nome_categoria as "Categoria", 
produto.nome_produto as "Nome_Produto", produto.descricao_produto as "Descrição", 
produto.qtd_estoque as "Estoque"
from usuario
inner join vendedor
on vendedor.id_usuario = usuario.id
inner join produto
on produto.id_vendedor = vendedor.id
inner join categoria
on categoria.id = produto.id_categoria 

--Count

select count(id) from usuario

select count(id) from comprador

select count(id) from produto
where id_vendedor = 1

--Group By

select nome_produto,
sum(qtd_estoque) 
from produto
group by nome_produto

--Delete 

delete from pedidoitem 
where id_pedido = 1 OR id_pedido = 4

delete from pedido
where id_comprador =  1

delete from comprador 
where id_usuario =  1

delete from endereco 
where id_usuario = 1

delete from usuario 
where id = 1

--Update
 
update produto set qtd_estoque = 97
where id = 4;

update pedido set quantidade_produto  = 30
where id = 20;

update usuario set email = 'brunaobonitao1337@email.com'
where id = 15

--Nota_Fiscal

select pedido.id as "Pedido", usuario.nome_completo as "Nome_Comprador(a)" , usuario.cpf as "Cpf_Comprador(a)", 
usuario.telefone as "Telefone_Comprador(a)", endereco.cep as "Cep_Comprador(a)", 
endereco.rua as "Rua_Comprador(a)", endereco.bairro as "Bairro_Comprador(a)", 
endereco.numero as "Número_Comprador(a)", endereco.cidade as "Cidade_Comprador(a)", 
endereco.estado as "Estado_Comprador(a)",

		(select usuario.nome_completo
		from usuario
		where vendedor.id_usuario = usuario.id) as "Nome_Vendedor(a)",
		
		(select usuario.cpf
		from usuario 
		where vendedor.id_usuario = usuario.id) as "Cpf_Vendedor(a)",
		
		(select usuario.telefone 
		from usuario 
		where vendedor.id_usuario = usuario.id) as "Telefone_Vendedor(a)",
		
		(select endereco.cep 
		from endereco, usuario
		where usuario.id = endereco.id_usuario and vendedor.id_usuario = usuario.id) as "Cep_Vendedor(a)",
		
		(select endereco.rua
		from endereco, usuario
		where usuario.id = endereco.id_usuario and vendedor.id_usuario = usuario.id) as "Rua_Vendedor(a)",
		
		(select endereco.numero
		from endereco, usuario
		where usuario.id = endereco.id_usuario and vendedor.id_usuario = usuario.id) as "Número_Vendedor(a)",
		
		(select endereco.bairro
		from endereco, usuario
		where usuario.id = endereco.id_usuario and vendedor.id_usuario = usuario.id) as "Bairro_Vendedor(a)",
		
		(select endereco.cidade
		from endereco, usuario
		where usuario.id = endereco.id_usuario and vendedor.id_usuario = usuario.id) as "Cidade_Vendedor(a)",
		
		(select endereco.estado
		from endereco, usuario
		where usuario.id = endereco.id_usuario and vendedor.id_usuario = usuario.id) as "Estado_Vendedor(a)",
		
pedido.data_pedido, produto.nome_produto, produto.valor_unitario, pedido.quantidade_produto, 
(produto.valor_unitario*pedido.quantidade_produto) as Valor_Total

from endereco, pedido, pedidoitem, produto, usuario, vendedor, comprador
where usuario.id = endereco.id_usuario and comprador.id_usuario = usuario.id 
and pedido.id_comprador = comprador.id and pedido.id = pedidoitem.id_pedido 
and pedido.id_vendedor = vendedor.id and pedidoitem.id_produto = produto.id
and pedido.id = 6