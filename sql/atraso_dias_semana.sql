SELECT 
  EXTRACT(DOW FROM hora_data_pedido) AS dia_semana,
  EXTRACT(HOUR FROM hora_data_pedido) AS hora,
  COUNT(*) AS total_pedidos,
  SUM(CASE WHEN flag_atraso_pedido THEN 1 ELSE 0 END) AS pedidos_atrasados
FROM pedidos
GROUP BY dia_semana, hora
ORDER BY dia_semana, hora;
