
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

