SELECT DATE(hora_data_pedido) AS dia, COUNT(*) AS pedidos
FROM pedidos
GROUP BY dia
ORDER BY dia;
