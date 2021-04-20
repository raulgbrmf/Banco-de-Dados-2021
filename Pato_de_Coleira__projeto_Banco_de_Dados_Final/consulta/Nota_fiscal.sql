SELECT produto.nome ,produto.valor_unit,Sum (valor_unit) As total ,produto.descricao,endereco.cep,endereco.estado , usuario.nome , usuario.cpf,
telefone.num_celular ,pedido.dt_pedido 
from produto, endereco , usuario , telefone , pedido , pedido_item , cliente
where pedido_item.id_pedido = pedido.id and  pedido_item.id_produto = produto.id and pedido.id= 2
and endereco.id = usuario.id_endereco and telefone.id = usuario.id_telefone and usuario.id = cliente.id_usuario and cliente.id = pedido.id_cliente




