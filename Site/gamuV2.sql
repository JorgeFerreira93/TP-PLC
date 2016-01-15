-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 14-Jan-2016 às 16:16
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gamu`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE IF NOT EXISTS `aluno` (
  `aluno_id` varchar(50) NOT NULL,
  `aluno_nome` varchar(200) NOT NULL,
  `aluno_data_nasc` date NOT NULL,
  `aluno_curso` varchar(50) NOT NULL,
  `aluno_ano_curso` int(10) NOT NULL,
  `aluno_instrumento` varchar(50) NOT NULL,
  PRIMARY KEY (`aluno_id`),
  KEY `aluno_instrumento` (`aluno_instrumento`),
  KEY `alunos_curso` (`aluno_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`aluno_id`, `aluno_nome`, `aluno_data_nasc`, `aluno_curso`, `aluno_ano_curso`, `aluno_instrumento`) VALUES
('a1', 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', '2014-11-23', 'CS20', 1, 'I20'),
('a11', 'jorge', '1999-12-12', 'CB7', 1, 'I7'),
('A12753', 'Maria Luisa Villaverde Machado Fernandes Novais', '2004-05-17', 'CB8', 5, 'I8'),
('A14539', 'Orlando Jorge Goncalves Pinto', '1997-06-18', 'CS11', 6, 'I11'),
('A1510', 'Ademar Fontes De Magalhaes Goncalves', '2003-01-03', 'CB2', 5, 'I2'),
('A15619', 'Nuno Miguel Afonso Carvalho De Moura', '1996-11-23', 'CS7', 6, 'I7'),
('A16409', 'Jorge Manuel De Castro Maio Gomes Da Costa', '2002-02-20', 'CB18', 1, 'I18'),
('A17855', 'Joao Paulo Da Silva Castro', '2001-07-10', 'CB10', 1, 'I10'),
('A18141', 'Alexandre Miguel Da Costa Ferreira Dos Santos', '2002-11-25', 'CB13', 1, 'I13'),
('A18770', 'Rosa Alexandra Azevedo Guimaraes', '2005-06-21', 'CB11', 4, 'I11'),
('A18938', 'Joao Pedro Brito Antunes Guimaraes', '2004-10-05', 'CB20', 3, 'I20'),
('A19550', 'Ricardo Manuel Rodrigues De Oliveira Dimas', '2000-09-07', 'CS10', 7, 'I10'),
('A19705', 'Jose Antonio Pereira Cibrao', '1998-09-13', 'CS21', 7, 'I21'),
('A2', 'Tiago', '1988-12-09', 'CS8', 3, 'I7'),
('A20021', 'Carlos Jose Da Cunha Ribeiro', '2004-05-07', 'CB8', 1, 'I8'),
('A20044', 'Bruno De Almeida Ramos Pereira', '2002-04-19', 'CB19', 3, 'I19'),
('A20464', 'Joel Tito Da Cruz Pinto', '1997-09-23', 'CS12', 7, 'I12'),
('A21008', 'Jorge Miguel Silva Melo Pereira', '2002-10-01', 'CB11', 2, 'I11'),
('A21432', 'Miguel Manuel Gomes Rodrigues', '2005-11-15', 'CB9', 1, 'I9'),
('A21711', 'Pedro David Alves Martinho', '2003-09-01', 'CB3', 5, 'I3'),
('A22662', 'Joao Paulo Carrapato Almeida', '2005-09-08', 'CB1', 4, 'I1'),
('A22670', 'Jose Manuel Teixeira Fernandes', '2001-09-06', 'CB22', 4, 'I22'),
('A22685', 'Marco Francisco Da Silva Lizardo', '1999-06-17', 'CS3', 8, 'I3'),
('A22688', 'Marco Ricardo Barbosa Coelho', '1998-11-18', 'CS5', 7, 'I5'),
('A22695', 'Nancy Do Sameiro Silverio Lavandeira', '1996-09-17', 'CS8', 7, 'I8'),
('A22701', 'Nuno Miguel Martins Casanova', '2005-10-13', 'CB4', 4, 'I4'),
('A22721', 'Ricardo Nuno Moreira Castilho Ferreira Lopes', '1999-05-27', 'CS5', 8, 'I5'),
('A22854', 'Davi Carneiro Pereira', '2005-11-12', 'CB4', 4, 'I4'),
('A23508', 'Jose Romeu Fernandes Pinto', '2003-12-28', 'CB15', 4, 'I15'),
('A23544', 'Mario Rui Anunciacao Monteiro', '2003-09-09', 'CB7', 1, 'I7'),
('A23916', 'Jose Graca Da Nobrega', '2004-12-18', 'CB16', 2, 'I16'),
('A24654', 'Carlos De Sousa Cabral Brandao', '2003-04-14', 'CB18', 1, 'I18'),
('A24784', 'Nuno Filipe Marques Moreira Ribeiro', '2000-06-07', 'CS20', 7, 'I20'),
('A24839', 'Leonor Isabel Ferreira De Melo Osorio Araujo', '2000-10-01', 'CS17', 7, 'I17'),
('A24875', 'Rui Manuel Couto Da Silva', '1996-01-25', 'CS16', 8, 'I16'),
('A24876', 'Rui Miguel Escudeiro Da Costa Aguiar', '1997-05-17', 'CS17', 6, 'I17'),
('A24885', 'Sergio Manuel Ruivo Cardoso', '2001-01-28', 'CB21', 5, 'I21'),
('A25073', 'Ana Margarida Lima Alem', '1997-06-07', 'CS10', 8, 'I10'),
('A25383', 'Pedro Miguel Martins Fernandes', '2002-11-16', 'CB1', 1, 'I1'),
('A25868', 'Rui Miguel Morais Lopes', '2000-03-05', 'CS7', 8, 'I7'),
('A26208', 'Igor Murilo De Almeida', '2001-10-03', 'CB10', 2, 'I10'),
('A26737', 'Fernando Miguel Sousa Lisboa', '1997-12-23', 'CS12', 6, 'I12'),
('A27577', 'Paulo Cesar De Carvalho Lopes', '2004-12-20', 'CB17', 2, 'I17'),
('A27589', 'Ana Margarida Fidalgo Pinheiro', '2005-02-08', 'CB7', 3, 'I7'),
('A27608', 'Eurico Manuel Teles Morais', '2000-04-01', 'CS22', 7, 'I22'),
('A27616', 'Francisco Jose Prata Da Paz', '2004-10-05', 'CB16', 3, 'I16'),
('A27620', 'Joao Andre Faria Lopes', '2001-02-10', 'CB19', 4, 'I19'),
('A27629', 'Jose Luis Pinto Monteiro Alves', '2000-11-13', 'CS14', 7, 'I14'),
('A27637', 'Manuel Jose Torres Sousa Da Cunha', '2001-05-15', 'CB19', 5, 'I19'),
('A27645', 'Nuno Miguel Oliveira Silva', '2005-05-25', 'CB9', 2, 'I9'),
('A27648', 'Nuno Ramos Matos', '2001-11-03', 'CB7', 1, 'I7'),
('A27658', 'Pedro Miguel Araujo Mota Lopes', '2003-11-12', 'CB18', 2, 'I18'),
('A27673', 'Rui Miguel Pereira Oliveira', '2003-10-06', 'CB9', 1, 'I9'),
('A28722', 'Jose Miguel Ferreira Pontes', '2004-06-07', 'CB6', 1, 'I6'),
('A28735', 'Rui Miguel Novais Castro', '1996-07-25', 'CS18', 7, 'I18'),
('A29004', 'Marangaze Joaquim Munhepe Mulhanga', '2005-06-13', 'CB22', 4, 'I22'),
('A29011', 'Marco Alexandre Barreira Medeiros Teixeira', '2004-02-13', 'CB14', 4, 'I14'),
('A29048', 'Mario Rui Ribeiro Fialho Da Conceicao', '1996-07-25', 'CS20', 8, 'I20'),
('A29253', 'Rui Miguel Fernandes Varela', '2003-04-15', 'CB5', 1, 'I5'),
('A29254', 'Tito Jose Ferreira De Sousa Lopes', '1997-05-02', 'CS5', 6, 'I5'),
('A29282', 'Nuno Viriato Macedo Ferreira De Carvalho', '2004-03-06', 'CB6', 1, 'I6'),
('A29631', 'Luis Filipe Ribeiro Novais', '1997-10-03', 'CS12', 8, 'I12'),
('A29871', 'Andre Leite Ferreira', '2002-06-27', 'CB21', 4, 'I21'),
('A30015', 'Renato Cesar Almeida Figueiredo', '2003-02-05', 'CB21', 1, 'I21'),
('A30166', 'Antonio Tiago Morgado Pereira', '1999-01-03', 'CS22', 8, 'I22'),
('A30176', 'Bruno Ricardo Duarte Magalhaes', '2001-02-14', 'CB16', 1, 'I16'),
('A30187', 'Fernando Sergio Madaleno Pereira', '2004-12-17', 'CB19', 5, 'I19'),
('A30201', 'Joao Guilherme Rabaca Campos', '2005-05-28', 'CB6', 5, 'I6'),
('A30209', 'Jorge Miguel Goncalves Da Silva', '2000-03-23', 'CS14', 6, 'I14'),
('A30211', 'Jose Carlos Carvalho Dos Santos', '2002-02-16', 'CB20', 3, 'I20'),
('A30212', 'Jose Carlos Da Rocha Machado', '2001-05-19', 'CB8', 5, 'I8'),
('A30213', 'Jose Manuel Loureiro De Azevedo Teixeira', '1997-01-06', 'CS3', 6, 'I3'),
('A30214', 'Jose Pedro Silva De Oliveira Carvalho', '1998-05-08', 'CS17', 8, 'I17'),
('A30219', 'Manuel Fernando Soto Maior Franqueira', '2000-05-22', 'CS12', 8, 'I12'),
('A30226', 'Miguel Angelo Ribeiro De Sousa E Silva', '2001-02-09', 'CB20', 3, 'I20'),
('A30238', 'Paulo Jorge Soares Mendes', '2003-11-16', 'CB22', 5, 'I22'),
('A30241', 'Pedro Henrique Goncalves Geraz Rodrigues', '1996-07-14', 'CS17', 7, 'I17'),
('A30243', 'Pedro Miguel Veiga Da Silva', '1999-02-05', 'CS21', 6, 'I21'),
('A30254', 'Roque Manuel De Carvalho Teixeira', '2000-02-17', 'CS10', 7, 'I10'),
('A30266', 'Vitor Carlos Teixeira Pimentel', '2004-05-26', 'CB9', 5, 'I9'),
('A30305', 'Emanuel Jose Antunes Fernandes', '2002-10-22', 'CB9', 4, 'I9'),
('A32010', 'Catarina Sofia Martinho Luis', '1996-11-19', 'CS20', 8, 'I20'),
('A32480', 'Jose Manuel Lima Gandarela', '2005-12-23', 'CB14', 4, 'I14'),
('A32597', 'Aderito Nelson Miranda De Oliveira', '2000-04-05', 'CS6', 7, 'I6'),
('A32608', 'Miguel Pedro De Almeida Ferreira Correia Dourado', '1997-09-12', 'CS20', 7, 'I20'),
('A32648', 'Daniel Filipe Peres Ferreira', '2004-12-21', 'CB8', 2, 'I8'),
('A32652', 'Pedro Duarte Cardoso Lopes', '1999-12-23', 'CS21', 8, 'I21'),
('A32753', 'Joao Arnaldo Freitas De Abreu', '2002-05-22', 'CB12', 1, 'I12'),
('A33057', 'Antonio Rui Miranda De Lemos', '2004-09-19', 'CB2', 2, 'I2'),
('A33082', 'Pedro Tiago Dias Goncalves', '1997-02-14', 'CS20', 7, 'I20'),
('A33127', 'Nuno Filipe Magalhaes Santos', '2004-03-25', 'CB11', 3, 'I11'),
('A33140', 'Avelino Rodrigo Araujo Semelhe De Sousa Pinto', '2004-08-15', 'CB2', 5, 'I2'),
('A33141', 'Barbara Alexandra Eusebio Freitas', '1996-12-20', 'CS17', 6, 'I17'),
('A33142', 'Bruno Cesar Pereira Da Silva', '2002-08-21', 'CB17', 3, 'I17'),
('A33143', 'Bruno Miguel Campos Rodrigues', '2002-09-06', 'CB8', 3, 'I8'),
('A33145', 'Bruno Miguel Flores Diamantino', '2003-09-05', 'CB5', 2, 'I5'),
('A33146', 'Bruno Miguel Magalhaes Azevedo', '2005-08-16', 'CB9', 3, 'I9'),
('A33148', 'Bruno Miguel Teixeira Paiva De Faria', '1996-10-14', 'CS10', 8, 'I10'),
('A33152', 'Daniel Ricardo De Castro Mendes', '1996-07-07', 'CS17', 6, 'I17'),
('A33155', 'Duarte Filipe Afonso Chaves', '2004-12-09', 'CB6', 1, 'I6'),
('A33157', 'Eurico Manuel Folgado Afonso', '1996-10-09', 'CS8', 8, 'I8'),
('A33158', 'Fausto Miguel Pacheco Faria Viana', '2003-08-02', 'CB12', 5, 'I12'),
('A33162', 'Goncalo Leal Machado Ribeiro Pinto', '2005-07-16', 'CB11', 1, 'I11'),
('A33163', 'Goncalo Paulo Cunha Cardoso Ferreira', '1997-12-26', 'CS8', 8, 'I8'),
('A33165', 'Helder Artur Peixoto Magalhaes', '2005-03-25', 'CB8', 1, 'I8'),
('A33168', 'Joana Souto De Miranda Gonzalez', '2005-01-10', 'CB19', 2, 'I19'),
('A33172', 'Joao Miguel Raposo Da Silva Marques', '2004-02-25', 'CB15', 2, 'I15'),
('A33173', 'Joao Paulo Minhava Peixoto Assis Cardoso', '2000-10-04', 'CS8', 8, 'I8'),
('A33175', 'Joao Pedro Bacao Coelho De Barros', '2004-03-04', 'CB3', 2, 'I3'),
('A33176', 'Joao Pedro Gomes Fernandes', '1999-06-28', 'CS16', 8, 'I16'),
('A33182', 'Jose Miguel Dos Santos Ferraz', '2002-05-16', 'CB2', 1, 'I2'),
('A33186', 'Luis Filipe Gama Pais Cabral', '2005-11-19', 'CB17', 2, 'I17'),
('A33188', 'Luis Pedro Lopes Pereira', '2004-08-09', 'CB10', 2, 'I10'),
('A33195', 'Miguel Pinto De Sousa Marques', '2003-01-11', 'CB2', 3, 'I2'),
('A33196', 'Nelson Filipe Coelho De Moura Sousa', '1998-12-23', 'CS18', 7, 'I18'),
('A33199', 'Nuno Filipe Mendes Pereira', '2004-01-14', 'CB20', 5, 'I20'),
('A33204', 'Paulo Eduardo Miranda Campos', '2003-09-02', 'CB17', 5, 'I17'),
('A33209', 'Paulo Miguel Sa Morais Pires', '1998-09-06', 'CS20', 8, 'I20'),
('A33213', 'Pedro Guimaraes De Freitas', '1999-11-03', 'CS12', 8, 'I12'),
('A33214', 'Pedro Jorge Osorio Marinho Oliveira', '2004-06-08', 'CB4', 4, 'I4'),
('A33222', 'Ricardo Jorge Almeida De Magalhaes', '2004-08-01', 'CB10', 2, 'I10'),
('A33228', 'Rui Filipe Barros Tavares', '2001-10-11', 'CB18', 1, 'I18'),
('A33229', 'Rui Manuel Silva Oliveira', '2005-08-19', 'CB8', 2, 'I8'),
('A33234', 'Sandra Maria Oliveira Carvalho', '2002-08-01', 'CB5', 2, 'I5'),
('A33235', 'Sergio De Almeida Paiva', '2001-11-16', 'CB16', 2, 'I16'),
('A33238', 'Sonia Andrea Garrido De Sa Eiras', '2001-12-02', 'CB18', 1, 'I18'),
('A33240', 'Tiago Jorge Gomes Da Silva Araujo', '2003-06-24', 'CB15', 4, 'I15'),
('A33272', 'Hugo Andre Peixoto Freitas Pereira', '2002-04-26', 'CB11', 4, 'I11'),
('A33280', 'Paulo Bruno Da Silva Vides Fernandes', '2004-01-18', 'CB6', 2, 'I6'),
('A33281', 'Pedro Miguel Soares Pinto', '1999-07-20', 'CS11', 6, 'I11'),
('A33282', 'Virgilio Abrantes Vinha', '1998-11-02', 'CS3', 7, 'I3'),
('A33291', 'Barbara Sofia Araujo Da Silva', '1996-11-01', 'CS7', 8, 'I7'),
('A33420', 'Nelson Leandro Barbosa Carneiro', '2004-05-01', 'CB10', 4, 'I10'),
('A33437', 'Nuno Miguel Marques Gomes', '2001-07-12', 'CB9', 5, 'I9'),
('A33524', 'Pedro Miguel Paes Machado', '1997-04-10', 'CS9', 8, 'I9'),
('A33650', 'Luis Andre Da Cunha Marques', '2000-06-15', 'CS1', 7, 'I1'),
('A33689', 'Carlos Andre Brito Ribeiro', '2002-08-03', 'CB5', 5, 'I5'),
('A33703', 'Isabel Maria Rosendo Cardoso', '2003-05-25', 'CB16', 5, 'I16'),
('A33709', 'Jorge Manuel Viana Ribeiro Martins Forte', '1998-12-08', 'CS6', 6, 'I6'),
('A33727', 'Nuno Filipe Antunes Da Silva', '2003-02-13', 'CB4', 1, 'I4'),
('A33822', 'Andre Fernandes Martins', '2004-08-17', 'CB21', 3, 'I21'),
('A33858', 'Fernando Jorge Pinto Lima', '1999-02-24', 'CS21', 6, 'I21'),
('A34035', 'Leonor Isabel Constantino Caeiro Boga', '1997-08-21', 'CS13', 7, 'I13'),
('A34434', 'Jose Carlos Marques Dias', '1996-05-24', 'CS9', 8, 'I9'),
('A34435', 'Ricardo Jose Ferreira Dias De Oliveira', '2001-07-10', 'CB4', 3, 'I4'),
('A34508', 'Paulo Cesar Almeida De Sa', '2002-03-05', 'CB2', 2, 'I2'),
('A34640', 'Carlos Prudencio Do Espirito Crisostomo', '1997-11-19', 'CS14', 7, 'I14'),
('A34935', 'Joao Manuel De Campos Goncalves', '2000-10-02', 'CS2', 7, 'I2'),
('A35052', 'Cesar Filipe Da Cruz Gomes', '1998-08-06', 'CS18', 7, 'I18'),
('A35144', 'Pedro Manuel De Amorim Magalhaes', '1999-07-26', 'CS3', 7, 'I3'),
('A35271', 'Alexandre Jorge Camelo Faria', '1998-11-09', 'CS8', 8, 'I8'),
('A35272', 'Ana Luisa Parreira Nunes', '2003-04-21', 'CB19', 3, 'I19'),
('A35274', 'Andre Filipe Oliveira Martins', '2002-01-08', 'CB10', 5, 'I10'),
('A35277', 'Antonio Manuel Martins Pinto', '1998-06-19', 'CS19', 7, 'I19'),
('A35278', 'Antonio Manuel Rodrigues Fernandes', '1997-04-22', 'CS15', 7, 'I15'),
('A35280', 'Antonio Ricardo Pereira Goncalves', '1999-08-06', 'CS8', 7, 'I8'),
('A35283', 'Bruno Edgar Bernardo Teixeira', '1999-07-14', 'CS11', 8, 'I11'),
('A35284', 'Bruno Emanuel Teixeira De Castro Araujo', '1999-05-13', 'CS20', 7, 'I20'),
('A35285', 'Bruno Gabriel Leal Machado Dos Santos', '2000-03-18', 'CS11', 7, 'I11'),
('A35291', 'Carlos Miguel Tavares Lopes', '2000-10-14', 'CS8', 7, 'I8'),
('A35293', 'David Daniel Cardoso De Oliveira', '2003-06-09', 'CB13', 1, 'I13'),
('A35294', 'Diamantino Jose Madeira Abobeleira', '1998-06-28', 'CS1', 8, 'I1'),
('A35298', 'Duarte Nuno Malheiro De Barreiro', '2005-01-17', 'CB7', 4, 'I7'),
('A35300', 'Emanuel Cerdeira Mesquita', '2004-11-21', 'CB6', 3, 'I6'),
('A35302', 'Fabio Roberto Leite Matos', '2002-07-06', 'CB17', 1, 'I17'),
('A35303', 'Filipe Antonio Goncalves Da Silva', '1998-06-14', 'CS9', 6, 'I9'),
('A35308', 'Francisco Jose Maio Leite', '2003-04-23', 'CB9', 1, 'I9'),
('A35311', 'Goncalo Luis Malheiro De Oliveira Novais Machado', '2000-04-10', 'CS6', 7, 'I6'),
('A35312', 'Helder Filipe De Castro Marques', '1996-05-16', 'CS14', 8, 'I14'),
('A35315', 'Hugo Emanuel Queiros Teixeira Da Silva', '2005-07-28', 'CB12', 1, 'I12'),
('A35316', 'Hugo Guilherme Dos Santos Rigor', '2000-09-09', 'CS15', 8, 'I15'),
('A35318', 'Jason Peter Costa', '2005-09-06', 'CB6', 2, 'I6'),
('A35319', 'Joao Alexandre Vaz Oliveira', '2001-04-21', 'CB9', 3, 'I9'),
('A35320', 'Joao Antonio Lavrador Vilanova', '2001-11-10', 'CB15', 2, 'I15'),
('A35321', 'Joao Filipe Fontes Machado', '1997-08-14', 'CS8', 8, 'I8'),
('A35322', 'Joao Gilberto Lamarao Da Silva', '2004-04-24', 'CB4', 1, 'I4'),
('A35323', 'Joao Mario Mendes De Oliveira', '2004-03-01', 'CB7', 3, 'I7'),
('A35325', 'Joao Paulo Coelho Gomes Teixeira E Oliveira', '2002-11-28', 'CB16', 1, 'I16'),
('A35328', 'Joel Araujo Rocha', '1997-01-02', 'CS1', 6, 'I1'),
('A35330', 'Jorge Andre Alves De Melo', '2000-12-26', 'CS9', 6, 'I9'),
('A35331', 'Jose Alexandre De Carvalho Amorim', '2000-04-11', 'CS9', 6, 'I9'),
('A35332', 'Jose Diogo Ribeiro Liz De Almeida', '2004-07-19', 'CB19', 4, 'I19'),
('A35333', 'Jose Filipe Queijo Fernandes', '1998-04-11', 'CS22', 6, 'I22'),
('A35334', 'Jose Miguel Silva Peixoto De Carvalho', '2002-06-03', 'CB11', 1, 'I11'),
('A35335', 'Jose Paulo Carneiro De Melo Mamede', '1999-07-15', 'CS11', 7, 'I11'),
('A35337', 'Jose Pedro Domingues', '1997-02-26', 'CS16', 6, 'I16'),
('A35339', 'Lidia Nogueira Laranjeira', '2004-07-15', 'CB20', 1, 'I20'),
('A35340', 'Liliana Solange Sequeira Henriques De Macedo', '1997-02-22', 'CS9', 8, 'I9'),
('A35342', 'Luis Carlos Goncalo Leonardo', '2002-11-10', 'CB2', 3, 'I2'),
('A35348', 'Manuel Jose Gomes Meireles', '2001-02-21', 'CB14', 5, 'I14'),
('A35349', 'Marcia Marlene De Almeida Martins', '2003-08-03', 'CB22', 5, 'I22'),
('A35350', 'Marcial Coelho Gomes', '1997-06-22', 'CS9', 7, 'I9'),
('A35352', 'Miguel Afonso Pires Da Rosa', '1998-08-18', 'CS7', 7, 'I7'),
('A35355', 'Nuno Miguel Machado Alves Costa', '1998-02-09', 'CS15', 6, 'I15'),
('A35357', 'Paulo Jorge Fernandes De Sousa', '2001-02-12', 'CB5', 2, 'I5'),
('A35360', 'Pedro Daniel Ferreira De Carvalho', '2002-09-09', 'CB4', 5, 'I4'),
('A35363', 'Pedro Miguel Da Silva Araujo', '2000-07-02', 'CS17', 8, 'I17'),
('A35364', 'Pedro Miguel Meira Das Neves', '2001-05-18', 'CB11', 3, 'I11'),
('A35366', 'Ricardo Manuel Viana Magalhaes', '1999-10-15', 'CS15', 8, 'I15'),
('A35371', 'Rui Jorge Guimaraes Machado Rodrigues Valente', '2001-05-14', 'CB18', 5, 'I18'),
('A35372', 'Rui Pedro Andias Duarte', '2001-02-03', 'CB10', 4, 'I10'),
('A35374', 'Sergio Manuel Pereira Barreiro', '2002-03-14', 'CB7', 5, 'I7'),
('A35375', 'Sergio Ricardo Teixeira Andias Miranda', '2002-10-09', 'CB6', 3, 'I6'),
('A35376', 'Telma De Fatima Pires De Sa', '2002-06-07', 'CB3', 4, 'I3'),
('A35377', 'Vitor Da Costa Pinheiro', '2001-06-03', 'CB1', 2, 'I1'),
('A35378', 'Vitor Hugo Pereira Da Silva Moreira', '2004-04-08', 'CB11', 3, 'I11'),
('A35395', 'Hugo Jose Fernandes Carvalho', '2003-12-26', 'CB6', 2, 'I6'),
('A35398', 'Jose Manuel Esteves', '2003-11-22', 'CB3', 5, 'I3'),
('A35418', 'Valter Miguel Oliveira Vilar', '1996-11-18', 'CS7', 8, 'I7'),
('A35440', 'Daniel Barbosa Alves', '1999-08-23', 'CS12', 8, 'I12'),
('A35443', 'Francisco Jose Martins Gomes', '2003-07-19', 'CB4', 5, 'I4'),
('A35465', 'Fernando Antonio Alves Lopes', '2001-02-18', 'CB7', 3, 'I7'),
('A35808', 'Candido Miguel Rebelo Barros', '2000-05-26', 'CS14', 8, 'I14'),
('A35832', 'Joao Pedro Goncalves De Carvalho', '1997-05-08', 'CS2', 6, 'I2'),
('A35843', 'Lara Sofia Alpoim Miranda', '1997-07-16', 'CS21', 6, 'I21'),
('A35855', 'Pedro Miguel Pinto Ribeiro', '2004-02-21', 'CB6', 5, 'I6'),
('A36422', 'Bruno Jose De Macedo Soares Amor', '1999-02-04', 'CS2', 8, 'I2'),
('A36424', 'Francisco Eurico Pinto Cortez Martins Leite', '2002-05-15', 'CB12', 5, 'I12'),
('A36425', 'Joao Pedro Robalo Espinho Pereira Da Silva', '2003-11-04', 'CB3', 1, 'I3'),
('A36445', 'Filipe Barroso De Oliveira', '2002-03-24', 'CB15', 4, 'I15'),
('A36454', 'Michel Ferreira Pinto', '2001-09-12', 'CB4', 1, 'I4'),
('A36476', 'Pedro Alexandre Ferreira Vilaca', '1996-08-20', 'CS2', 7, 'I2'),
('A36487', 'Ali Dos Reis Mota', '2000-01-24', 'CS13', 6, 'I13'),
('A36539', 'Admilson Cesar Andrade Rodrigues', '2001-10-24', 'CB8', 4, 'I8'),
('A36757', 'Ernesto Manuel Da Silva Lopes', '2004-05-17', 'CB20', 2, 'I20'),
('A36758', 'Hugo Alexandre Pereira Triunfante Martins', '1999-03-14', 'CS6', 7, 'I6'),
('A36761', 'Jose Eduardo Teixeira Rito', '2005-01-05', 'CB11', 5, 'I11'),
('A36764', 'Rui Andre Ferreira Silva', '2001-04-26', 'CB1', 5, 'I1'),
('A36765', 'Sandra Maria Teles Feio Almeida Fazendeiro', '1997-11-18', 'CS15', 6, 'I15'),
('A36773', 'Vitor Manuel Carvalho Rodrigues', '2001-02-25', 'CB13', 2, 'I13'),
('A36864', 'Maria Beatriz Alves De Sa Campos', '2005-02-16', 'CB9', 4, 'I9'),
('A36960', 'Jose Carlos De Freitas Fontao', '2005-01-21', 'CB22', 3, 'I22'),
('A36969', 'Pedro Emanuel Fernandes Lopes', '2003-10-21', 'CB14', 3, 'I14'),
('A36971', 'Augusto Jorge Pereira Da Costa', '2001-01-06', 'CB6', 4, 'I6'),
('A37029', 'Rui Manuel Da Silva Pereira Neiva', '1998-11-20', 'CS2', 8, 'I2'),
('A38116', 'Pedro Jose Martins Faria', '1997-11-10', 'CS4', 8, 'I4'),
('A38117', 'Antonio Andre Marques Ribeiro', '2005-11-18', 'CB14', 1, 'I14'),
('A38118', 'Pedro Manuel Lopes Patricio', '2004-11-09', 'CB13', 3, 'I13'),
('A38119', 'Rui Miguel Da Silva Abreu', '2003-12-24', 'CB12', 3, 'I12'),
('A38120', 'Octavio David Da Conceicao Jacinto', '2000-03-28', 'CS6', 7, 'I6'),
('A38121', 'Jose Miguel Rodrigues Oliveira Da Silva', '2003-12-25', 'CB11', 1, 'I11'),
('A38122', 'Paulo Jorge Assis De Sousa', '2002-11-13', 'CB6', 3, 'I6'),
('A38123', 'Joao Manuel Da Silva Sanches', '1999-12-10', 'CS2', 7, 'I2'),
('A38124', 'Bruno Ricardo Cunha Magalhaes', '1998-11-03', 'CS19', 7, 'I19'),
('A38125', 'Carlos Cesar Madureira Romano', '2001-03-23', 'CB2', 4, 'I2'),
('A38126', 'Carlos Alfredo Macieira De Faria', '2001-04-13', 'CB15', 3, 'I15'),
('A38127', 'Vanessa Alzira Abrunhosa Carneiro De Castro Fidalgo', '1999-06-19', 'CS4', 7, 'I4'),
('A38128', 'Jose Pedro Rodrigues Magalhaes', '2005-10-13', 'CB2', 4, 'I2'),
('A38129', 'Ricardo Gomes De Faria', '2003-04-24', 'CB13', 3, 'I13'),
('A38130', 'Ricardo Jorge Rodrigues Sepulveda Marques', '1996-03-15', 'CS5', 6, 'I5'),
('A38131', 'Tiago Daniel Cerqueira Botelho Da Silva', '1997-09-22', 'CS3', 7, 'I3'),
('A38132', 'Avelino Jose Da Costa Rego', '2003-12-03', 'CB6', 5, 'I6'),
('A38133', 'Joao Goncalo Botica Ribeiro Da Silva', '1996-09-12', 'CS18', 6, 'I18'),
('A38134', 'Ivo Manuel Dantas Monteiro', '1996-07-28', 'CS5', 7, 'I5'),
('A38135', 'Rui Andre Leite Ribeiro', '2001-05-09', 'CB13', 3, 'I13'),
('A38136', 'Jose Nuno Martins Pinto Fraga', '2003-09-05', 'CB22', 5, 'I22'),
('A38137', 'Jose Pedro Ribeiro Da Araujo', '2005-04-23', 'CB1', 4, 'I1'),
('A38138', 'Antonio Nuno Bacelar Martins Barreiro Covas', '2002-05-15', 'CB21', 4, 'I21'),
('A38139', 'Jorge Alberto Faria Miranda', '2004-01-01', 'CB15', 5, 'I15'),
('A38140', 'Jose Pedro Machado Gomes', '2002-11-24', 'CB13', 2, 'I13'),
('A38141', 'Ruben Filipe Cardoso Da Fonseca', '2005-01-08', 'CB6', 2, 'I6'),
('A38142', 'Jose Pedro Faria E Vasconcelos Correia', '2005-08-19', 'CB3', 5, 'I3'),
('A38143', 'Antonio Sergio Matos Silva', '1997-01-08', 'CS18', 7, 'I18'),
('A38144', 'Tiago Leandro De Castro Ribeiro', '1998-05-17', 'CS13', 7, 'I13'),
('A38145', 'Tiago Miguel Soares Fernandes', '1996-02-15', 'CS19', 6, 'I19'),
('A38146', 'Rui Filipe Torres Alexandre', '2002-06-22', 'CB13', 2, 'I13'),
('A38147', 'Pedro Miguel Ramos Madeira', '1997-06-22', 'CS1', 6, 'I1'),
('A38148', 'Rui Domingos Guimaraes Salgado', '1997-10-24', 'CS21', 6, 'I21'),
('A38149', 'Pedro Silvestre Meneses Magalhaes Coelho', '1998-06-15', 'CS20', 8, 'I20'),
('A38150', 'Leandro Emanuel Da Silva Salgado Barbosa', '2004-11-12', 'CB15', 5, 'I15'),
('A38151', 'Ricardo Fernando Lira De Mesquita Lachado', '1999-12-09', 'CS20', 8, 'I20'),
('A38152', 'Marco Antonio Sampaio Freitas De Castro', '2005-11-13', 'CB10', 5, 'I10'),
('A38153', 'Ricardo Araujo Carvalho Vilaca Moreira', '2001-10-01', 'CB19', 1, 'I19'),
('A38154', 'Rafael De Castro Carreira', '1999-01-25', 'CS4', 6, 'I4'),
('A38155', 'Julio Andre Rodrigues Araujo', '1998-07-07', 'CS20', 8, 'I20'),
('A38156', 'Bruno Filipe Da Costa Hermenegildo', '2000-12-12', 'CS3', 8, 'I3'),
('A38157', 'Joel Humberto Da Silva Beirao Do Vale Carvalho', '2005-10-03', 'CB2', 5, 'I2'),
('A38158', 'Raul Graciano Oliveira Rodrigues', '1996-07-16', 'CS17', 6, 'I17'),
('A38159', 'Pedro Miguel Azevedo De Oliveira', '1998-11-26', 'CS16', 7, 'I16'),
('A38160', 'Pedro Tiago Amorim De Brito', '2005-12-08', 'CB7', 2, 'I7'),
('A38161', 'Mariana Pereira Neves', '2000-07-02', 'CS20', 8, 'I20'),
('A38163', 'Gaspar Augusto Simoes Correia Vieira Leite', '2004-06-20', 'CB15', 4, 'I15'),
('A38164', 'Diogo Paulo Da Fonte Lapa', '2001-04-22', 'CB22', 1, 'I22'),
('A38165', 'Afonso Delerue Arriaga', '1999-11-11', 'CS20', 7, 'I20'),
('A38166', 'Diogo Filipe Da Silva Cardoso', '1999-02-10', 'CS13', 8, 'I13'),
('A38167', 'Duarte Alexandre Da Cunha Alves', '2005-11-02', 'CB22', 3, 'I22'),
('A38168', 'Luiz Alberto De Castro Santos', '2002-04-06', 'CB7', 1, 'I7'),
('A38169', 'Andre Abilio Nunes Rocha Rodrigues', '1998-02-19', 'CS4', 7, 'I4'),
('A38170', 'Joao Pedro Oliveira Pereira', '1996-07-24', 'CS4', 8, 'I4'),
('A38171', 'Mario Andre Patricio Teixeira Julio', '1998-04-09', 'CS19', 7, 'I19'),
('A38172', 'Luis Tiago Afonso Mascarenhas', '2001-08-03', 'CB8', 2, 'I8'),
('A38173', 'Sebastiao Monteiro Simoes', '2003-02-10', 'CB21', 2, 'I21'),
('A38174', 'Guilherme Reis Barbosa', '1999-03-05', 'CS2', 8, 'I2'),
('A38175', 'Joao Paulo Da Silva Gomes', '2002-05-26', 'CB16', 4, 'I16'),
('A38176', 'Agostinho Manuel Alves Da Silva', '1998-01-04', 'CS2', 8, 'I2'),
('A38177', 'Sergio Nuno Claro Gomes', '1999-03-27', 'CS7', 7, 'I7'),
('A38178', 'Marco Alexandre Teixeira Palos', '2000-02-05', 'CS21', 6, 'I21'),
('A38179', 'Marco Antonio Teixeira Martins', '1998-03-14', 'CS7', 6, 'I7'),
('A38180', 'Joao Carlos Azevedo Salgado Guimaraes', '2002-07-18', 'CB15', 4, 'I15'),
('A38181', 'Sofia Da Conceicao Alves Mendes', '2001-11-23', 'CB21', 4, 'I21'),
('A38182', 'Vitor Manuel Alves Da Rocha', '1998-11-28', 'CS20', 8, 'I20'),
('A38183', 'Sergio Branco Amorim', '1999-12-26', 'CS5', 8, 'I5'),
('A38184', 'Maria Cristina Carneiro Barreira', '1998-10-24', 'CS10', 8, 'I10'),
('A38185', 'Helder Jose Ferreira Barbosa Ribeiro', '2001-01-04', 'CB20', 2, 'I20'),
('A38186', 'Joao Nuno Marques Dos Santos', '1997-04-26', 'CS3', 7, 'I3'),
('A38187', 'Flavio Miguel Xavier Ferreira', '1999-08-18', 'CS4', 7, 'I4'),
('A38189', 'Jose Antonio Da Cunha E Silva', '1997-11-28', 'CS2', 6, 'I2'),
('A38190', 'Eliseu Carneiro Dos Santos Rocha', '2001-07-03', 'CB13', 4, 'I13'),
('A38191', 'Joao Miguel Rodrigues Batista', '2005-09-01', 'CB9', 3, 'I9'),
('A38192', 'Vitor Hugo Da Silva Nogueira', '1997-03-20', 'CS5', 7, 'I5'),
('A38193', 'Alexandre Manuel Pereira De Miranda Pinto', '1997-10-07', 'CS8', 6, 'I8'),
('A38194', 'Mario Da Fonte Lameiras', '1997-01-08', 'CS17', 6, 'I17'),
('A38195', 'Nelson Tavares Cunha', '2005-07-09', 'CB9', 3, 'I9'),
('A38196', 'Alexandre Coelho Carvalho', '2003-07-02', 'CB2', 2, 'I2'),
('A38197', 'Hugo Alexandre Sobreiro De Seixas', '1998-08-21', 'CS8', 8, 'I8'),
('A38198', 'Joaquim Machado Goncalves Sampaio', '2003-06-04', 'CB1', 3, 'I1'),
('A38199', 'Joao Ricardo Da Silva Campos', '1998-01-26', 'CS7', 8, 'I7'),
('A38200', 'Rui Alexandre Serrano De Moura', '2002-09-28', 'CB20', 1, 'I20'),
('A38202', 'Hugo Filipe Nascimento Pereira', '2004-01-06', 'CB21', 5, 'I21'),
('A38203', 'Nuno Jorge Ferreira Guimaraes', '2004-10-11', 'CB20', 2, 'I20'),
('A38204', 'Hugo Jose Pereira Pacheco', '2000-06-24', 'CS5', 8, 'I5'),
('A38205', 'Jose Luis Lopes De Araujo', '2001-01-12', 'CB21', 3, 'I21'),
('A38206', 'Jose Manuel Araujo Soares', '1999-03-11', 'CS14', 7, 'I14'),
('A38207', 'Catarina Isabel De Oliveira Mateus', '1997-04-03', 'CS6', 7, 'I6'),
('A38208', 'Nuno Goncalo Bettencourt Da Cruz Correia', '1998-03-14', 'CS1', 8, 'I1'),
('A38209', 'Miguel Angelo Pinto Marques', '1997-11-10', 'CS10', 7, 'I10'),
('A38210', 'Daniela Cristina Garcia Teixeira', '2005-12-01', 'CB13', 5, 'I13'),
('A38211', 'Daniel Torres Goncalves', '2003-11-13', 'CB19', 1, 'I19'),
('A38212', 'Joao Pedro Silva Araujo', '2001-12-09', 'CB16', 1, 'I16'),
('A38214', 'Andre Filipe De Sousa Viveiros', '2000-05-16', 'CS6', 8, 'I6'),
('A38215', 'Andre Ribeiro Rodrigues', '1999-02-05', 'CS14', 7, 'I14'),
('A38216', 'Nelson De Sousa E Silva', '1996-09-14', 'CS1', 8, 'I1'),
('A38217', 'Miguel Angelo Marques De Matos', '2000-06-22', 'CS18', 6, 'I18'),
('A38218', 'Alexandrina Maria Ferreira Lemos', '2000-12-02', 'CS19', 8, 'I19'),
('A38219', 'Luis Filipe Pereira Goncalves', '2002-03-21', 'CB3', 1, 'I3'),
('A38220', 'Joao Rafael Ferreira Veloso', '2001-08-24', 'CB17', 3, 'I17'),
('A38221', 'Miguel Angelo Vivas Gomes Alves', '1999-11-28', 'CS6', 8, 'I6'),
('A38222', 'Jose Luis Cardoso Silva', '2000-07-27', 'CS3', 7, 'I3'),
('A38223', 'Luis Diogo Monteiro Duarte Couto', '1998-03-05', 'CS1', 8, 'I1'),
('A38224', 'Jose Filipe Henriques Vilas Boas', '2002-01-08', 'CB7', 2, 'I7'),
('A38254', 'Manuel Domingos De Carvalho Felgueiras Da Silva Santos', '2000-11-07', 'CS5', 8, 'I5'),
('A38595', 'Filipe Goncalo Goncalves Da Costa', '2003-03-23', 'CB8', 3, 'I8'),
('A38908', 'Rui Jorge De Oliveira Pereira', '2004-01-17', 'CB17', 1, 'I17'),
('A39288', 'Genildo Soares Neves', '1997-12-12', 'CS18', 6, 'I18'),
('A39341', 'Luis Fernando Romanel Rodrigues', '2003-06-18', 'CB18', 2, 'I18'),
('A39342', 'Miguel Pedro Amaral Figueiredo', '2002-08-18', 'CB5', 5, 'I5'),
('A39343', 'Sergio Feliciano Ferreira Jacome', '2002-04-11', 'CB17', 4, 'I17'),
('A39406', 'Marco Alexandre Aguiar Vaz', '2003-10-28', 'CB12', 2, 'I12'),
('A39407', 'Paulo Manuel Ribeiro Novais', '2004-11-26', 'CB14', 3, 'I14'),
('A39408', 'Luis Filipe Faria Monteiro Capelo', '1997-09-22', 'CS16', 7, 'I16'),
('A39410', 'Sergio Filipe Pereira Da Felicidade', '1996-05-09', 'CS2', 7, 'I2'),
('A39503', 'Helder Nuno Martins Do Vale Tome', '2003-05-06', 'CB22', 3, 'I22'),
('A39506', 'Jose Eduardo Correia Calheiros', '2005-01-11', 'CB9', 1, 'I9'),
('A39508', 'Goncalo Manuel Correia Calheiros', '2000-12-07', 'CS3', 6, 'I3'),
('A39509', 'Ricardo Andre Rodrigues Afonso', '1999-03-17', 'CS19', 6, 'I19'),
('A39622', 'Joao Paulo Silva De Vasconcelos Gusmao', '2003-03-10', 'CB5', 3, 'I5'),
('A39671', 'Vitor Manuel Pinto Lopes', '2000-05-19', 'CS8', 8, 'I8'),
('A39747', 'Luis Pedro Ferreira Leite Dos Santos Aleixo', '2002-10-01', 'CB18', 5, 'I18'),
('A39750', 'Joao Paulo Barbosa Oliveira', '2004-06-15', 'CB5', 3, 'I5'),
('A39938', 'Paulo Cesar Romanel Rodrigues', '1996-08-18', 'CS7', 8, 'I7'),
('A39944', 'Rui Antonio Peixoto De Abreu', '1998-12-19', 'CS19', 7, 'I19'),
('a44444', 'jorge', '1999-12-12', 'CB7', 1, 'I7'),
('a654', 'LLL', '1999-12-12', 'CB1', 1, ''),
('A99999', 'BBBB', '2016-01-11', 'CB1', 1, 'I1'),
('AE-907', 'Oscar Lopez Garcia', '2004-12-09', 'CB1', 2, 'I1'),
('AE-922', 'Brais Hernandez Facal', '1997-09-01', 'CS9', 7, 'I9'),
('AE-939', 'Jorge Gonzalez Y Hurtado De Mendoza', '1999-10-10', 'CS2', 6, 'I2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `atuacao`
--

CREATE TABLE IF NOT EXISTS `atuacao` (
  `atuacao_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `atuacao_designacao` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `atuacao_audicao` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`atuacao_id`),
  KEY `atuacao_audicao` (`atuacao_audicao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `atuacao_aluno`
--

CREATE TABLE IF NOT EXISTS `atuacao_aluno` (
  `atuacao_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `aluno_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`atuacao_id`,`aluno_id`),
  KEY `aluno_id` (`aluno_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `atuacao_obra`
--

CREATE TABLE IF NOT EXISTS `atuacao_obra` (
  `atuacao_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `obra_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`atuacao_id`,`obra_id`),
  KEY `obra_id` (`obra_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `atuacao_professor`
--

CREATE TABLE IF NOT EXISTS `atuacao_professor` (
  `atuacao_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `professor_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`atuacao_id`,`professor_id`),
  KEY `professor_id` (`professor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `audicao`
--

CREATE TABLE IF NOT EXISTS `audicao` (
  `audicao_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `audicao_titulo` varchar(100) CHARACTER SET utf8 NOT NULL,
  `audicao_subtitulo` varchar(100) CHARACTER SET utf8 NOT NULL,
  `audicao_tema` varchar(100) CHARACTER SET utf8 NOT NULL,
  `audicao_data` date NOT NULL,
  `audicao_hora` varchar(20) CHARACTER SET utf8 NOT NULL,
  `audicao_local` varchar(100) CHARACTER SET utf8 NOT NULL,
  `audicao_responsavel` varchar(50) CHARACTER SET utf8 NOT NULL,
  `audicao_duracao` varchar(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`audicao_id`),
  KEY `audicao_responsavel` (`audicao_responsavel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `compositor`
--

CREATE TABLE IF NOT EXISTS `compositor` (
  `compositor_id` varchar(50) NOT NULL,
  `compositor_nome` varchar(200) NOT NULL,
  `compositor_bio` varchar(500) NOT NULL,
  `compositor_data_nasc` date NOT NULL,
  `compositor_data_obit` date NOT NULL,
  `compositor_periodo` varchar(50) NOT NULL,
  PRIMARY KEY (`compositor_id`),
  KEY `compositor_periodo` (`compositor_periodo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `compositor`
--

INSERT INTO `compositor` (`compositor_id`, `compositor_nome`, `compositor_bio`, `compositor_data_nasc`, `compositor_data_obit`, `compositor_periodo`) VALUES
('C12', 'Peri, Jacopo', 'Jacopo Peri (20 de agosto 1561 – 12 de agosto 1633) foi um compositor e cantor italiano\n         do período de transição entre os estilos renascentista e barroco, e é frequentemente\n         chamado o inventor da ópera. Escreveu a primeira obra a ser chamada hoje uma ópera, Dafne\n         (cerca de 1597), e também a primeira ópera que sobreviveu até aos nossos dias, Euridice\n         (1600).', '1561-08-20', '1633-08-12', 'P2'),
('C128', 'Bach, Johann Christoph', 'Johann Christoph Bach (6 de Dezembro de 1642 - 31 de Março de 1703) foi um compositor,\n         organista de Eisenach. Era tio de Johann Sebastian Bach, filho de seu primo Johann\n         Ambrosius Bach.', '1642-12-06', '1703-03-31', 'P2'),
('C130', 'Elisabeth Sophie of Mecklenburg', 'Isabel Sofia de Mecklemburgo-Güstrow (20 de Agosto de 1613 - 12 de Julho de 1676) foi uma\n         poeta e compositora alemã bem como duquesa-consorte de Brunswick-Wolfenbüttel.', '1613-08-20', '1676-07-12', 'P2'),
('C140', 'Samuel Scheidt', 'Samuel Scheidt (3 de novembro de 1587 – 24 de março de 1654) foi um organista alemão,\n         professor de música e compositor do período da Renascença.', '1587-11-03', '1654-03-24', 'P2'),
('C144', 'Maurice, Landgrave of Hesse-Kassel', 'Maurício de Hesse-Cassel (25 de maio de 1572 - 15 de março de 1632), conhecido por\n         Maurício, o Erudito, foi conde de Hesse-Cassel, no Sacro Império Romano-Germânico de 1592 a\n         1627.', '1572-05-25', '1632-03-15', 'P2'),
('C146', 'Grigny, Nicolas de', 'Nicolas de Grigny (Reims, data de batismo 8 de setembro de 1672 — Reims, 30 de novembro\n         de 1703) foi um organista francês e compositor do período da Renascença.', '1672-09-08', '1703-11-30', 'P3'),
('C158', 'Strozzi, Barbara', 'Barbara Strozzi (Veneza, 6 de Agosto de 1619 - Pádua, 1677) foi uma compositora e cantora\n         barroca. Era filha ilegítima de Giulio Strozzi. Nunca se casou e teve quatro filhos.Compôs\n         oito volumes de Cantatas.', '1619-08-06', '1677-11-11', 'P2'),
('C160', 'Georg Muffat', 'Georg Muffat (Megève, 1 de junho de 1653 - Passau, 23 de fevereiro de 1704) foi um\n         compositor do período do barroco.', '1653-06-01', '1704-02-23', 'P3'),
('C170', 'Friederike Sophie Wilhelmine', 'Guilhermina de Prússia (Friederike Sofia Wilhelmine; 3 de julho de 1709 – 14 de outubro\n         de 1758) foi uma princesa prussiana (irmã mais velha de Frederico o Grande) e compositora.\n         Era a filha mais velha de Frederico Guilherme I da Prússia e Sofia Doroteia de Hanôver. Em\n         1731, ela se casou com Frederico, marquês de Brandemburgo-Bayreuth.', '1709-07-03', '1758-10-14', 'P3'),
('C172', 'Wilhelmine of Prussia', 'Guilhermina de Prússia (Friederike Sofia Wilhelmine; 3 de julho de 1709 – 14 de outubro\n         de 1758) foi uma princesa prussiana (irmã mais velha de Frederico o Grande) e compositora.\n         Era a filha mais velha de Frederico Guilherme I da Prússia e Sofia Doroteia de Hanôver. Em\n         1731, ela se casou com Frederico, marquês de Brandemburgo-Bayreuth.', '1709-07-03', '1758-10-14', 'P3'),
('C180', 'John IV', 'João IV (Vila Viçosa, 19 de março de 1604 — Lisboa, 6 de novembro de 1656) foi o vigésimo\n         primeiro Rei de Portugal, e o primeiro da quarta dinastia, fundador da dinastia de\n         Bragança.', '1604-03-19', '1656-11-06', 'P2'),
('C182', 'John 04 Of Portugal', 'João IV (Vila Viçosa, 19 de março de 1604 — Lisboa, 6 de novembro de 1656) foi o vigésimo\n         primeiro Rei de Portugal, e o primeiro da quarta dinastia, fundador da dinastia de\n         Bragança.', '1604-03-19', '1656-11-06', 'P2'),
('C208', 'Giulio Caccini', 'Giulio Caccini (Roma, 8 de Outubro de 1551 – 10 de Dezembro de 1618) foi um compositor,\n         professor, cantor, construtor de instrumentos e escritor italiano do fim da Renascença e\n         início do Barroco. Foi um dos fundadores do género da Ópera e um dos criadores que mais\n         influenciaram o estilo Barroco. Foi também pai da compositora Francesca Caccini.', '1551-10-08', '1618-12-10', 'P2'),
('C212', 'Johann David Heinichen', 'Johann David Heinichen (17 de abril de 1683 - 16 de julho de 1729) foi um compositor\n         barroco alemão e teórico, que trouxe o gênio musical de Veneza para o tribunal de Augusto\n         dos Fortes em Dresden.', '1683-04-17', '1729-07-16', 'P3'),
('C214', 'Krebs, Johann Ludwig', 'Johann Ludwig Krebs, (12 de outubro de 1713 - 1 de janeiro de 1780), foi um compositor\n         alemão que marcou a transição da música barroca para a era clássica. É famoso sobretudo\n         pelas suas composições em órgão, algumas das quais têm sua autoria disputada com Johann\n         Sebastian Bach.', '1713-10-12', '1780-02-01', 'P3'),
('C218', 'Maurice Greene', 'Maurice Greene (12 de agosto de 1696 - 1 de dezembro de 1755) foi um compositor e\n         organista inglês.Nasceu em Londres, filho de um clérigo, Greene cantou no coro da Catedral\n         de São Paulo com Jeremiah Clarke e Charles King. Estudou órgão com Richard Brind,. Quando\n         Brind morreu Greene tornou-se organista da catedral londrina.', '1696-08-12', '1755-12-01', 'P3'),
('C222', 'Hans Leo Haßler', 'Hans Leo Haßler (1564-1612) foi um compositor alemão e organista da alta Renascença e\n         início do Barroco. Nasceu em Nuremberg e morreu em Frankfurt am Main. Era conhecido\n         sobretudo como organista e projetista de órgãos, mas também escreveu diversas e belas obras\n         corais como Sacrae Cantiones e Sacri Concentus.', '1564-10-26', '1612-06-08', 'P2'),
('C234', 'Ferdinand Iii, Holy Roman Emperor', 'Fernando III da Germânia (Graz, 13 de julho de 1608 – Viena, 2 de abril de 1657) foi\n         arquiduque austríaco da Casa dos Habsburgo e de 15 de fevereiro de 1637 até a sua morte em\n         1657, Sacro Imperador Romano-Germânico.', '1608-07-13', '1657-04-02', 'P2'),
('C246', 'Zachow, Friedrich Wilhelm', 'Friedrich Wilhelm Zachow ou Zachau (Leipzig, 14 de novembro de 1663 – Halle an der Saale,\n         7 de agosto de 1712) foi um compositor, organista e professor da Alemanha. Deixou algumas\n         cantatas, uma missa, música de câmara e música para órgão, mas é mais lembrado por ter sido\n         o único professor de Händel.', '1663-11-14', '1712-08-07', 'P3'),
('C250', 'Michael Praetorius', 'Michael Praetorius (provavelmente 15 de fevereiro de 1571 – 15 de fevereiro de 1621) foi\n         um compositor alemão, organista e escritor sobre música. Foi um dos mais versáteis\n         compositores de sua época, sendo particularmente importante no desenvolvimento de formas\n         musicais baseadas nos hinos protestantes.', '1571-02-15', '1621-02-15', 'P2'),
('C254', 'Georg Bohm', 'Georg Böhm (Hohenkirchen, 2 de setembro de 1661 – Lüneburg, 18 de maio de 1733) foi um\n         organista alemão e compositor do período do Barroco.', '1661-09-02', '1733-05-18', 'P3'),
('C256', 'Michel Richard Delalande', 'Michel Richard Delalande (também Lalande ou de Lalande, Paris, 15 de dezembro de 1657 —\n         Versalhes, 18 de junho de 1726) foi um prolífico compositor, organista, cravista e\n         violinista francês do período Barroco. Nasceu em Paris, foi contemporâneo de Jean-Baptiste\n         Lully e François Couperin.Foi agraciado por Luís XV com a Ordem de Saint-Michel.==\n         §Referências ==', '1657-12-15', '1726-06-18', 'P3'),
('C26', 'Alessandro Marcello', 'Alessandro Ignazio Marcello (Veneza, 1 de Fevereiro de 1673 –Veneza, 19 de Junho de 1747)\n         foi um nobre e diletante, que se interessava pela arte, tendo sido poeta, filósofo e\n         notável músico italiano.', '1673-02-01', '1747-06-19', 'P3'),
('C270', 'Johann Gottlieb Goldberg', 'Johann Gottlieb Goldberg (batizado em 14 de Março de 1727 – 13 de Abril de 1756) foi um\n         virtuose alemão do cravo, organista e compositor do barroco tardio e do início do período\n         clássico. Sua maior fama foi emprestar o seu nome , provavelmente como o intérprete\n         original, às famosas Variações Goldberg de Johann Sebastian Bach.', '1727-03-14', '1756-04-13', 'P3'),
('C28', 'Baldassare Galuppi', 'Baldassare Galuppi (Burano, 18 de Outubro de 1706 – Veneza, 3 de Janeiro de 1785) foi um\n         compositor italiano.', '1706-10-18', '1785-01-03', 'P3'),
('C286', 'Durante, Francesco', 'Francesco Durante (Frattamaggiore, 31 de março de 1684 – Nápoles, 30 de setembro de 1755)\n         foi um compositor da Itália.', '1684-03-31', '1755-09-30', 'P3'),
('C294', 'Leo, Leonardo', 'Leonardo Ortensio Salvatore de Leo (San Vito dei Normanni, 5 de agosto de 1694 – Nápoles,\n         31 de outubro de 1744) foi um compositor barroco italiano, pertencente à Escola musical\n         napolitana.', '1694-08-05', '1744-10-31', 'P3'),
('C296', 'William Boyce', 'William Boyce (Londres, 11 de setembro de 1711 — 7 de fevereiro de 1779) foi um\n         compositor do Reino Unido.', '1711-09-11', '1779-02-07', 'P3'),
('C300', 'Couperin, Armand-Louis', 'Armand-Louis Couperin (25 de fevereiro de 1727 - 2 de fevereiro 1789) foi um compositor e\n         organista francês do final do Barroco e início do período Clássico. Ele era um membro da\n         família dos músicos Couperin, dos quais o mais notório foi o seu grande tio Louis e seu\n         primo François.', '1727-02-25', '1789-02-02', 'P3'),
('C308', 'Manuel Cardoso', 'Manuel Cardoso (Fronteira, 11 de dezembro de 1566 — Lisboa, 24 de novembro de 1650) foi\n         um organista e compositor português.', '1566-12-11', '1650-11-24', 'P2'),
('C312', 'Kuhnau, Johann', 'Johann Kuhnau (Geising, 6 de abril de 1660 — Lípsia, 5 de junho de 1722) foi um\n         compositor alemão, e renomado músico, organista, teclista e teorista musical.', '1660-04-06', '1722-06-05', 'P3'),
('C314', 'Veracini, Antonio', 'Antonio Veracini (Firenze, 17 de janeiro de 1659 – Firenze, 26 de outubro de 1733) foi um\n         compositor e violinista italiano. Era tio de Francesco Maria Veracini.Destacou-se como\n         inovador da evolução da sonata e da técnica do violão.== §Referências ==', '1659-01-17', '1733-10-26', 'P3'),
('C32', 'Francesco Maria Veracini', 'Francesco Maria Veracini (1690-1768) foi um compositor e violinista italiano.Era sobrinho\n         do também compositor Antonio Veracini.', '1690-02-01', '1768-10-31', 'P3'),
('C322', 'Biber, Carl Heinrich', 'Carl Heinrich Biber (Salzburgo, 1681 — 1749) foi um violinista e compositor do barroco\n         tardio. Foi o sexto filho de Heinrich Ignaz Franz von Biber, e recebeu a sua formação\n         musical com seu pai. A partir de 1714 ele foi vice-mestre de capela (Kapellmeister) na\n         Corte de Salzburgo. Foi supervisor de Leopold Mozart. O seu trabalho consiste,\n         principalmente em missas e outras obras litúrgicas.', '1681-09-04', '1749-11-19', 'P3'),
('C330', 'Jean-Marie Leclair', 'Jean-Marie Leclair, também conhecido como Jean-Marie Leclair, o Velho, (Lyon, 10 de maio\n         de 1697 — Paris, 22 de outubro de 1764) foi um compositor e violinista da era barroca\n         francês. Ele é considerado o fundador da escola de violino francesa.', '1697-05-10', '1764-10-22', 'P3'),
('C334', 'Benda, Franz', 'František Benda (em língua alemã: Franz Benda) (batismo em 22 de novembro de 1709 – 7 de\n         março de 1786) foi um compositor e violinista da Boémia. Era irmão de Georg Benda.', '1709-11-22', '1786-03-07', 'P3'),
('C336', 'Balbastre, Claude', 'Claude Balbastre (8 de dezembro de 1724, Dijon - 1799, Paris) foi um compositor,\n         clavenista e organista francês do século XVIII.', '1724-12-08', '1799-05-09', 'P3'),
('C40', 'Nicola Porpora', 'Nicola Antonio Giacinto Porpora (Nápoles, 17 de agosto de 1686 — Nápoles, 3 de março de\n         1768) foi um compositor italiano de óperas do barroco e professor de canto, tendo como\n         estudantes mais famosos Farinelli e Haydn.Foi um dos principais professores de canto\n         italianos no século XVIII e compositor notável de óperas de estilo lírico napolitano.', '1686-08-17', '1768-03-03', 'P3'),
('C42', 'Seixas, Carlos', 'José António Carlos de Seixas (Coimbra, 11 de junho de 1704 — Lisboa, 25 de agosto de\n         1742), compositor e organista português.', '1704-06-11', '1742-08-25', 'P3'),
('C46', 'Mattheson, Johann', 'Johann Mattheson (28 de setembro, 1681 - 17 de abril, 1764) foi um compositor, escritor,\n         lexicógrafo, diplomata e teórico musical alemão.', '1681-09-28', '1764-04-17', 'P3'),
('C50', 'Antonio Lucio Vivaldi', 'Antonio Lucio Vivaldi (Veneza, 4 de março de 1678 — Viena, 28 de julho de 1741) foi um\n         grande compositor e músico italiano do estilo barroco tardio. Tinha a alcunha de il prete\n         rosso ("o padre ruivo") por ser um sacerdote católico de cabelos ruivos. Compôs 770 obras,\n         entre as quais 477 concertos e 46 óperas. É sobretudo conhecido popularmente como autor da\n         série de concertos para violino e orquestra Le quattro stagioni ("As Quatro\n         Estações").', '1678-03-04', '1741-07-28', 'P3'),
('C66', 'Johann Tobias Krebs', 'Johann Tobias Krebs (Heichelheim, perto de Weimar, 7 de Julho de 1690 - Buttelstedt,\n         perto de Weimar, 11 de fevereiro de 1762), foi um organista alemão e compositor. Era pai do\n         também compositor Johann Ludwig Krebs.Johann Tobias foi aluno de Johann Gottfried Walther e\n         de Johann Sebastian Bach e trabalhou como organista em Buttelstedt. Acredita-se que tenha\n         composto Oito Pequenos Prelúdios e Fugas, que para alguns especialistas, é obra de\n         Bach.', '1690-07-07', '1762-02-11', 'P3'),
('C72', 'Johann Hermann Schein', 'Johann Hermann Schein (Grünhain, 20 de junho de 1586 – Leipzig, 19 de novembro de 1630)\n         foi um compositor barroco alemão.', '1586-01-20', '1630-11-19', 'P2'),
('C76', 'Altnickol, Johann Christoph', 'Johann Christoph Altnickol, ou Altnikol, (1719? (bat. 1 de janeiro de 1720) - 25 de julho\n         de 1759) foi um organista, baixista, cantor e compositor alemão. Ele era genro e copista de\n         Johann Sebastian Bach.', '1720-01-01', '1759-07-25', 'P3'),
('C78', 'Jan Dismas Zelenka', 'Jan Dismas Zelenka (Louňovice pod Blaníkem, atual República Checa, 16 de outubro de 1679\n         – Dresden, 22 de dezembro de 1745) foi um compositor barroco boêmio.', '1679-10-16', '1745-12-23', 'P3'),
('C8', 'Johann Pachelbel', 'Johann Christoph Pachelbel (Nuremberg, 1 de setembro de 1653 — Nuremberg, 3 de março de\n         1706) foi um músico, organista, professor e compositor alemão do estilo barroco. Compõe um\n         grande acervo de música sacra e secular, e suas contribuições para o desenvolvimento do\n         prelúdio coral e fuga dão-lhe lugar entre os mais importantes compositores da época\n         barroca. Entre as obras mais célebres do compositor estão o Cânone em Ré Maior e Fugas para\n         Magnificat.', '1653-09-01', '1706-03-09', 'P3'),
('C82', 'Haym, Nicola Francesco', 'Nicola Francesco Haym (1678-1729) foi um libretista italiano, compositor, diretor de\n         teatro e numismata. Seu trabalho como libretista está intimamente ligado a algumas das mais\n         famosas e bem-sucedidas óperas do compositor alemão naturalizado britânico Georg Friederich\n         Händel (1685-1759). Ele também foi um dos maiores responsáveis pela difusão do gênero ópera\n         séria em idioma italiano na Inglaterra de seu tempo.', '1678-07-06', '1729-07-31', 'P3'),
('C84', 'Stefano Landi', 'Stefano Landi (26 de fevereiro, 1587 — 28 de outubro, 1639) foi um compositor e professor\n         Italiano do Barroco.Landi nasceu em Roma. Em 1595 juntou-se ao Collegio Germanico como\n         cantor "soprano menino", e pode ter estudado com Asprilio Pacelli. O seu nome aparece como\n         organista e cantor, e maestro di cappella em S.ta Maria della Consolação, em 1614.', '1587-02-26', '1639-10-28', 'P2'),
('C86', 'Jean-Joseph Mouret', 'Jean-Joseph Mouret (Avinhão, 11 de abril de 1682 — Charenton, 22 de dezembro de 1738),\n         foi um músico francês.', '1682-04-11', '1738-12-22', 'P3'),
('C88', 'Antonio Maria Abbatini', 'Antonio Maria Abbatini (Città di Castello, 26 de janeiro de 1595 ou 1600 — agosto de\n         1679) foi um conhecido maestro e famoso compositor italiano. Deu a forma de canto\n         gregoriano aos Hinos da Igreja no ano de 1634 e deixou grande número de composições de\n         música religiosa.', '1595-01-26', '1679-03-15', 'P2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE IF NOT EXISTS `curso` (
  `curso_id` varchar(50) NOT NULL,
  `curso_duracao` int(11) NOT NULL,
  `curso_designacao` varchar(200) NOT NULL,
  `curso_instrumento` varchar(50) NOT NULL,
  PRIMARY KEY (`curso_id`),
  KEY `curso_instrumento` (`curso_instrumento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`curso_id`, `curso_duracao`, `curso_designacao`, `curso_instrumento`) VALUES
('CB1', 5, 'Curso Básico de Clarinete', 'I1'),
('CB10', 5, 'Curso Básico de Oboé', 'I10'),
('CB11', 5, 'Curso Básico de Orgão', 'I11'),
('CB12', 5, 'Curso Básico de Percussão', 'I12'),
('CB13', 5, 'Curso Básico de Piano', 'I13'),
('CB14', 5, 'Curso Básico de Saxofone', 'I14'),
('CB15', 5, 'Curso Básico de Trombone', 'I15'),
('CB16', 5, 'Curso Básico de Trompa', 'I16'),
('CB17', 5, 'Curso Básico de Trompete', 'I17'),
('CB18', 5, 'Curso Básico de Tuba', 'I18'),
('CB19', 5, 'Curso Básico de Violoncelo', 'I19'),
('CB2', 5, 'Curso Básico de Contrabaixo', 'I2'),
('CB20', 5, 'Curso Básico de Violino', 'I20'),
('CB21', 5, 'Curso Básico de Viola de Arco', 'I21'),
('CB22', 5, 'Curso Básico de Bandolim', 'I22'),
('CB3', 5, 'Curso Básico de Corne Inglês', 'I3'),
('CB4', 5, 'Curso Básico de Eufónio', 'I4'),
('CB5', 5, 'Curso Básico de Fagote', 'I5'),
('CB6', 5, 'Curso Básico de Flauta', 'I6'),
('CB7', 5, 'Curso Básico de Fliscorne', 'I7'),
('CB8', 5, 'Curso Básico de Guitarra', 'I8'),
('CB9', 5, 'Curso Básico de Harpa', 'I9'),
('CS1', 3, 'Curso Supletivo de Clarinete', 'I1'),
('CS10', 3, 'Curso Supletivo de Oboé', 'I10'),
('CS11', 3, 'Curso Supletivo de Orgão', 'I11'),
('CS12', 3, 'Curso Supletivo de Percussão', 'I12'),
('CS13', 3, 'Curso Supletivo de Piano', 'I13'),
('CS14', 3, 'Curso Supletivo de Saxofone', 'I14'),
('CS15', 3, 'Curso Supletivo de Trombone', 'I15'),
('CS16', 3, 'Curso Supletivo de Trompa', 'I16'),
('CS17', 3, 'Curso Supletivo de Trompete', 'I17'),
('CS18', 3, 'Curso Supletivo de Tuba', 'I18'),
('CS19', 3, 'Curso Supletivo de Violoncelo', 'I19'),
('CS2', 3, 'Curso Supletivo de Contrabaixo', 'I2'),
('CS20', 3, 'Curso Supletivo de Violino', 'I20'),
('CS21', 3, 'Curso Supletivo de Viola de Arco', 'I21'),
('CS22', 3, 'Curso Supletivo de Bandolim', 'I22'),
('CS3', 3, 'Curso Supletivo de Corne Inglês', 'I3'),
('CS4', 3, 'Curso Supletivo de Eufónio', 'I4'),
('CS5', 3, 'Curso Supletivo de Fagote', 'I5'),
('CS6', 3, 'Curso Supletivo de Flauta', 'I6'),
('CS7', 3, 'Curso Supletivo de Fliscorne', 'I7'),
('CS8', 3, 'Curso Supletivo de Guitarra', 'I8'),
('CS9', 3, 'Curso Supletivo de Harpa', 'I9');

-- --------------------------------------------------------

--
-- Estrutura da tabela `habilitacao`
--

CREATE TABLE IF NOT EXISTS `habilitacao` (
  `habilitacao_id` varchar(50) NOT NULL,
  `habilitacao_designacao` varchar(200) NOT NULL,
  PRIMARY KEY (`habilitacao_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `habilitacao`
--

INSERT INTO `habilitacao` (`habilitacao_id`, `habilitacao_designacao`) VALUES
('HL1', 'Licenciatura em Clarinete'),
('HL10', 'Licenciatura em Oboé'),
('HL11', 'Licenciatura em Orgão'),
('HL12', 'Licenciatura em Percussão'),
('HL13', 'Licenciatura em Piano'),
('HL14', 'Licenciatura em Saxofone'),
('HL15', 'Licenciatura em Trombone'),
('HL16', 'Licenciatura em Trompa'),
('HL17', 'Licenciatura em Trompete'),
('HL18', 'Licenciatura em Tuba'),
('HL19', 'Licenciatura em Violoncelo'),
('HL2', 'Licenciatura em Contrabaixo'),
('HL20', 'Licenciatura em Violino'),
('HL21', 'Licenciatura em Viola de Arco'),
('HL22', 'Licenciatura em Bandolim'),
('HL3', 'Licenciatura em Corne Inglês'),
('HL4', 'Licenciatura em Eufónio'),
('HL5', 'Licenciatura em Fagote'),
('HL6', 'Licenciatura em Flauta'),
('HL7', 'Licenciatura em Fliscorne'),
('HL8', 'Licenciatura em Guitarra'),
('HL9', 'Licenciatura em Harpa'),
('HM1', 'Mestrado em Clarinete'),
('HM10', 'Mestrado em Oboé'),
('HM11', 'Mestrado em Orgão'),
('HM12', 'Mestrado em Percussão'),
('HM13', 'Mestrado em Piano'),
('HM14', 'Mestrado em Saxofone'),
('HM15', 'Mestrado em Trombone'),
('HM16', 'Mestrado em Trompa'),
('HM17', 'Mestrado em Trompete'),
('HM18', 'Mestrado em Tuba'),
('HM19', 'Mestrado em Violoncelo'),
('HM2', 'Mestrado em Contrabaixo'),
('HM20', 'Mestrado em Violino'),
('HM21', 'Mestrado em Viola de Arco'),
('HM22', 'Mestrado em Bandolim'),
('HM3', 'Mestrado em Corne Inglês'),
('HM4', 'Mestrado em Eufónio'),
('HM5', 'Mestrado em Fagote'),
('HM6', 'Mestrado em Flauta'),
('HM7', 'Mestrado em Fliscorne'),
('HM8', 'Mestrado em Guitarra'),
('HM9', 'Mestrado em Harpa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `instrumento`
--

CREATE TABLE IF NOT EXISTS `instrumento` (
  `instrumento_id` varchar(50) NOT NULL,
  `instrumento_designacao` varchar(200) NOT NULL,
  PRIMARY KEY (`instrumento_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `instrumento`
--

INSERT INTO `instrumento` (`instrumento_id`, `instrumento_designacao`) VALUES
('I1', 'Clarinete'),
('I10', 'Oboé'),
('I11', 'Orgão'),
('I12', 'Percussão'),
('I13', 'Piano'),
('I14', 'Saxofone'),
('I15', 'Trombone'),
('I16', 'Trompa'),
('I17', 'Trompete'),
('I18', 'Tuba'),
('I19', 'Violoncelo'),
('I2', 'Contrabaixo'),
('I20', 'Violino'),
('I21', 'Viola de Arco'),
('I22', 'Bandolim'),
('I3', 'Corne Inglês'),
('I4', 'Eufónio'),
('I5', 'Fagote'),
('I6', 'Flauta'),
('I7', 'Fliscorne'),
('I8', 'Guitarra'),
('I9', 'Harpa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `obra`
--

CREATE TABLE IF NOT EXISTS `obra` (
  `obra_id` varchar(50) NOT NULL,
  `obra_nome` varchar(200) NOT NULL,
  `obra_descricao` varchar(500) NOT NULL,
  `obra_ano_criacao` int(11) NOT NULL,
  `obra_periodo` varchar(50) NOT NULL,
  `obra_compositor` varchar(50) NOT NULL,
  `obra_duracao` varchar(50) NOT NULL,
  PRIMARY KEY (`obra_id`),
  KEY `obra_periodo` (`obra_periodo`),
  KEY `obra_compositor` (`obra_compositor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `obra`
--

INSERT INTO `obra` (`obra_id`, `obra_nome`, `obra_descricao`, `obra_ano_criacao`, `obra_periodo`, `obra_compositor`, `obra_duracao`) VALUES
('O100', 'Hungarian Rhapsody No. 111', 'Hungarian Rhapsody No. 11, S.244/11, in A minor, is the eleventh Hungarian Rhapsody by Franz Liszt. Being one of the shorter Hungarian Rhapsodies, it has a duration of five minutes.', 1454, 'P1', 'C12', '01:30:51'),
('O107', 'Symphonic Dances, Op. 64', 'The four Symphonic Dances of the Norwegian composer Edvard Grieg, form the collection notated as Op. 64. They were written c. 1896 and published in 1897. They draw their inspiration from the earlier folk works collected by Ludvig Mathias Lindeman.Dance No. 1, G major, Allegro moderato e marcatoDance No. 2, A major, Allegretto graziosoDance No. 3, D major, Allegro giocosoDance No. 4, A minor, Andante: Allegro risoluto', 1501, 'P2', 'C280', '01:59:57'),
('O108', 'Military Band No. 1', 'The March for Military Band No. 1 in F major, WoO 18, was written by Ludwig van Beethoven in 1808 or 1809 as a march Für die Böhmische Landwehr (For the Bohemian Militia). It was the first of three military marches written by Beethoven.', 1673, 'P3', 'C142', '01:19:00'),
('O115', 'Estampes', 'Estampes (Prints), L.100, is a composition for solo piano by Claude Debussy. It was finished in 1903.', 1598, 'P2', 'C260', '00:35:24'),
('O121', 'Adagio in B minor', 'The Adagio in B minor for piano, K. 540, by Wolfgang Amadeus Mozart is a standalone composition for solo piano, and was entered into his Verzeichnis aller meiner Werke (Catalogue of all my Works) on March 19, 1788.', 1418, 'P1', 'C286', '00:08:37'),
('O122', 'Hungarian Rhapsody No. 4', 'Hungarian Rhapsody No. 4, S.244/4, in E-flat major, is the fourth in a set of nineteen Hungarian Rhapsodies composed by Franz Liszt for solo piano. It was composed in 1847 and published in 1853.A typical performance of the work lasts about five minutes.', 1377, 'P1', 'C254', '01:38:17'),
('O128', 'Morceaux de Salon, Op. 10', 'Morceaux de salon (French for Salon Pieces; Russian: Салонные Пьесы, Salonnyye Pyesy), Op. 10, is a set of solo piano pieces composed by Russian composer Sergei Rachmaninoff in 1894.', 1536, 'P2', 'C140', '00:38:12'),
('O137', 'Études Op. 25', 'Étude Op. 25, No. 8, in D-flat major, is a technical piano study composed by Frédéric Chopin. The etude is composed with sixths being played in both hands, but unlike some of his other etudes, it has a reduced musical difficulty.', 2002, 'P7', 'C86', '00:31:34'),
('O139', 'Polonaises, Op.26', 'The Polonaise in C-sharp minor, Op. 26 No. 1 and the Polonaise in E-flat minor, Op. 26 No. 2 were composed by Frédéric Chopin in 1836. Both of them were dedicated to Josef Dessauer. Both Polonaises require considerable technique and stamina to be performed well.', 1565, 'P2', 'C124', '01:27:00'),
('O14', 'Mazurkas, Op. 63', 'The Op. 63 mazurkas by Frédéric Chopin are a set of three mazurkas written in 1846 and published in 1847. A typical performance of all three mazurkas lasts around six minutes.', 1368, 'P1', 'C152', '01:22:05'),
('O146', 'Hungarian Rhapsody No. 16', 'Hungarian Rhapsody No. 16, S.244/16, in A minor, is the sixteenth Hungarian Rhapsody composed by Franz Liszt for solo piano. Being one of the later Hungarian Rhapsodies, it was composed and published in 1882. The rhapsody, subtitled Budapest Munkácsy-Festlichkeiten, has a duration of approximately five minutes.', 1706, 'P3', 'C298', '00:47:57'),
('O148', 'Hungarian Rhapsody No. 12', 'Hungarian Rhapsody No. 12, S.244/12, in C-sharp minor, is the twelfth Hungarian Rhapsody by Franz Liszt. An average performance of the piece lasts eleven minutes.', 1522, 'P2', 'C108', '01:56:45'),
('O149', 'Hungarian Rhapsody No. 10', 'Hungarian Rhapsody no. 10 in E major, S.244/10, is a composition for solo piano by Franz Liszt. It is tenth in the set of his Hungarian Rhapsodies, and is subtitled Preludio, although this name is not commonly used. It, along with the rest of the first fifteen rhapsodies, were published in 1853.', 1602, 'P2', 'C60', '01:23:04'),
('O15', 'Mazurkas, Op. 67', 'The Op. 67 mazurkas by Frédéric Chopin are a set of four mazurkas posthumously published in 1855. A typical performance of all four mazurkas lasts around seven minutes.', 1428, 'P1', 'C68', '01:03:04'),
('O156', 'Suite in D minor, HWV 437', 'The Keyboard suite in D minor (HWV 437) was composed by George Frideric Handel, for solo keyboard (harpsichord), between 1703 and 1706. It is also referred to as Suite de pièce Vol. 2 No. 4. It was first published in 1733.', 1432, 'P1', 'C290', '01:47:36'),
('O16', 'Scherzo No.3', 'The Scherzo No. 3, Op. 39, in C-sharp minor by Frédéric Chopin, completed in 1839, was written in the abandoned monastery of Valldemossa on the Balearic island of Majorca, Spain. This is the most terse, ironic, and tightly constructed of the four scherzos, with an almost Beethovenian grandeur. Frédéric Chopin dedicated this composition to one of his closest pupils, Adolphe Gutmann.', 1780, 'P4', 'C258', '00:15:19'),
('O162', 'Tönet, ihr Pauken! Erschallet, Trompeten!, BWV 214', 'Tönet, ihr Pauken! Erschallet, Trompeten! (Resound, ye drums! Ring out, ye trumpets!), BWV 214, is a cantata by Johann Sebastian Bach.', 1300, 'P1', 'C286', '00:14:39'),
('O163', 'Études Op.10', 'Étude Op. 10, No. 9, in F minor, is a technical study composed by Frédéric Chopin in 1829. This étude is part of the twelve studies which belong to Op. 10. It is widely regarded as a good left hand étude because it promotes flexibility in the wrists and fingers.', 1739, 'P3', 'C200', '00:16:02'),
('O164', 'Hungarian Rhapsody No. 15', 'Hungarian Rhapsody No. 15, S.244/15, in A minor, is the fifteenth Hungarian Rhapsody by Franz Liszt. The rhapsody is subtitled Rákóczi March and was written in 1853. An average performance of the piece lasts around six minutes.', 1302, 'P1', 'C2', '00:49:02'),
('O166', 'Fantaisie brillante, Op. 22', 'Fantaisie brillante sur des motifs de V. Bellini (also Fantaisie brillante sur Norma et Sonnambula) in E♭ major, Op. 22, is a one-movement piano composition by French pianist Alexandre Goria. Written in 1846 and dedicated to Madame L. Pillot, de Douai, it was first published in Mainz the following year by B. Schott Sohne.', 1551, 'P2', 'C4', '01:05:53'),
('O167', 'Waltzes, Op. 34', 'The three Waltzes, Op. 34, were composed by Frédéric Chopin from 1834 until 1838 and published in 1838.These three waltzes were published as Grandes valses brillantes, but this title is usually reserved for the Waltz in E-flat major, Op. 18.', 1867, 'P5', 'C4', '00:46:13'),
('O169', 'Hungarian Rhapsody No. 17', 'Hungarian Rhapsody No. 17, S.244/17, in D minor, is the seventeenth Hungarian Rhapsody composed by Franz Liszt for solo piano. Being one of the later Hungarian Rhapsodies, it was composed and published in 1882. This piece and the eighteenth rhapsody are the shortest of the Hungarian Rhapsodies, each having a duration of just over three minutes.', 1940, 'P6', 'C86', '01:39:37'),
('O171', 'Hungarian Rhapsody No. 7', 'Hungarian Rhapsody No. 7, S.244/7, in D minor, is the seventh in a set of nineteen Hungarian Rhapsodies composed by Franz Liszt for solo piano.', 1485, 'P1', 'C28', '01:09:44'),
('O173', 'Mazurkas, Op. 56', 'The Op. 56 mazurkas by Frédéric Chopin are a set of three mazurkas presumably written 1843–1844 and published in 1844. A typical performance of all three mazurkas lasts around 12 minutes.', 1534, 'P2', 'C176', '00:21:50'),
('O20', 'Liturgy of St. John Chrysostom', 'Liturgy of St John Chrysostom, Op. 31 (Russian: Литургия Иоанна Златоуста), is a musical work by Sergei Rachmaninoff, one of his two major unaccompanied choral works (the other being his All-Night Vigil). The Divine Liturgy of St. John Chrysostom is the primary worship service of the Eastern Orthodox Church.', 1607, 'P2', 'C260', '01:08:03'),
('O21', 'Serenade for Strings in G minor', 'The Serenade for Strings in G minor is a composition for strings by Vasily Kalinnikov. He wrote the serenade in 1891. The composition was first published by Muzgiz in 1950.', 1814, 'P4', 'C292', '00:02:59'),
('O25', 'Cantatas, BWV 141-150', 'Uns ist ein Kind geboren (Unto us a child is born), is a Christmas cantata which was formerly attributed to Johann Sebastian Bach as his BWV 142, but was most likely composed by his predecessor in Leipzig, Johann Kuhnau, around 1720.', 1634, 'P2', 'C248', '01:28:03'),
('O27', 'Études Op. 25', 'Étude Op. 25, No. 6, in G-sharp minor, is a technical study composed by Frédéric Chopin focusing on thirds, trilling them at a high speed. At one point, both hands play a chromatic-third scale.', 1863, 'P5', 'C216', '00:21:16'),
('O29', 'Rondo for Piano No. 3', 'Rondo in A minor, K. 511, for piano by Wolfgang Amadeus Mozart was written in 1787. It is in one movement: Andante. The rondo follows an A-B-A-C-A pattern. The principal theme in A minor primarily uses eighth notes while the first episode is in F major using sixteenth notes and the second episode is in A major using triplet-sixteenths.', 1435, 'P1', 'C36', '01:47:14'),
('O31', 'Mazurkas, Op. 30', 'The Op. 30 mazurkas, by Frédéric Chopin, are a set of mazurkas written and published in 1837.', 1366, 'P1', 'C152', '00:10:34'),
('O41', 'Ab Irato', 'Étude de perfectionnement de la methode des methodes is a description applied to two pieces by the Hungarian composer Franz Liszt, composed in 1842 and 1852. The first piece is called Morceau de salon, S.142, followed by a revision, Ab Irato, S.143. They are regarded as eccentric pieces with beautiful interludes of arpeggiated figures, though both are rarely performed.', 1749, 'P3', 'C212', '00:28:03'),
('O42', 'Morceau de salon', 'Étude de perfectionnement de la methode des methodes is a description applied to two pieces by the Hungarian composer Franz Liszt, composed in 1842 and 1852. The first piece is called Morceau de salon, S.142, followed by a revision, Ab Irato, S.143. They are regarded as eccentric pieces with beautiful interludes of arpeggiated figures, though both are rarely performed.', 1482, 'P1', 'C236', '01:59:22'),
('O44', 'Hungarian Rhapsody No. 5', 'Hungarian Rhapsody No. 5, S.244/5, is the fifth in a set of 19 Hungarian Rhapsodies by composer Franz Liszt. It is in E Minor and is marked Lento, con duolo. The piece was given the nickname Héroïde-élégiaque by the composer himself. It is very different from his other Hungarian Rhapsodies, as it does not follow the intro - lassan - friska structure and is perhaps the darkest and most melancholic of the set. It was later arranged for orchestra.', 1743, 'P3', 'C238', '00:26:47'),
('O45', 'Polonaises, Op.40', 'The twin Op. 40 Polonaises of the Polonaise in A major, Op. 40, No. 1 (nicknamed the Military Polonaise) and the Polonaise in C minor, Op. 40, No. 2 were composed by Frédéric Chopin in 1838.Anton Rubinstein remarked that the Polonaise in A major is the symbol of Polish glory, whilst the Polonaise in C minor is the symbol of Polish tragedy.', 2011, 'P7', 'C132', '01:43:11'),
('O4620', 'Sumthing', 'asdksfdjdagflknsnsd', 2016, 'P99', 'C208', '02:04:00'),
('O47', 'Hungarian Rhapsody No. 18', 'Hungarian Rhapsody No. 18, S.244/18, in F-sharp minor, is the eighteenth Hungarian Rhapsody composed by Franz Liszt for solo piano. An average performance of the piece lasts three minutes; along with its predecessor, the seventeenth rhapsody, it is the shortest Hungarian Rhapsody of the set. This rhapsody is subtitled Ungarische Ausstellung in Budapest.', 1798, 'P4', 'C276', '00:16:28'),
('O48', 'Mazurkas, Op. 50', 'The Op. 50 mazurkas by Frédéric Chopin are a set of three mazurkas written and published in 1842.A typical performance of all three mazurkas takes about eleven minutes.', 1737, 'P3', 'C82', '01:14:20'),
('O53', 'Grande Tarantelle', 'Grande Tarantelle, Op. 67, is a tarantella written by American composer Louis Moreau Gottschalk from 1858-64. Subtitled Célèbre Tarentelle, it was first performed at the Academy of music in Philadelphia in 1864.', 1854, 'P5', 'C16', '01:39:36'),
('O57', 'Valses Sentimentales', 'Franz Schubert wrote about a hundred waltzes for piano solo. Particularly well known among these are two named collections, the 34 Valses Sentimentales (Op. 50, D. 779) and the 12 Valses Nobles (Op. 77, D. 969).', 1313, 'P1', 'C302', '01:23:22'),
('O58', 'Die Ideale, S.106', 'Die Ideale, S. 106, is a symphonic poem composed by Franz Liszt in 1856–1857 and published in 1858 as No. 12. It was first performed on 5 September 1857.', 1663, 'P3', 'C332', '00:27:22'),
('O62', 'Eleven Chorale Preludes, Op. 122', 'The Eleven Chorale Preludes, Op. 122, are a collection of chorale preludes for organ by Johannes Brahms, composed in 1896, and published posthumously in 1902.The eleven pieces are relatively short and are based on selected verses of nine separate Lutheran chorales.', 1961, 'P6', 'C98', '01:33:07'),
('O65', 'Hungarian Rhapsody No. 13', 'Hungarian Rhapsody No. 13, S.244/13, in A minor, is the thirteenth Hungarian Rhapsody by Franz Liszt. Although one of the lesser performed works of Liszt, it contains a quotation also used in the well-known Allegro molto vivace from Zigeunerweisen by Pablo de Sarasate. An average performance of the work lasts from eight to ten minutes.', 1442, 'P1', 'C330', '00:47:21'),
('O7', 'Polonaises Op.71', 'The three Polonaises, Op. 71 were composed by Frédéric Chopin in his earlier days, possibly as early as 1820. After the death of the composer, Julian Fontana had made up their summaries and publications. These works were published in 1855.', 1672, 'P3', 'C168', '00:45:30'),
('O71', 'Stabat Mater', 'Stabat Mater for solo alto and orchestra, RV 621, is a composition by the Italian baroque composer Antonio Vivaldi on one of the Sorrows of Mary. It was premiered in 1712.', 1756, 'P4', 'C98', '01:15:44'),
('O72', 'Legends, Op.59', 'Legends, Op.59, B.122, (Czech: Legendy) is a cycle of ten small-scale pieces by the Czech composer Antonín Dvořák. The work was composed originally for piano duet, but later was arranged also for a reduced orchestra.', 1595, 'P2', 'C230', '01:58:40'),
('O84', 'Barcarole Op. 60', 'The Barcarole in F sharp major, Op. 60 is a piece for solo piano by Frédéric Chopin, composed between autumn of 1845 and summer 1846. Based on the barcarole rhythm and mood, it features a sweepingly romantic and slightly wistful tone. Many of the technical figures for the right hand are thirds and sixths, while the left features very long reaches over an octave.', 1423, 'P1', 'C136', '00:42:20'),
('O86', 'Singet dem Herrn ein neues Lied', 'Singet dem Herrn ein neues Lied (Sing unto the Lord a new song, BWV 225) is a motet by Johann Sebastian Bach. It was first performed in Leipzig around 1727, using psalm 149:1–3 for its first movement, a 1548 Johann Gramann hymn for the second movement and psalm 150:2 and 6 for its third movement.', 1930, 'P6', 'C100', '00:51:14'),
('O93', 'Scherzo No.4', 'Frédéric Chopin composed his Scherzo No. 4 in E major, Op. 54, the fourth and the last of his scherzos in 1842.The scherzo was published in 1843. Unlike the preceding three scherzi (Op. 20, Op. 31, Op. 39), the E-major is generally calmer in temperament, though it still possesses some exceptionally passionate and dramatic moments. The scherzo is in sonata rondo form, moving to a trio in C-sharp minor that is based on a Polish folk song.', 1527, 'P2', 'C128', '00:47:14'),
('O94', 'Fürchte dich nicht', 'Fürchte dich nicht (Fear thou not, BWV 228) is a motet by Johann Sebastian Bach. It was composed in Leipzig in 1726 and given its first performance before 1731–1732. It draws its text from the Book of Isaiah 41:10 and 43:1 and a hymn by Paul Gerhardt.', 1975, 'P6', 'C72', '00:19:05'),
('O95', 'Komm, Jesu, komm!', 'Komm, Jesu, komm (Come, Jesus, come, BWV 229) is a motet by Johann Sebastian Bach, with a text by Paul Thymich. It was composed in Leipzig before 1735, possibly between 1723 and 1734, and had already received its first performance by 1731–1732.', 1616, 'P2', 'C226', '01:46:17'),
('O96', 'Lobet den Herrn, alle Heiden', 'Lobet den Herrn, alle Heiden (Praise the Lord, all ye heathen), BWV 230, is a motet by Johann Sebastian Bach. It draws its text from Psalm 117 Verses 1-2.The work is generally regarded as one of six surviving motets by Bach. However, some scholars have expressed doubts about its attribution to Bach. It is the only one of the set to be scored for four voices. It is also unusual in that (lightly-scored) instrumental accompaniment is specified.The work was first published in 1821.', 1860, 'P5', 'C30', '00:50:20'),
('O99', 'Sumthing', '', 2004, '', 'C12', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `periodo`
--

CREATE TABLE IF NOT EXISTS `periodo` (
  `periodo_id` varchar(50) NOT NULL,
  `periodo_designacao` varchar(200) NOT NULL,
  PRIMARY KEY (`periodo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `periodo`
--

INSERT INTO `periodo` (`periodo_id`, `periodo_designacao`) VALUES
('P1', 'Medieval'),
('P2', 'Renascimento'),
('P3', 'Barroco'),
('P4', 'Clássico'),
('P5', 'Romântico'),
('P6', 'Século XX'),
('P7', 'Contemporâneo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE IF NOT EXISTS `professor` (
  `professor_id` varchar(50) NOT NULL,
  `professor_nome` varchar(200) NOT NULL,
  `professor_data_nasc` date NOT NULL,
  `professor_habilitacao` varchar(50) NOT NULL,
  `professor_curso` varchar(50) NOT NULL,
  PRIMARY KEY (`professor_id`),
  KEY `professor_curso` (`professor_curso`),
  KEY `professor_habilitacao` (`professor_habilitacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`professor_id`, `professor_nome`, `professor_data_nasc`, `professor_habilitacao`, `professor_curso`) VALUES
('P0', 'Semi-amado Sandalinhas Calígula', '1990-12-12', 'HM22', 'CS22'),
('P1', 'Alvaro Jose De Castro Moreira Da Silva', '1963-07-27', 'HM20', 'CS20'),
('P10', 'Pedro Manuel Vieira Santos Pinto', '1956-11-13', 'HM3', 'CS3'),
('P11', 'Rui Manuel Afonso Rodrigues Silva Guerra', '1967-10-13', 'HL15', 'CB15'),
('P12', 'Sergio Miguel Valente De Almeida', '1954-06-28', 'HM18', 'CS18'),
('P14', 'Vasco Duarte Almeida Dias De Castro', '1947-10-04', 'HM21', 'CS21'),
('P15', 'Antonio Jose Oliveira Faria', '1946-12-21', 'HL19', 'CB19'),
('P17', 'Marlene Azevedo Da Silva', '1954-06-11', 'HL20', 'CB20'),
('P18', 'Paulo Alexandre Marques De Oliveira Serafim', '1961-11-20', 'HL21', 'CB21'),
('P2', 'Andre Filipe Azevedo Sousa', '1968-03-15', 'HL9', 'CB9'),
('P21', 'Jose Alves De Castro', '1973-09-16', 'HM17', 'CB17'),
('P22', 'Mario Bento Brito Nobrega Ramos De Azevedo', '1969-03-06', 'HM16', 'CS16'),
('P23', 'Paulo Cesar Rodrigues Gomes', '1949-08-26', 'HM7', 'CS7'),
('P24', 'Susana Pereira', '1989-08-23', 'HM13', 'CS13'),
('P25', 'Gabriel Reis', '1980-09-04', 'HL13', 'CB13'),
('P26', 'Arsénio', '1973-03-05', 'HL17', 'CB17'),
('P28', 'Gonçalo Hermenegildo', '1965-02-28', 'HM6', 'CS6'),
('P29', 'Luis', '1987-03-26', 'HM4', 'CB4'),
('P3', 'Bruno Miguel Pereira Pinto', '1977-05-06', 'HL4', 'CB4'),
('P31', 'Pedro Lopes', '1979-06-09', 'HL1', 'CB1'),
('P34', 'Sandrina Maciel', '1980-11-04', 'HL18', 'CB18'),
('P36', 'Filipe Froufe', '1960-07-22', 'HM9', 'CB9'),
('P37', 'João Brites', '1950-09-21', 'HM1', 'CS1'),
('P4', 'Filipe Alexandre Da Silva Martins', '1988-12-10', 'HM19', 'CB19'),
('P43', 'Marta Silva', '1985-06-01', 'HM22', 'CS22'),
('P47', 'Carlos Durana', '1970-05-14', 'HM10', 'CS10'),
('P48', 'Hernani Silva', '1945-03-13', 'HM8', 'CS8'),
('P5', 'Helder Ricardo Dias Ribeiro', '1969-03-04', 'HM15', 'CS15'),
('P50', 'Bruno Miguel Pereira Pinto', '1971-01-20', 'HL5', 'CB5'),
('P55', 'Pedro Nuno Tavares Da Silva ', '1978-12-06', 'HM12', 'CB12'),
('P56', 'Rui Pedro Da Costa Barbosa', '1977-11-14', 'HM5', 'CS5'),
('P58', 'Jorge Filipe Marcos Mota ', '1947-10-23', 'HM2', 'CS2'),
('P6', 'Hernani Rodrigues Da Silva', '1971-11-21', 'HL7', 'CB7'),
('P66', 'Carla Sofia De Almeida Coutinho ', '1989-01-06', 'HL10', 'CB10'),
('P75', 'Pedro Filipe Meira Morais', '1979-06-26', 'HL14', 'CB14'),
('P8', 'Jose Miguel Araujo Ferreira', '1947-01-10', 'HM11', 'CS11'),
('P83', 'Carla Susana Teixeira', '1945-03-07', 'HM14', 'CS14'),
('P88', 'Maria João Fernandes Guerreiro Da Silva ', '1957-10-01', 'HL2', 'CB2'),
('P9', 'Pedro Gabriel Dias Ferreira', '1950-08-13', 'HL22', 'CB22');

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `atuacao`
--
ALTER TABLE `atuacao`
  ADD CONSTRAINT `atuacao_ibfk_1` FOREIGN KEY (`atuacao_audicao`) REFERENCES `audicao` (`audicao_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `atuacao_aluno`
--
ALTER TABLE `atuacao_aluno`
  ADD CONSTRAINT `atuacao_aluno_ibfk_2` FOREIGN KEY (`aluno_id`) REFERENCES `aluno` (`aluno_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `atuacao_aluno_ibfk_1` FOREIGN KEY (`atuacao_id`) REFERENCES `atuacao` (`atuacao_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `atuacao_obra`
--
ALTER TABLE `atuacao_obra`
  ADD CONSTRAINT `atuacao_obra_ibfk_2` FOREIGN KEY (`obra_id`) REFERENCES `obra` (`obra_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `atuacao_obra_ibfk_1` FOREIGN KEY (`atuacao_id`) REFERENCES `atuacao` (`atuacao_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `atuacao_professor`
--
ALTER TABLE `atuacao_professor`
  ADD CONSTRAINT `atuacao_professor_ibfk_2` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`professor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `atuacao_professor_ibfk_1` FOREIGN KEY (`atuacao_id`) REFERENCES `atuacao` (`atuacao_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `audicao`
--
ALTER TABLE `audicao`
  ADD CONSTRAINT `audicao_ibfk_1` FOREIGN KEY (`audicao_responsavel`) REFERENCES `professor` (`professor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `compositor`
--
ALTER TABLE `compositor`
  ADD CONSTRAINT `compositor_ibfk_1` FOREIGN KEY (`compositor_periodo`) REFERENCES `periodo` (`periodo_id`);

--
-- Limitadores para a tabela `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`curso_instrumento`) REFERENCES `instrumento` (`instrumento_id`);

--
-- Limitadores para a tabela `professor`
--
ALTER TABLE `professor`
  ADD CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`professor_habilitacao`) REFERENCES `habilitacao` (`habilitacao_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
