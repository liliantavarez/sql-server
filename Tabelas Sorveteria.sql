CREATE TABLE Produtos  (
	ProdutoID INT IDENTITY(1,1) PRIMARY KEY,
	Sabor VARCHAR(20) NOT NULL, 
	Tipo VARCHAR(20) NOT NULL,
	valorCompra REAL NOT NULL,
	valorVenda REAL NOT NULL,
	Quantidade INT
)

CREATE TABLE Fornecedores (
fornecedorId INT IDENTITY(1,1) PRIMARY KEY,
produtoId INT,
nome VARCHAR(50) NOT NULL,
contato VARCHAR(20) NOT NULL,
FOREIGN KEY(produtoId) REFERENCES Produtos (produtoId)
)

CREATE TABLE Clientes (
clienteId INT IDENTITY(1,1) PRIMARY KEY,
nome VARCHAR(50),
endereco VARCHAR(100),
pontos INT,
dividas REAL
)

CREATE TABLE Compras (
vendaId INT IDENTITY(1,1) PRIMARY KEY,
clienteId INT,
produtoId INT,
quantidade INT,
data DATE,
FOREIGN KEY(clienteId) REFERENCES Clientes (clienteId),
FOREIGN KEY(produtoId) REFERENCES Produtos (produtoId)
)


