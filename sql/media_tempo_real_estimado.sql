SELECT 
  AVG(tempo_entrega_real_seg)::numeric(10,2) AS media_tempo_real_seg,
  AVG(tempo_entrega_estimado_seg)::numeric(10,2) AS media_tempo_estimado_seg
FROM pedidos;
