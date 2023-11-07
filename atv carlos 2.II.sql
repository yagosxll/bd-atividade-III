Use atv;

CREATE TABLE vendas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_produto INT NOT NULL,
  data_venda DATE NOT NULL,
  valor DECIMAL(10, 2) NOT NULL
);

DELIMITER //
CREATE TRIGGER tg_aumentar_preco_produto
BEFORE UPDATE ON produtos
FOR EACH ROW
BEGIN
    SET NEW.preco = NEW.preco * 1.10;
END //
DELIMITER ;


INSERT INTO produtos (nome_produto, data_validade, preco, quantidade_estoque)
VALUES ('Sorvete', '2025-12-31', 50.00, 100);

SELECT * FROM produtos WHERE nome_produto = 'Sorvete';