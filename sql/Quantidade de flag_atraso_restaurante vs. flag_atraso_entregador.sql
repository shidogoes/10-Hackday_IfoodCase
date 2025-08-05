SELECT 
  SUM(CASE WHEN flag_atraso_restaurante = TRUE THEN 1 ELSE 0 END) AS atrasos_restaurante,
  SUM(CASE WHEN flag_atraso_entregador = TRUE THEN 1 ELSE 0 END) AS atrasos_entregador
FROM pedidos;
