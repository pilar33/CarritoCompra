-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-10-2023 a las 16:31:53
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restauranteryr`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(4, 'Administrador'),
(3, 'Operador'),
(1, 'Usuario'),
(2, 'visitante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(2, 1, 197),
(3, 1, 198),
(4, 1, 199),
(1, 1, 200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add auth group', 9, 'add_authgroup'),
(26, 'Can change auth group', 9, 'change_authgroup'),
(27, 'Can delete auth group', 9, 'delete_authgroup'),
(28, 'Can view auth group', 9, 'view_authgroup'),
(29, 'Can add auth group permissions', 10, 'add_authgrouppermissions'),
(30, 'Can change auth group permissions', 10, 'change_authgrouppermissions'),
(31, 'Can delete auth group permissions', 10, 'delete_authgrouppermissions'),
(32, 'Can view auth group permissions', 10, 'view_authgrouppermissions'),
(33, 'Can add auth permission', 11, 'add_authpermission'),
(34, 'Can change auth permission', 11, 'change_authpermission'),
(35, 'Can delete auth permission', 11, 'delete_authpermission'),
(36, 'Can view auth permission', 11, 'view_authpermission'),
(37, 'Can add auth user', 12, 'add_authuser'),
(38, 'Can change auth user', 12, 'change_authuser'),
(39, 'Can delete auth user', 12, 'delete_authuser'),
(40, 'Can view auth user', 12, 'view_authuser'),
(41, 'Can add auth user groups', 13, 'add_authusergroups'),
(42, 'Can change auth user groups', 13, 'change_authusergroups'),
(43, 'Can delete auth user groups', 13, 'delete_authusergroups'),
(44, 'Can view auth user groups', 13, 'view_authusergroups'),
(45, 'Can add auth user user permissions', 14, 'add_authuseruserpermissions'),
(46, 'Can change auth user user permissions', 14, 'change_authuseruserpermissions'),
(47, 'Can delete auth user user permissions', 14, 'delete_authuseruserpermissions'),
(48, 'Can view auth user user permissions', 14, 'view_authuseruserpermissions'),
(49, 'Can add django admin log', 15, 'add_djangoadminlog'),
(50, 'Can change django admin log', 15, 'change_djangoadminlog'),
(51, 'Can delete django admin log', 15, 'delete_djangoadminlog'),
(52, 'Can view django admin log', 15, 'view_djangoadminlog'),
(53, 'Can add django content type', 16, 'add_djangocontenttype'),
(54, 'Can change django content type', 16, 'change_djangocontenttype'),
(55, 'Can delete django content type', 16, 'delete_djangocontenttype'),
(56, 'Can view django content type', 16, 'view_djangocontenttype'),
(57, 'Can add django migrations', 17, 'add_djangomigrations'),
(58, 'Can change django migrations', 17, 'change_djangomigrations'),
(59, 'Can delete django migrations', 17, 'delete_djangomigrations'),
(60, 'Can view django migrations', 17, 'view_djangomigrations'),
(61, 'Can add django session', 18, 'add_djangosession'),
(62, 'Can change django session', 18, 'change_djangosession'),
(63, 'Can delete django session', 18, 'delete_djangosession'),
(64, 'Can view django session', 18, 'view_djangosession'),
(65, 'Can add empleados', 19, 'add_empleados'),
(66, 'Can change empleados', 19, 'change_empleados'),
(67, 'Can delete empleados', 19, 'delete_empleados'),
(68, 'Can view empleados', 19, 'view_empleados'),
(69, 'Can add cajas', 22, 'add_cajas'),
(70, 'Can change cajas', 22, 'change_cajas'),
(71, 'Can delete cajas', 22, 'delete_cajas'),
(72, 'Can view cajas', 22, 'view_cajas'),
(73, 'Can add clientes', 23, 'add_clientes'),
(74, 'Can change clientes', 23, 'change_clientes'),
(75, 'Can delete clientes', 23, 'delete_clientes'),
(76, 'Can view clientes', 23, 'view_clientes'),
(77, 'Can add comprobantes', 24, 'add_comprobantes'),
(78, 'Can change comprobantes', 24, 'change_comprobantes'),
(79, 'Can delete comprobantes', 24, 'delete_comprobantes'),
(80, 'Can view comprobantes', 24, 'view_comprobantes'),
(81, 'Can add comprobante ventas', 25, 'add_comprobanteventas'),
(82, 'Can change comprobante ventas', 25, 'change_comprobanteventas'),
(83, 'Can delete comprobante ventas', 25, 'delete_comprobanteventas'),
(84, 'Can view comprobante ventas', 25, 'view_comprobanteventas'),
(85, 'Can add mesas', 26, 'add_mesas'),
(86, 'Can change mesas', 26, 'change_mesas'),
(87, 'Can delete mesas', 26, 'delete_mesas'),
(88, 'Can view mesas', 26, 'view_mesas'),
(89, 'Can add pedidos', 27, 'add_pedidos'),
(90, 'Can change pedidos', 27, 'change_pedidos'),
(91, 'Can delete pedidos', 27, 'delete_pedidos'),
(92, 'Can view pedidos', 27, 'view_pedidos'),
(93, 'Can add productos', 28, 'add_productos'),
(94, 'Can change productos', 28, 'change_productos'),
(95, 'Can delete productos', 28, 'delete_productos'),
(96, 'Can view productos', 28, 'view_productos'),
(97, 'Can add sucursales', 29, 'add_sucursales'),
(98, 'Can change sucursales', 29, 'change_sucursales'),
(99, 'Can delete sucursales', 29, 'delete_sucursales'),
(100, 'Can view sucursales', 29, 'view_sucursales'),
(101, 'Can add tipo comprobante', 30, 'add_tipocomprobante'),
(102, 'Can change tipo comprobante', 30, 'change_tipocomprobante'),
(103, 'Can delete tipo comprobante', 30, 'delete_tipocomprobante'),
(104, 'Can view tipo comprobante', 30, 'view_tipocomprobante'),
(105, 'Can add tipo empleado', 21, 'add_tipoempleado'),
(106, 'Can change tipo empleado', 21, 'change_tipoempleado'),
(107, 'Can delete tipo empleado', 21, 'delete_tipoempleado'),
(108, 'Can view tipo empleado', 21, 'view_tipoempleado'),
(109, 'Can add tipo pedidos', 31, 'add_tipopedidos'),
(110, 'Can change tipo pedidos', 31, 'change_tipopedidos'),
(111, 'Can delete tipo pedidos', 31, 'delete_tipopedidos'),
(112, 'Can view tipo pedidos', 31, 'view_tipopedidos'),
(113, 'Can add tipo productos', 20, 'add_tipoproductos'),
(114, 'Can change tipo productos', 20, 'change_tipoproductos'),
(115, 'Can delete tipo productos', 20, 'delete_tipoproductos'),
(116, 'Can view tipo productos', 20, 'view_tipoproductos'),
(117, 'Can add ventas', 32, 'add_ventas'),
(118, 'Can change ventas', 32, 'change_ventas'),
(119, 'Can delete ventas', 32, 'delete_ventas'),
(120, 'Can view ventas', 32, 'view_ventas'),
(121, 'Can add productos', 33, 'add_productos'),
(122, 'Can change productos', 33, 'change_productos'),
(123, 'Can delete productos', 33, 'delete_productos'),
(124, 'Can view productos', 33, 'view_productos'),
(125, 'Can add tipo productos', 34, 'add_tipoproductos'),
(126, 'Can change tipo productos', 34, 'change_tipoproductos'),
(127, 'Can delete tipo productos', 34, 'delete_tipoproductos'),
(128, 'Can view tipo productos', 34, 'view_tipoproductos'),
(129, 'Can add auth group', 35, 'add_authgroup'),
(130, 'Can change auth group', 35, 'change_authgroup'),
(131, 'Can delete auth group', 35, 'delete_authgroup'),
(132, 'Can view auth group', 35, 'view_authgroup'),
(133, 'Can add auth group permissions', 36, 'add_authgrouppermissions'),
(134, 'Can change auth group permissions', 36, 'change_authgrouppermissions'),
(135, 'Can delete auth group permissions', 36, 'delete_authgrouppermissions'),
(136, 'Can view auth group permissions', 36, 'view_authgrouppermissions'),
(137, 'Can add auth permission', 37, 'add_authpermission'),
(138, 'Can change auth permission', 37, 'change_authpermission'),
(139, 'Can delete auth permission', 37, 'delete_authpermission'),
(140, 'Can view auth permission', 37, 'view_authpermission'),
(141, 'Can add auth user', 38, 'add_authuser'),
(142, 'Can change auth user', 38, 'change_authuser'),
(143, 'Can delete auth user', 38, 'delete_authuser'),
(144, 'Can view auth user', 38, 'view_authuser'),
(145, 'Can add auth user groups', 39, 'add_authusergroups'),
(146, 'Can change auth user groups', 39, 'change_authusergroups'),
(147, 'Can delete auth user groups', 39, 'delete_authusergroups'),
(148, 'Can view auth user groups', 39, 'view_authusergroups'),
(149, 'Can add auth user user permissions', 40, 'add_authuseruserpermissions'),
(150, 'Can change auth user user permissions', 40, 'change_authuseruserpermissions'),
(151, 'Can delete auth user user permissions', 40, 'delete_authuseruserpermissions'),
(152, 'Can view auth user user permissions', 40, 'view_authuseruserpermissions'),
(153, 'Can add cajas', 41, 'add_cajas'),
(154, 'Can change cajas', 41, 'change_cajas'),
(155, 'Can delete cajas', 41, 'delete_cajas'),
(156, 'Can view cajas', 41, 'view_cajas'),
(157, 'Can add clientes', 42, 'add_clientes'),
(158, 'Can change clientes', 42, 'change_clientes'),
(159, 'Can delete clientes', 42, 'delete_clientes'),
(160, 'Can view clientes', 42, 'view_clientes'),
(161, 'Can add comprobantes', 43, 'add_comprobantes'),
(162, 'Can change comprobantes', 43, 'change_comprobantes'),
(163, 'Can delete comprobantes', 43, 'delete_comprobantes'),
(164, 'Can view comprobantes', 43, 'view_comprobantes'),
(165, 'Can add comprobante ventas', 44, 'add_comprobanteventas'),
(166, 'Can change comprobante ventas', 44, 'change_comprobanteventas'),
(167, 'Can delete comprobante ventas', 44, 'delete_comprobanteventas'),
(168, 'Can view comprobante ventas', 44, 'view_comprobanteventas'),
(169, 'Can add django admin log', 45, 'add_djangoadminlog'),
(170, 'Can change django admin log', 45, 'change_djangoadminlog'),
(171, 'Can delete django admin log', 45, 'delete_djangoadminlog'),
(172, 'Can view django admin log', 45, 'view_djangoadminlog'),
(173, 'Can add django content type', 46, 'add_djangocontenttype'),
(174, 'Can change django content type', 46, 'change_djangocontenttype'),
(175, 'Can delete django content type', 46, 'delete_djangocontenttype'),
(176, 'Can view django content type', 46, 'view_djangocontenttype'),
(177, 'Can add django migrations', 47, 'add_djangomigrations'),
(178, 'Can change django migrations', 47, 'change_djangomigrations'),
(179, 'Can delete django migrations', 47, 'delete_djangomigrations'),
(180, 'Can view django migrations', 47, 'view_djangomigrations'),
(181, 'Can add django session', 48, 'add_djangosession'),
(182, 'Can change django session', 48, 'change_djangosession'),
(183, 'Can delete django session', 48, 'delete_djangosession'),
(184, 'Can view django session', 48, 'view_djangosession'),
(185, 'Can add empleados', 49, 'add_empleados'),
(186, 'Can change empleados', 49, 'change_empleados'),
(187, 'Can delete empleados', 49, 'delete_empleados'),
(188, 'Can view empleados', 49, 'view_empleados'),
(189, 'Can add mesas', 50, 'add_mesas'),
(190, 'Can change mesas', 50, 'change_mesas'),
(191, 'Can delete mesas', 50, 'delete_mesas'),
(192, 'Can view mesas', 50, 'view_mesas'),
(193, 'Can add pedidos', 51, 'add_pedidos'),
(194, 'Can change pedidos', 51, 'change_pedidos'),
(195, 'Can delete pedidos', 51, 'delete_pedidos'),
(196, 'Can view pedidos', 51, 'view_pedidos'),
(197, 'Can add productos', 52, 'add_productos'),
(198, 'Can change productos', 52, 'change_productos'),
(199, 'Can delete productos', 52, 'delete_productos'),
(200, 'Can view productos', 52, 'view_productos'),
(201, 'Can add sucursales', 53, 'add_sucursales'),
(202, 'Can change sucursales', 53, 'change_sucursales'),
(203, 'Can delete sucursales', 53, 'delete_sucursales'),
(204, 'Can view sucursales', 53, 'view_sucursales'),
(205, 'Can add tipo comprobante', 54, 'add_tipocomprobante'),
(206, 'Can change tipo comprobante', 54, 'change_tipocomprobante'),
(207, 'Can delete tipo comprobante', 54, 'delete_tipocomprobante'),
(208, 'Can view tipo comprobante', 54, 'view_tipocomprobante'),
(209, 'Can add tipo empleado', 55, 'add_tipoempleado'),
(210, 'Can change tipo empleado', 55, 'change_tipoempleado'),
(211, 'Can delete tipo empleado', 55, 'delete_tipoempleado'),
(212, 'Can view tipo empleado', 55, 'view_tipoempleado'),
(213, 'Can add tipo pedidos', 56, 'add_tipopedidos'),
(214, 'Can change tipo pedidos', 56, 'change_tipopedidos'),
(215, 'Can delete tipo pedidos', 56, 'delete_tipopedidos'),
(216, 'Can view tipo pedidos', 56, 'view_tipopedidos'),
(217, 'Can add tipo productos', 57, 'add_tipoproductos'),
(218, 'Can change tipo productos', 57, 'change_tipoproductos'),
(219, 'Can delete tipo productos', 57, 'delete_tipoproductos'),
(220, 'Can view tipo productos', 57, 'view_tipoproductos'),
(221, 'Can add ventas', 58, 'add_ventas'),
(222, 'Can change ventas', 58, 'change_ventas'),
(223, 'Can delete ventas', 58, 'delete_ventas'),
(224, 'Can view ventas', 58, 'view_ventas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$FGvGeECrpUtyG67zcMWoQ8$VjKECgsMDWHCXkoSINUMbxCYNR4+8Jwz7EEgG3BjA2U=', '2023-10-07 14:29:23.036786', 1, 'pilar', '', '', 'pilarcayo33@gmail.com', 1, 1, '2023-09-20 00:13:36.887144'),
(2, 'pbkdf2_sha256$600000$kUXflYZgWZSCPLrsIjWJtR$XUIfYwKIN3Y9eQyy6+Oo+Jrwf4OJnYiKS3zO3vYESIc=', '2023-09-27 16:07:27.578128', 1, 'euge', '', '', 'pilarcayo33@gmail.com', 1, 1, '2023-09-27 15:55:05.500933'),
(3, 'pbkdf2_sha256$600000$v3Sue8rPKNxtwVMiFD8Zei$/T+a5tMK8VcyKQ4LCKhHLe8X4/tRHUuHpiLpockl+Js=', NULL, 0, 'UserRegister', '', '', '', 0, 1, '2023-10-04 15:19:08.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajas`
--

CREATE TABLE `cajas` (
  `iIdCaja` bigint(20) UNSIGNED NOT NULL,
  `iNroCaja` int(11) NOT NULL,
  `dFechaApertura` datetime NOT NULL,
  `dFechaCierre` datetime NOT NULL,
  `fMontoApertura` decimal(8,2) NOT NULL,
  `fMontoCierre` decimal(8,2) NOT NULL,
  `iIdEmpleado` bigint(20) UNSIGNED NOT NULL,
  `iIdSucursal` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `iIdCliente` bigint(20) UNSIGNED NOT NULL,
  `sNombreCliente` varchar(191) NOT NULL,
  `sApellidoCliente` varchar(191) NOT NULL,
  `iDNI` int(11) NOT NULL,
  `iIdEstado` int(11) NOT NULL,
  `sEmail` varchar(50) NOT NULL,
  `sTelefono` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`iIdCliente`, `sNombreCliente`, `sApellidoCliente`, `iDNI`, `iIdEstado`, `sEmail`, `sTelefono`, `created_at`, `updated_at`) VALUES
(1, 'Laura Eugenia', 'Lopez', 18765432, 1, 'isdmzoom10@gmail.com', '03876555903', '2023-07-23 22:57:05', '2023-07-24 00:13:41'),
(3, 'Pilar', 'Zambrano', 46789032, 1, 'administrator@brackets.sk', '03876555901', '2023-07-24 01:00:42', '2023-07-24 01:00:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobantes`
--

CREATE TABLE `comprobantes` (
  `iIdComprobante` bigint(20) UNSIGNED NOT NULL,
  `sNombreComprobante` varchar(191) NOT NULL,
  `sDescripcion` varchar(191) NOT NULL,
  `iIdTipoComprobante` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobante_ventas`
--

CREATE TABLE `comprobante_ventas` (
  `iIdComprobanteVenta` bigint(20) UNSIGNED NOT NULL,
  `dFechaEmision` datetime NOT NULL,
  `fImporte` decimal(8,2) NOT NULL,
  `iIdEstado` int(11) NOT NULL,
  `iIdVenta` bigint(20) UNSIGNED NOT NULL,
  `iIdComprobante` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-09-20 00:22:55.835543', '2', 'TipoEmpleado object (2)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2023-09-20 00:23:07.803592', '1', 'TipoEmpleado object (1)', 2, '[]', 8, 1),
(3, '2023-09-20 00:23:17.048366', '2', 'TipoEmpleado object (2)', 2, '[{\"changed\": {\"fields\": [\"Stipoempleado\"]}}]', 8, 1),
(4, '2023-09-20 00:23:52.283191', '1', 'Empleados object (1)', 1, '[{\"added\": {}}]', 7, 1),
(5, '2023-09-24 22:16:37.777472', '2', 'Empleados object (2)', 1, '[{\"added\": {}}]', 19, 1),
(6, '2023-09-24 22:21:05.679693', '3', 'Empleados object (3)', 1, '[{\"added\": {}}]', 19, 1),
(7, '2023-09-24 22:21:51.149205', '3', 'Mozo', 1, '[{\"added\": {}}]', 21, 1),
(8, '2023-09-24 22:22:34.336377', '4', 'Empleados object (4)', 1, '[{\"added\": {}}]', 19, 1),
(9, '2023-09-24 22:23:03.371206', '5', 'Empleados object (5)', 1, '[{\"added\": {}}]', 19, 1),
(10, '2023-09-24 22:23:48.689662', '6', 'Empleados object (6)', 1, '[{\"added\": {}}]', 19, 1),
(11, '2023-09-24 22:24:25.440610', '7', 'Empleados object (7)', 1, '[{\"added\": {}}]', 19, 1),
(12, '2023-09-24 22:25:11.511633', '7', 'Empleados object (7)', 2, '[{\"changed\": {\"fields\": [\"Idni\"]}}]', 19, 1),
(13, '2023-09-24 22:39:40.639575', '1', 'TipoProductos object (1)', 1, '[{\"added\": {}}]', 20, 1),
(14, '2023-09-24 23:16:22.444780', '1', 'Productos object (1)', 1, '[{\"added\": {}}]', 28, 1),
(15, '2023-09-26 21:12:26.162752', '2', 'Pizza especial', 1, '[{\"added\": {}}]', 28, 1),
(16, '2023-09-26 21:12:52.881759', '1', 'Pastas', 2, '[{\"changed\": {\"fields\": [\"Snombretipoproducto\"]}}]', 20, 1),
(17, '2023-09-26 21:13:10.757900', '2', 'Saludable', 1, '[{\"added\": {}}]', 20, 1),
(18, '2023-09-26 21:13:19.793360', '1', 'Desayuno', 2, '[{\"changed\": {\"fields\": [\"Iidtipoproducto\"]}}]', 28, 1),
(19, '2023-09-26 21:15:12.854589', '3', 'Frutos rojos', 1, '[{\"added\": {}}]', 28, 1),
(20, '2023-09-26 21:16:38.352056', '4', 'Desayuno proteico', 1, '[{\"added\": {}}]', 28, 1),
(21, '2023-10-04 15:10:03.253021', '1', 'Usuario', 1, '[{\"added\": {}}]', 3, 1),
(22, '2023-10-04 15:10:19.875830', '2', 'visitante', 1, '[{\"added\": {}}]', 3, 1),
(23, '2023-10-04 15:10:51.274430', '3', 'Operador', 1, '[{\"added\": {}}]', 3, 1),
(24, '2023-10-04 15:10:59.553561', '4', 'Administrador', 1, '[{\"added\": {}}]', 3, 1),
(25, '2023-10-04 15:19:09.379604', '3', 'UserRegister', 1, '[{\"added\": {}}]', 4, 1),
(26, '2023-10-04 15:19:56.899422', '3', 'UserRegister', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(9, 'app', 'authgroup'),
(10, 'app', 'authgrouppermissions'),
(11, 'app', 'authpermission'),
(12, 'app', 'authuser'),
(13, 'app', 'authusergroups'),
(14, 'app', 'authuseruserpermissions'),
(22, 'app', 'cajas'),
(23, 'app', 'clientes'),
(24, 'app', 'comprobantes'),
(25, 'app', 'comprobanteventas'),
(15, 'app', 'djangoadminlog'),
(16, 'app', 'djangocontenttype'),
(17, 'app', 'djangomigrations'),
(18, 'app', 'djangosession'),
(19, 'app', 'empleados'),
(26, 'app', 'mesas'),
(27, 'app', 'pedidos'),
(28, 'app', 'productos'),
(29, 'app', 'sucursales'),
(30, 'app', 'tipocomprobante'),
(21, 'app', 'tipoempleado'),
(31, 'app', 'tipopedidos'),
(20, 'app', 'tipoproductos'),
(32, 'app', 'ventas'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'cajas', 'empleados'),
(8, 'cajas', 'tipoempleado'),
(35, 'CarritoApp', 'authgroup'),
(36, 'CarritoApp', 'authgrouppermissions'),
(37, 'CarritoApp', 'authpermission'),
(38, 'CarritoApp', 'authuser'),
(39, 'CarritoApp', 'authusergroups'),
(40, 'CarritoApp', 'authuseruserpermissions'),
(41, 'CarritoApp', 'cajas'),
(42, 'CarritoApp', 'clientes'),
(43, 'CarritoApp', 'comprobantes'),
(44, 'CarritoApp', 'comprobanteventas'),
(45, 'CarritoApp', 'djangoadminlog'),
(46, 'CarritoApp', 'djangocontenttype'),
(47, 'CarritoApp', 'djangomigrations'),
(48, 'CarritoApp', 'djangosession'),
(49, 'CarritoApp', 'empleados'),
(50, 'CarritoApp', 'mesas'),
(51, 'CarritoApp', 'pedidos'),
(52, 'CarritoApp', 'productos'),
(53, 'CarritoApp', 'sucursales'),
(54, 'CarritoApp', 'tipocomprobante'),
(55, 'CarritoApp', 'tipoempleado'),
(56, 'CarritoApp', 'tipopedidos'),
(57, 'CarritoApp', 'tipoproductos'),
(58, 'CarritoApp', 'ventas'),
(33, 'cart', 'productos'),
(34, 'cart', 'tipoproductos'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-09-20 00:06:01.166795'),
(2, 'auth', '0001_initial', '2023-09-20 00:06:01.886947'),
(3, 'admin', '0001_initial', '2023-09-20 00:06:02.071842'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-09-20 00:06:02.087504'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-09-20 00:06:02.117896'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-09-20 00:06:02.233977'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-09-20 00:06:02.315903'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-09-20 00:06:02.348667'),
(9, 'auth', '0004_alter_user_username_opts', '2023-09-20 00:06:02.364084'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-09-20 00:06:02.470888'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-09-20 00:06:02.475112'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-09-20 00:06:02.485447'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-09-20 00:06:02.510920'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-09-20 00:06:02.539459'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-09-20 00:06:02.563892'),
(16, 'auth', '0011_update_proxy_permissions', '2023-09-20 00:06:02.576932'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-09-20 00:06:02.618547'),
(18, 'sessions', '0001_initial', '2023-09-20 00:06:02.693186'),
(19, 'app', '0001_initial', '2023-09-24 13:08:18.383741'),
(20, 'app', '0002_cajas_clientes_comprobantes_comprobanteventas_mesas_and_more', '2023-09-24 22:48:12.751033'),
(21, 'cart', '0001_initial', '2023-09-26 02:49:48.847442'),
(22, 'CarritoApp', '0001_initial', '2023-09-27 17:47:03.750403');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1jemjgeyc9a7ja5x4myleaicte0pstht', 'eyJjYXJyaXRvIjp7IjIiOnsicHJvZHVjdG9faWQiOjIsIm5vbWJyZSI6IlBpenphIGVzcGVjaWFsIiwiYWN1bXVsYWRvIjo0MDAwLCJjYW50aWRhZCI6Mn19fQ:1qn8va:hqdul1Nr0raCWqACqsJRId6T46aAmRB1rH0CQO7xjQc', '2023-10-16 02:44:58.436712'),
('p5udewsadal1uszt50i2benq0yobuqca', '.eJxVjM0OwiAQhN-FsyH8bIF69O4zkGVZpWogKe3J-O62SQ96mmS-b-YtIq5LiWvnOU5ZnIUWp98uIT257iA_sN6bpFaXeUpyV-RBu7y2zK_L4f4dFOxlWxMl1Ba08SYRJPCGg1JjUDx6MNq5G3viAGoLYwfWComtZwCyQyYnPl_TvTeV:1qikvy:9qvUQ-7FPUvrXUjXpEKKRzibwVMH_zHnCMRJJAKgVk0', '2023-10-04 00:19:14.188590'),
('u1hgspsjoydy98as58pguo5fvp9vc2cd', '.eJxVjEEOwiAQRe_C2hAIyIBL956BzDAgVQNJaVfGu9smXej2vff_W0RclxrXkec4sbgILU6_jDA9c9sFP7Ddu0y9LfNEck_kYYe8dc6v69H-HVQcdVuXRGALBefRK0qWrD2bAJgdFQjolHZQgNkYJg3BY9mAKpy0doiJxOcL-oQ4mg:1qlXI5:FjnEEtp40eajgNrlIMOxRZmgLwbd9X8dA-b3_rK8OVA', '2023-10-11 16:21:33.677056'),
('wcga0oh2yfrgybnb2tyto09gy92rveow', '.eJxlzLEOwiAQgOFXaW5mABoXZuPsG5gTGDAt1xzcYBveXdyqLP_2fwd4ZE6VwB1gv9mYgvhKjxTAWQWZ1idHcHBP-45TLFv0CRdQgF5WWTD012qtVadyTQH7Z5oCM2jmpF1jwbdk-nMuozMPznxybiyVysT0ovJrmcFq7QPCzk4t:1qn515:tq3KHPKvUX9Zugx9XF8nwYUne-kBtmpUBpta0Grd6qM', '2023-10-15 22:34:23.390745');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `iIdEmpleado` bigint(20) UNSIGNED NOT NULL,
  `sNombre` varchar(191) NOT NULL,
  `sApellido` varchar(191) NOT NULL,
  `iDNI` int(11) NOT NULL,
  `iIdEstado` int(11) NOT NULL,
  `iIdTipoEmpleado` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`iIdEmpleado`, `sNombre`, `sApellido`, `iDNI`, `iIdEstado`, `iIdTipoEmpleado`, `created_at`, `updated_at`) VALUES
(1, 'Pilar', 'Cayo', 29335655, 1, 1, '2023-09-20 03:23:47', '2023-09-20 03:23:49'),
(2, 'Maria', 'Vazquez', 39567888, 1, 1, '2023-09-25 01:16:30', '2023-09-25 01:16:34'),
(3, 'Laura', 'Luna', 48999999, 1, 2, '2023-09-25 01:20:55', '2023-09-25 01:21:01'),
(4, 'Marcos', 'Surin', 898444433, 1, 1, '2023-09-25 01:22:29', '2023-09-25 01:22:31'),
(5, 'Marcelo', 'Castro', 65654444, 1, 3, '2023-09-25 01:22:57', '2023-09-25 01:23:00'),
(6, 'Gaston', 'Varela', 99077554, 1, 3, '2023-09-25 01:23:43', '2023-09-25 01:23:45'),
(7, 'Lucas', 'Meza', 54789346, 1, 3, '2023-09-25 01:24:17', '2023-09-25 01:24:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesas`
--

CREATE TABLE `mesas` (
  `iIdMesa` bigint(20) UNSIGNED NOT NULL,
  `iNroMesa` int(11) NOT NULL,
  `iIdEstado` int(11) NOT NULL,
  `iIdSucursal` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `iIdPedido` bigint(20) UNSIGNED NOT NULL,
  `iNroPedido` int(11) NOT NULL,
  `dFechaPedido` datetime NOT NULL,
  `iIdEstado` int(11) NOT NULL,
  `iIdCliente` bigint(20) UNSIGNED NOT NULL,
  `iIdTipoPedido` bigint(20) UNSIGNED NOT NULL,
  `iIdEmpleado` bigint(20) UNSIGNED NOT NULL,
  `iIdMesa` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`iIdProducto`, `sNombreProducto`, `sDescripcion`, `iStock`, `dPrecio`, `iIdEstado`, `iIdTipoProducto`, `sUrl`, `created_at`, `updated_at`) VALUES
(1, 'Desayuno', 'Desayuno saludable con frutos secos', 20, 2500, 1, 2, 'img/desayunoSaludable.jpg', '2023-09-25 02:16:16', '2023-09-25 02:16:19'),
(2, 'Pizza especial', 'Pizza especial con la mejor selección de hierbas, especias y condimentos Alicante', 20, 2000, 1, 1, 'img/pizza.jpg', '2023-09-27 00:12:20', '2023-09-27 00:12:24'),
(3, 'Frutos rojos', 'Bol de cereales y frutos rojos', 10, 1500, 1, 2, 'img/frutosRojos.jpg', '2023-09-27 00:15:08', '2023-09-27 00:15:10'),
(4, 'Desayuno proteico', 'Desayuno saludable con huevos y palta', 13, 1800, 1, 2, 'img/break.jpg', '2023-09-27 00:16:33', '2023-09-27 00:16:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `iIdSucursal` bigint(20) UNSIGNED NOT NULL,
  `sNombre` varchar(191) NOT NULL,
  `iIdEstado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_comprobante`
--

CREATE TABLE `tipo_comprobante` (
  `iIdTipoComprobante` bigint(20) UNSIGNED NOT NULL,
  `sNombreTipoComprobante` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_empleado`
--

CREATE TABLE `tipo_empleado` (
  `iIdTipoEmpleado` bigint(20) UNSIGNED NOT NULL,
  `sTipoEmpleado` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_empleado`
--

INSERT INTO `tipo_empleado` (`iIdTipoEmpleado`, `sTipoEmpleado`, `created_at`, `updated_at`) VALUES
(1, 'Cajero', '2023-09-08 05:47:15', '2023-09-08 05:47:19'),
(2, 'Gerente', '2023-09-20 03:22:50', '2023-09-20 03:22:52'),
(3, 'Mozo', '2023-09-25 01:21:46', '2023-09-25 01:21:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pedidos`
--

CREATE TABLE `tipo_pedidos` (
  `iIdTipoPedido` bigint(20) UNSIGNED NOT NULL,
  `sTipo` varchar(191) NOT NULL,
  `iIdEstado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_productos`
--

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `iIdVenta` bigint(20) UNSIGNED NOT NULL,
  `iNroVenta` int(11) NOT NULL,
  `dFechaVenta` datetime NOT NULL,
  `fMontoVenta` decimal(8,2) NOT NULL,
  `iIdEmpleado` bigint(20) UNSIGNED NOT NULL,
  `iIdCaja` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD PRIMARY KEY (`iIdCaja`),
  ADD KEY `cajas_iidempleado_foreign` (`iIdEmpleado`),
  ADD KEY `cajas_iidsucursal_foreign` (`iIdSucursal`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`iIdCliente`);

--
-- Indices de la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  ADD PRIMARY KEY (`iIdComprobante`),
  ADD KEY `comprobantes_iidtipocomprobante_foreign` (`iIdTipoComprobante`);

--
-- Indices de la tabla `comprobante_ventas`
--
ALTER TABLE `comprobante_ventas`
  ADD PRIMARY KEY (`iIdComprobanteVenta`),
  ADD KEY `comprobante_ventas_iidventa_foreign` (`iIdVenta`),
  ADD KEY `comprobante_ventas_iidcomprobante_foreign` (`iIdComprobante`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`iIdEmpleado`),
  ADD KEY `empleados_iidtipoempleado_foreign` (`iIdTipoEmpleado`);

--
-- Indices de la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`iIdMesa`),
  ADD KEY `mesas_iidsucursal_foreign` (`iIdSucursal`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`iIdPedido`),
  ADD KEY `pedidos_iidcliente_foreign` (`iIdCliente`),
  ADD KEY `pedidos_iidtipopedido_foreign` (`iIdTipoPedido`),
  ADD KEY `pedidos_iidempleado_foreign` (`iIdEmpleado`),
  ADD KEY `pedidos_iidmesa_foreign` (`iIdMesa`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`iIdProducto`),
  ADD KEY `productos_iidtipoproducto_foreign` (`iIdTipoProducto`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`iIdSucursal`);

--
-- Indices de la tabla `tipo_comprobante`
--
ALTER TABLE `tipo_comprobante`
  ADD PRIMARY KEY (`iIdTipoComprobante`);

--
-- Indices de la tabla `tipo_empleado`
--
ALTER TABLE `tipo_empleado`
  ADD PRIMARY KEY (`iIdTipoEmpleado`);

--
-- Indices de la tabla `tipo_pedidos`
--
ALTER TABLE `tipo_pedidos`
  ADD PRIMARY KEY (`iIdTipoPedido`);

--
-- Indices de la tabla `tipo_productos`
--
ALTER TABLE `tipo_productos`
  ADD PRIMARY KEY (`iIdTipoProducto`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`iIdVenta`),
  ADD KEY `ventas_iidempleado_foreign` (`iIdEmpleado`),
  ADD KEY `ventas_iidcaja_foreign` (`iIdCaja`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cajas`
--
ALTER TABLE `cajas`
  MODIFY `iIdCaja` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `iIdCliente` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  MODIFY `iIdComprobante` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comprobante_ventas`
--
ALTER TABLE `comprobante_ventas`
  MODIFY `iIdComprobanteVenta` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `iIdEmpleado` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `iIdMesa` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `iIdPedido` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `iIdProducto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `iIdSucursal` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_comprobante`
--
ALTER TABLE `tipo_comprobante`
  MODIFY `iIdTipoComprobante` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_empleado`
--
ALTER TABLE `tipo_empleado`
  MODIFY `iIdTipoEmpleado` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_pedidos`
--
ALTER TABLE `tipo_pedidos`
  MODIFY `iIdTipoPedido` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_productos`
--
ALTER TABLE `tipo_productos`
  MODIFY `iIdTipoProducto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `iIdVenta` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD CONSTRAINT `cajas_iidempleado_foreign` FOREIGN KEY (`iIdEmpleado`) REFERENCES `empleados` (`iIdEmpleado`),
  ADD CONSTRAINT `cajas_iidsucursal_foreign` FOREIGN KEY (`iIdSucursal`) REFERENCES `sucursales` (`iIdSucursal`);

--
-- Filtros para la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  ADD CONSTRAINT `comprobantes_iidtipocomprobante_foreign` FOREIGN KEY (`iIdTipoComprobante`) REFERENCES `tipo_comprobante` (`iIdTipoComprobante`);

--
-- Filtros para la tabla `comprobante_ventas`
--
ALTER TABLE `comprobante_ventas`
  ADD CONSTRAINT `comprobante_ventas_iidcomprobante_foreign` FOREIGN KEY (`iIdComprobante`) REFERENCES `comprobantes` (`iIdComprobante`),
  ADD CONSTRAINT `comprobante_ventas_iidventa_foreign` FOREIGN KEY (`iIdVenta`) REFERENCES `ventas` (`iIdVenta`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_iidtipoempleado_foreign` FOREIGN KEY (`iIdTipoEmpleado`) REFERENCES `tipo_empleado` (`iIdTipoEmpleado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD CONSTRAINT `mesas_iidsucursal_foreign` FOREIGN KEY (`iIdSucursal`) REFERENCES `sucursales` (`iIdSucursal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_iidcliente_foreign` FOREIGN KEY (`iIdCliente`) REFERENCES `clientes` (`iIdCliente`),
  ADD CONSTRAINT `pedidos_iidempleado_foreign` FOREIGN KEY (`iIdEmpleado`) REFERENCES `empleados` (`iIdEmpleado`),
  ADD CONSTRAINT `pedidos_iidmesa_foreign` FOREIGN KEY (`iIdMesa`) REFERENCES `mesas` (`iIdMesa`),
  ADD CONSTRAINT `pedidos_iidtipopedido_foreign` FOREIGN KEY (`iIdTipoPedido`) REFERENCES `tipo_pedidos` (`iIdTipoPedido`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_iidtipoproducto_foreign` FOREIGN KEY (`iIdTipoProducto`) REFERENCES `tipo_productos` (`iIdTipoProducto`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_iidcaja_foreign` FOREIGN KEY (`iIdCaja`) REFERENCES `cajas` (`iIdCaja`),
  ADD CONSTRAINT `ventas_iidempleado_foreign` FOREIGN KEY (`iIdEmpleado`) REFERENCES `empleados` (`iIdEmpleado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
