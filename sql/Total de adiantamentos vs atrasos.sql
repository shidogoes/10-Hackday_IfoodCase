-- Total de adiantamentos vs atrasos
SELECT
  SUM(CASE WHEN atraso_pedido_seg < 0 THEN 1 ELSE 0 END) AS adiantados,
  SUM(CASE WHEN atraso_pedido_seg > 0 THEN 1 ELSE 0 END) AS atrasados
FROM pedidos;
