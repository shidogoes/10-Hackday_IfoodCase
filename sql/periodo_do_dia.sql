ALTER TABLE pedidos ADD COLUMN periodo_do_dia VARCHAR(10);

UPDATE pedidos
SET periodo_do_dia = CASE
    WHEN hora_do_dia BETWEEN 6 AND 10 THEN 'Manhã'
    WHEN hora_do_dia BETWEEN 11 AND 13 THEN 'Almoço'
    WHEN hora_do_dia BETWEEN 14 AND 17 THEN 'Tarde'
    WHEN hora_do_dia BETWEEN 18 AND 22 THEN 'Jantar'
    ELSE 'Madrugada'
END;
