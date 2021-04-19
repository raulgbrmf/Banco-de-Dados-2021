INSERT INTO Descricao_Produto (Tamanho,Cor,Marca)
VALUES ('M','Preto','Hang Loose');
INSERT INTO Descricao_Produto (Tamanho,Cor,Marca)
VALUES ('PP','Branco','Lupo');
INSERT INTO Descricao_Produto (Tamanho,Cor,Marca)
VALUES ('6 bocas','Branco','Brastemp');
INSERT INTO Descricao_Produto (Tamanho,Cor,Marca)
VALUES ('G','Cinza','Adidas');
INSERT INTO Descricao_Produto (Tamanho,Cor,Marca)
VALUES ('2 Lugares','Preto','Casas Bahia');

INSERT INTO Pedido (ID_Comprador,Data_Pedido,Quantidade_Produtos)
VALUES ('5','2021-04-12','1');
INSERT INTO Pedido (ID_Comprador,Data_Pedido,Quantidade_Produtos)
VALUES ('3','2021-03-21','2');
INSERT INTO Pedido (ID_Comprador,Data_Pedido,Quantidade_Produtos)
VALUES ('2','2021-02-09','1');
INSERT INTO Pedido (ID_Comprador,Data_Pedido,Quantidade_Produtos)
VALUES ('1','2021-04-20','4');
INSERT INTO Pedido (ID_Comprador,Data_Pedido,Quantidade_Produtos)
VALUES ('4','2021-03-28','1');

INSERT INTO Endereco_Usuario (Cidade,CEP,Logradouro,Bairro)
VALUES ('Petrópolis','25630001','Rua do Imperador','Centro');
INSERT INTO Endereco_Usuario (Cidade,CEP,Logradouro,Bairro) 
VALUES ('Três Rios','25630002','Antônio Carlos','Centro');
INSERT INTO Endereco_Usuario (Cidade,CEP,Logradouro,Bairro) 
VALUES ('Petrópolis','25630003','Rua Pedro Ivo','Morin');
INSERT INTO Endereco_Usuario (Cidade,CEP,Logradouro,Bairro) 
VALUES ('Juiz de Fora','25630004','Alberto Pinto','São Pedro');
INSERT INTO Endereco_Usuario (Cidade,CEP,Logradouro,Bairro)
VALUES ('Rio de Janeiro','25630005','Rua Senador Vergueiro','Flamengo');

INSERT INTO Produto (ID_Vendedor, ID_Categoria, ID_Descricao_Produto, Valor_Unitario, Nome_Produto, Quantidade_Estoque, Data_Fabricacao)
VALUES ('3','4','1','100.00','Blusa','120','2020-09-12');
INSERT INTO Produto (ID_Vendedor, ID_Categoria, ID_Descricao_Produto, Valor_Unitario, Nome_Produto, Quantidade_Estoque, Data_Fabricacao)
VALUES ('4','4','2','30.00','Meia cano alto','100','2020-01-14');
INSERT INTO Produto (ID_Vendedor, ID_Categoria, ID_Descricao_Produto, Valor_Unitario, Nome_Produto, Quantidade_Estoque, Data_Fabricacao)
VALUES ('5','1','3','3400.00','Fogão','90','2019-05-30');
INSERT INTO Produto (ID_Vendedor, ID_Categoria, ID_Descricao_Produto, Valor_Unitario, Nome_Produto, Quantidade_Estoque, Data_Fabricacao)
VALUES ('2','4','4','250.00','Short','110','2019-10-31');
INSERT INTO Produto (ID_Vendedor, ID_Categoria, ID_Descricao_Produto, Valor_Unitario, Nome_Produto, Quantidade_Estoque, Data_Fabricacao)
VALUES ('1','5','5','600.00','Sofá','600','2020-10-19');

INSERT INTO Usuario (Nome_Usuario,Telefone_Usuario,Nickname_Usuario,Email_Usuario,CPF_Usuario,Data_Nasc_Usuario,ID_Endereco)
VALUES ('João','24992400588','JG','guiguifarantes@gmail.com','12345678911','2000-10-19','1');
INSERT INTO Usuario (Nome_Usuario,Telefone_Usuario,Nickname_Usuario,Email_Usuario,CPF_Usuario,Data_Nasc_Usuario,ID_Endereco)
VALUES ('Matheus','24999652318','Mork','matheusmorsch@gmail.com','12345678912','1990-12-18','2');
INSERT INTO Usuario (Nome_Usuario,Telefone_Usuario,Nickname_Usuario,Email_Usuario,CPF_Usuario,Data_Nasc_Usuario,ID_Endereco)
VALUES ('Lucas','24992225579','Luquinhas','lucas.louro@estudante.firjan.senai.br','12345678913','1994-09-18','3');
INSERT INTO Usuario (Nome_Usuario,Telefone_Usuario,Nickname_Usuario,Email_Usuario,CPF_Usuario,Data_Nasc_Usuario,ID_Endereco)
VALUES ('Vanessa','24992526204','Vava','vanessa2001@gmail.com','12345678914','2001-03-10','4');
INSERT INTO Usuario (Nome_Usuario,Telefone_Usuario,Nickname_Usuario,Email_Usuario,CPF_Usuario,Data_Nasc_Usuario,ID_Endereco)
VALUES ('Júlia','24992081941','Julhao','juliasantos@gmail.com','12345678915','2003-04-15','5');

INSERT INTO Categoria (Nome_Categoria,Descricao_Categoria)
VALUES ('Eletrodomésticos','Produto eletrônico para a casa');
INSERT INTO Categoria (Nome_Categoria,Descricao_Categoria)
VALUES ('Celulares','Aparelho para comunicação');
INSERT INTO Categoria (Nome_Categoria,Descricao_Categoria)
VALUES ('Esportes','Artigos esportivos');
INSERT INTO Categoria (Nome_Categoria,Descricao_Categoria)
VALUES ('Vestimentas','Roupas diversas');
INSERT INTO Categoria (Nome_Categoria,Descricao_Categoria)
VALUES ('Móveis','Decorações para casa');

INSERT INTO Pedido_Item (ID_Pedido,ID_Produto)
VALUES ('1','5');
INSERT INTO Pedido_Item (ID_Pedido,ID_Produto)
VALUES ('2','3');
INSERT INTO Pedido_Item (ID_Pedido,ID_Produto)
VALUES ('3','2');
INSERT INTO Pedido_Item (ID_Pedido,ID_Produto)
VALUES ('4','1');
INSERT INTO Pedido_Item (ID_Pedido,ID_Produto)
VALUES ('5','4');
