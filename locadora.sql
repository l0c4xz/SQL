-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/12/2025 às 13:10
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
-- Banco de dados: `locadora`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `agendamentos`
--

CREATE TABLE `agendamentos` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_carro` int(11) DEFAULT NULL,
  `data_reserva` varchar(100) DEFAULT NULL,
  `data_devolcao` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `agendamentos`
--

INSERT INTO `agendamentos` (`id`, `id_cliente`, `id_carro`, `data_reserva`, `data_devolcao`) VALUES
(1, 1, 3, '1/10/2024', '1/17/2024'),
(2, 2, 5, '2/5/2024', '2/12/2024'),
(3, 3, 7, '3/15/2024', '3/22/2024'),
(4, 4, 2, '4/1/2024', '4/8/2024'),
(5, 5, 1, '5/20/2024', '5/27/2024'),
(6, 6, 6, '6/5/2024', '6/12/2024'),
(7, 7, 4, '7/14/2024', '7/21/2024'),
(8, 8, 8, '8/1/2024', '8/8/2024'),
(9, 9, 3, '9/15/2024', '9/22/2024'),
(10, 10, 5, '10/12/2024', '10/19/2024'),
(11, 11, 9, '11/1/2024', '11/8/2024'),
(12, 12, 10, '12/1/2024', '12/8/2024'),
(13, 13, 4, '1/15/2024', '1/22/2024'),
(14, 14, 6, '2/10/2024', '2/17/2024'),
(15, 15, 3, '4/10/2024', '3/12/2024'),
(16, 16, 2, '3/5/2024', '4/17/2024'),
(17, 17, 8, '5/15/2024', '5/22/2024'),
(18, 18, 12, '6/1/20244', '6/8/2024'),
(19, 19, 1, '7/1/2024', '7/8/2024'),
(20, 20, 15, '8/15/2024', '8/22/2024');

-- --------------------------------------------------------

--
-- Estrutura para tabela `carro`
--

CREATE TABLE `carro` (
  `id` int(11) NOT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `placa` varchar(100) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `cor` varchar(100) DEFAULT NULL,
  `disponivel` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carro`
--

INSERT INTO `carro` (`id`, `modelo`, `placa`, `ano`, `cor`, `disponivel`) VALUES
(1, 'Chevrolet Onix', 'ABC-1234', 2022, 'Preto', b'1'),
(2, 'Fiat Argo', 'DEF-5678', 2021, 'Branco', b'0'),
(3, 'Honda Civic', 'GHI-9101', 2020, 'Prata', b'1'),
(4, 'Toyota Corolla', 'JKL-1122', 2023, 'Azul', b'1'),
(5, 'Volkswagen Gol', 'MNO-3344', 2022, 'Vermelho', b'0'),
(6, 'Ford Ka', 'PQR-5566', 2020, 'Preto', b'1'),
(7, 'Nissan Sentra', 'STU-7788', 2021, 'Branco', b'0'),
(8, 'Hyundai HB20', 'VWX-9900', 2023, 'Azul', b'1'),
(9, 'Renault Kwid', 'XYZ-1234', 2022, 'Prata', b'0'),
(10, 'Jeep Compass', 'ABC-5678', 2021, 'Verde', b'1'),
(11, 'Peugeot 208', 'DEF-9101', 2020, 'Amarelo', b'1'),
(12, 'Chevrolet Spin', 'GHI-1122', 2020, 'Cinza', b'0'),
(13, 'Honda Fit', 'JKL-3344', 2023, 'Branco', b'1'),
(14, 'Toyota Etios', 'MNO-5566', 2022, 'Vermelho', b'0'),
(15, 'Volkswagen Polo', 'PQR-7788', 2021, 'Preto', b'1'),
(16, 'Citroën C3', 'STU-9900', 2020, 'Azul', b'1'),
(17, 'Ford Fiesta', 'VWX-1234', 2023, 'Cinza', b'0'),
(18, 'Nissan Kicks', 'XYZ-5678', 2022, 'Verde', b'1'),
(19, 'Renault Duster', 'ABC-9101', 2021, 'Preto', b'0'),
(20, 'BMW X1', 'DEF-1122', 2020, 'Branco', b'1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cpf` varchar(100) DEFAULT NULL,
  `telefone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `cpf`, `telefone`, `email`) VALUES
(1, 'João Silva', '123.456.789-00', '11987654321', 'joao@email.com'),
(2, 'Maria Oliveira', '234.567.890-11', '11987654322', 'maria@email.com'),
(3, 'Pedro Costa', '345.678.901-22', '11987654323', 'pedro@email.com'),
(4, 'Ana Souza', '456.789.012-33', '11987654324', 'ana@email.com'),
(5, 'Carlos Pereira', '567.890.123-44', '11987654325', 'carlos@email.com'),
(6, 'Juliana Lima', '678.901.234-55', '11987654326', 'juliana@email.com'),
(7, 'Roberto Martins', '789.012.345-66', '11987654327', 'roberto@email.com'),
(8, 'Fernanda Almeida', '890.123.45677', '11987654328', 'fernanda@email.com'),
(9, 'Thiago Santos', '901.234.567-88', '11987654329', 'thiago@email.com'),
(10, 'Larissa Costa', '123.456.789-99', '11987654330', 'larissa@email.com'),
(11, 'Marcos Rodrigues', '234.567.890-00', '11987654331', 'marcos@email.com'),
(12, 'Silvia Oliveira', '345.678.901-11', '11987654332', 'silvia@email.com'),
(13, 'Daniel Costa', '456.789.012-22', '11987654333', 'daniel@email.com'),
(14, 'Gabriela Silva', '567.890.123-33', '11987654334', 'gabriela@email.com'),
(15, 'Fábio Lima', '678.901.234-44', '11987654335', 'fabio@email.com'),
(16, 'Camila Pereira', '789.012.345-55', '11987654336', 'camila@email.com'),
(17, 'Eduardo Santos', '890.123.456-66', '11987654337', 'eduardo@email.com'),
(18, 'Mariana Oliveira', '901.234.56777', '11987654338', 'mariana@email.com'),
(19, 'Lucas Almeida', '123.456.789-11', '11987654339', 'lucas@email.com'),
(20, 'Tatiane Martins', '234.567.890-22', '11987654340', 'tatiane@email.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `agendamentos`
--
ALTER TABLE `agendamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
