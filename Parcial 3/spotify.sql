-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-06-2024 a las 02:53:53
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripción` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `descripción`) VALUES
(1, 'bad bunny', 'Benito Antonio Martínez Ocasio,conocido universalmente como Bad Bunny, es un interprete y compositor de musica urbana puertorriqueño. Se le considera uno de los principales nombres del panorama actual del rap, trap y regueton en español.'),
(2, 'kevin kaarl', 'Kevin Eduardo Hernández Carlos,Kevin y su hermano gemelo, Bryan, empezaron en el mundo de la música, tocando instrumentos como guitarra y trompeta y formando parte de distintas bandas de Meoqui.'),
(3, 'Feid', 'El Ferxxo es el artista del momento el cantautor, rapero y productor colombiano de reggaetón y cumbia Feid canta con un estilo reconocible al instante.'),
(4, 'Ariana Grande', 'Esta artista de Florida también se hizo famosa cuando era solo una adolescente de la mando e Nickelodeon y desde entonces, gracias a su música, su trabajo como actriz y a la creación de su propia marca de productos de belleza y maquillaje acumula en Instagram 378 millones de seguidores.'),
(5, 'Beyoncé ', 'La de Atlanta no necesita presentación alguna y bien lo saben sus más de 318 millones de seguidores en la red social de las fotografías.'),
(6, 'Justin Bieber', 'Justin Bieber ocupa el cuarto puesto en general y el primero de la categoría masculina. La estrella del pop estadounidense suma en estos momentos 292 millones de seguidores en la red social de la camarita.'),
(7, 'Taylor Swift', 'El top 5 de cantantes más seguidos en Instagram lo cierra Taylor Swift. Más de 270 swifties de todo el mundo siguen y apoyan a su musa en esta red social día tras día convirtiéndola en la quinta artista más seguida de todo el mundo.'),
(8, 'Jennifer Lopez', 'Tras Taylor Swift se sitúa Jennifer Lopez. La autora de On the Floor, Una noche más y Let\'s Get Loud acumula en Instagram más de 250 millones de seguidores que le otorgan el sexto puesto en este ranking de cantantes famosos en las redes sociales.'),
(9, 'Nicki Minaj', ' La séptima artista con más seguidores del mundo es la rapera Nicki Minaj que suma en agosto de 2023 un total de 225,1 millones de followers en Instagram.'),
(10, ' Katy Perry', 'A la cantante estadounidense Katy Perry la siguen en Instagram nada más y nada menos que 204,49 millones de personas. Gracias a temas como Harleys in Hawaii, Roar y California Gurls la artista de Santa Bárbara es la novena con más fans en esta red social de Mark Zuckerberg.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas_canciones`
--

CREATE TABLE `artistas_canciones` (
  `id` int(11) NOT NULL,
  `artistas_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duración` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duración`, `fecha`, `activo`, `foto`) VALUES
(1, 'luna', 6, '00:03:30', '2022-08-10', 50, ''),
(2, 'normal', 2, '00:04:00', '2021-04-10', 24, ''),
(3, 'fumeteo', 6, '00:03:45', '2021-10-06', 28, ''),
(4, 'si tu supieras', 6, '00:02:52', '2022-09-11', 60, ''),
(5, 'alakran', 7, '00:03:07', '2021-09-13', 50, ''),
(6, 'bubalu', 6, '00:03:16', '2022-12-01', 57, ''),
(7, 'no digas na', 8, '00:02:47', '2023-07-08', 89, ''),
(8, 'brickell', 6, '00:03:51', '2019-12-15', 125, ''),
(9, 'aguante', 8, '00:02:44', '2020-03-28', 30, ''),
(10, 'ateo', 8, '00:03:22', '2024-03-07', 34, ''),
(11, 'belixe', 6, '00:03:01', '2024-04-23', 59, ''),
(12, 'break up', 6, '00:03:00', '2022-10-05', 12, ''),
(13, 'california', 7, '00:04:00', '2022-01-21', 32, ''),
(14, 'castigo', 6, '00:02:03', '2022-10-10', 15, ''),
(15, 'como duele', 8, '00:02:10', '2022-01-01', 46, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritas`
--

CREATE TABLE `favoritas` (
  `id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(1, 'electronica'),
(2, 'banda'),
(3, 'clasica'),
(4, 'jazz'),
(5, 'rock and roll\r\n'),
(6, 'pop'),
(7, 'rap'),
(8, 'disco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresías`
--

CREATE TABLE `membresías` (
  `id` int(11) NOT NULL,
  `descripción` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `membresías`
--

INSERT INTO `membresías` (`id`, `descripción`, `precio`) VALUES
(1, 'free', 0),
(2, 'premium', 100),
(3, 'familiar', 70);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `duración` time NOT NULL,
  `total_canciones` int(11) NOT NULL,
  `descripción` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'Angel Santiago Pou Mápula', 'angel.pou22@cetis107.edu.mx', 3),
(2, 'Marco Antonio Guerrero Valle', 'marco.guerrero22@cetis107.edu.mx', 2),
(3, 'Marco Uriel Aguiluz Ibarra', 'marco.aguiluz22@cetis107.edu.mx', 1),
(4, 'Andrea Salas Beltran', 'andrea.salas22@cetis107.edu.mx', 3),
(5, 'Diego Angel Chavez Guerra', 'diego.chavez22@cetis107.edu.mx', 3),
(6, 'Ekain Israel Cervera Rodríguez', 'ekain.cervera22@cetis107.edu.mx', 1),
(7, 'Camila García Ozuna', 'camila.garcia22@cetis107.edu.mx', 2),
(8, 'Larissa Bejarano Felix', 'larissa.bejarano22@cetis107.edu.mx', 3),
(9, 'Fernando Moreno Madrigal', 'fernando.moreno22@cetis107.edu.mx', 1),
(10, 'Jaime Fernando Hernández Mendosa', 'jaime.hernandez22@cetis107.edu.mx', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artistas_id` (`artistas_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritas`
--
ALTER TABLE `favoritas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_id` (`usuarios_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresías`
--
ALTER TABLE `membresías`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_id` (`usuarios_id`);

--
-- Indices de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuarios_id` (`usuarios_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `favoritas`
--
ALTER TABLE `favoritas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD CONSTRAINT `artistas_canciones_ibfk_1` FOREIGN KEY (`artistas_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artistas_canciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `favoritas`
--
ALTER TABLE `favoritas`
  ADD CONSTRAINT `favoritas_ibfk_1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `favoritas_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD CONSTRAINT `playlist_canciones_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_3` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresías` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
