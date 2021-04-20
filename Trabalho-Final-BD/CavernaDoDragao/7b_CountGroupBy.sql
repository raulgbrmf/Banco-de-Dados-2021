SELECT *
FROM Produto 
WHERE Produto.Descricao_Produto LIKE "%jiu-jitsu%"
GROUP BY Descricao_Produto;

SELECT COUNT (Descricao_Produto)
from Produto
WHERE Produto.Descricao_Produto LIKE "%basquete%"

SELECT COUNT (Cod_Produto), (Nome_Produto)
FROM Produto
GROUP BY Nome_Produto;