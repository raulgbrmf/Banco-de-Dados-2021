SELECT Cadastro.ID_cadastro, Cadastro.datanasc, Cadastro.nome
FROM Cadastro 
WHERE datanasc >='1900-01-01' AND
datanasc <= '1999-12-31';

SELECT Cadastro.nome, Cadastro.datanasc, Endereco.logradouro 
FROM Cadastro, Usuario, Endereco 
WHERE Cadastro.ID_cadastro = Usuario.ID_cadastro AND
Usuario.ID_endereco = Endereco.ID_endereco  AND
Endereco.logradouro = 'rua A';

SELECT Produto.nome, Cadastro.nome , Produto.quantEstoque 
FROM Produto, Cadastro, Usuario 
where Produto.ID_usuario = Usuario.ID_usuario AND 
Usuario.ID_cadastro = Cadastro.ID_cadastro AND 
Cadastro.ID_cadastro = 5

SELECT Cadastro.nome CadastroNome, Produto.descricao, Categoria.nome NomeCategoria
FROM Cadastro, Produto, Categoria, Usuario
WHERE Categoria.ID_categoria = Produto.ID_categoria AND
Produto.ID_usuario = Usuario.ID_usuario AND
Usuario.ID_cadastro = Cadastro.ID_cadastro AND
Cadastro.ID_cadastro = 4

SELECT COUNT(PedidoItem.ID_pedido) Num_Pedido, Cadastro.nome Nome_Comprador, Produto.nome NomeProd
(SELECT SUM(PedidoItem.quantidade) 
	FROM PedidoItem
	WHERE PedidoItem.ID_produto = Produto.ID_produto AND 
	PedidoItem.ID_pedido = 6 ) AS Total_quant
FROM Usuario, Pedido, PedidoItem, Cadastro, Produto
WHERE Cadastro.ID_cadastro = Usuario.ID_cadastro AND
Pedido.ID_usuario = Usuario.ID_usuario AND
PedidoItem.ID_pedido = Pedido.ID_pedido AND
Produto.ID_produto = PedidoItem.ID_produto AND
PedidoItem.ID_pedido = 6
GROUP BY Produto.ID_produto;

SELECT COUNT(Produto.ID_produto) contagem FROM Produto

--	Nota Fiscal

 SELECT Pedido.datapedido, Produto.nome Nome_Produto, Produto.valor Valor_Unitário, PedidoItem.quantidade,
(PedidoItem.quantidade * Produto.valor) AS valor_item,
(SELECT SUM(PedidoItem.quantidade * Produto.valor) 
    FROM PedidoItem, Produto
    WHERE ID_PedidoItem >= 1 AND
    PedidoItem.ID_pedido = 6 AND
    PedidoItem.ID_produto= Produto.ID_produto) AS valor_total,
Cadastro.nome, Cadastro.cpf, Cadastro.datanasc, Cadastro.email, Cadastro.telecont,
Endereco.bairro, Endereco.cep, Endereco.endnumero, Endereco.logradouro,
(SELECT Cadastro.nome
	FROM Cadastro, Usuario, Produto, PedidoItem 
	where PedidoItem.ID_produto = Produto.ID_produto AND 
	Produto.ID_usuario = Usuario.ID_usuario AND 
	Usuario.ID_cadastro = Cadastro.ID_cadastro AND
	PedidoItem.ID_pedido =6) AS nomeVendedor,
(SELECT Cadastro.telecont
	FROM Cadastro, Usuario, Produto, PedidoItem 
	where PedidoItem.ID_produto = Produto.ID_produto AND 
	Produto.ID_usuario = Usuario.ID_usuario AND 
	Usuario.ID_cadastro = Cadastro.ID_cadastro AND
	PedidoItem.ID_pedido =6) AS TelefoneVendedor,
(SELECT Endereco.bairro
	FROM Usuario, Produto, PedidoItem, Endereco
	WHERE PedidoItem.ID_produto = Produto.ID_produto AND 
	Produto.ID_usuario = Usuario.ID_usuario AND 
	Usuario.ID_endereco = Endereco.ID_endereco AND
	PedidoItem.ID_pedido =6) AS BairroVendedor,
(SELECT Endereco.logradouro
	FROM Usuario, Produto, PedidoItem, Endereco
	WHERE PedidoItem.ID_produto = Produto.ID_produto AND 
	Produto.ID_usuario = Usuario.ID_usuario AND 
	Usuario.ID_endereco = Endereco.ID_endereco AND
	PedidoItem.ID_pedido =6) AS LougradoroVendedor,
(SELECT Endereco.cep
	FROM Usuario, Produto, PedidoItem, Endereco
	WHERE PedidoItem.ID_produto = Produto.ID_produto AND 
	Produto.ID_usuario = Usuario.ID_usuario AND 
	Usuario.ID_endereco = Endereco.ID_endereco AND
	PedidoItem.ID_pedido =6) AS cepVendedor,
(SELECT Endereco.endnumero
	FROM Usuario, Produto, PedidoItem, Endereco
	WHERE PedidoItem.ID_produto = Produto.ID_produto AND 
	Produto.ID_usuario = Usuario.ID_usuario AND 
	Usuario.ID_endereco = Endereco.ID_endereco AND
	PedidoItem.ID_pedido =6) AS endnumeroVendedor
FROM Usuario, Pedido, PedidoItem, Cadastro, Produto, Endereco
WHERE Cadastro.ID_cadastro = Usuario.ID_cadastro AND
Pedido.ID_usuario = Usuario.ID_usuario AND
PedidoItem.ID_pedido = Pedido.ID_pedido AND
Produto.ID_produto = PedidoItem.ID_produto AND
Usuario.ID_endereco = Endereco.ID_endereco  AND 
Pedido.ID_pedido = 6