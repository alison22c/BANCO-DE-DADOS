CREATE DATABASE ecommerce_db;

USE ecommerce_db;


CREATE TABLE Cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    endereco VARCHAR(255),
    email VARCHAR(100),
    celular VARCHAR(20),
    data_nascimento DATE
);


CREATE TABLE Produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10, 2),
    descricao TEXT,
    quantidade_estoque INT
);


CREATE TABLE Pedido (
    numero_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data_compra DATE,
    valor_total DECIMAL(10, 2),
    data_entrega_estimada DATE,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id)
);

CREATE TABLE ItemPedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    valor_unitario DECIMAL(10, 2),
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (id_pedido) REFERENCES Pedido(numero_pedido),
    FOREIGN KEY (id_produto) REFERENCES Produto(id)
);


INSERT INTO Cliente (nome, endereco, email, celular, data_nascimento)
VALUES
    ('João Silva', 'Rua A, 123', 'joao@email.com', '(11) 91234-5678', '1990-05-15'),
    ('Maria Santos', 'Avenida B, 456', 'maria@email.com', '(11) 98765-4321', '1985-10-20'),
    ('Carlos Oliveira', 'Rua C, 789', 'carlos@email.com', '(11) 99876-5432', '1978-03-12'),

INSERT INTO Produto (nome, preco, descricao, quantidade_estoque)
VALUES
    ('Camiseta Preta', 29.99, 'Camiseta de algodão preta', 50),
    ('Calça Jeans', 59.99, 'Calça jeans azul', 30),
    ('Tênis Esportivo', 89.99, 'Tênis para corrida preto', 20),

INSERT INTO Pedido (id_cliente, data_compra, valor_total, data_entrega_estimada)
VALUES
    (1, '2024-03-01', 99.99, '2024-03-10'),
    (2, '2024-03-02', 129.99, '2024-03-12'),
    (3, '2024-03-03', 49.99, '2024-03-08'),

INSERT INTO ItemPedido (id_pedido, id_produto, quantidade, valor_unitario, valor_total)
VALUES
    (1, 1, 2, 29.99, 59.98),
    (1, 3, 1, 89.99, 89.99),
    (2, 2, 1, 59.99, 59.99),

UPDATE Cliente
SET nome = 'João da Silva', email = 'joao.silva@email.com'
WHERE id = 1;

UPDATE Produto
SET preco = 34.99
WHERE id = 1;

UPDATE Produto
SET quantidade_estoque = 15
WHERE id = 3;

UPDATE Pedido
SET valor_total = 139.97
WHERE numero_pedido = 1;


DELETE FROM Cliente
WHERE id = 2;


DELETE FROM Produto
WHERE id = 4;