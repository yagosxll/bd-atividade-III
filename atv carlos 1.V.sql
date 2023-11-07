Use tb;

CREATE TABLE pedidos (
  numero_pedido INT AUTO_INCREMENT PRIMARY KEY,
  data_pedido DATE NOT NULL,
  status VARCHAR(255) NOT NULL
);

INSERT INTO pedidos (data_pedido, status) VALUES
('2024-12-03', 'Pendente'),
('2023-01-02', 'Entregue'),
('2023-11-15', 'Pendente'),
('2023-05-08', 'Entrege');

CREATE VIEW vw_pedidos_pendentes AS
SELECT numero_pedido, data_pedido, status
FROM pedidos
WHERE status = 'Pendente';

select * from vw_pedidos_pendentes;