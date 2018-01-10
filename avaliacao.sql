-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 09-Jan-2018 às 22:10
-- Versão do servidor: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `avaliacao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_categoriaCliente`
--

CREATE TABLE `tbl_categoriaCliente` (
  `cat_idCategoriaCliente` int(11) NOT NULL,
  `cat_nomeCategoria` varchar(50) NOT NULL,
  `cat_statusCategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_categoriaCliente`
--

INSERT INTO `tbl_categoriaCliente` (`cat_idCategoriaCliente`, `cat_nomeCategoria`, `cat_statusCategoria`) VALUES
(1, 'premium', 1),
(2, 'normal', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_cliente`
--

CREATE TABLE `tbl_cliente` (
  `cli_idCliente` int(11) NOT NULL,
  `cli_nomeCliente` varchar(50) NOT NULL,
  `cli_idadeCliente` date NOT NULL,
  `cli_telefoneCliente` varchar(15) NOT NULL,
  `cli_enderecoCliente` varchar(50) NOT NULL,
  `cli_codCatCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_cliente`
--

INSERT INTO `tbl_cliente` (`cli_idCliente`, `cli_nomeCliente`, `cli_idadeCliente`, `cli_telefoneCliente`, `cli_enderecoCliente`, `cli_codCatCliente`) VALUES
(1, 'Romano Jose', '1968-07-30', '5541992373606', 'Rua Alcebiades Plaisant, 1130 - Agua Verde', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_categoriaCliente`
--
ALTER TABLE `tbl_categoriaCliente`
  ADD PRIMARY KEY (`cat_idCategoriaCliente`);

--
-- Indexes for table `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD PRIMARY KEY (`cli_idCliente`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_categoriaCliente`
--
ALTER TABLE `tbl_categoriaCliente`
  MODIFY `cat_idCategoriaCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  MODIFY `cli_idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
