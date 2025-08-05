ALTER TABLE pedidos ADD COLUMN fim_de_semana VARCHAR(3);

UPDATE pedidos SET fim_de_semana =
  CASE WHEN dia_da_semana IN ('Sábado', 'Domingo') THEN 'Sim' ELSE 'Não' END;
