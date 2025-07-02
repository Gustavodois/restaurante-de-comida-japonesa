-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03/07/2025 às 01:18
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
-- Banco de dados: `bd_restaurantes_japones`
--
CREATE DATABASE IF NOT EXISTS `bd_restaurantes_japones` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_restaurantes_japones`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `restaurantes`
--

CREATE TABLE `restaurantes` (
  `id` int(11) NOT NULL,
  `restaurante` varchar(80) NOT NULL,
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

INSERT INTO `restaurantes` (`id`, `restaurante`, `localizacao`, `avaliacao`, `categoria`, `cardapio`, `entrega`, `telefone`, `foto_local`, `foto`, `horario_atendimento`) VALUES
(1, 'Sushi Yama', 'Rua dos Coqueiros, 123 - São Paulo, SP', 5, 'Japonesa', 'Sushi combinado, Sashimi de salmão, Temaki de atum', 'Sim', '+55 11 99876-5432', 'https://1033609670.rsc.cdn77.org/maps/kay-asian-cuisine-ribeirao-preto-map.jpg', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/aa/4c/4a/venha-aproveitar-a-atmosfera.jpg?w=1000&h=-1&s=1', 'Domingo 12:00 – 16:00; Segunda-feira Fechado; Terça-feira 18:30 – 23:00; Quarta-feira 18:30 – 23:00; Quinta-feira 18:30 – 23:30; Sexta-feira 18:30 – 23:30; Sábado 12:00 – 16:00'),
(2, 'Tokyo Garden', 'Av. Japão, 456 - Campinas, SP', 4, 'Japonesa', 'Yakissoba, Uramaki Califórnia, Gyoza', 'Não', '+55 19 98765-1234', 'https://1033609670.rsc.cdn77.org/maps/kay-asian-cuisine-ribeirao-preto-map.jpg', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/ec/e5/9c/lugar-agradavel.jpg?w=800&h=-1&s=1', 'Domingo 12:00 – 15:00; Segunda-feira Fechado; Terça-feira 18:00 – 22:00; Quarta-feira 18:00 – 22:00; Quinta-feira 18:00 – 23:00; Sexta-feira 18:00 – 23:30; Sábado 12:00 – 16:00'),
(3, 'Sakura Express', 'Rua das Cerejeiras, 321 - Belo Horizonte, MG', 5, 'Japonesa', 'Temaki de salmão, Hot roll, Shimeji na manteiga', 'Sim', '+55 31 91234-5678', 'https://1033609670.rsc.cdn77.org/maps/kay-asian-cuisine-ribeirao-preto-map.jpg', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/82/13/6a/seja-bem-vindo.jpg?w=1000&h=-1&s=1', 'Domingo 11:30 – 15:30; Segunda-feira Fechado; Terça-feira 18:30 – 22:30; Quarta-feira 18:30 – 22:30; Quinta-feira 18:30 – 23:00; Sexta-feira 18:30 – 23:30; Sábado 12:00 – 17:00'),
(4, 'Nippon House', 'Av. dos Estados, 99 - Porto Alegre, RS', 3, 'Japonesa', 'Sashimi variado, Missoshiro, Tempurá de legumes', 'Sim', '+55 51 99888-4455', 'https://1033609670.rsc.cdn77.org/maps/kay-asian-cuisine-ribeirao-preto-map.jpg', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/ef/9b/7b/caption.jpg?w=1000&h=-1&s=1', 'Domingo 12:00 – 17:00; Segunda-feira 12:00 – 22:00; Terça-feira 12:00 – 22:00; Quarta-feira 12:00 – 22:00; Quinta-feira 12:00 – 22:00; Sexta-feira 12:00 – 23:30; Sábado 12:00 – 23:30'),
(5, 'Zen Sushi Bar', 'Rua Tranquila, 77 - Florianópolis, SC', 4, 'Japonesa', 'Combinado executivo, Sushi vegano, Gunkan de salmão', 'Não', '+55 48 99654-3321', 'https://1033609670.rsc.cdn77.org/maps/kay-asian-cuisine-ribeirao-preto-map.jpg', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/df/4c/62/pratos.jpg?w=1000&h=-1&s=1', 'Domingo 13:00 – 16:00; Segunda-feira Fechado; Terça-feira 18:00 – 23:00; Quarta-feira 18:00 – 23:00; Quinta-feira 18:00 – 23:00; Sexta-feira 18:00 – 23:30; Sábado 12:00 – 16:00'),
(6, 'Ichiban Sushi', 'Rua da Paz, 888 - Curitiba, PR', 5, 'Japonesa', 'Sushi tradicional, Tempurá de camarão, Sashimi de atum', 'Sim', '+55 41 98765-0011', 'blob:https://www.tripadvisor.com.br/ichiban-example', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/0c/16/3f/salao.jpg?w=1000&h=-1&s=1', 'Domingo 12:00 – 15:00; Segunda-feira Fechado; Terça-feira 18:00 – 22:30; Quarta-feira 18:00 – 22:30; Quinta-feira 18:00 – 23:00; Sexta-feira 18:00 – 23:30; Sábado 12:00 – 16:00'),
(7, 'Hikari Sushi Lounge', 'Alameda Sol, 202 - Salvador, BA', 4, 'Japonesa', 'Uramaki de salmão, Sunomono, Harumaki', 'Não', '+55 71 91234-5566', 'blob:https://www.tripadvisor.com.br/hikari-example', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/1a/a9/1b/unidade-ll.jpg?w=1000&h=-1&s=1', 'Domingo 13:00 – 17:00; Segunda-feira 18:00 – 22:00; Terça-feira 18:00 – 22:00; Quarta-feira 18:00 – 23:00; Quinta-feira 18:00 – 23:00; Sexta-feira 18:00 – 23:30; Sábado 12:00 – 17:00'),
(8, 'Miyako Sushi', 'Rua Japão, 45 - Recife, PE', 3, 'Japonesa', 'Temaki skin, Guioza, Sushi flambado', 'Sim', '+55 81 99876-3322', 'blob:https://www.tripadvisor.com.br/miyako-example', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/14/4c/ae/saiko.jpg?w=1000&h=-1&s=1', 'Domingo 11:30 – 15:30; Segunda-feira Fechado; Terça-feira 18:30 – 22:00; Quarta-feira 18:30 – 22:00; Quinta-feira 18:30 – 23:00; Sexta-feira 18:30 – 23:30; Sábado 12:00 – 17:00'),
(9, 'Koi Temakeria', 'Av. Oceânica, 789 - Vitória, ES', 5, 'Japonesa', 'Temaki de camarão, Hot Philadelphia, Ceviche japonês', 'Sim', '+55 27 99988-7766', 'blob:https://www.tripadvisor.com.br/koi-example', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/7b/65/88/continua-o-mesmo-restaurante.jpg?w=900&h=500&s=1', 'Domingo 12:00 – 16:00; Segunda-feira 18:00 – 22:00; Terça-feira 18:00 – 22:00; Quarta-feira 18:00 – 22:30; Quinta-feira 18:00 – 23:00; Sexta-feira 18:00 – 23:30; Sábado 12:00 – 17:00'),
(10, 'Okami Restaurante Japonês', 'Rua das Lendas, 12 - Manaus, AM', 4, 'Japonesa', 'Ramen, Nigiri de salmão, Hossomaki de pepino', 'Não', '+55 92 98877-6655', 'blob:https://www.tripadvisor.com.br/okami-example', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/32/e2/c8/frente-do-restaurante.jpg?w=1000&h=-1&s=1', 'Domingo 12:00 – 16:00; Segunda-feira Fechado; Terça-feira 18:00 – 22:00; Quarta-feira 18:00 – 22:00; Quinta-feira 18:00 – 22:30; Sexta-feira 18:00 – 23:00; Sábado 12:00 – 17:00');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
