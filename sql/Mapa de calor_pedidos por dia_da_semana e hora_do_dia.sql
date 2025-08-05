SELECT dia_da_semana, hora_do_dia, COUNT(*) AS pedidos
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
