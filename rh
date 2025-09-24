L Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/09/2025 às 16:35
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
-- Banco de dados: rh
--

-- --------------------------------------------------------

--
-- Estrutura para tabela departamento
--

CREATE TABLE departamento (
  ID int(11) NOT NULL,
  nome varchar(50) NOT NULL,
  localizacao int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela departamento
--

INSERT INTO departamento (ID, nome, localizacao) VALUES
(1, 'adm', 18200880),
(2, 'educação', 18200880),
(3, 'saude', 18200880),
(4, 'manutencao', 18200880),
(5, 'limpeza', 18200880);

-- --------------------------------------------------------

--
-- Estrutura para tabela funcionario
--

CREATE TABLE funcionario (
  ID int(11) NOT NULL,
  nome varchar(50) NOT NULL,
  cpf int(11) NOT NULL,
  data_admissao double NOT NULL,
  cargo varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela funcionario
--

INSERT INTO funcionario (ID, nome, cpf, data_admissao, cargo) VALUES
(1, 'renan', 19021315, 2025, 'prof'),
(2, 'juan', 161671, 2025, 'ajudante'),
(3, 'thiago', 437378, 2025, 'gerente'),
(4, 'fichel', 31526737, 2025, 'cozinheira'),
(5, 'lucca', 638891, 2025, 'ceo');

-- --------------------------------------------------------

--
-- Estrutura para tabela treinamento
--

CREATE TABLE treinamento (
  ID int(11) NOT NULL,
  titulo varchar(50) NOT NULL,
  data_treino double NOT NULL,
  carga_horaria double NOT NULL,
  id_funcionario int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela treinamento
--

INSERT INTO treinamento (ID, titulo, data_treino, carga_horaria, id_funcionario) VALUES
(1, 'salva vidas', 2025, 8, 2),
(2, 'power bi', 2025, 12, 1),
(3, 'excel', 2025, 2, 3),
(4, 'java', 2025, 5, 4),
(5, 'html', 2025, 7, 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela departamento
--
ALTER TABLE departamento
  ADD PRIMARY KEY (ID);

--
-- Índices de tabela funcionario
--
ALTER TABLE funcionario
  ADD PRIMARY KEY (ID);

--
-- Índices de tabela treinamento
--
ALTER TABLE treinamento
  ADD PRIMARY KEY (ID);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela departamento
--
ALTER TABLE departamento
  MODIFY ID int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela funcionario
--
ALTER TABLE funcionario
  MODIFY ID int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela treinamento
--
ALTER TABLE treinamento
  MODIFY ID int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
