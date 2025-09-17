-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/09/2025 às 15:06
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja_virtual`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `ID_Cliente` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Senha` varchar(255) DEFAULT NULL,
  `CPF` varchar(14) DEFAULT NULL,
  `Endereco` text DEFAULT NULL,
  `Cidade` varchar(100) DEFAULT NULL,
  `Estado` varchar(2) DEFAULT NULL,
  `CEP` varchar(9) DEFAULT NULL,
  `DataCadastro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`ID_Cliente`, `Nome`, `Email`, `Senha`, `CPF`, `Endereco`, `Cidade`, `Estado`, `CEP`, `DataCadastro`) VALUES
(1, 'João Vitor', 'joao@gmail.com', 'jo123', '123.234.244.90', 'Rua A, 202', 'Sorocaba', 'SP', '15118-762', '2024-09-13 00:00:00'),
(2, 'Lucca Ferreira', 'lucca@gmail.com', 'lu123', '123.342.332.87', 'Rua B, 98', 'Sorocaba', 'SP', '14587-326', '2021-02-01 00:00:00'),
(3, 'Isabela Santana', 'isa@gmail.com', 'isa14', '478.598.20.69', 'Rua C, 67', 'Cotia', 'SP', '45879-326', '2020-05-27 00:00:00'),
(4, 'Juliana Anselmo', 'ju@gmail.com', 'ju349', '154.659.400.25', 'Rua O, 90', 'Votorantim', 'SP', '12365-123', '2025-11-21 00:00:00'),
(5, 'Giovana Abreu', 'gio@gmail.com', 'gio12', '458.659.659.32', 'Rua CO, 102', 'Copacabana', 'RJ', '45875-548', '2021-06-14 00:00:00'),
(6, 'Beatriz Miranda', 'bia@gmail.com', 'bia87', '785.698.256.32', 'Rua D, 908', 'Araçoiaba da Serra', 'SP', '45789-698', '2021-10-31 00:00:00'),
(7, 'Larissa Yuki', 'yuki@gmail.com', 'yuki90', '123.654.987.03', 'Rua TG, 98', 'Sorocaba', 'SP', '12365-458', '2024-09-30 00:00:00'),
(8, 'Ana Clara', 'ana@gmail.com', 'ana34', '256.369.874.45', 'Rua E, 45', 'Sorocaba', 'SP', '12586-694', '2021-03-09 00:00:00'),
(9, 'Mariana Martins', 'mari@gmail.com', 'mari34', '126.654.965.20', 'Rua G, 89', 'Sorocaba', 'SP', '78946-654', '2025-09-30 00:00:00'),
(10, 'Thiago de Souza', 'thiago@gmail.com', 'tg451', '158.789.456.23', 'Rua LY, 21', 'Sorocaba', 'SP', '12365-698', '2024-02-29 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `itenspedido`
--

CREATE TABLE `itenspedido` (
  `ID_ItemPedido` int(11) NOT NULL,
  `ID_Pedido` int(11) NOT NULL,
  `ID_Produto` int(11) NOT NULL,
  `Quantidade` int(11) NOT NULL,
  `PrecoUnitario` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `itenspedido`
--

INSERT INTO `itenspedido` (`ID_ItemPedido`, `ID_Pedido`, `ID_Produto`, `Quantidade`, `PrecoUnitario`) VALUES
(1, 1, 1, 2, 49.9),
(2, 1, 2, 1, 299.9),
(3, 2, 3, 1, 199.9),
(4, 3, 5, 1, 89.9),
(5, 4, 2, 1, 299.9),
(6, 5, 6, 1, 1899),
(7, 6, 4, 1, 159.9),
(8, 7, 7, 1, 79.9),
(9, 8, 8, 1, 129.9),
(10, 9, 9, 1, 249.9),
(11, 10, 10, 1, 599.9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `ID_Pedido` int(11) NOT NULL,
  `ID_Cliente` int(11) NOT NULL,
  `DataPedido` datetime NOT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `ValorTotal` double NOT NULL,
  `EnderecoEntrega` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedidos`
--

INSERT INTO `pedidos` (`ID_Pedido`, `ID_Cliente`, `DataPedido`, `Status`, `ValorTotal`, `EnderecoEntrega`) VALUES
(1, 1, '2024-09-14 00:00:00', 'Processando', 349.8, 'Rua A, 202 - Sorocaba'),
(2, 2, '2024-09-15 00:00:00', 'Enviado', 199.9, 'Rua B, 98 - Sorocaba'),
(3, 3, '2024-09-16 00:00:00', 'Entregue', 89.9, 'Rua C, 67 - Cotia'),
(4, 4, '2024-09-17 00:00:00', 'Cancelado', 299.9, 'Rua O, 90 - Votorantim'),
(5, 5, '2024-09-18 00:00:00', 'Processando', 1899, 'Rua CO, 102 - Copacabana'),
(6, 6, '2024-09-19 00:00:00', 'Enviado', 159.9, 'Rua D, 908 - Araçoiaba da Serra'),
(7, 7, '2024-09-20 00:00:00', 'Entregue', 79.9, 'Rua TG, 98 - Sorocaba'),
(8, 8, '2024-09-21 00:00:00', 'Processando', 129.9, 'Rua E, 45 - Sorocaba'),
(9, 9, '2024-09-22 00:00:00', 'Enviado', 249.9, 'Rua G, 89 - Sorocaba'),
(10, 10, '2024-09-23 00:00:00', 'Entregue', 599.9, 'Rua LY, 21 - Sorocaba');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `ID_Produto` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Descricao` text DEFAULT NULL,
  `Preco` double NOT NULL,
  `SKU` varchar(50) DEFAULT NULL,
  `Estoque` int(11) NOT NULL,
  `DataCriacao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`ID_Produto`, `Nome`, `Descricao`, `Preco`, `SKU`, `Estoque`, `DataCriacao`) VALUES
(1, 'Camiseta Básica', 'Camiseta 100% algodão, cor branca', 49.9, 'CAM-BR-001', 150, '2023-01-15 00:00:00'),
(2, 'Tênis Esportivo', 'Tênis para corrida com amortecimento', 299.9, 'TEN-ES-002', 80, '2023-02-10 00:00:00'),
(3, 'Fone Bluetooth', 'Fone de ouvido sem fio com microfone', 199.9, 'FON-BT-003', 60, '2023-03-05 00:00:00'),
(4, 'Mochila Executiva', 'Mochila com compartimento para notebook', 159.9, 'MOC-EX-004', 40, '2023-04-20 00:00:00'),
(5, 'Relógio Digital', 'Relógio à prova d’água com cronômetro', 89.9, 'REL-DG-005', 100, '2023-05-12 00:00:00'),
(6, 'Smartphone X', 'Celular com 128GB e câmera dupla', 1899, 'SMT-X-006', 25, '2023-06-01 00:00:00'),
(7, 'Carregador Turbo', 'Carregador rápido USB-C', 79.9, 'CAR-TB-007', 120, '2023-06-15 00:00:00'),
(8, 'Mouse Gamer', 'Mouse com LED RGB e 6 botões', 129.9, 'MOU-GM-008', 70, '2023-07-10 00:00:00'),
(9, 'Teclado Mecânico', 'Teclado com switches azuis', 249.9, 'TEC-MC-009', 50, '2023-08-05 00:00:00'),
(10, 'Cadeira Ergonômica', 'Cadeira com apoio lombar e ajuste de altura', 599.9, 'CAD-ER-010', 30, '2023-09-01 00:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID_Cliente`);

--
-- Índices de tabela `itenspedido`
--
ALTER TABLE `itenspedido`
  ADD PRIMARY KEY (`ID_ItemPedido`),
  ADD KEY `ID_Pedido` (`ID_Pedido`),
  ADD KEY `ID_Produto` (`ID_Produto`);

--
-- Índices de tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`ID_Pedido`),
  ADD KEY `ID_Cliente` (`ID_Cliente`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`ID_Produto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ID_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `itenspedido`
--
ALTER TABLE `itenspedido`
  MODIFY `ID_ItemPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `ID_Pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `ID_Produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `itenspedido`
--
ALTER TABLE `itenspedido`
  ADD CONSTRAINT `itenspedido_ibfk_1` FOREIGN KEY (`ID_Pedido`) REFERENCES `pedidos` (`ID_Pedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `itenspedido_ibfk_2` FOREIGN KEY (`ID_Produto`) REFERENCES `produtos` (`ID_Produto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `clientes` (`ID_Cliente`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
