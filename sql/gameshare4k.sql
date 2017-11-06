-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-10-2017 a las 22:21:21
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gameshare4k`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `ID` int(4) NOT NULL,
  `Juego` varchar(70) NOT NULL,
  `Plataforma` varchar(50) NOT NULL,
  `Imagen` varchar(255) NOT NULL,
  `ID_Usuario` int(4) NOT NULL,
  `Precio` varchar(20) NOT NULL,
  `Descripción` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Condición` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`ID`, `Juego`, `Plataforma`, `Imagen`, `ID_Usuario`, `Precio`, `Descripción`, `Condición`) VALUES
(1, 'Rank', 'Sub-Ex', 'http://dummyimage.com/300x200.jpg/dddddd/000000', 1, '$255.71', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\r\n\r\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 'quis'),
(2, 'Bigtax', 'Overhold', 'http://dummyimage.com/300x200.jpg/ff4444/ffffff', 2, '$292.04', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'justo'),
(3, 'Konklux', 'Stronghold', 'http://dummyimage.com/300x200.jpg/cc0000/ffffff', 3, '$443.69', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.\r\n\r\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\r\n\r\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'libero'),
(4, 'Prodder', 'Kanlam', 'http://dummyimage.com/300x200.jpg/cc0000/ffffff', 4, '$127.42', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\r\n\r\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'nec'),
(5, 'Daltfresh', 'Hatity', 'http://dummyimage.com/300x200.jpg/5fa2dd/ffffff', 5, '$268.07', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'lacinia'),
(6, 'Veribet', 'Cookley', 'http://dummyimage.com/300x200.jpg/ff4444/ffffff', 6, '$119.99', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\r\n\r\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\n\r\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'condimentu'),
(7, 'Tampflex', 'Bitchip', 'http://dummyimage.com/300x200.jpg/5fa2dd/ffffff', 7, '$295.59', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 'potenti'),
(8, 'Tres-Zap', 'Keylex', 'http://dummyimage.com/300x200.jpg/cc0000/ffffff', 8, '$291.92', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 'enim'),
(9, 'Quo Lux', 'Otcom', 'http://dummyimage.com/300x200.jpg/5fa2dd/ffffff', 9, '$237.64', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\r\n\r\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'eu'),
(10, 'Redhold', 'Greenlam', 'http://dummyimage.com/300x200.jpg/cc0000/ffffff', 10, '$172.68', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\r\n\r\nFusce consequat. Nulla nisl. Nunc nisl.', 'ut'),
(11, 'Sonsing', 'Transcof', 'http://dummyimage.com/300x200.jpg/ff4444/ffffff', 11, '$185.08', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 'pulvinar'),
(12, 'Andalax', 'Overhold', 'http://dummyimage.com/300x200.jpg/ff4444/ffffff', 12, '$447.98', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 'luctus'),
(13, 'Job', 'Quo Lux', 'http://dummyimage.com/300x200.jpg/5fa2dd/ffffff', 13, '$328.95', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\r\n\r\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 'erat'),
(14, 'Bigtax', 'Home Ing', 'http://dummyimage.com/300x200.jpg/cc0000/ffffff', 14, '$225.22', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\r\n\r\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\r\n\r\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'sapien'),
(15, 'Cardify', 'Ronstring', 'http://dummyimage.com/300x200.jpg/dddddd/000000', 15, '$456.38', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.\r\n\r\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'ut'),
(16, 'Lotlux', 'Konklab', 'http://dummyimage.com/300x200.jpg/cc0000/ffffff', 16, '$113.17', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'ut'),
(17, 'Fixflex', 'Toughjoyfax', 'http://dummyimage.com/300x200.jpg/cc0000/ffffff', 17, '$451.86', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'velit'),
(18, 'Overhold', 'Lotlux', 'http://dummyimage.com/300x200.jpg/dddddd/000000', 18, '$397.63', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\r\n\r\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\r\n\r\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 'duis'),
(19, 'Sonsing', 'Alpha', 'http://dummyimage.com/300x200.jpg/ff4444/ffffff', 19, '$261.61', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 'nam'),
(20, 'Tampflex', 'Domainer', 'http://dummyimage.com/300x200.jpg/dddddd/000000', 20, '$312.14', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'convallis'),
(21, 'Flexidy', 'Quo Lux', 'http://dummyimage.com/300x200.jpg/cc0000/ffffff', 21, '$364.58', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\r\n\r\nPhasellus in felis. Donec semper sapien a libero. Nam dui.\r\n\r\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'in'),
(22, 'Lotstring', 'Zamit', 'http://dummyimage.com/300x200.jpg/5fa2dd/ffffff', 22, '$416.50', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'aliquam'),
(23, 'Keylex', 'Asoka', 'http://dummyimage.com/300x200.jpg/dddddd/000000', 23, '$218.22', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\r\n\r\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'ultrices'),
(24, 'Bitchip', 'Opela', 'http://dummyimage.com/300x200.jpg/5fa2dd/ffffff', 24, '$197.21', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\r\n\r\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\r\n\r\nFusce consequat. Nulla nisl. Nunc nisl.', 'id'),
(25, 'Sub-Ex', 'Alpha', 'http://dummyimage.com/300x200.jpg/dddddd/000000', 25, '$417.91', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\r\n\r\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\r\n\r\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 'suspendiss'),
(26, 'Hatity', 'Y-find', 'http://dummyimage.com/300x200.jpg/5fa2dd/ffffff', 26, '$314.96', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'augue'),
(27, 'Zamit', 'Fixflex', 'http://dummyimage.com/300x200.jpg/ff4444/ffffff', 27, '$358.48', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\r\n\r\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\r\n\r\nFusce consequat. Nulla nisl. Nunc nisl.', 'et'),
(28, 'Veribet', 'Hatity', 'http://dummyimage.com/300x200.jpg/cc0000/ffffff', 28, '$454.00', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\r\n\r\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\r\n\r\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'posuere'),
(29, 'Voyatouch', 'Konklab', 'http://dummyimage.com/300x200.jpg/5fa2dd/ffffff', 29, '$211.21', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\r\n\r\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\r\n\r\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'sed'),
(30, 'Zaam-Dox', 'Veribet', 'http://dummyimage.com/300x200.jpg/5fa2dd/ffffff', 30, '$110.20', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\r\n\r\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\r\n\r\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'elementum'),
(31, 'Bigtax', 'Overhold', 'http://dummyimage.com/300x200.jpg/5fa2dd/ffffff', 31, '$492.11', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\r\n\r\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 'duis'),
(32, 'Job', 'Otcom', 'http://dummyimage.com/300x200.jpg/dddddd/000000', 32, '$300.26', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\r\n\r\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\r\n\r\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 'in'),
(33, 'Bitchip', 'Gembucket', 'http://dummyimage.com/300x200.jpg/dddddd/000000', 33, '$330.26', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\r\n\r\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\r\n\r\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'in'),
(34, 'Cookley', 'Tres-Zap', 'http://dummyimage.com/300x200.jpg/5fa2dd/ffffff', 34, '$400.06', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\r\n\r\nSed ante. Vivamus tortor. Duis mattis egestas metus.\r\n\r\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'sit'),
(35, 'Lotstring', 'Gembucket', 'http://dummyimage.com/300x200.jpg/5fa2dd/ffffff', 35, '$437.29', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\r\n\r\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\r\n\r\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 'cubilia'),
(36, 'Job', 'Namfix', 'http://dummyimage.com/300x200.jpg/dddddd/000000', 36, '$310.71', 'Fusce consequat. Nulla nisl. Nunc nisl.\r\n\r\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'sagittis'),
(37, 'Otcom', 'Treeflex', 'http://dummyimage.com/300x200.jpg/dddddd/000000', 37, '$437.69', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\r\n\r\nSed ante. Vivamus tortor. Duis mattis egestas metus.\r\n\r\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'ipsum'),
(38, 'Veribet', 'Holdlamis', 'http://dummyimage.com/300x200.jpg/cc0000/ffffff', 38, '$342.80', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'ligula'),
(39, 'Subin', 'Alpha', 'http://dummyimage.com/300x200.jpg/ff4444/ffffff', 39, '$166.05', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\r\n\r\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\r\n\r\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'amet'),
(40, 'Aerified', 'Stronghold', 'http://dummyimage.com/300x200.jpg/5fa2dd/ffffff', 40, '$419.32', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'vestibulum'),
(41, 'Toughjoyfax', 'Aerified', 'http://dummyimage.com/300x200.jpg/cc0000/ffffff', 41, '$444.58', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\r\n\r\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 'pretium'),
(42, 'Voltsillam', 'Y-Solowarm', 'http://dummyimage.com/300x200.jpg/ff4444/ffffff', 42, '$480.36', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\r\n\r\nFusce consequat. Nulla nisl. Nunc nisl.\r\n\r\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'ut'),
(43, 'Greenlam', 'Namfix', 'http://dummyimage.com/300x200.jpg/5fa2dd/ffffff', 43, '$284.14', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\r\n\r\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'vestibulum'),
(44, 'Greenlam', 'Job', 'http://dummyimage.com/300x200.jpg/ff4444/ffffff', 44, '$124.96', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 'erat'),
(45, 'Tampflex', 'Bitchip', 'http://dummyimage.com/300x200.jpg/cc0000/ffffff', 45, '$170.64', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\r\n\r\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'dapibus'),
(46, 'Cookley', 'Job', 'http://dummyimage.com/300x200.jpg/ff4444/ffffff', 46, '$398.03', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\r\n\r\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\r\n\r\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'erat'),
(47, 'Stringtough', 'Aerified', 'http://dummyimage.com/300x200.jpg/5fa2dd/ffffff', 47, '$145.84', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\r\n\r\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'metus'),
(48, 'Konklab', 'Tres-Zap', 'http://dummyimage.com/300x200.jpg/5fa2dd/ffffff', 48, '$289.81', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'sit'),
(49, 'Subin', 'Alpha', 'http://dummyimage.com/300x200.jpg/dddddd/000000', 49, '$493.68', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\r\n\r\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 'nunc'),
(50, 'Voltsillam', 'Fixflex', 'http://dummyimage.com/300x200.jpg/cc0000/ffffff', 50, '$168.15', 'Fusce consequat. Nulla nisl. Nunc nisl.\r\n\r\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'nunc'),
(51, 'Ventosanzap', 'Duobam', 'http://dummyimage.com/300x200.jpg/5fa2dd/ffffff', 51, '$291.87', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\r\n\r\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'a'),
(52, 'Andalax', 'Ventosanzap', 'http://dummyimage.com/300x200.jpg/ff4444/ffffff', 52, '$278.66', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\r\n\r\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 'nibh'),
(53, 'Fintone', 'Trippledex', 'http://dummyimage.com/300x200.jpg/ff4444/ffffff', 53, '$314.36', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\r\n\r\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\r\n\r\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'et'),
(54, 'Subin', 'Zaam-Dox', 'http://dummyimage.com/300x200.jpg/cc0000/ffffff', 54, '$226.76', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\r\n\r\nSed ante. Vivamus tortor. Duis mattis egestas metus.\r\n\r\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'lobortis'),
(55, 'Zaam-Dox', 'Bytecard', 'http://dummyimage.com/300x200.jpg/5fa2dd/ffffff', 55, '$295.86', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'felis'),
(56, 'Konklab', 'Subin', 'http://dummyimage.com/300x200.jpg/cc0000/ffffff', 56, '$479.18', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'vivamus'),
(57, 'Vagram', 'Cookley', 'http://dummyimage.com/300x200.jpg/dddddd/000000', 57, '$253.00', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'justo'),
(58, 'Alphazap', 'Lotstring', 'http://dummyimage.com/300x200.jpg/dddddd/000000', 58, '$243.40', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'et'),
(59, 'Bitchip', 'Redhold', 'http://dummyimage.com/300x200.jpg/ff4444/ffffff', 59, '$137.71', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'vestibulum'),
(60, 'Infamous', 'Sony', 'http://tienda.mulligan-a3.com/_images/_cartas/ps3-99.jpg', 60, '$384.35', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\r\n\r\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\r\n\r\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 'morbi'),
(61, 'Super Smash Bros. Melee For the Nintendo Gamecube', 'Nintendo', 'https://upload.wikimedia.org/wikipedia/en/7/75/Super_Smash_Bros_Melee_box_art.png', 1, '$600', 'El mejor juego de peleas que ha existido, solamente para el nintendo GameCube.\r\n\r\nDisfruta del juego mas competitivo de nintendo.', 'Excelente'),
(62, 'Super Mario Sunshine', 'Nintendo', 'https://www.mariowiki.com/images/thumb/7/79/Box_NA_-_Super_Mario_Sunshine.png/250px-Box_NA_-_Super_Mario_Sunshine.png', 1, '$499.99', 'Juego super mario sunshine para Gamecube, esta en buenas condiciones lo usaba cuando estaba pequeño.', 'Decente'),
(63, 'Paper Mario TTYD', 'Nintendo', 'https://www.mariowiki.com/images/thumb/c/c4/PMTTYD.jpg/250px-PMTTYD.jpg', 2, '$450.99', 'Vendo Paper Mario para el nintendo GameCube\r\nesta en perfectas condiciones no lo he usado en años.', 'Excelente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPass`) VALUES
(1, 'MikePineda', 'mikepineda97@gmail.com', 'c552acdbfd3793f89b4ee695fd144f3573673abeb3e5f7f3d45aa9704e49a5fe'),
(2, 'Luisillo', 'luisillo@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92'),
(3, 'radita', 'rada@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92'),
(4, 'Falso', 'alanfalso@gg.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92'),
(5, 'Filipino', 'filip@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92'),
(6, 'moik', 'moik@moik.com', 'dc1527c1464fe2af5b37d8bfa767ea3571478cab32b896825f6a87249980296e'),
(7, 'admin', 'admin@123.com', '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Usuario` (`ID_Usuario`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `juegos`
--
ALTER TABLE `juegos`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
