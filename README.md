# CarritoCompra
CREATE TABLE `tipo_productos` (
  `iIdTipoProducto` bigint(20) UNSIGNED NOT NULL,
  `sNombreTipoProducto` varchar(191) NOT NULL,
  `iIdEstado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_productos`
--

INSERT INTO `tipo_productos` (`iIdTipoProducto`, `sNombreTipoProducto`, `iIdEstado`, `created_at`, `updated_at`) VALUES
(1, 'Pastas', 1, '2023-09-25 01:39:34', '2023-09-25 01:39:37'),
(2, 'Saludable', 1, '2023-09-27 00:13:06', '2023-09-27 00:13:09');

CREATE TABLE `productos` (
  `iIdProducto` bigint(20) UNSIGNED NOT NULL,
  `sNombreProducto` varchar(191) NOT NULL,
  `sDescripcion` varchar(191) NOT NULL,
  `iStock` int(11) NOT NULL,
  `dPrecio` int(11) NOT NULL,
  `iIdEstado` int(11) NOT NULL,
  `iIdTipoProducto` bigint(20) UNSIGNED NOT NULL,
  `sUrl` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB

INSERT INTO `productos` (`iIdProducto`, `sNombreProducto`, `sDescripcion`, `iStock`, `dPrecio`, `iIdEstado`, `iIdTipoProducto`, `sUrl`, `created_at`, `updated_at`) VALUES
(1, 'Desayuno', 'Desayuno saludable con frutos secos', 20, 2500, 1, 2, 'img/desayunoSaludable.jpg', '2023-09-25 02:16:16', '2023-09-25 02:16:19'),
(2, 'Pizza especial', 'Pizza especial con la mejor selección de hierbas, especias y condimentos Alicante', 20, 2000, 1, 1, 'img/pizza.jpg', '2023-09-27 00:12:20', '2023-09-27 00:12:24'),
(3, 'Frutos rojos', 'Bol de cereales y frutos rojos', 10, 1500, 1, 2, 'img/frutosRojos.jpg', '2023-09-27 00:15:08', '2023-09-27 00:15:10'),
(4, 'Desayuno proteico', 'Desayuno saludable con huevos y palta', 13, 1800, 1, 2, 'img/break.jpg', '2023-09-27 00:16:33', '2023-09-27 00:16:36');
