SELECT 
  COUNT(*) AS total_pedidos,
  SUM(CASE WHEN flag_atraso_pedido THEN 1 ELSE 0 END) AS pedidos_atrasados,
  ROUND(100.0 * SUM(CASE WHEN flag_atraso_pedido THEN 1 ELSE 0 END)/COUNT(*), 2) AS percentual_atrasados
FROM pedidos;







