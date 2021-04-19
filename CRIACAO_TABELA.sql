DROP TABLE IF EXISTS Endereco_Usuario;
CREATE TABLE Endereco_Usuario(
ID_Endereco INTEGER PRIMARY KEY AUTOINCREMENT, 
Cidade TEXT NOT NULL, 
CEP INTEGER NOT NULL, 
Logradouro TEXT NOT NULL, 
Bairro TEXT NOT NULL);

DROP TABLE IF EXISTS Usuario;
CREATE TABLE Usuario (
ID_Usuario INTEGER PRIMARY KEY AUTOINCREMENT,
ID_Endereco INTEGER NOT NULL,
Nome_Usuario TEXT NOT NULL,
Data_Nasc_Usuario DATE NOT NULL,
Telefone_Usuario INTEGER NOT NULL,
Nickname_Usuario TEXT NOT NULL,
Email_Usuario TEXT NOT NULL,
CPF_Usuario INTEGER NOT NULL,
FOREIGN KEY (ID_Endereco) REFERENCES Endereco_Usuario (ID_Endereco));

DROP TABLE IF EXISTS Pedido;
CREATE TABLE Pedido (
ID_Pedido INTEGER PRIMARY KEY AUTOINCREMENT,
Data_Pedido DATE NOT NULL,
Quantidade_Produtos INTEGER NOT NULL,
ID_Comprador INTEGER NOT NULL,
FOREIGN KEY (ID_Comprador) REFERENCES Usuario(ID_Usuario));

DROP TABLE IF EXISTS Categoria;
CREATE TABLE Categoria (
ID_Categoria INTEGER PRIMARY KEY AUTOINCREMENT,
Nome_Categoria TEXT NOT NULL,
Descricao_Categoria INTEGER NOT NULL);

DROP TABLE IF EXISTS Descricao_Produto;
CREATE TABLE Descricao_Produto (
ID_Descricao_Produto INTEGER PRIMARY KEY,
Tamanho TEXT NOT NULL,
Cor TEXT NOT NULL,
Marca TEXT NOT NULL);

DROP TABLE IF EXISTS Produto;
CREATE TABLE Produto (
ID_Produto INTEGER PRIMARY KEY AUTOINCREMENT,
ID_Descricao_Produto INTEGER NOT NULL,
ID_Vendedor INTEGER NOT NULL,
Nome_Produto TEXT NOT NULL,
Quantidade_Estoque INTEGER NOT NULL,
Data_Fabricacao DATE NOT NULL,
Valor_Unitario REAL NOT NULL,
ID_Categoria INTEGER NOT NULL,
FOREIGN KEY (ID_Categoria) REFERENCES Categoria (ID_Categoria),
FOREIGN KEY (ID_Vendedor) REFERENCES Usuario (ID_Usuario),
FOREIGN KEY (ID_Descricao_Produto) REFERENCES Descricao_Produto(ID_Descricao_Produto));

DROP TABLE IF EXISTS Pedido_Item;
CREATE TABLE Pedido_Item(
ID_Pedido_Item INTEGER PRIMARY KEY AUTOINCREMENT,
ID_Produto INTEGER NOT NULL,
ID_Pedido INTEGER NOT NULL,
FOREIGN KEY (ID_Pedido) REFERENCES Pedido (ID_Pedido)
FOREIGN KEY (ID_Produto) REFERENCES Produto (ID_Produto) );