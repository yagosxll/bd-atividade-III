create database tb;
use tb;

CREATE TABLE funcionarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  cargo VARCHAR(255) NOT NULL,
  departamento VARCHAR(255) NOT NULL
);

INSERT INTO funcionarios (nome, cargo, departamento) VALUES
('Ingrid Batista', 'Administrador', 'Administrativo'),
('Rodrigo Santos', 'Adminstrador de Cargas', 'Administrativo'),
('Viviane Silva', 'Gerente', 'Bradesco'),
('Elen Ferreira', 'CEO', 'Petrobras');

CREATE VIEW vw_funcionarios_departamento AS
SELECT nome, cargo
FROM funcionarios
WHERE departamento = 'Administrativo';

select * from vw_funcionarios_departamento;
