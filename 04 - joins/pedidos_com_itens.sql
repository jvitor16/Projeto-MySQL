
-- Junta dados de 4 tabelas diferentes.
--Mostra dados do pedido + cliente + produtos.

SELECT 
    p.id,
    c.nome AS cliente,
    pr.nome AS produto,
    i.quantidade,
    i.preco_unitario
FROM pedidos p
JOIN clientes c ON c.id = p.cliente_id
JOIN itens_pedido i ON i.pedido_id = p.id
JOIN produtos pr ON pr.id = i.produto_id;
