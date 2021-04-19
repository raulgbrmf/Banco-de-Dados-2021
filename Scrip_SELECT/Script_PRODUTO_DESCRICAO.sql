--retorna os dados de descrição e produto relacionando-os e os ordenando em ordem crescente.

SELECT p.id, p.nm_produto , dp.cor, dp.peso, dp.dt_fabricacao, dp.valor
FROM PRODUTO p, DESCRICAO_PRODUTO dp 
WHERE dp.id = p.id_descricao
GROUP BY dp.valor
ORDER BY COUNT(p.id)ASC ;
