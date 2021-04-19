--	DELETE: 

--Criamos sem querer um endereço repetido e usamos DELETE para excluir

DELETE FROM Endereco
WHERE ID_endereco = 6;

--	UPDATES: Lucas C

/* Essas foram as mudanças nas datas do Cadastro
mudamos o formato das datas de dd/mm/aaaa para 'aaaa-mm-dd'
*/

UPDATE Cadastro
set datanasc = '1980-08-23'
WHERE ID_cadastro =1;

UPDATE Cadastro
set datanasc = '1953-02-14'
WHERE ID_cadastro =2;

UPDATE Cadastro
set datanasc = '2000-01-13'
WHERE ID_cadastro =3;

UPDATE Cadastro
set datanasc = '1992-04-29'
WHERE ID_cadastro =4;

UPDATE Cadastro
set datanasc = '1912-09-01'
WHERE ID_cadastro =5;


/*Essas mudanças foram todas feitas em PedidoItem

A primeira pra mudar a qantidade comprada 
A segunda para mudar a quantidade e o produto
A terceira para mudar quem está comprando
*/
UPDATE PedidoItem
set quantidade = 4
WHERE ID_pedidoitem =1;

UPDATE PedidoItem
set quantidade = 1, ID_produto = 3
WHERE ID_pedidoitem =7;

UPDATE PedidoItem
SET ID_Pedido = 3
WHERE ID_PedidoItem = 3 ;