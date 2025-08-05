ALTER TABLE pedidos ADD COLUMN dia_da_semana VARCHAR(10);

UPDATE pedidos
SET dia_da_semana = 
    CASE EXTRACT(DOW FROM hora_data_pedido)
        WHEN 0 THEN 'Domingo'
        WHEN 1 THEN 'Segunda'
        WHEN 2 THEN 'Terça'
        WHEN 3 THEN 'Quarta'
        WHEN 4 THEN 'Quinta'
        WHEN 5 THEN 'Sexta'
        WHEN 6 THEN 'Sábado'
    END;
