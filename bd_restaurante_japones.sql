-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/06/2025 às 03:22
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
-- Banco de dados: `bd_restaurante_japones`
--
CREATE DATABASE IF NOT EXISTS `bd_restaurante_japones` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_restaurante_japones`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `restaurantes`
--

CREATE TABLE `restaurantes` (
  `id` int(11) NOT NULL,
  `nome_restaurante` varchar(80) NOT NULL,
  `localizacao` varchar(150) DEFAULT NULL,
  `avaliacao` int(11) DEFAULT NULL CHECK (`avaliacao` between 0 and 5),
  `categoria` varchar(100) DEFAULT NULL,
  `cardapio` text DEFAULT NULL,
  `entrega` enum('Sim','Não') DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `foto_local` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `horario_atendimento` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `restaurantes`
--

INSERT INTO `restaurantes` (`id`, `nome_restaurante`, `localizacao`, `avaliacao`, `categoria`, `cardapio`, `entrega`, `telefone`, `foto_local`, `foto`, `horario_atendimento`) VALUES
(1, 'Sushi Yama', 'Rua dos Coqueiros, 123 - São Paulo, SP', 5, 'Japonesa', 'Sushi combinado, Sashimi de salmão, Temaki de atum', 'Sim', '+55 11 99876-5432', 'blob:https://www.tripadvisor.com.br/160dbe20-6075-454c-b117-ed52bd5285a3', 'imagens/sushi_yama.jpg', 'Domingo 12:00 – 16:00; Segunda-feira Fechado; Terça-feira 18:30 – 23:00; Quarta-feira 18:30 – 23:00; Quinta-feira 18:30 – 23:30; Sexta-feira 18:30 – 23:30; Sábado 12:00 – 16:00'),
(2, 'Tokyo Garden', 'Av. Japão, 456 - Campinas, SP', 4, 'Japonesa', 'Yakissoba, Uramaki Califórnia, Gyoza', 'Não', '+55 19 98765-1234', 'blob:https://www.tripadvisor.com.br/160dbe20-6075-454c-b117-ed52bd5285a3', 'imagens/tokyo_garden.jpg', 'Domingo 12:00 – 15:00; Segunda-feira Fechado; Terça-feira 18:00 – 22:00; Quarta-feira 18:00 – 22:00; Quinta-feira 18:00 – 23:00; Sexta-feira 18:00 – 23:30; Sábado 12:00 – 16:00'),
(3, 'Sakura Express', 'Rua das Cerejeiras, 321 - Belo Horizonte, MG', 5, 'Japonesa', 'Temaki de salmão, Hot roll, Shimeji na manteiga', 'Sim', '+55 31 91234-5678', 'blob:https://www.tripadvisor.com.br/160dbe20-6075-454c-b117-ed52bd5285a3', 'imagens/sakura_express.jpg', 'Domingo 11:30 – 15:30; Segunda-feira Fechado; Terça-feira 18:30 – 22:30; Quarta-feira 18:30 – 22:30; Quinta-feira 18:30 – 23:00; Sexta-feira 18:30 – 23:30; Sábado 12:00 – 17:00'),
(4, 'Nippon House', 'Av. dos Estados, 99 - Porto Alegre, RS', 3, 'Japonesa', 'Sashimi variado, Missoshiro, Tempurá de legumes', 'Sim', '+55 51 99888-4455', 'blob:https://www.tripadvisor.com.br/160dbe20-6075-454c-b117-ed52bd5285a3', 'imagens/nippon_house.jpg', 'Domingo 12:00 – 17:00; Segunda-feira 12:00 – 22:00; Terça-feira 12:00 – 22:00; Quarta-feira 12:00 – 22:00; Quinta-feira 12:00 – 22:00; Sexta-feira 12:00 – 23:30; Sábado 12:00 – 23:30'),
(5, 'Zen Sushi Bar', 'Rua Tranquila, 77 - Florianópolis, SC', 4, 'Japonesa', 'Combinado executivo, Sushi vegano, Gunkan de salmão', 'Não', '+55 48 99654-3321', 'blob:https://www.tripadvisor.com.br/160dbe20-6075-454c-b117-ed52bd5285a3', 'imagens/zen_sushi_bar.jpg', 'Domingo 13:00 – 16:00; Segunda-feira Fechado; Terça-feira 18:00 – 23:00; Quarta-feira 18:00 – 23:00; Quinta-feira 18:00 – 23:00; Sexta-feira 18:00 – 23:30; Sábado 12:00 – 16:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `restaurantes`
--
ALTER TABLE `restaurantes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `restaurantes`
--
ALTER TABLE `restaurantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
