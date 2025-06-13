CREATE DATABASE magic;
USE magic;

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(20)
);

CREATE TABLE presentes (
    id_presente INT AUTO_INCREMENT PRIMARY KEY,
    nome_presente VARCHAR(100) NOT NULL,
    valor_unitario DECIMAL(10,2) NOT NULL
);


CREATE TABLE pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_presente INT NOT NULL,
    data_entrega DATE NOT NULL,
    mensagem_personalizada TEXT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_presente) REFERENCES presentes(id_presente)
);

INSERT INTO clientes (nome_completo, email, telefone) VALUES
('Joao Gomes', 'Joao.Gomes@gmail.com', '(51) 91111-1111'),
('Arthur Hider', 'Arthur.Hider@yahoo.com', '(51) 99999-9999'),
('Felipe Kohler', 'Fe.Kohler@gmail.com', '(51) 98888-8888'),
('Rodrigo Miguel', 'Rodrigo.Miguel@outlook.com', '(51) 93333-3333');

INSERT INTO presentes (nome_presente, valor_unitario) VALUES
('Buquê de Rosas', 120.00),
('Caixa de Chocolates', 75.50),
('Urso de Pelúcia', 95.00),
('Colar de coracao', 150.00);

INSERT INTO pedidos (id_cliente, id_presente, data_entrega, presente_entregue, mensagem_personalizada) VALUES
(1, 1, '2025-06-12', TRUE, 'Você é a flor mais bonita do meu jardim.'),
(2, 2, '2025-06-11', FALSE, 'Um doce para adoçar ainda mais o nosso amor.'),
(3, 3, '2025-06-12', TRUE, 'Sempre com você, meu amor!'),
(4, 4, '2025-06-13', FALSE, 'Para iluminar seu coração como você ilumina o meu.');



UPDATE presentes
SET valor = valor * 1.15
WHERE valor < 100.00;

UPDATE clientes
SET telefone = '(51)977777777'
WHERE id_cliente = 'Felipe Kohler';
DELETE FROM pedidos
WHERE data_pedido < '2025-06-11';


DELETE FROM pedidos
WHERE nome_presente = "Chocolate";
 
UPDATE pedidos
SET nome_presente = "Não está mais a venda!"
WHERE nome_presente = "Chocolate";



















