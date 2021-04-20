create table endereco(
    id integer primary key autoincrement, 
    cep varchar(8) not null, 
    logradouro text, 
    numero integer, 
    bairro text, 
    cidade text, 
    estado text, 
    pais text);

create table telefone(
    id integer primary key autoincrement,
    num_celular varchar(20),
    num_fixo varchar(20));

create table usuario(
    id integer primary key autoincrement,
    nome text not null,
    nome_usuario text,
    email text not null,
    cpf varchar(11) not null,
    dt_nasc date not null,
    id_endereco integer, 
    id_telefone integer,    
    foreign key(id_endereco) references endereco(id),
    foreign key(id_telefone) references telefone(id));

create table cliente(
    id integer primary key autoincrement,
    id_usuario integer,
    foreign key(id_usuario) references usuario(id));

create table vendedor(
    id integer primary key autoincrement,
    id_usuario integer,
    foreign key(id_usuario) references usuario(id));

create table pedido(
    id integer primary key autoincrement,
    dt_pedido date,
    id_cliente integer,
    foreign key(id_cliente) references cliente(id));

create table categoria(
    id integer primary key autoincrement,
    nome text not null,
    descricao text);

create table produto(
    id integer primary key autoincrement,
    nome text not null,
    descricao text,
    qtd_estoque integer,
    dt_fabricacao date not null,
    valor_unit integer,
	id_vendedor integer,
    id_categoria integer,
	foreign key(id_vendedor) references vendedor(id),
    foreign key(id_categoria) references categoria(id));
    
create table pedido_item(
    id integer primary key autoincrement,
    id_produto integer,
    id_pedido integer,
    foreign key(id_produto) references produto(id),
    foreign key(id_pedido) references pedido(id));
