ALTER TABLE pedidos ADD COLUMN hora_do_dia INT;

UPDATE pedidos SET hora_do_dia = EXTRACT(HOUR FROM hora_data_pedido)::INT;
