SELECT 
  COUNT(*) AS total,
  COUNT(*) FILTER (WHERE numero_pedido IS NULL) AS pedido_nulls,
  COUNT(*) FILTER (WHERE hora_data_pedido IS NULL) AS data_nulls,
  COUNT(*) FILTER (WHERE id_loja IS NULL) AS loja_nulls,
  COUNT(*) FILTER (WHERE distancia_restaurante_cliente_km IS NULL) AS dist_nulls
FROM pedidos;
