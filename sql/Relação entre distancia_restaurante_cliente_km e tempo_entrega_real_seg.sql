SELECT 
  ROUND(distancia_restaurante_cliente_km, 1) AS dist_km,
  ROUND(AVG(tempo_entrega_real_seg)/60, 1) AS media_tempo_entrega_min,
  COUNT(*) AS pedidos
FROM pedidos
GROUP BY dist_km
ORDER BY dist_km;
