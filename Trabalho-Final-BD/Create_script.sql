DROP TABLE IF EXISTS Categoria CASCADE;

CREATE TABLE Categoria(
    id serial PRIMARY KEY,
    nome_categoria varchar(100) NOT NULL,
    descricao_categoria varchar(100) NOT NULL
);

DROP TABLE IF EXISTS Usuario CASCADE;

CREATE TABLE Usuario(
    id serial PRIMARY KEY,
    nome_completo varchar(100),
    nome_usuario varchar(100) NOT NULL,
    telefone varchar(14) NOT NULL,
    email varchar(50) NOT NULL,
    cpf varchar(11) NOT NULL,
    data_nasc date NOT NULL
);

DROP TABLE IF EXISTS Comprador CASCADE;

CREATE TABLE Comprador(
    id serial PRIMARY KEY,
    id_usuario integer NOT NULL UNIQUE,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id)
);

DROP TABLE IF EXISTS Vendedor CASCADE;

CREATE TABLE Vendedor(
    id serial PRIMARY KEY,
    id_usuario integer NOT NULL UNIQUE,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id)
);

DROP TABLE IF EXISTS Produto CASCADE;

CREATE TABLE Produto(
    id serial PRIMARY KEY,
    nome_produto varchar(100) NOT NULL,
    descricao_produto varchar(100) NOT NULL,
    qtd_estoque integer DEFAULT 0,
    valor_unitario decimal(10,2) DEFAULT 0.00,
    data_fabricacao date NOT NULL,
    id_categoria integer NOT NULL,
    id_vendedor integer NOT NULL,
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id),
    FOREIGN KEY (id_categoria) REFERENCES categoria(id)
);

DROP TABLE IF EXISTS Endereco CASCADE;

CREATE TABLE Endereco(
    id serial PRIMARY KEY,
    cep varchar(8) NOT NULL,
    rua varchar(100) NOT NULL,
    bairro varchar(50) NOT NULL,
    numero integer NOT NULL,
    cidade varchar(50) NOT NULL,
    estado varchar(2) NOT NULL,
    id_usuario integer NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id)
);

DROP TABLE IF EXISTS Pedido CASCADE;

CREATE TABLE Pedido(
    id serial PRIMARY KEY,
    data_pedido date DEFAULT current_date,
    quantidade_produto integer NOT NULL,
    id_vendedor integer NOT NULL,
    id_comprador integer NOT NULL,
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id),
    FOREIGN KEY (id_comprador) REFERENCES comprador(id)
);

DROP TABLE IF EXISTS PedidoItem CASCADE;

CREATE TABLE PedidoItem(
    id serial PRIMARY KEY,
    id_pedido integer NOT NULL,
    id_produto integer NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id),
    FOREIGN KEY (id_produto) REFERENCES produto(id)
)