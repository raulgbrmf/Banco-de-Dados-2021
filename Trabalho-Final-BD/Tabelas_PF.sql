DROP TABLE IF EXISTS Cadastro;

CREATE TABLE Cadastro(
ID_cadastro integer primary key autoincrement,
datanasc date not null, 
telecont text,
email text not null, 
nome text not null,
cpf text not null);

DROP TABLE IF EXISTS Endereco;

CREATE TABLE Endereco(
ID_endereco integer primary key autoincrement,
endnumero integer not null,
logradouro text not null,
bairro text not null,
cep text not null);

DROP TABLE IF EXISTS Categoria;

CREATE TABLE Categoria(
ID_categoria integer primary key autoincrement,
nome text not null,
descricao text);

DROP TABLE IF EXISTS Usuario;

CREATE TABLE Usuario(
ID_usuario integer primary key autoincrement,
ID_endereco integer not null,
ID_cadastro integer not null,
foreign key (ID_endereco) references Endereco(ID_endereco),
foreign key (ID_cadastro) references Cadastro(ID_cadastro));

DROP TABLE IF EXISTS Produto;

CREATE TABLE Produto(
ID_produto integer primary key autoincrement,
nome text not null,
valor real not null,
descricao text,
datafab date not null,
quantEstoque integer not null,
ID_categoria integer not null,
ID_usuario integer not null,
foreign key (ID_categoria) references Categoria(ID_categoria),
foreign key (ID_usuario) references Usuario(ID_usuario));

DROP TABLE IF EXISTS Pedido;

CREATE TABLE Pedido(
ID_pedido integer primary key autoincrement,
datapedido date not null,
ID_usuario integer not null,
foreign key (ID_usuario) references Usuario(ID_usuario));

DROP TABLE IF EXISTS PedidoItem;

CREATE TABLE PedidoItem(
ID_pedidoitem integer primary key autoincrement,
quantidade integer not null,
ID_produto integer not null,
ID_pedido integer not null,
foreign key (ID_produto) references Produto(ID_produto),
foreign key (ID_pedido) references Pedido(ID_pedido));
