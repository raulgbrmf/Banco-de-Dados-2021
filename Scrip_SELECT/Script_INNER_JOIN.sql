--demonstra qual funcionário cadastro cada produto.

SELECT cpf_funcionario, nm_funcionario, CADASTRO_PRODUTO.id_produto 
FROM FUNCIONARIO
INNER JOIN CADASTRO_PRODUTO 
ON FUNCIONARIO.id = CADASTRO_PRODUTO.id_funcionario;
