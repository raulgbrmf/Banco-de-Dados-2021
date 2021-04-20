-- Criando as tabelas:
--No caso de postgres INTEGER e AUTOINCREMENT seriam substituidos por serial.
CREATE TABLE Cliente (Id_Cliente INTEGER PRIMARY KEY AUTOINCREMENT, Nome_Completo varchar(60) NOT NULL, Nome_Usuario varchar(20) NOT NULL, Email varchar(30) NOT NULL, Cpf varchar(14) NOT NULL, Data_Nasc DATE);
CREATE TABLE Pedido (Id_Pedido INTEGER PRIMARY KEY AUTOINCREMENT, Data_Pedido DATE NOT NULL, Valor_Total FLOAT, Id_Cliente INTEGER, FOREIGN KEY(Id_Cliente) REFERENCES Cliente(Id_Cliente));
CREATE TABLE Categoria (Id_Categoria INTEGER PRIMARY KEY AUTOINCREMENT, Nome varchar(20) NOT NULL, Descricao varchar(60));
CREATE TABLE Produto (Id_Produto INTEGER PRIMARY KEY AUTOINCREMENT, Nome varchar(20) NOT NULL, Descricao varchar(60), Qtd_Estoque INTEGER NOT NULL, Data_Fabricacao DATE, Valor_Unitario FLOAT NOT NULL, Id_Categoria INTEGER, FOREIGN KEY(Id_Categoria) REFERENCES Categoria(Id_Categoria));
CREATE TABLE PedidoItem (Id_PedidoItem INTEGER PRIMARY KEY AUTOINCREMENT, Quantidade INTEGER NOT NULL, Id_Pedido INTEGER, Id_Produto INTEGER, FOREIGN KEY (Id_Pedido) REFERENCES Pedido(Id_Pedido), FOREIGN KEY (Id_Produto) REFERENCES Produto(Id_Produto));
CREATE TABLE Funcionario (Id_Funcionario INTEGER PRIMARY KEY AUTOINCREMENT, Nome varchar(60) NOT NULL, Cpf varchar(14) NOT NULL);
CREATE TABLE Info_Cliente (Id_Info INTEGER PRIMARY KEY AUTOINCREMENT, CEP varchar(9) NOT NULL, Rua varchar(20) NOT NULL, Numero INTEGER NOT NULL, Complemento varchar(20) NOT NULL, Bairro varchar(20) NOT NULL, Celular varchar(15), Telefone varchar(15), Id_Cliente INTEGER, FOREIGN KEY (Id_Cliente) REFERENCES Cliente(Id_Cliente));
CREATE TABLE FuncionarioProduto (Id_FuncionarioProduto INTEGER PRIMARY KEY AUTOINCREMENT, Id_Funcionario INTEGER, Id_Produto INTEGER, FOREIGN KEY (Id_Funcionario) REFERENCES Funcionario(Id_Funcionario), FOREIGN KEY (Id_Produto) REFERENCES Produto(Id_Produto));
