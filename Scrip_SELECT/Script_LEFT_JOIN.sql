SELECT c2.nm_completo , ec.cep 
FROM CLIENTE c2 
LEFT JOIN ENDERECO_CLIENTE ec 
ON c2.id_endereco = ec.id ;