SELECT c.nm_completo , c.cpf , c.dt_nascimento , c.email , ec.cep , ec.numero_CASA , p.dt_pedido , p.id , p2.nm_produto , dp.cor, dp.peso , dp.dt_fabricacao , dp.valor, (dp.valor + dp.valor) AS valor_total
FROM CLIENTE c , ENDERECO_CLIENTE ec , PEDIDO p , PRODUTO p2 , DESCRICAO_PRODUTO dp
WHERE c.id = 4 AND ec.id = 7 AND p.id_cliente = 4 AND (p2.id = 2 AND dp.id = 3 OR p2.id = 5 AND dp.id = 4);

SELECT  c.nm_completo , c.cpf , c.dt_nascimento , c.email , ec.cep , ec.numero_CASA , p.dt_pedido, (SUM(dp.valor)) AS valor_total
FROM DESCRICAO_PRODUTO dp, CLIENTE c, ENDERECO_CLIENTE ec, PEDIDO p 
WHERE c.id = 4 AND ec.id = 7 AND p.id_cliente = 4 AND (dp.id = 3 OR dp.id = 4);
