DROP TABLE IF EXISTS Cliente;
CREATE TABLE Cliente (
Cod_Cliente 			INTEGER PRIMARY KEY AUTOINCREMENT,
Nome_Usuario			VARCHAR (50) NOT NULL,
Nome_Cliente			VARCHAR(100),
CPF_Cliente				INTEGER NOT NULL,
Email_Cliente			TEXT NOT NULL,
Data_Nascimento_Cliente	DATE
);



DROP TABLE IF EXISTS Funcionario;
CREATE TABLE Funcionario (
Cod_Funcionario		INTEGER PRIMARY KEY AUTOINCREMENT,
Nome_Funcionario	VARCHAR(100) NOT NULL,
CPF_Funcionario		INTEGER NOT NULL
);



DROP TABLE IF EXISTS Categoria;
CREATE TABLE Categoria (
Cod_Categoria		INTEGER PRIMARY KEY AUTOINCREMENT,
Nome_Categoria		TEXT NOT NULL,
Descricao_Categoria	TEXT NOT NULL
);



DROP TABLE IF EXISTS Endereco;
CREATE TABLE Endereco (
Cod_Endereco 	INTEGER PRIMARY KEY AUTOINCREMENT,
CEP				INTEGER NOT NULL,
Bairro			VARCHAR(50) NOT NULL,
Rua				VARCHAR(100) NOT NULL,
Número			INTEGER,
Cod_Cliente		INTEGER NOT NULL,
FOREIGN KEY (Cod_Cliente) REFERENCES Cliente(Cod_Cliente)
);



DROP TABLE IF EXISTS Pedido;
CREATE TABLE Pedido (
Cod_Pedido		INTEGER PRIMARY KEY AUTOINCREMENT,
Data_Pedido		DATE,
Cod_Cliente		INTEGER NOT NULL,
Cod_Funcionario	INTEGER NOT NULL,
FOREIGN KEY 	(Cod_Cliente) REFERENCES Cliente(Cod_Cliente),
FOREIGN KEY 	(Cod_Funcionario) REFERENCES Funcionario(Cod_Funcionario)
);


DROP TABLE IF EXISTS Produto;
CREATE TABLE Produto (
Cod_Produto			INTEGER PRIMARY KEY AUTOINCREMENT,
Quant_Estoque		INTEGER DEFAULT 0,
Data_Fabricacao		INTEGER NOT NULL,
Valor_Unitario		DECIMAL (10, 2),
Nome_Produto		VARCHAR (100) NOT NULL,
Descricao_Produto	VARCHAR (150) NOT NULL,
Cod_Funcionario		INTEGER NOT NULL,
Cod_Categoria		INTEGER NOT NULL,
FOREIGN KEY 		(Cod_Funcionario) REFERENCES Funcionario(Cod_Funcionario),
FOREIGN KEY 		(Cod_Categoria) REFERENCES Categoria(Cod_Categoria)
);



DROP TABLE IF EXISTS PedidoItem;
CREATE TABLE PedidoItem (
Cod_PedidoItem	INTEGER PRIMARY KEY AUTOINCREMENT,
Quant_Pedido	INTEGER,
Cod_Pedido		INTEGER NOT NULL,
Cod_Produto		INTEGER NOT NULL,
FOREIGN KEY 	(Cod_Pedido) REFERENCES Pedido(Cod_Pedido),
FOREIGN KEY 	(Cod_Produto) REFERENCES Produto(Cod_Produto)
);