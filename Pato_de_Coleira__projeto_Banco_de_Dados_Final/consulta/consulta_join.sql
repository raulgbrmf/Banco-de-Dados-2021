SELECT usuario.nome,telefone.num_celular ,endereco.cep 
from usuario , telefone , endereco 
where telefone.id = usuario.id_telefone and endereco.id = usuario.id_endereco ; 