SELECT id_loja, COUNT(*) AS atrasos
FROM pedidos
WHERE flag_atraso_pedido = TRUE
GROUP BY id_loja
ORDER BY atrasos DESC
LIMIT 10;
