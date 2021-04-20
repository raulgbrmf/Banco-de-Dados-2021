SELECT ID_Produto Nome_Produto,Valor_Unitario 
FROM Produto
WHERE (ID_Produto = 5);

DELETE FROM Produto
WHERE Valor_Unitario = '600'

INSERT INTO Produto (ID_Vendedor, ID_Categoria, ID_Descricao_Produto, Valor_Unitario, Nome_Produto, Quantidade_Estoque, Data_Fabricacao)
VALUES ('2','5','5','600.00','Sofá','600','2020-10-19');

UPDATE Produto 
SET ID_Produto = 5
WHERE (ID_Produto = 6)
