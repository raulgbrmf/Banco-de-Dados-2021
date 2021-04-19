--	Categoria:

INSERT  INTO Categoria(nome,descricao)
values('HDD', 'Armazena todos seus melhores momentos em um computador');

INSERT  INTO Categoria(nome, descricao)
values('Celular', 'dispositivo para falar com seus melhores amigos');

INSERT  INTO Categoria(nome, descricao)
values('caneca', 'porcelana para beber sua bebida quente favorita');

INSERT  INTO Categoria(nome, descricao)
values('Televisão', 'aparelho eletronico para assistir seus filmes e series favoritos');

INSERT  INTO Categoria(nome, descricao)
values('Console', 'aparelho para jogos eletronicos favoritos');

INSERT INTO Categoria(Nome, Descricao) 
values('Recipiente','Garrafa para beber sua bebida quente');

--	Endereco:

INSERT  INTO Endereco(endnumero, logradouro, cep, bairro)
values(10, 'rua B', 25630021, 'mosela');

INSERT  INTO Endereco(endnumero, logradouro, cep, bairro)
values(05,'rua A', 25436634, 'centro');

INSERT  INTO Endereco(endnumero, logradouro, cep, bairro)
values(20, 'Alameda A', 25522672, 'itaipava');

INSERT  INTO Endereco(endnumero, logradouro, cep, bairro)
values(100, 'avenida A', 25480920, 'quitandinha');

INSERT  INTO Endereco(endnumero, logradouro, cep, bairro)
values(250, 'vila B', 25940730, 'valparaiso');

INSERT  INTO Endereco(endnumero, logradouro, cep, bairro)
values(10, 'rua B', 25630021, 'mosela');

--	Cadastro: Falar que erramos no formato DATE e usamos UPDATE para consertar 

INSERT  INTO Cadastro(nome, cpf, email, telecont, datanasc)
values('lucas f', 25678954332, 'lucas_f@gmail.com', 024981689345, 23/08/1980);

INSERT  INTO Cadastro(nome, cpf, email, telecont, datanasc)
values('jose s', 32625140798, 'sjose@msn.com', 024993264021, 14/02/1953);

INSERT  INTO Cadastro(nome, cpf, email, telecont, datanasc)
values('iris c', 13896785421, 'iris_c@hotmail.com', 021986629031, 13/01/2000);

INSERT  INTO Cadastro(nome, cpf, email, telecont, datanasc)
values('matheus t', 47762201973, 'mathanos@avengers.com', 011947628922, 29/04/1992);

INSERT  INTO Cadastro(nome, cpf, email, telecont, datanasc)
values('diana m', 45961874583, 'diana_dc@outlook.com', 022988602506, 01/09/1912);

--	Usuario:

INSERT  INTO Usuario (ID_cadastro,ID_endereco)
values(1,3);

INSERT  INTO Usuario (ID_cadastro,ID_endereco)
values(2,4);

INSERT  INTO Usuario (ID_cadastro,ID_endereco)
values(3,5);

INSERT  INTO Usuario (ID_cadastro,ID_endereco)
values(4,2);

INSERT  INTO Usuario (ID_cadastro,ID_endereco)
values(5,1);

--	Pedido:

INSERT  INTO Pedido (datapedido, ID_usuario)
values('2016-06-03',5);

INSERT  INTO Pedido (datapedido, ID_usuario)
values('2017-06-15',3);

-- Mudamos este pedido para que a iris seja a compradora
INSERT  INTO Pedido (datapedido, ID_usuario)
values('2021-04-06',1);

INSERT  INTO Pedido (datapedido, ID_usuario)
values('2020-09-07',2);

INSERT  INTO Pedido (datapedido, ID_usuario)
values('2018-01-15',4);

INSERT INTO Pedido (Datapedido, ID_Usuario) 
values('2019-05-05', 3);

--	Produto:

INSERT  INTO Produto (descricao,  datafab, nome, valor, quantEstoque, ID_usuario, ID_categoria)
values('este hdd salva mais de 500gb de lembranças','2019-07-30', 'hdd 500gb', 150.00, 30, 1, 1);

INSERT  INTO Produto (descricao,  datafab, nome, valor, quantEstoque, ID_usuario, ID_categoria)
values('captura fotos inesqueciveis', '2020-06-02', 'moto g6', 650.00, 40, 2, 2);

INSERT  INTO Produto (descricao,  datafab, nome, valor, quantEstoque, ID_usuario, ID_categoria)
values('linda caneca para presentear o amor da sua vida', '2019-05-04', 'caneca porcelana verde', 40.00, 8, 4,3);

INSERT  INTO Produto (descricao,  datafab, nome, valor, quantEstoque, ID_usuario, ID_categoria)
values('tv 4k smart com bordas invisiveis e som espacial','2020-02-29', 'tv 4k smart', 1500.00, 300, 5, 4);

INSERT  INTO Produto (descricao,  datafab, nome, valor, quantEstoque, ID_usuario, ID_categoria)
values('console super raro parou de ser produzido', '2013-06-25', 'ouya', 19.99, 3, 3,5);

INSERT INTO Produto (Descricao, Datafab, Nome, Valor, QuantEstoque, ID_Usuario, ID_Categoria)
values ('armazena suas melhores bebidas','2019-08-11','Garrafa termica', 70.00, 20, 4, 6);


--	PedidoItem:

--mudamos a quantidade para 4
INSERT  INTO PedidoItem (quantidade, ID_produto, ID_pedido)
values(10 , 3, 1);

INSERT  INTO PedidoItem (quantidade, ID_produto, ID_pedido)
values(5 , 4, 2);

--Mudamos o comprador do José para Iris
INSERT  INTO PedidoItem (quantidade, ID_produto, ID_pedido)
values(14 , 1, 4);

INSERT  INTO PedidoItem (quantidade, ID_produto, ID_pedido)
values(1, 2, 4);

INSERT  INTO PedidoItem (quantidade, ID_produto, ID_pedido)
values(3, 3, 5);

INSERT INTO PedidoItem  (Quantidade, ID_Produto, ID_Pedido)
values(1, 6, 6);

--mudamos o ID_Produto para 3 e a quantidade para 1
INSERT INTO PedidoItem  (Quantidade, ID_Produto, ID_Pedido)
values(5, 6, 6);

INSERT INTO PedidoItem (Quantidade, ID_Produto, ID_Pedido)
values (14, 6, 6);