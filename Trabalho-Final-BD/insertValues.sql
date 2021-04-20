-- Inserindo dados na tabela Cliente
INSERT INTO Cliente (Nome_Completo, Nome_Usuario, Email, Cpf, Data_Nasc)
VALUES ('Igor','Igor1234','igor@serratec.com','123.456.852-45','06/11/1991');
INSERT INTO Cliente (Nome_Completo, Nome_Usuario, Email, Cpf, Data_Nasc)
VALUES ('Paulo','Paulo543','paulo@serratec.com','173.446.152-67','09/01/1999');
INSERT INTO Cliente (Nome_Completo, Nome_Usuario, Email, Cpf, Data_Nasc)
VALUES ('José','JoseOL','jose@serratec.com','234.968.481-14','23/06/1994');
INSERT INTO Cliente (Nome_Completo, Nome_Usuario, Email, Cpf, Data_Nasc)
VALUES ('Tiago','TiagoJS','tiago@serratec.com','488.033.574-20','13/04/1993');
INSERT INTO Cliente (Nome_Completo, Nome_Usuario, Email, Cpf, Data_Nasc)
VALUES ('Ana','Ana17','ana@serratec.com','265.169.785-33','28/02/1996');

-- Inserindo dados na tabela Info_Cliente
INSERT INTO Info_Cliente (CEP, Rua, Numero, Complemento, Bairro, Celular, Telefone, Id_Cliente)
VALUES ('25665-500', 'Rua Luiz Winter', 87, 'A', 'Duarte da Silveira', '(21)97854-5230', '(21)3108-7070', '1');
INSERT INTO Info_Cliente (CEP, Rua, Numero, Complemento, Bairro, Celular, Telefone, Id_Cliente)
VALUES ('26200-563', 'Rua Visconde de Souza Franco', 41, 'B', 'Alto da Serra', '(22)97181-5060', '(22)2222-2565', '2');
INSERT INTO Info_Cliente (CEP, Rua, Numero, Complemento, Bairro, Celular, Telefone, Id_Cliente)
VALUES ('36587-703', 'Rua Luiz Pelegrini', 702, 'C', 'Cascatinha', '(24)98847-4115', '(24)2244-3073', '3');
INSERT INTO Info_Cliente (CEP, Rua, Numero, Complemento, Bairro, Celular, Telefone, Id_Cliente)
VALUES ('45210-224', 'Rua Bartolomeu Sudre', 421, 'A', 'Caxambu', '(24)99921-6474', '(24)2231-3689', '4');
INSERT INTO Info_Cliente (CEP, Rua, Numero, Complemento, Bairro, Celular, Telefone, Id_Cliente)
VALUES ('78554-335', 'Rua Cândido Portinari', 67, 'B', 'Mosela', '(24)98108-0205', '(24)2248-9854', '5');

-- Inserindo dados na tabela Categoria
INSERT INTO Categoria (Nome, Descricao)
VALUES ('Teclados', 'Teclados de várias marcas');
INSERT INTO Categoria (Nome, Descricao)
VALUES ('Mouses', 'Mouses de vários modelos e marcas');
INSERT INTO Categoria (Nome, Descricao)
VALUES ('Headset Gamer', 'Headset de vários modelos e marcas (específicos para jogos)');
INSERT INTO Categoria (Nome, Descricao)
VALUES ('Webcam', 'Webcams de alta resolução');
INSERT INTO Categoria (Nome, Descricao)
VALUES ('Gabinetes', 'Gabinetes diversos');

-- Inserindo dados na tabela Produto
INSERT INTO Produto (Nome, Descricao, Qtd_Estoque, Data_Fabricacao, Valor_Unitario, Id_Categoria)
VALUES ('HyperX Mars RGB', 'Teclado Mecânico Gamer HyperX Mars, RGB, Switch Outemu Blue, US', 20, '05/10/2018', 375.00, 1);
INSERT INTO Produto (Nome, Descricao, Qtd_Estoque, Data_Fabricacao, Valor_Unitario, Id_Categoria)
VALUES ('HyperX Cloud Revolver S', 'Headset Gamer HyperX Cloud Revolver S 7.1 Dolby Digital', 7, '05/10/2018', 833.20, 3);
INSERT INTO Produto (Nome, Descricao, Qtd_Estoque, Data_Fabricacao, Valor_Unitario, Id_Categoria)
VALUES ('Webcam Logitech c922', 'Webcam Full HD Logitech C922 Pro Stream com Microfone Embutido, USB, 1080p e Tripé Incluso', 15, '18/12/2019', 788.15, 4);
INSERT INTO Produto (Nome, Descricao, Qtd_Estoque, Data_Fabricacao, Valor_Unitario, Id_Categoria)
VALUES ('Razer Deathadder V2', 'Mouse Gamer Razer Deathadder V2, Chroma, Optical Switch, 8 Botões, 20000DPI', 25, '17/01/2017', 588.30, 2);
INSERT INTO Produto (Nome, Descricao, Qtd_Estoque, Data_Fabricacao, Valor_Unitario, Id_Categoria)
VALUES ('Gabinete Sharkoon TG5', 'Gabinete Sharkoon TG5 Blue Vidro Temperado 4mm Led Fan 12cm ATX', 10, '08/03/2018', 752.80, 5);

-- Inserindo dados na tabela Funcionario
INSERT INTO Funcionario (Nome, Cpf)
VALUES ('Rafaela', '654.564.879-31');
INSERT INTO Funcionario (Nome, Cpf)
VALUES ('Luan', '031.552.411-75');
INSERT INTO Funcionario (Nome, Cpf)
VALUES ('Diego', '133.224.901-79');
INSERT INTO Funcionario (Nome, Cpf)
VALUES ('Gisele', '588.631.752-12');
INSERT INTO Funcionario (Nome, Cpf)
VALUES ('Helen', '458.327.788-52');

-- Inserindo dados na tabela FuncionarioProduto
INSERT INTO FuncionarioProduto (Id_Funcionario, Id_Produto)
VALUES (1, 1);
INSERT INTO FuncionarioProduto (Id_Funcionario, Id_Produto)
VALUES (4, 2);
INSERT INTO FuncionarioProduto (Id_Funcionario, Id_Produto)
VALUES (1, 3);
INSERT INTO FuncionarioProduto (Id_Funcionario, Id_Produto)
VALUES (2, 4);
INSERT INTO FuncionarioProduto (Id_Funcionario, Id_Produto)
VALUES (3, 5);

-- Inserindo dados na tabela Pedido
INSERT INTO Pedido (Data_Pedido, Id_Cliente)
VALUES ('14/04/2020', 2);
INSERT INTO Pedido (Data_Pedido, Id_Cliente)
VALUES ('25/12/2019', 4);
INSERT INTO Pedido (Data_Pedido, Id_Cliente)
VALUES ('01/10/2020', 2);
INSERT INTO Pedido (Data_Pedido, Id_Cliente)
VALUES ('12/07/2021', 1);
INSERT INTO Pedido (Data_Pedido, Id_Cliente)
VALUES ('28/02/2018', 5);

-- Inserindo dados na tabela PedidoItem
INSERT INTO PedidoItem (Quantidade, Id_Pedido, Id_Produto)
VALUES (1, 1, 1);
INSERT INTO PedidoItem (Quantidade, Id_Pedido, Id_Produto)
VALUES (1, 1, 4);
INSERT INTO PedidoItem (Quantidade, Id_Pedido, Id_Produto)
VALUES (2, 2, 2);
INSERT INTO PedidoItem (Quantidade, Id_Pedido, Id_Produto)
VALUES (1, 3, 5);
INSERT INTO PedidoItem (Quantidade, Id_Pedido, Id_Produto)
VALUES (3, 4, 3);
INSERT INTO PedidoItem (Quantidade, Id_Pedido, Id_Produto)
VALUES (2, 5, 4);