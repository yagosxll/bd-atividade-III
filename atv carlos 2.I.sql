create database atv;
use atv;

CREATE TABLE trigge.produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome_produto VARCHAR(255) NOT NULL,
  data_validade DATE NOT NULL,
  preco DECIMAL(10, 2) NOT NULL,
  quantidade_estoque INT NOT NULL
);

DELIMITER //
CREATE TRIGGER tg_validar_data_validade
BEFORE INSERT ON produtos
FOR EACH ROW
BEGIN
    IF NEW.data_validade < CURDATE() THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Data de validade vencida';
    END IF;
END //
DELIMITER ;

INSERT INTO produtos (nome_produto, data_validade, preco, quantidade_estoque)
VALUES ('Hamburguer', '1400-12-31', 50.00, 100);

