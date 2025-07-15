-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Jul-2023 às 15:57
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdclinicas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ambulatorios`
--

CREATE TABLE `ambulatorios` (
  `nroa` int(11) NOT NULL,
  `andar` decimal(3,0) NOT NULL,
  `capacidade` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ambulatorios`
--

INSERT INTO `ambulatorios` (`nroa`, `andar`, `capacidade`) VALUES
(1, '1', 30),
(2, '1', 50),
(3, '2', 40),
(4, '2', 25),
(5, '2', 55);

-- --------------------------------------------------------

--
-- Estrutura da tabela `consultas`
--

CREATE TABLE `consultas` (
  `codm` int(11) NOT NULL,
  `codp` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `nroa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `codf` int(11) DEFAULT NULL,
  `nome` varchar(40) NOT NULL,
  `idade` smallint(6) NOT NULL,
  `CPF` decimal(11,0) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `salario` decimal(10,0) DEFAULT NULL,
  `cargo` varchar(20) DEFAULT NULL,
  `nroa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `medicos`
--

CREATE TABLE `medicos` (
  `codm` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `idade` smallint(6) NOT NULL,
  `especialidade` char(20) DEFAULT NULL,
  `CPF` decimal(11,0) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `nroa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `medicos`
--

INSERT INTO `medicos` (`codm`, `nome`, `idade`, `especialidade`, `CPF`, `cidade`, `nroa`) VALUES
(1, 'Joao', 40, 'ortopedia', '10000100000', 'Florianopolis', 1),
(2, 'Maria', 42, 'traumatologia', '10000110000', 'Blumenau', 2),
(3, 'Pedro', 51, 'pediatra', '11000100000', 'São josé', 2),
(4, 'Carlos', 28, 'ortopedia', '11000110000', 'Joinville', 4),
(5, 'Marcia', 33, 'neurologia', '11000111000', 'Biguacu', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pacientes`
--

CREATE TABLE `pacientes` (
  `codp` int(11) DEFAULT NULL,
  `nome` varchar(40) NOT NULL,
  `idade` smallint(6) NOT NULL,
  `cidade` char(30) DEFAULT NULL,
  `CPF` decimal(11,0) DEFAULT NULL,
  `doenca` varchar(40) NOT NULL,
  `nroa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pacientes`
--

INSERT INTO `pacientes` (`codp`, `nome`, `idade`, `cidade`, `CPF`, `doenca`, `nroa`) VALUES
(1, 'Ana', 20, 'Florianopolis', '20000200000', 'gripe', 1),
(3, 'Lucia', 30, 'Biguacu', '22000200000', 'tendinite', 2),
(2, 'Paulo', 24, 'Palhoca', '20000220000', 'fratura', 3),
(4, 'Carlos', 20, 'Joinville', '11000110000', 'sarampo', 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ambulatorios`
--
ALTER TABLE `ambulatorios`
  ADD PRIMARY KEY (`nroa`);

--
-- Índices para tabela `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`codm`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`nroa`),
  ADD UNIQUE KEY `CPF` (`CPF`);

--
-- Índices para tabela `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`codm`);

--
-- Índices para tabela `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`nroa`),
  ADD UNIQUE KEY `CPF` (`CPF`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
