SELECT 
  dia_da_semana,
  hora_do_dia,
  ROUND(100.0 * SUM(CASE WHEN flag_atraso_pedido THEN 1 ELSE 0 END) / COUNT(*), 2) AS taxa_atraso_pct,
  COUNT(*) AS total_pedidos
FROM pedidos
GROUP BY dia_da_semana, hora_do_dia
ORDER BY
    CASE dia_da_semana
        WHEN 'Domingo' THEN 1
        WHEN 'Segunda' THEN 2
        WHEN 'Terça' THEN 3
        WHEN 'Quarta' THEN 4
        WHEN 'Quinta' THEN 5
        WHEN 'Sexta' THEN 6
        WHEN 'Sábado' THEN 7
    END, hora_do_dia;
