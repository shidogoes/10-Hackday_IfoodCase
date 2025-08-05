SELECT modal, 
       COUNT(*) AS total_pedidos, 
       SUM(CASE WHEN flag_atraso_pedido THEN 1 ELSE 0 END) AS pedidos_atrasados
FROM pedidos
GROUP BY modal
ORDER BY pedidos_atrasados DESC;
