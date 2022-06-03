-- phpMyAdmin SQL Dump
-- version 4.6.6deb4+deb9u2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 15, 2021 at 04:33 PM
-- Server version: 10.1.48-MariaDB-0+deb9u2
-- PHP Version: 7.0.33-0+deb9u10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `docortiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `abono_credito`
--

CREATE TABLE `abono_credito` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_abono_credito` int(11) NOT NULL,
  `id_credito` int(11) NOT NULL,
  `abono` float NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `tipo_doc` varchar(25) NOT NULL,
  `num_doc` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `access_conf`
--

CREATE TABLE `access_conf` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_conf` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `hash` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `access_conf`
--

INSERT INTO `access_conf` (`id_server`, `unique_id`, `id_conf`, `id_sucursal`, `hash`) VALUES
(1, 'O5f05eb3ed058b1.65548931', 1, 1, 'OIQWAjLkd79ggETQkaSF3UW5x4wPRQkmfHqJsHLVY7aKPbs642CaWcON3+3OMUrKnjc6j6Qd0PvrNLwP11cGioWaHob/OFyq5fx2lBwzT8UK4iLKjzbr/6lpk9KNOKxM8TRtYmJjpaVFUKGU4EOYaW9CeFXbJNZdvrNJpIhxRFg=');

-- --------------------------------------------------------

--
-- Table structure for table `altclitocli`
--

CREATE TABLE `altclitocli` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id` int(11) NOT NULL,
  `datax` text NOT NULL,
  `id_sucursal_origen` int(11) NOT NULL,
  `id_sucursal_destino` int(11) NOT NULL,
  `ejecutado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `apertura_caja`
--

CREATE TABLE `apertura_caja` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_apertura` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `caja` int(11) NOT NULL,
  `turno_vigente` tinyint(1) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `turno` int(11) NOT NULL,
  `monto_apertura` double NOT NULL,
  `monto_ch` decimal(10,2) NOT NULL,
  `monto_ch_actual` decimal(10,2) NOT NULL,
  `tiket_inicia` int(11) NOT NULL,
  `factura_inicia` int(11) NOT NULL,
  `credito_fiscal_inicia` int(11) NOT NULL,
  `dev_inicia` int(11) NOT NULL,
  `vigente` tinyint(1) NOT NULL,
  `monto_vendido` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `banco`
--

CREATE TABLE `banco` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_banco` int(1) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `logo` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banco`
--

INSERT INTO `banco` (`id_server`, `unique_id`, `id_sucursal`, `id_banco`, `nombre`, `logo`) VALUES
(0, 'S5f7f858950b020.10527839', 1, 1, 'banco agricola', '');

-- --------------------------------------------------------

--
-- Table structure for table `caja`
--

CREATE TABLE `caja` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_caja` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `serie` varchar(100) NOT NULL,
  `desde` int(11) NOT NULL,
  `hasta` int(11) NOT NULL,
  `correlativo_dispo` int(11) NOT NULL,
  `resolucion` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `activa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `caja`
--

INSERT INTO `caja` (`id_server`, `unique_id`, `id_sucursal`, `id_caja`, `nombre`, `serie`, `desde`, `hasta`, `correlativo_dispo`, `resolucion`, `fecha`, `activa`) VALUES
(1, 'O5f05eb3edefc49.58616938', 1, 1, 'Caja 1', '21UL00000001', 1, 5000, 1, '30202-RES-CR-24002-2021 \n ASC-15041-037687-2021', '2021-04-11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `nombre_cat` varchar(30) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `id_sucursal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`id_server`, `unique_id`, `id_categoria`, `nombre_cat`, `descripcion`, `id_sucursal`) VALUES
(0, '', 86, 'MENUDEO', 'MENUDEO', 1),
(0, 'S606dce874f4023.76880921', 87, 'MEDICAMENTOS', '', 0),
(0, 'S60786b4b0e18f3.71171409', 88, 'LIMPIEZA PERSONAL', '', 0),
(0, 'S60789f61bfb0a0.37563491', 89, 'INSUMO', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categoria_proveedor`
--

CREATE TABLE `categoria_proveedor` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categoria_proveedor`
--

INSERT INTO `categoria_proveedor` (`id_server`, `unique_id`, `id_categoria`, `nombre`, `descripcion`) VALUES
(1, 'O5f05eb3fcf9d50.73076700', 1, 'Consumidor', ''),
(2, 'O5f05eb3fd0ffa1.90155333', 2, 'Contribuyente', ''),
(3, 'O5f05eb3fd30de2.22710207', 3, 'Gran Contribuyente', ''),
(4, 'O5f05eb3fd507d0.02180707', 4, 'Contribuyente Exento', '');

-- --------------------------------------------------------

--
-- Table structure for table `cheque`
--

CREATE TABLE `cheque` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_cheque` int(11) NOT NULL,
  `cheque` varchar(50) DEFAULT NULL,
  `monto` float NOT NULL,
  `id_movimiento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `categoria` int(1) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `razon_social` varchar(250) NOT NULL,
  `direccion` text,
  `municipio` varchar(100) DEFAULT NULL,
  `depto` varchar(100) DEFAULT NULL,
  `pais` varchar(11) DEFAULT NULL,
  `dui` varchar(15) DEFAULT NULL,
  `nit` varchar(20) DEFAULT NULL,
  `nrc` varchar(12) DEFAULT NULL,
  `giro` varchar(40) DEFAULT NULL,
  `telefono1` varchar(12) DEFAULT NULL,
  `telefono2` varchar(12) DEFAULT NULL,
  `fax` varchar(12) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ultventa` date DEFAULT NULL,
  `acumulado` int(1) DEFAULT NULL,
  `saldo` int(1) DEFAULT NULL,
  `percibe` int(1) DEFAULT NULL,
  `retiene` int(10) DEFAULT NULL,
  `retiene10` tinyint(1) NOT NULL,
  `inactivo` tinyint(1) NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`id_server`, `unique_id`, `id_sucursal`, `id_cliente`, `categoria`, `nombre`, `razon_social`, `direccion`, `municipio`, `depto`, `pais`, `dui`, `nit`, `nrc`, `giro`, `telefono1`, `telefono2`, `fax`, `email`, `ultventa`, `acumulado`, `saldo`, `percibe`, `retiene`, `retiene10`, `inactivo`, `latitud`, `longitud`) VALUES
(1, 'O5f05eb3fd8ae80.40540683', 1, -1, 1, 'MOSTRADOR', '', '', '81', '13', NULL, '', '0000-000000-000-0', '000000-0', '', '0000-0000', '', '', '', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0),
(0, 'S5f9dd59855c119.97344571', 1, 1, 1, 'RAUL MENDEZ', '', 'MONCAGUA SAN MIGUEL EL SALVADOR', '73', '13', NULL, '00000000-1', '8714-155454-545-4', '45484-5', 'VENTAS', '7565-9404', '', '', '', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0),
(0, 'S609adea6c33ec6.98447385', 1, 2, 2, 'BENITEZ HERNANDEZ,SANTOS ALEXIS', '', '5A CALLE PONIENTE Y AV.ROOSEVELT SUR. LOCAL 11 EDIF. CENTRO MEDICO DE ORIENTE . SAN MIGUEL , SAN MIGUEL', '81', '13', NULL, '03839775-8', '1401-060787-101-7', '254659-8', 'SERVICIOS MEDICOS', '7165-2761', '', '', '', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0),
(0, 'S609c40dc2deb61.14926779', 1, 3, 2, 'HOSPITAL EL ANGEL, SOCIEDAD ANONIMA DE CAPITAL VARIABLE', '', 'BLVD EMANUEL , BO. EL CALVARIO EDIF. HOSPITAL EL ANGEL SANTA ROSA LIMA , LA UNIÓN ', '111', '14', NULL, '', '1416-170218-101-8', '270003-3', 'SERVICIOS MEDICOS', '7165-2761', '', '', '', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `compra`
--

CREATE TABLE `compra` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `numero_doc` varchar(20) NOT NULL,
  `fecha` date DEFAULT NULL,
  `iva` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) NOT NULL,
  `hora` time DEFAULT NULL,
  `fecha_ingreso` date NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `alias_tipodoc` char(5) NOT NULL,
  `total_percepcion` float NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `dias_credito` int(11) NOT NULL,
  `anulada` tinyint(1) NOT NULL,
  `finalizada` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `compra2`
--

CREATE TABLE `compra2` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `numero_doc` varchar(20) NOT NULL,
  `fecha` date DEFAULT NULL,
  `iva` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) NOT NULL,
  `hora` time DEFAULT NULL,
  `fecha_ingreso` date NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `alias_tipodoc` char(5) NOT NULL,
  `total_percepcion` float NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `dias_credito` int(11) NOT NULL,
  `anulada` tinyint(1) NOT NULL,
  `finalizada` tinyint(1) NOT NULL,
  `id_ubicacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `compra2`
--

INSERT INTO `compra2` (`id_server`, `unique_id`, `id_sucursal`, `id_compra`, `id_proveedor`, `numero_doc`, `fecha`, `iva`, `total`, `hora`, `fecha_ingreso`, `id_empleado`, `alias_tipodoc`, `total_percepcion`, `id_pedido`, `dias_credito`, `anulada`, `finalizada`, `id_ubicacion`) VALUES
(0, 'S60a70f2c115415.34149215', 1, 1, 6, '20SD000C0012625', '2021-05-20', '8.06', '70.04', '19:58:17', '2021-05-20', 2, 'CCF', 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `configuracion`
--

CREATE TABLE `configuracion` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_configuracion` int(11) NOT NULL,
  `sms` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `hash` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `config_dir`
--

CREATE TABLE `config_dir` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_config_dir` int(11) NOT NULL,
  `dir_print_script` varchar(50) NOT NULL,
  `shared_printer_matrix` varchar(50) NOT NULL,
  `shared_printer_pos` varchar(50) NOT NULL,
  `shared_print_barcode` varchar(250) NOT NULL,
  `rollo_etiqueta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `config_dir`
--

INSERT INTO `config_dir` (`id_server`, `unique_id`, `id_sucursal`, `id_config_dir`, `dir_print_script`, `shared_printer_matrix`, `shared_printer_pos`, `shared_print_barcode`, `rollo_etiqueta`) VALUES
(1, 'O5f05eb3fda9427.14226162', 1, 1, 'localhost/impresion/', '//localhost/facturacion', '//localhost/ticket', '//localhost/barcode', 1);

-- --------------------------------------------------------

--
-- Table structure for table `config_pos`
--

CREATE TABLE `config_pos` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_config_pos` int(11) NOT NULL,
  `alias_tipodoc` char(4) NOT NULL,
  `header1` varchar(50) NOT NULL,
  `header2` varchar(50) NOT NULL,
  `header3` varchar(50) NOT NULL,
  `header4` varchar(50) NOT NULL,
  `header5` varchar(50) NOT NULL,
  `header6` varchar(50) NOT NULL,
  `header7` varchar(50) NOT NULL,
  `header8` varchar(50) NOT NULL,
  `header9` varchar(50) NOT NULL,
  `header10` varchar(50) NOT NULL,
  `footer1` varchar(50) NOT NULL,
  `footer2` varchar(50) NOT NULL,
  `footer3` varchar(50) NOT NULL,
  `footer4` varchar(50) NOT NULL,
  `footer5` varchar(50) NOT NULL,
  `footer6` varchar(50) NOT NULL,
  `footer7` varchar(50) NOT NULL,
  `footer8` varchar(50) NOT NULL,
  `footer9` varchar(50) NOT NULL,
  `footer10` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `config_pos`
--

INSERT INTO `config_pos` (`id_server`, `unique_id`, `id_sucursal`, `id_config_pos`, `alias_tipodoc`, `header1`, `header2`, `header3`, `header4`, `header5`, `header6`, `header7`, `header8`, `header9`, `header10`, `footer1`, `footer2`, `footer3`, `footer4`, `footer5`, `footer6`, `footer7`, `footer8`, `footer9`, `footer10`) VALUES
(1, 'O5f05eb3fdc5e43.90064528', 1, 1, 'TIK', '', '', 'VENTA DE PRODUCTOS VARIOS', '', '', '', '', '', '', '', 'GRACIAS POR SU COMPRA, VUELVA PRONTO...', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `consignacion`
--

CREATE TABLE `consignacion` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_consignacion` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `concepto` text NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `numero_doc` varchar(30) NOT NULL,
  `total` float NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `anulada` tinyint(1) NOT NULL DEFAULT '0',
  `id_sucursal` int(11) NOT NULL,
  `finalizada` tinyint(1) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `saldo` float NOT NULL,
  `abono` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `consignacion_detalle`
--

CREATE TABLE `consignacion_detalle` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_consignacion_detalle` int(11) NOT NULL,
  `id_consignacion` int(11) NOT NULL,
  `id_prod_serv` int(11) NOT NULL,
  `cantidad` float NOT NULL,
  `costo` float NOT NULL,
  `precio_venta` float NOT NULL,
  `subtotal` float NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `tipo_prod_serv` varchar(30) NOT NULL COMMENT 'PRODUCTO o SERVICIO',
  `id_sucursal` int(11) NOT NULL,
  `cant_facturado` float NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `presentacion` int(11) NOT NULL,
  `unidad` int(11) NOT NULL,
  `cantidad_faltante` int(11) NOT NULL,
  `saldo` float NOT NULL,
  `abono` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `controlcaja`
--

CREATE TABLE `controlcaja` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_corte` int(11) NOT NULL,
  `fecha` varchar(10) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `id_apertura` int(11) NOT NULL,
  `caja` varchar(3) DEFAULT NULL,
  `turno` int(1) DEFAULT NULL,
  `cajero` varchar(10) DEFAULT NULL,
  `fecha_corte` date NOT NULL,
  `hora_corte` time NOT NULL,
  `tiket` int(11) NOT NULL,
  `ticket_e` int(11) NOT NULL,
  `tinicio` int(5) DEFAULT NULL,
  `tfinal` int(5) DEFAULT NULL,
  `totalnot` int(2) DEFAULT NULL,
  `texento` double DEFAULT NULL,
  `tgravado` double DEFAULT NULL,
  `totalt` double DEFAULT NULL,
  `finicio` int(5) DEFAULT NULL,
  `ffinal` int(5) DEFAULT NULL,
  `totalnof` int(2) DEFAULT NULL,
  `fexento` double DEFAULT NULL,
  `fgravado` double DEFAULT NULL,
  `totalf` double DEFAULT NULL,
  `cfinicio` int(4) DEFAULT NULL,
  `cffinal` int(4) DEFAULT NULL,
  `totalnocf` int(1) DEFAULT NULL,
  `cfexento` double DEFAULT NULL,
  `cfgravado` double DEFAULT NULL,
  `totalcf` double DEFAULT NULL,
  `rinicio` int(11) NOT NULL,
  `rfinal` int(11) NOT NULL,
  `totalnor` int(11) NOT NULL,
  `rexento` double NOT NULL,
  `rgravado` double NOT NULL,
  `totalr` double NOT NULL,
  `cashinicial` double DEFAULT NULL,
  `vtacontado` double DEFAULT NULL,
  `vtaefectivo` double DEFAULT NULL,
  `vtatcredito` double DEFAULT NULL,
  `totalgral` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `cashfinal` double DEFAULT NULL,
  `diferencia` double DEFAULT NULL,
  `totalnodev` int(1) DEFAULT NULL,
  `totalnoanu` int(1) DEFAULT NULL,
  `depositos` decimal(6,2) DEFAULT NULL,
  `vales` double DEFAULT NULL,
  `tarjetas` double DEFAULT NULL,
  `depositon` int(1) DEFAULT NULL,
  `valen` int(1) DEFAULT NULL,
  `tarjetan` int(1) DEFAULT NULL,
  `ingresos` double DEFAULT NULL,
  `tcredito` int(1) DEFAULT NULL,
  `ncortex` int(1) DEFAULT NULL,
  `ncortez` int(1) DEFAULT NULL,
  `ncortezm` int(1) DEFAULT NULL,
  `cerrado` int(1) DEFAULT NULL,
  `tipo_corte` varchar(20) NOT NULL,
  `monto_ch` float NOT NULL,
  `retencion` float NOT NULL,
  `tinicio_e` int(11) NOT NULL,
  `tfinal_e` int(11) NOT NULL,
  `tdoctexe` int(11) NOT NULL,
  `tottexe` decimal(10,2) NOT NULL,
  `finicio_e` int(11) NOT NULL,
  `ffinal_e` int(11) NOT NULL,
  `tdocfexe` int(11) NOT NULL,
  `totfexe` decimal(10,2) NOT NULL,
  `cfinicio_e` int(11) NOT NULL,
  `cffinal_e` int(11) NOT NULL,
  `tdoccfexe` int(11) NOT NULL,
  `totcfexe` decimal(10,2) NOT NULL,
  `czxe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `correlativo`
--

CREATE TABLE `correlativo` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_numdoc` int(11) NOT NULL,
  `tik` int(11) NOT NULL,
  `cof` int(11) NOT NULL,
  `ccf` int(11) NOT NULL,
  `ref` int(11) NOT NULL,
  `ii` int(11) NOT NULL,
  `di` int(11) NOT NULL,
  `ai` int(11) NOT NULL,
  `ti` int(11) NOT NULL,
  `voc` int(11) NOT NULL,
  `aj` int(11) NOT NULL,
  `cot` int(11) NOT NULL,
  `tre` int(11) NOT NULL,
  `trr` int(11) NOT NULL,
  `dev` int(11) NOT NULL,
  `nc` int(11) NOT NULL,
  `pd` int(11) NOT NULL,
  `pdp` int(11) NOT NULL,
  `cof_e` int(11) NOT NULL,
  `ccf_e` int(11) NOT NULL,
  `nc_e` int(11) NOT NULL,
  `dev_e` int(11) NOT NULL,
  `con` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `correlativo`
--

INSERT INTO `correlativo` (`id_server`, `unique_id`, `id_sucursal`, `id_numdoc`, `tik`, `cof`, `ccf`, `ref`, `ii`, `di`, `ai`, `ti`, `voc`, `aj`, `cot`, `tre`, `trr`, `dev`, `nc`, `pd`, `pdp`, `cof_e`, `ccf_e`, `nc_e`, `dev_e`, `con`) VALUES
(1, 'O5f05eb400e59b6.44715651', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cotizacion`
--

CREATE TABLE `cotizacion` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_cotizacion` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `vigencia` int(11) NOT NULL,
  `numero_doc` varchar(15) NOT NULL,
  `total` float NOT NULL,
  `impresa` tinyint(1) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cotizacion_detalle`
--

CREATE TABLE `cotizacion_detalle` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_detalle` int(11) NOT NULL,
  `id_cotizacion` int(11) NOT NULL,
  `id_prod_serv` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` float NOT NULL,
  `subtotal` float NOT NULL,
  `tipo_prod_serv` varchar(20) NOT NULL,
  `id_presentacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `credito`
--

CREATE TABLE `credito` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_credito` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `tipo_doc` varchar(50) NOT NULL,
  `numero_doc` varchar(50) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `dias` int(11) NOT NULL,
  `total` float NOT NULL,
  `abono` float NOT NULL,
  `saldo` float NOT NULL,
  `finalizada` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cuentas_por_pagar_abonos`
--

CREATE TABLE `cuentas_por_pagar_abonos` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_abono` int(11) NOT NULL,
  `id_cuentas_por_pagar` int(11) NOT NULL,
  `abono` decimal(10,4) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cuenta_banco`
--

CREATE TABLE `cuenta_banco` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_cuenta` int(11) NOT NULL,
  `numero_cuenta` varchar(50) NOT NULL,
  `nombre_cuenta` varchar(100) NOT NULL,
  `id_banco` int(11) NOT NULL,
  `observaciones` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cuenta_banco`
--

INSERT INTO `cuenta_banco` (`id_server`, `unique_id`, `id_sucursal`, `id_cuenta`, `numero_cuenta`, `nombre_cuenta`, `id_banco`, `observaciones`) VALUES
(0, 'S5f7f859d6e21e9.34229585', 0, 1, '87141516', 'cuenta corriente', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `cuenta_pagar`
--

CREATE TABLE `cuenta_pagar` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_cuenta_pagar` int(11) NOT NULL,
  `id_compra` int(11) DEFAULT NULL,
  `hora` time NOT NULL,
  `numero_doc` varchar(15) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `monto` float DEFAULT NULL,
  `saldo_pend` float NOT NULL,
  `fecha_vence` date DEFAULT NULL,
  `comentario` varchar(10) DEFAULT NULL,
  `dias_credito` int(3) DEFAULT NULL,
  `alias_tipodoc` char(5) NOT NULL,
  `id_empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `departamento`
--

CREATE TABLE `departamento` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_departamento` int(11) NOT NULL COMMENT 'ID del departamento',
  `nombre_departamento` varchar(30) NOT NULL COMMENT 'Nombre del departamento'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Departamentos de El Salvador';

--
-- Dumping data for table `departamento`
--

INSERT INTO `departamento` (`id_server`, `unique_id`, `id_departamento`, `nombre_departamento`) VALUES
(1, 'O5f05eb40135001.25680380', 1, 'Ahuachapán'),
(2, 'O5f05eb401408b5.02743458', 2, 'Santa Ana'),
(3, 'O5f05eb40161022.48856100', 3, 'Sonsonate'),
(4, 'O5f05eb40182db5.95090534', 4, 'La Libertad'),
(5, 'O5f05eb401a2e50.39463793', 5, 'Chalatenango'),
(6, 'O5f05eb401c4479.29050638', 6, 'San Salvador'),
(7, 'O5f05eb401e5fe5.36412348', 7, 'Cuscatlán'),
(8, 'O5f05eb40207836.82365702', 8, 'La Paz'),
(9, 'O5f05eb40228958.36965162', 9, 'Cabañas'),
(10, 'O5f05eb40249ce5.41146105', 10, 'San Vicente'),
(11, 'O5f05eb4026b108.61176837', 11, 'Usulután'),
(12, 'O5f05eb4028e4e6.77060759', 12, 'Morazán'),
(13, 'O5f05eb402ae8d4.99014875', 13, 'San Miguel'),
(14, 'O5f05eb402d0161.28754843', 14, 'La Unión');

-- --------------------------------------------------------

--
-- Table structure for table `detalle_apertura`
--

CREATE TABLE `detalle_apertura` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_detalle` int(11) NOT NULL,
  `id_apertura` int(11) NOT NULL,
  `turno` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `vigente` tinyint(1) NOT NULL,
  `caja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detalle_compra`
--

CREATE TABLE `detalle_compra` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_det_compra` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_server_prod` int(11) NOT NULL,
  `cantidad` decimal(10,4) DEFAULT NULL,
  `ultcosto` decimal(5,2) DEFAULT NULL,
  `exento` tinyint(1) NOT NULL,
  `subtotal` float NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `id_server_presen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `detalle_compra2`
--

CREATE TABLE `detalle_compra2` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_det_compra` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_server_prod` int(11) NOT NULL,
  `cantidad` decimal(10,4) DEFAULT NULL,
  `ultcosto` decimal(5,2) DEFAULT NULL,
  `exento` tinyint(1) NOT NULL,
  `subtotal` float NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `id_server_presen` int(11) NOT NULL,
  `fecha_vence` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `detalle_compra2`
--

INSERT INTO `detalle_compra2` (`id_server`, `unique_id`, `id_sucursal`, `id_det_compra`, `id_compra`, `id_producto`, `id_server_prod`, `cantidad`, `ultcosto`, `exento`, `subtotal`, `id_presentacion`, `id_server_presen`, `fecha_vence`) VALUES
(0, 'S60a713b9d4ff79.23727837', 0, 28, 1, 587, 0, '4.0000', '1.55', 0, 6.19, 840, 0, '2012-12-22'),
(0, 'S60a713b9d52729.68774206', 0, 29, 1, 586, 0, '4.0000', '1.55', 0, 6.19, 839, 0, '2011-12-22'),
(0, 'S60a713b9d54f37.83238353', 0, 30, 1, 585, 0, '4.0000', '1.55', 0, 6.19, 838, 0, '2012-12-22'),
(0, 'S60a713b9d56f95.37508067', 0, 31, 1, 60, 0, '4.0000', '1.55', 0, 6.2, 119, 0, '2012-12-22'),
(0, 'S60a713b9d58da5.28096695', 0, 32, 1, 62, 0, '4.0000', '1.55', 0, 6.2, 121, 0, '2012-12-22'),
(0, 'S60a713b9d5ac87.68740685', 0, 33, 1, 61, 0, '4.0000', '1.55', 0, 6.2, 120, 0, '2012-12-22'),
(0, 'S60a713b9d5d273.10253152', 0, 34, 1, 63, 0, '4.0000', '1.55', 0, 6.2, 122, 0, '2012-12-22'),
(0, 'S60a713b9d5f571.76948411', 0, 35, 1, 59, 0, '6.0000', '1.55', 0, 9.3, 118, 0, '2012-12-22'),
(0, 'S60a713b9d61d14.39990205', 0, 36, 1, 58, 0, '6.0000', '1.55', 0, 9.3, 117, 0, '2012-12-22');

-- --------------------------------------------------------

--
-- Table structure for table `detalle_voucher`
--

CREATE TABLE `detalle_voucher` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_detalle` int(11) NOT NULL,
  `fecha` varchar(11) DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `cargo` varchar(11) DEFAULT NULL,
  `porcentage` varchar(11) DEFAULT NULL,
  `descuento` varchar(11) DEFAULT NULL,
  `devolucion` varchar(11) DEFAULT NULL,
  `bonificacion` varchar(11) DEFAULT NULL,
  `retencion` varchar(11) DEFAULT NULL,
  `vin` varchar(11) DEFAULT NULL,
  `saldo` varchar(11) DEFAULT NULL,
  `id_cuenta_pagar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `devoluciones`
--

CREATE TABLE `devoluciones` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_dev` int(11) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `id_factura_dev` int(11) NOT NULL,
  `cant` int(11) NOT NULL,
  `monto` float NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `nombre` text NOT NULL,
  `dui` text NOT NULL,
  `telefono` int(11) NOT NULL,
  `exento` decimal(10,2) NOT NULL,
  `gravado` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `devoluciones_corte`
--

CREATE TABLE `devoluciones_corte` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_dev` int(11) NOT NULL,
  `id_corte` int(11) NOT NULL,
  `n_devolucion` varchar(30) NOT NULL,
  `t_devolucion` double NOT NULL,
  `afecta` varchar(30) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `exento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `devoluciones_det`
--

CREATE TABLE `devoluciones_det` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_dev_det` int(11) NOT NULL,
  `id_dev` int(11) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cant` int(11) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `id_factura_detalle` int(11) NOT NULL,
  `exento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `empleado`
--

CREATE TABLE `empleado` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `nit` varchar(20) NOT NULL,
  `dui` varchar(16) NOT NULL,
  `direccion` varchar(250) NOT NULL,
  `telefono1` varchar(12) NOT NULL,
  `telefono2` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `salariobase` float NOT NULL,
  `id_tipo_empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empleado`
--

INSERT INTO `empleado` (`id_server`, `unique_id`, `id_sucursal`, `id_empleado`, `nombre`, `apellido`, `nit`, `dui`, `direccion`, `telefono1`, `telefono2`, `email`, `salariobase`, `id_tipo_empleado`) VALUES
(-1, 'O5f05eb40568c44.11075141', 1, -1, 'Mostrador', '', '', '', '', '', '', '', 0, 3),
(0, 'S606c725f0f1e64.33235935', 1, 1, 'YANCI', 'MONDRAGON', '0000-000000-000-0', '03342154-4', 'SAN MIGUEL', '6000-0458', '', '', 0, 1),
(0, 'S608583646b31a2.16629728', 1, 3, 'Daris', 'Moraga', '1210-010281-101-1', '00469701-1', 'San MIguel', '7536-9528', '', 'darismoraga@gmail.com', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `empresa`
--

CREATE TABLE `empresa` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `idempresa` int(1) NOT NULL,
  `nombre` varchar(15) DEFAULT NULL,
  `razonsocial` varchar(30) DEFAULT NULL,
  `direccion` varchar(25) DEFAULT NULL,
  `ubicacion` varchar(23) DEFAULT NULL,
  `nrc` varchar(6) DEFAULT NULL,
  `nit` varchar(17) DEFAULT NULL,
  `giro` varchar(16) DEFAULT NULL,
  `telefono1` varchar(10) DEFAULT NULL,
  `depto` varchar(10) DEFAULT NULL,
  `direccion2` varchar(32) DEFAULT NULL,
  `telefono2` varchar(9) DEFAULT NULL,
  `logo` varchar(250) NOT NULL,
  `iva` decimal(5,2) NOT NULL,
  `monto_retencion1` decimal(5,2) NOT NULL,
  `monto_retencion10` decimal(5,2) NOT NULL,
  `monto_percepcion` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `empresa`
--

INSERT INTO `empresa` (`id_server`, `unique_id`, `idempresa`, `nombre`, `razonsocial`, `direccion`, `ubicacion`, `nrc`, `nit`, `giro`, `telefono1`, `depto`, `direccion2`, `telefono2`, `logo`, `iva`, `monto_retencion1`, `monto_retencion10`, `monto_percepcion`) VALUES
(1, 'O5f05eb405a2e80.45664621', 1, 'CALZADO MAYORGA', 'Edgar Rodolfo Mayorga Ascencio', '4a Calle Poniente No. 214', 'San Miguel, El Salvador', '2404-0', '1217-090236-001-0', 'Venta de Calzado', '2661-1836', 'SAN MIGUEL', 'Sucursal Metrocentro Local 64/65', '2667-0452', 'img/5af09749a77c6_logo_sys.png', '13.00', '100.00', '100.00', '100.00');

-- --------------------------------------------------------

--
-- Table structure for table `estante`
--

CREATE TABLE `estante` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_estante` int(11) NOT NULL,
  `id_ubicacion` int(11) NOT NULL,
  `descripcion` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `factura`
--

CREATE TABLE `factura` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `numero_doc` varchar(30) NOT NULL,
  `referencia` varchar(15) NOT NULL,
  `numero_ref` int(11) NOT NULL,
  `subtotal` float NOT NULL,
  `sumas` float NOT NULL,
  `suma_gravado` float NOT NULL,
  `iva` float NOT NULL,
  `retencion` float NOT NULL,
  `venta_exenta` float NOT NULL,
  `total_menos_retencion` float NOT NULL,
  `total` float NOT NULL,
  `descuento` float NOT NULL,
  `porcentaje` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `anulada` tinyint(1) NOT NULL DEFAULT '0',
  `id_empleado` int(11) NOT NULL,
  `finalizada` tinyint(1) NOT NULL,
  `impresa` tinyint(1) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `serie` varchar(25) NOT NULL,
  `serie_e` varchar(25) NOT NULL,
  `num_fact_impresa` varchar(30) NOT NULL,
  `hora` time NOT NULL,
  `turno` int(11) NOT NULL,
  `id_apertura` int(11) NOT NULL,
  `id_apertura_pagada` int(11) NOT NULL,
  `credito` tinyint(1) NOT NULL,
  `abono` float NOT NULL,
  `saldo` float NOT NULL,
  `afecta` int(11) NOT NULL,
  `tipo_documento` varchar(20) NOT NULL,
  `caja` int(11) NOT NULL,
  `numero_doc_e` varchar(30) NOT NULL,
  `num_fact_impresa_e` varchar(30) NOT NULL,
  `nombre` text NOT NULL,
  `direccion` text NOT NULL,
  `precio_aut` int(11) NOT NULL,
  `clave` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factura_detalle`
--

CREATE TABLE `factura_detalle` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_factura_detalle` int(11) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `id_prod_serv` int(11) NOT NULL,
  `id_server_prod` int(11) NOT NULL,
  `cantidad` decimal(11,4) NOT NULL,
  `precio_venta` decimal(11,4) NOT NULL,
  `subtotal` decimal(11,2) NOT NULL,
  `descuento` float NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `tipo_prod_serv` varchar(30) NOT NULL COMMENT 'PRODUCTO o SERVICIO',
  `id_factura_dia` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `impresa_lote` tinyint(1) NOT NULL,
  `hora` time NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `id_server_presen` int(11) NOT NULL,
  `exento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laboratorio`
--

CREATE TABLE `laboratorio` (
  `id_laboratorio` int(11) NOT NULL,
  `laboratorio` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laboratorio`
--

INSERT INTO `laboratorio` (`id_laboratorio`, `laboratorio`) VALUES
(1, 'JANSSEN'),
(2, 'ASPEN'),
(3, 'ARSAL'),
(4, 'BAYER'),
(5, 'SERRAL'),
(6, 'MK'),
(7, 'GROSMAN'),
(8, 'GLOBAL FARMA'),
(9, 'ASTRAZANECA'),
(10, 'ABBOTT'),
(11, 'LOPEZ'),
(12, 'GSK'),
(13, 'GARDEN HOUSE'),
(14, 'PFIZER'),
(15, 'MERCK'),
(16, 'BIAL'),
(17, 'GRUPO FARMA'),
(18, 'MORE PHARMA'),
(19, 'OPHIA'),
(20, 'BOEHRINGER INGELHEIM'),
(21, 'TERAMED'),
(22, 'ASTA MEDICA'),
(23, 'ALTIAN PHARMA'),
(24, 'ADHINTER'),
(25, 'DALT PHARMA'),
(26, 'JOHNSON '),
(27, 'AVENT'),
(28, 'VIJOSA'),
(29, 'PISA'),
(30, 'C- IMBERTON'),
(31, 'COLGATE'),
(32, 'ALPES SUIZOS'),
(33, 'COFASA'),
(34, 'BIOKEMICAL'),
(35, 'DELTA'),
(36, 'FARDEL'),
(37, 'STEIN'),
(38, 'TERAPEUTICOS MEDICINALES'),
(39, 'CHINOIN'),
(40, 'MC '),
(41, 'SAIMED'),
(42, 'ARGUS '),
(43, 'NORDIC'),
(44, 'SUIZOS'),
(45, 'PAILL'),
(46, 'DISTRIBUIDORA CUSCATLAN'),
(47, 'NIPRO MEDICAL'),
(48, 'HIPOALERGIC'),
(49, 'SOLARIS'),
(50, 'RAZEL'),
(51, 'MEDA'),
(52, 'SANOFI'),
(53, 'MEDICROPOLIS'),
(54, 'BIOGALENIC'),
(55, 'RIASA S.R.L'),
(56, 'MONERVA S.A. DE C.V.'),
(57, 'ECOMED'),
(58, 'ENMILEN'),
(59, 'LAFAGE'),
(60, 'LILLY'),
(61, 'LA SANTE'),
(62, 'UNIPHARM'),
(63, 'GRUNENTHAL'),
(64, 'FERRER'),
(65, 'ANCALMO'),
(66, 'CHALVER'),
(67, 'TEXPOL'),
(68, 'FUTURA'),
(69, 'MAFESA'),
(70, 'LABORATORIOS ROWALT'),
(71, 'Laboratorio Generix ');

-- --------------------------------------------------------

--
-- Table structure for table `log_cambio_local`
--

CREATE TABLE `log_cambio_local` (
  `id_log_cambio` int(11) NOT NULL,
  `id_server` int(11) DEFAULT NULL,
  `process` varchar(250) NOT NULL,
  `tabla` varchar(250) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_sucursal` int(11) DEFAULT NULL,
  `id_primario` int(11) DEFAULT NULL,
  `subido` int(11) NOT NULL,
  `verificado` int(11) NOT NULL,
  `prioridad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log_detalle_cambio_local`
--

CREATE TABLE `log_detalle_cambio_local` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_detalle_cambio` int(11) NOT NULL,
  `id_log_cambio` int(11) NOT NULL,
  `tabla` varchar(250) NOT NULL,
  `id_verificador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log_update_local`
--

CREATE TABLE `log_update_local` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_log_cambio` int(11) NOT NULL,
  `query` text NOT NULL,
  `tabla` varchar(250) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_sucursal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lote`
--

CREATE TABLE `lote` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_lote` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `fecha_entrada` date NOT NULL,
  `numero` int(11) NOT NULL,
  `cantidad` decimal(11,4) NOT NULL,
  `precio` decimal(11,4) NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `vencimiento` date NOT NULL,
  `estado` varchar(25) NOT NULL,
  `referencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_menu` int(11) NOT NULL,
  `nombre` varchar(250) DEFAULT NULL,
  `prioridad` int(11) DEFAULT NULL,
  `icono` varchar(250) NOT NULL,
  `visible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_server`, `unique_id`, `id_menu`, `nombre`, `prioridad`, `icono`, `visible`) VALUES
(1, 'O5f05eb409009e5.46706007', 1, 'Productos', 5, 'fa fa-archive', 1),
(2, 'O5f05eb409179a0.18650115', 2, 'Clientes', 1, 'fa fa-users', 1),
(3, 'O5f05eb4093a7c3.20066664', 3, 'Proveedores', 2, 'fa fa-truck', 1),
(4, 'O5f05eb4095af10.27286419', 4, 'Ubicaciones', 4, 'fa fa-database', 1),
(5, 'O5f05eb4097ace5.11347275', 5, 'Facturación', 8, 'fa fa-money', 1),
(6, 'O5f05eb4099d124.33084211', 6, 'Inventario', 7, 'fa fa-table', 1),
(7, 'O5f05eb409bee79.14738654', 7, 'Caja', 12, 'fa fa-money', 1),
(8, 'O5f05eb40a03963.45333314', 8, 'Cuentas por Cobrar', 10, ' fa fa-credit-card', 1),
(9, 'O5f05eb40a23679.51184023', 9, 'Empleados', 3, 'fa fa-users', 1),
(10, 'O5f05eb40a44847.17519732', 10, 'Bancos', 9, 'fa fa-bank', 0),
(11, 'O5f05eb40a65fc6.76958696', 11, 'Compras', 6, 'fa fa-cart-arrow-down', 1),
(12, 'O5f05eb40a876e0.30839970', 12, 'Cuentas por Pagar', 11, 'fa fa-balance-scale', 1),
(13, 'O5f05eb40aa7f76.15900424', 13, 'Cotizaciones', 13, 'fa fa-file-pdf-o', 1),
(14, 'O5f05eb40ac92f6.64346636', 14, 'Traslados', 15, 'fa fa-exchange', 0),
(15, 'O5f05eb40aeb060.65265702', 15, 'Utilidades', 16, 'fa fa-gears', 1),
(16, 'O5f05eb40b0a8a3.32582765', 16, 'Pedidos', 14, 'fa fa-file', 0),
(17, 'O5f05eb40b2ab31.39514402', 17, 'Reportes', 15, 'fa fa-file-pdf-o', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modulo`
--

CREATE TABLE `modulo` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_modulo` int(11) NOT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `nombre` varchar(250) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `filename` varchar(250) DEFAULT NULL,
  `mostrarmenu` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modulo`
--

INSERT INTO `modulo` (`id_server`, `unique_id`, `id_modulo`, `id_menu`, `nombre`, `descripcion`, `filename`, `mostrarmenu`) VALUES
(1, 'O5f05eb40b557d6.80674465', 1, 2, 'Admin Clientes', 'Admin Clientes', 'admin_cliente.php', 1),
(2, 'O5f05eb40b6cda1.21804727', 2, 2, 'Agregar Cliente', 'Agregar Cliente', 'agregar_cliente.php', 0),
(3, 'O5f05eb40b98960.03796961', 3, 2, 'Editar Cliente', 'Editar Cliente', 'editar_cliente.php', 0),
(4, 'O5f05eb40bb3023.17484334', 4, 0, 'Borrar Cliente', 'Borrar Cliente', 'borrar_cliente.php', 0),
(5, 'O5f05eb40bd51e2.11388209', 5, 2, 'Ver Cliente', 'Ver Cliente', 'ver_cliente.php', 0),
(6, 'O5f05eb40bf6df6.08826724', 6, 1, 'Admin Productos', 'Admin Productos', 'admin_producto.php', 1),
(7, 'O5f05eb40c17e84.99146662', 7, 1, 'Agregar Producto', 'Agregar Producto', 'agregar_producto.php', 0),
(8, 'O5f05eb40c396a4.82413968', 8, 1, 'Editar Producto', 'Editar Producto', 'editar_producto.php', 0),
(9, 'O5f05eb40c5a989.22673514', 9, 0, 'Borrar Producto', 'Borrar Producto', 'borrar_producto.php', 0),
(10, 'O5f05eb40c7c621.03604395', 10, 1, 'Ver Producto', 'Ver Producto', 'ver_producto.php', 0),
(11, 'O5f05eb40c9e083.97450774', 11, 1, 'Admin Categorías', 'Admin Categorías', 'admin_categoria.php', 1),
(12, 'O5f05eb40cbecc6.75279752', 12, 1, 'Agregar Categoría', 'Agregar Categoría', 'agregar_categoria.php', 0),
(13, 'O5f05eb40ce1fd4.53208572', 13, 1, 'Editar Categoría', 'Editar Categoría', 'editar_categoria.php', 0),
(14, 'O5f05eb40d03081.95012102', 14, 1, 'Borrar Categoría', 'Borrar Categoría', 'borrar_categoria.php', 0),
(15, 'O5f05eb40d22bd6.81663215', 15, 1, 'Admin Presentaciones', 'Admin Presentaciones', 'admin_presentacion.php', 1),
(16, 'O5f05eb40d44094.61197172', 16, 1, 'Agregar Presentación', 'Agregar Presentación', 'agregar_presentacion.php', 0),
(17, 'O5f05eb40d66cd4.02334532', 17, 1, 'Editar Presentación', 'Editar Presentación', 'editar_presentacion.php', 0),
(18, 'O5f05eb40d880b1.22139139', 18, 0, 'Borrar Presentación', 'Borrar Presentación', 'borrar_presentacion.php', 0),
(19, 'O5f05eb40da9501.59194579', 19, 3, 'Admin Proveedores', 'Admin Proveedores', 'admin_proveedor.php', 1),
(20, 'O5f05eb40dcaa91.12494562', 20, 3, 'Agregar Proveedor', 'Agregar Proveedor', 'agregar_proveedor.php', 0),
(21, 'O5f05eb40debff4.96361423', 21, 3, 'Editar Proveedor', 'Editar Proveedor', 'editar_proveedor.php', 0),
(22, 'O5f05eb40e0c888.43765922', 22, 3, 'Borrar Proveedor', 'Borrar Proveedor', 'borrar_proveedor.php', 0),
(23, 'O5f05eb40e2d962.77880686', 23, 3, 'Ver Proveedor', 'Ver Proveedor', 'ver_proveedor.php', 0),
(24, 'O5f05eb40e4f194.15626220', 24, 4, 'Ubicaciones', 'Administrar Ubicaciones', 'admin_ubicacion.php', 1),
(25, 'O5f05eb40e708d2.43703360', 25, 4, 'Agregar Ubicación', 'Agregar  Ubicación', 'agregar_ubicacion.php', 0),
(26, 'O5f05eb40e91652.56127768', 26, 4, 'Editar Ubicación', 'Editar Ubicación', 'editar_ubicacion.php', 0),
(27, 'O5f05eb40eb23c0.97318258', 27, 4, 'Borrar Ubicación', 'Borrar Ubicación', 'borrar_ubicacion.php', 0),
(28, 'O5f05eb40ed3615.50647172', 28, 4, 'Estantes', 'Administrar Estantes', 'admin_estante.php', 1),
(29, 'O5f05eb40ef7843.15126785', 29, 4, 'Agregar Estante', 'Agregar Estante', 'agregar_estante.php', 0),
(30, 'O5f05eb40f16e09.24203944', 30, 4, 'Editar Estante', 'Editar  Estante', 'editar_estante.php', 0),
(31, 'O5f05eb40f37b60.00827457', 31, 4, 'Borrar Estante', 'Borrar  Estante', 'borrar_estante.php', 0),
(32, 'O5f05eb41017006.00931282', 32, 4, 'Admin Asignación', 'Admin Asignación', 'admin_asignacion.php', 1),
(33, 'O5f05eb41039f57.28698843', 33, 4, 'Agregar Asignación', 'Agregar Asignación', 'agregar_asignacion.php', 0),
(34, 'O5f05eb410599d1.56660408', 34, 4, 'Admin no Asignado', 'Admin no Asignado', 'admin_producto_no_asignado.php', 0),
(35, 'O5f05eb4107afe1.63279681', 35, 5, 'Pre Venta', 'Pre Venta', 'preventa.php', 0),
(36, 'O5f05eb4109c499.45761506', 36, 5, 'Venta', 'Venta', 'venta.php', 1),
(37, 'O5f05eb410bf365.82456772', 37, 6, 'Cargas de Inventario', 'Cargas de Inventario', 'ingreso_inventario.php', 1),
(38, 'O5f05eb410df348.43628305', 38, 6, 'Descargos de Inventario', 'Descargos de Inventario', 'descargo_inventario.php', 1),
(39, 'O5f05eb41100792.71390260', 39, 4, 'Movimientos', 'Movimientos', 'admin_movimiento_asignacion.php', 1),
(40, 'O5f05eb41121077.53639053', 40, 4, 'Ver Detalle Movimiento', 'Ver Detalle Movimiento', 'ver_detalle_mov.php', 0),
(41, 'O5f05eb41143fe3.20302729', 41, 7, 'Admin Corte', 'Admin Corte', 'admin_corte.php', 1),
(42, 'O5f05eb41163996.99684593', 42, 7, 'Admin Caja', 'Admin Caja', 'admin_caja.php', 0),
(43, 'O5f05eb41184aa5.98721589', 43, 8, 'Admin Créditos', 'Admin Créditos', 'admin_credito.php', 1),
(44, 'O5f05eb411a6e67.01786190', 44, 8, 'Abono Crédito', 'Abono Crédito', 'abono_credito.php', 0),
(45, 'O5f05eb411c9bd0.47966233', 45, 9, 'Admin Empleados', 'Admin Empleados', 'admin_empleado.php', 1),
(46, 'O5f05eb411e9dc6.09963749', 46, 9, 'Agregar Empleado', 'Agregar Empleado', 'agregar_empleado.php', 0),
(47, 'O5f05eb4120b712.48363516', 47, 9, 'Editar Empleado', 'Editar Empleado', 'editar_empleado.php', 0),
(48, 'O5f05eb4122d0f2.55169895', 48, 9, 'Borrar Empleado', 'Borrar Empleado', 'borrar_empleado.php', 0),
(49, 'O5f05eb4124fb23.66721793', 49, 9, 'Ver Empleado', 'Ver Empleado', 'ver_empleado.php', 0),
(50, 'O5f05eb4126ebf0.13796136', 50, 6, 'Consultar Stock', 'Consultar Stock', 'admin_stock.php', 1),
(54, 'O5f05eb4128fd77.61425381', 54, 10, 'Admin Bancos', 'Admin Bancos', 'admin_banco.php', 1),
(55, 'O5f05eb412b23e0.76265701', 55, 10, 'Agregar Banco', 'Agregar Banco', 'agregar_banco.php', 0),
(56, 'O5f05eb412d40c4.02090032', 56, 10, 'Editar Banco', 'Editar Banco', 'editar_banco.php', 0),
(57, 'O5f05eb412f42e3.98087482', 57, 10, 'Borrar Banco', 'Borrar Banco', 'borrar_banco.php', 0),
(58, 'O5f05eb41315275.52911793', 58, 10, 'Ver Banco', 'Ver Banco', 'ver_banco.php', 0),
(59, 'O5f05eb41338459.62191627', 59, 10, 'Admin Cuentas', 'Admin Cuentas', 'cuenta_banco.php', 0),
(60, 'O5f05eb4135b335.28674118', 60, 10, 'Agregar Cuenta', 'Agregar Cuenta', 'agregar_cuenta_banco.php', 0),
(61, 'O5f05eb4137c891.96084833', 61, 10, 'Editar Cuenta', 'Editar Cuenta', 'editar_cuenta_banco.php', 0),
(62, 'O5f05eb4139cd34.42773754', 62, 10, 'Borrar Cuenta', 'Borrar Cuenta', 'cuenta_banco.php', 0),
(63, 'O5f05eb413be8a1.21194885', 63, 10, 'Admin Movimientos', 'Admin Movimiento', 'admin_mov_cta_banco.php', 1),
(64, 'O5f05eb413e1a43.57423716', 64, 10, 'Agregar Movimientos', 'Agregar Movimiento', 'agreg_mov_cta_banco.php', 0),
(65, 'O5f05eb41400a87.41266529', 65, 10, 'Editar Movimientos', 'Editar Movimiento', 'editar_mov_cta_banco.php', 0),
(66, 'O5f05eb41421500.84234036', 66, 10, 'Borrar Movimientos', 'Borrar Movimiento', 'borrar_mov_cta_banco.php', 0),
(68, 'O5f05eb41442002.05211020', 68, 11, 'Admin Compras', 'Admin Compras', 'admin_compra.php', 1),
(69, 'O5f05eb41464be4.30941382', 69, 6, 'Ajuste de Inventario', 'Ajuste de Inventario', 'ajuste_inventario.php', 1),
(70, 'O5f05eb41484aa6.80497387', 70, 6, 'Reporte Ajuste', 'Reporte Ajuste', 'reporte_ajuste.php', 0),
(71, 'O5f05eb414a6d19.90850503', 71, 0, 'Hoja de conteo', 'Hoja de conteo', 'hoja_conteo.php', 0),
(77, 'O5f05eb41570b15.16047866', 77, 13, 'Admin Cotizaciones', 'Admin Cotizaciones', 'admin_cotizacion.php', 1),
(78, 'O5f05eb41591212.80473418', 78, 13, 'Agregar Cotización', 'Agregar Cotización', 'agregar_cotizacion.php', 0),
(79, 'O5f05eb415b1261.17905602', 79, 13, 'Editar Cotización', 'Editar Cotización', 'editar_cotizacion.php', 0),
(80, 'O5f05eb415d3ef8.42416532', 80, 13, 'Borrar Cotización', 'Borrar Cotización', 'borrar_cotizacion.php', 0),
(81, 'O5f05eb415f4df1.95021631', 81, 13, 'Imprimir Cotización', 'Imprimir Cotización', 'cotizacion.php', 0),
(82, 'O5f05eb41615a01.32542084', 82, 11, 'Agregar Compra', 'Agregar Compra', 'compras.php', 0),
(83, 'O5f05eb416382a4.10908511', 83, 11, 'Ver Compra', 'Ver Compra', 'ver_compra.php', 0),
(84, 'O5f05eb41658b06.18552533', 84, 6, 'Admin Ajuste', 'Admin Ajuste', 'admin_ajuste.php', 1),
(85, 'O5f05eb41678f03.39197378', 85, 14, 'Admin Traslado', 'Admin Traslado', 'admin_traslados.php', 1),
(86, 'O5f05eb4169aa19.80914362', 86, 14, 'Realizar Traslado', 'Realizar Traslado', 'traslado_producto.php', 0),
(87, 'O5f05eb416bbe71.68828167', 87, 14, 'Anular Traslado ', 'Anular Traslado ', 'anular_traslado.php', 0),
(88, 'O5f05eb417055d7.64623279', 88, 14, 'Ver Traslado ', 'Ver Traslado ', 'ver_traslado.php', 0),
(89, 'O5f05eb41728117.72018645', 89, 14, 'Reporte Traslado ', 'Reporte Traslado ', 'reporte_traslado.php', 0),
(90, 'O5f05eb4174a232.29328678', 90, 14, 'Reporte Traslado Recibido ', 'Reporte Traslado ', 'reporte_traslado.php', 0),
(91, 'O5f05eb4176a4d4.64882050', 91, 14, 'Recibir Traslado', 'Recibir Traslado', 'recibir_traslado.php', 0),
(92, 'O5f05eb4178b359.75549721', 92, 15, 'Admin Usuario', 'Admin Usuario', 'admin_usuarios.php', 1),
(93, 'O5f05eb417ac3a6.66387409', 93, 15, 'Agregar Usuario', 'Agregar Usuario', 'agregar_usuario.php', 0),
(94, 'O5f05eb417cde21.93346982', 94, 15, 'Editar Usuario', 'Editar Usuario', 'editar_usuario.php', 0),
(95, 'O5f05eb417eede2.31067181', 95, 15, 'Borrar Usuario', 'Borrar Usuario', 'borrar_usuario.php', 0),
(96, 'O5f05eb4180fce8.80401493', 96, 15, 'Permisos Usuario', 'Permisos Usuario', 'permiso_usuario.php', 0),
(97, 'O5f05eb41830fa2.52731268', 97, 15, 'Admin Empresa', 'Admin Empresa', 'admin_empresa.php', 1),
(98, 'O5f05eb41851923.59364838', 98, 16, 'Admin Pedidos', 'Admin Pedidos', 'admin_pedido.php', 1),
(99, 'O5f05eb4188d972.21223503', 99, 16, 'Agregar Pedido', 'Agregar Pedido', 'agregar_pedido.php', 0),
(100, 'O5f05eb418ae261.13604734', 100, 16, 'Editar Pedido', 'Editar Pedido', 'editar_pedido.php', 0),
(101, 'O5f05eb418cfd29.95596321', 101, 16, 'Borrar Pedido', 'Anular Pedido', 'borrar_pedido.php', 0),
(103, 'O5f05eb418f0a05.83103610', 103, 16, 'Reporte Pedido', 'Reporte Pedido', 'reporte_pedido.php', 0),
(106, 'O5f05eb41912c30.67486844', 106, 5, 'Admin Facturas', 'Admin Facturas', 'admin_factura_rangos.php', 1),
(107, 'O5f05eb419328c2.90434042', 107, 5, 'Ver Factura', 'Ver Factura', 'ver_factura.php', 0),
(108, 'O5f05eb41953a69.64081182', 108, 5, 'Reimprimir Factura ', 'Reimprimir Factura ', 'reimprimir_factura.php', 0),
(109, 'O5f05eb419750b4.84898084', 109, 5, 'Anular Factura ', 'Anular Factura ', 'anular_factura.php', 0),
(110, 'O5f05eb419974d0.00386389', 110, 5, 'Devolución', 'Devolución', 'devolucion.php', 0),
(111, 'O5f05eb419b7319.33813009', 111, 7, 'Admin Movimiento Caja', 'Admin Movimiento Caja', 'admin_movimiento_caja.php', 1),
(112, 'O5f05eb419da677.46993171', 112, 7, 'Agregar ingreso caja', 'Agregar ingreso caja', 'agregar_ingreso_caja.php', 0),
(113, 'O5f05eb41a14bb8.59855440', 113, 7, 'Agregar salida caja', 'Agregar salida caja', 'agregar_salida_caja.php', 0),
(114, 'O5f05eb41a1f576.38455241', 114, 7, 'Editar Movimiento caja', 'Editar Movimiento caja', 'editar_movimiento_caja.php', 0),
(115, 'O5f05eb41a3cf93.32857213', 115, 7, 'Imprimir Movimiento', 'Imprimir Movimiento', 'imprimir_movimiento.php', 0),
(116, 'O5f05eb41a46e63.60453754', 116, 7, 'Borrar Movimiento caja', 'Borrar Movimiento caja', 'Borrar_movimiento_caja.php', 0),
(117, 'O5f05eb41a64563.68833884', 117, 7, 'Corte de Caja', 'Corte de caja diario', 'corte_caja_diario.php', 0),
(118, 'O5f05eb41a6e815.94144447', 118, 5, 'Facturas Pendientes', 'Admin Facturas Pendientes', 'admin_pendiente_rangos.php', 1),
(119, 'O5f05eb41a8f638.74970180', 119, 0, 'Hoja de conteo', 'Hoja de conteo', 'generar_hoja.php', 0),
(120, 'O5f05eb41ab09a6.86058616', 120, 5, 'Admin Devoluciones', 'Devoluciones ', 'admin_devoluciones_rangos.php', 0),
(121, 'O5f05eb41ad25f9.66536186', 121, 17, 'Kardex', 'Reporte Kardex', 'reporte_kardex.php', 1),
(122, 'O5f05eb41af3188.68776028', 122, 17, 'Inventario', 'Inventario', 'ver_reporte_inventario.php', 1),
(123, 'O5f05eb41b25740.72140719', 123, 0, 'Libro de compras ', 'Libro de compras ', 'ver_libro_compras.php', 0),
(124, 'O5f05eb41b46565.91156608', 124, 0, 'Reposición de producto', 'Reposición de producto', 'admin_movimiento_pendiente.php', 0),
(126, 'O5f05eb41b68401.52350919', 126, 17, 'Kardex General', 'Reporte Kardex General', 'reporte_kardex_general.php', 1),
(127, 'O5f05eb41b88981.27862250', 127, 0, 'Resumen de vales', 'Resumen de vales', 'resumen_vale.php', 0),
(128, 'O5f05eb41ba97c1.56833042', 128, 0, 'Ventas a Contribuyentes', 'Libro de Ventas a Contribuyentes', 'ver_libro_ventas_a_contribuyente.php', 0),
(129, 'O5f05eb41bcaf98.66472746', 129, 0, 'Ventas a Consumidores', 'Libro de Ventas a Consumidores', 'ver_libro_ventas_a_consumidores.php', 0),
(130, 'O5f05eb41becfb1.85061161', 130, 0, 'Reporte Fiscal', 'Reporte Fiscal', 'ver_reporte_fiscal.php', 0),
(132, 'O5f05eb41c369d4.28550866', 132, 7, 'Apertura de caja', 'Apertura de caja', 'apertura_caja.php', 0),
(133, 'O5f05eb41c575d4.30502875', 133, 6, 'Administrar lotes', 'administrar lotes', 'admin_lotes.php', 1),
(134, 'O5f05eb41c78835.16429705', 134, 12, 'Admin cuentas por pagar', 'Admin cuentas por pagar', 'admin_cxp_p.php', 1),
(135, 'O5f05eb41c99d36.08775523', 135, 0, 'Admin cuentas por pagar proveedor', 'Admin cuentas por pagar proveedor', 'admin_cxp.php', 0),
(136, 'O5f05eb41cba1b5.11522091', 136, 4, 'Agregar Reasignación', 'Agregar Reasignación', 'agregar_reasignacion.php', 0),
(137, 'O5f05eb41cda5c0.73067800', 137, 15, 'Backup', 'Backup', 'backup.php', 1),
(138, 'O5f05eb41cfc287.66689246', 138, 0, 'Ticket de auditoria', 'Ticket de auditoria', 'ticket_dia.php', 0),
(139, 'O5f05eb41d1db81.80041399', 139, 0, 'Depuracion', 'Depuracion', 'depuracion.php', 0),
(140, 'O5f05eb41d3fad3.12141556', 140, 4, 'Admin transferencias', 'Admin transferencias', 'admin_transferencia.php', 1),
(141, 'O5f05eb41d5f6a5.72491309', 141, 4, 'Agregar Transferencia', 'Agregar Transferencia', 'agregar_transferencia.php', 0),
(142, 'O5f05eb41d81a81.90248161', 142, 5, 'Admin Autorización', 'Admin Autorización', 'admin_autorizacion.php', 1),
(143, 'O5f05eb41dbe234.90974124', 143, 5, 'Agregar Autorización', 'Agregar Autorización', 'agregar_autorizacion.php', 0),
(146, 'O5f05eb41dbe234.90974125', 144, 17, 'Reporte Ingresos y Egresos', 'Reporte Ingresos y Egresos', 'reporte_entrada_salida.php', 1),
(147, 'O5f05eb41dbe234.90974126', 145, 17, 'Reporte de utilidades', 'Reporte de utilidades', 'ver_reporte_utilidad.php', 1),
(144, 'O5f05eb41dbe234.90974127', 146, 17, 'Reporte de Reposicion', 'Reporte de Reposicion', 'ver_reporte_reposicion.php', 1),
(145, 'O5f05eb41dbe234.90974128', 147, 17, 'Reporte de utilidades Por dia', 'Reporte de utilidades Por dia', 'ver_reporte_utilidades_diarias.php', 1),
(0, '', 148, 1, 'Admin Laboratorios', 'Admin Laboratorios', 'admin_laboratorio.php', 1),
(0, '', 149, 1, 'Agregar Laboratorios', 'Agregar Laboratorios', 'agregar_laboratorio.php', 0),
(0, '', 150, 1, 'Editar Laboratorios', 'Editar Laboratorios', 'editar_laboratorio.php', 0),
(68, 'O5f05eb41442002.05211020', 151, 11, 'Admin Compras Guardada', 'Admin Compras Guardada', 'admin_compra_guardada.php', 1),
(0, '', 152, 17, 'Reporte Z', 'Reporte Z', 'reportez.php', 1),
(138, 'O5f05eb41cfc287.66689246', 153, 17, 'Ticket de auditoria', 'Ticket de auditoria', 'ticket_dia.php', 1),
(134, 'O5f05eb41c78835.16429705', 154, 12, 'Cuentas por pagar Proveedor', 'Cuentas por pagar Proveedor', 'admin_cxp.php', 0),
(134, 'O5f05eb41c78835.16429705', 155, 12, 'Realizar Abono', 'Realizar Abono', 'realizar_abono.php', 0);

-- --------------------------------------------------------

--
-- Table structure for table `movimiento_caja_tipo`
--

CREATE TABLE `movimiento_caja_tipo` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `ingreso` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `movimiento_producto`
--

CREATE TABLE `movimiento_producto` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_movimiento` int(11) NOT NULL,
  `correlativo` varchar(20) NOT NULL,
  `concepto` varchar(250) NOT NULL,
  `total` float NOT NULL,
  `tipo` varchar(13) CHARACTER SET utf8 NOT NULL,
  `proceso` varchar(50) NOT NULL,
  `referencia` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id_suc_origen` int(11) NOT NULL,
  `id_suc_destino` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_traslado` int(11) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `conteo` varchar(100) NOT NULL,
  `sistema` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `movimiento_producto_detalle`
--

CREATE TABLE `movimiento_producto_detalle` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_detalle` int(11) NOT NULL,
  `id_movimiento` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_server_prod` int(11) NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `id_server_presen` int(11) NOT NULL,
  `cantidad` decimal(11,4) NOT NULL,
  `costo` float NOT NULL,
  `precio` float NOT NULL,
  `stock_anterior` decimal(11,4) NOT NULL,
  `stock_actual` decimal(11,4) NOT NULL,
  `proceso` varchar(50) NOT NULL,
  `referencia` int(11) NOT NULL,
  `lote` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `movimiento_producto_pendiente`
--

CREATE TABLE `movimiento_producto_pendiente` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_detalle` int(11) NOT NULL,
  `id_movimiento` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_server_prod` int(11) NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `id_server_presen` int(11) NOT NULL,
  `cantidad` decimal(11,4) NOT NULL,
  `costo` decimal(11,4) NOT NULL,
  `precio` decimal(11,4) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `repuesto` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `movimiento_stock_ubicacion`
--

CREATE TABLE `movimiento_stock_ubicacion` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_movimiento` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_server_prod` int(11) NOT NULL,
  `id_origen` int(11) NOT NULL,
  `id_destino` int(11) NOT NULL,
  `cantidad` decimal(11,4) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `anulada` int(11) NOT NULL,
  `afecta` int(11) NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `id_server_presen` int(11) NOT NULL,
  `id_mov_prod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mov_caja`
--

CREATE TABLE `mov_caja` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(1) DEFAULT NULL,
  `id_movimiento` int(11) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `id_empleado` int(1) DEFAULT NULL,
  `idtransace` int(11) NOT NULL,
  `alias_tipodoc` char(4) NOT NULL,
  `numero_doc` varchar(30) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `concepto` varchar(50) DEFAULT NULL,
  `corte` int(1) DEFAULT NULL,
  `cobrado` tinyint(1) NOT NULL,
  `cliente` varchar(40) NOT NULL,
  `duui` varchar(10) NOT NULL,
  `entrada` tinyint(1) NOT NULL,
  `salida` tinyint(1) NOT NULL,
  `anulado` tinyint(1) NOT NULL,
  `turno` int(11) NOT NULL,
  `id_apertura` int(11) NOT NULL,
  `nombre_recibe` varchar(100) NOT NULL,
  `nombre_autoriza` varchar(100) NOT NULL,
  `nombre_proveedor` varchar(100) NOT NULL,
  `iva` float NOT NULL,
  `id_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mov_cta_banco`
--

CREATE TABLE `mov_cta_banco` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_movimiento` int(11) NOT NULL,
  `id_cuenta` int(11) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `alias_tipodoc` varchar(15) NOT NULL,
  `numero_doc` varchar(50) NOT NULL,
  `entrada` float NOT NULL,
  `salida` float NOT NULL,
  `saldo` float NOT NULL,
  `fecha` date NOT NULL,
  `responsable` varchar(150) NOT NULL,
  `concepto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `municipio`
--

CREATE TABLE `municipio` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_municipio` int(11) NOT NULL COMMENT 'ID del municipio',
  `nombre_municipio` varchar(60) NOT NULL COMMENT 'Nombre del municipio',
  `id_departamento_municipio` int(11) NOT NULL COMMENT 'Departamento al cual pertenece el municipio'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Municipios de El Salvador';

--
-- Dumping data for table `municipio`
--

INSERT INTO `municipio` (`id_server`, `unique_id`, `id_municipio`, `nombre_municipio`, `id_departamento_municipio`) VALUES
(1, 'O5f05eb4264d952.15071005', 1, 'Ahuachapán', 1),
(2, 'O5f05eb4265ea72.47300429', 2, 'Jujutla', 1),
(3, 'O5f05eb4267f051.21192471', 3, 'Atiquizaya', 1),
(4, 'O5f05eb426a1481.75000987', 4, 'Concepción de Ataco', 1),
(5, 'O5f05eb426c2638.25299786', 5, 'El Refugio', 1),
(6, 'O5f05eb426e3358.06449427', 6, 'Guaymango', 1),
(7, 'O5f05eb42704a19.90851594', 7, 'Apaneca', 1),
(8, 'O5f05eb42725ce0.10749991', 8, 'San Francisco Menéndez', 1),
(9, 'O5f05eb427472f8.95859854', 9, 'San Lorenzo', 1),
(10, 'O5f05eb427682d2.47552413', 10, 'San Pedro Puxtla', 1),
(11, 'O5f05eb427890d9.61936292', 11, 'Tacuba', 1),
(12, 'O5f05eb427a9be4.60522321', 12, 'Turín', 1),
(13, 'O5f05eb427f1a54.79660319', 13, 'Candelaria de la Frontera', 2),
(14, 'O5f05eb42811745.68066749', 14, 'Chalchuapa', 2),
(15, 'O5f05eb42833143.17645082', 15, 'Coatepeque', 2),
(16, 'O5f05eb428537b6.74300373', 16, 'El Congo', 2),
(17, 'O5f05eb42874a19.86408779', 17, 'El Porvenir', 2),
(18, 'O5f05eb42895ef7.61512454', 18, 'Masahuat', 2),
(19, 'O5f05eb428b6a43.87092835', 19, 'Metapán', 2),
(20, 'O5f05eb42902040.21580209', 20, 'San Antonio Pajonal', 2),
(21, 'O5f05eb42924d29.87679285', 21, 'San Sebastián Salitrillo', 2),
(22, 'O5f05eb42943e20.02147314', 22, 'Santa Ana', 2),
(23, 'O5f05eb42964de8.91476992', 23, 'Santa Rosa Guachipilín', 2),
(24, 'O5f05eb42985802.56729999', 24, 'Santiago de la Frontera', 2),
(25, 'O5f05eb429a8963.83041979', 25, 'Texistepeque', 2),
(26, 'O5f05eb429c7183.58337306', 26, 'Acajutla', 3),
(27, 'O5f05eb429ea416.78572954', 27, 'Armenia', 3),
(28, 'O5f05eb42a0c047.70284121', 28, 'Caluco', 3),
(29, 'O5f05eb42a2d5e8.80867855', 29, 'Cuisnahuat', 3),
(30, 'O5f05eb42a4e2f8.06252531', 30, 'Izalco', 3),
(31, 'O5f05eb42a6f608.71345193', 31, 'Juayúa', 3),
(32, 'O5f05eb42a91472.33209333', 32, 'Nahuizalco', 3),
(33, 'O5f05eb42ad7680.71065217', 33, 'Nahulingo', 3),
(34, 'O5f05eb42af7eb6.33729739', 34, 'Salcoatitán', 3),
(35, 'O5f05eb42b19201.45637142', 35, 'San Antonio del Monte', 3),
(36, 'O5f05eb42b3ac84.84193324', 36, 'San Julián', 3),
(37, 'O5f05eb42b5b759.58332190', 37, 'Santa Catarina Masahuat', 3),
(38, 'O5f05eb42b7c234.95068298', 38, 'Santa Isabel Ishuatán', 3),
(39, 'O5f05eb42b9d785.57966286', 39, 'Santo Domingo de Guzmán', 3),
(40, 'O5f05eb42bbf058.86086664', 40, 'Sonsonate', 3),
(41, 'O5f05eb42bdfce9.65358959', 41, 'Sonzacate', 3),
(42, 'O5f05eb42c00d87.97895616', 42, 'Alegría', 4),
(43, 'O5f05eb42c21b35.23161731', 43, 'Berlín', 11),
(44, 'O5f05eb42c42c20.90100095', 44, 'California', 11),
(45, 'O5f05eb42c63a60.90007833', 45, 'Concepción Batres', 11),
(46, 'O5f05eb42cacb43.85341637', 46, 'El Triunfo', 11),
(47, 'O5f05eb42ccd506.70382492', 47, 'Ereguayquín', 11),
(48, 'O5f05eb42cee9f7.49901962', 48, 'Estanzuelas', 11),
(49, 'O5f05eb42d0f750.62511213', 49, 'Jiquilisco', 11),
(50, 'O5f05eb42d30901.12027912', 50, 'Jucuapa', 11),
(51, 'O5f05eb42d51472.35479417', 51, 'Jucuarán', 11),
(52, 'O5f05eb42d73848.57527076', 52, 'Mercedes Umaña', 11),
(53, 'O5f05eb42d935c1.39809065', 53, 'Nueva Granada', 11),
(54, 'O5f05eb42db4e08.22288885', 54, 'Ozatlán', 11),
(55, 'O5f05eb42dd57a6.67982781', 55, 'Puerto El Triunfo', 11),
(56, 'O5f05eb42df83d1.54884971', 56, 'San Agustín', 11),
(57, 'O5f05eb42e32ba2.87235273', 57, 'San Buenaventura', 11),
(58, 'O5f05eb42e55075.70708293', 58, 'San Dionisio', 11),
(59, 'O5f05eb42e75fe0.00677079', 59, 'San Francisco Javier', 11),
(60, 'O5f05eb42e97249.69563140', 60, 'Santa Elena', 11),
(61, 'O5f05eb42eb8732.03756217', 61, 'Santa María', 11),
(62, 'O5f05eb42ed8198.32347920', 62, 'Santiago de María', 11),
(63, 'O5f05eb42efaf67.09449228', 63, 'Tecapán', 11),
(64, 'O5f05eb42f1ce06.43393936', 64, 'Usulután', 11),
(65, 'O5f05eb42f3e233.37455682', 65, 'Carolina', 13),
(66, 'O5f05eb43029053.54346498', 66, 'Chapeltique', 13),
(67, 'O5f05eb4304aac5.67620258', 67, 'Chinameca', 13),
(68, 'O5f05eb4306c906.48720060', 68, 'Chirilagua', 13),
(69, 'O5f05eb4308c941.64825385', 69, 'Ciudad Barrios', 13),
(70, 'O5f05eb430ada27.10262517', 70, 'Comacarán', 13),
(71, 'O5f05eb430ce605.86122295', 71, 'El Tránsito', 13),
(72, 'O5f05eb430f0226.46271024', 72, 'Lolotique', 13),
(73, 'O5f05eb431116e9.12914046', 73, 'Moncagua', 13),
(74, 'O5f05eb431329c4.06632274', 74, 'Nueva Guadalupe', 13),
(75, 'O5f05eb43156539.66160814', 75, 'Nuevo Edén de San Juan', 13),
(76, 'O5f05eb43175cf7.31457112', 76, 'Quelepa', 13),
(77, 'O5f05eb43197706.76543826', 77, 'San Antonio del Mosco', 13),
(78, 'O5f05eb431b7cf0.62422369', 78, 'San Gerardo', 13),
(79, 'O5f05eb431fed59.30370748', 79, 'San Jorge', 13),
(80, 'O5f05eb4321eec1.45189537', 80, 'San Luis de la Reina', 13),
(81, 'O5f05eb43240712.48344769', 81, 'San Miguel', 13),
(82, 'O5f05eb432618d5.91097735', 82, 'San Rafael Oriente', 13),
(83, 'O5f05eb43284a81.42444058', 83, 'Sesori', 13),
(84, 'O5f05eb432a4a23.22092227', 84, 'Uluazapa', 13),
(85, 'O5f05eb432c5e86.89033440', 85, 'Arambala', 12),
(86, 'O5f05eb432e6814.55484062', 86, 'Cacaopera', 12),
(87, 'O5f05eb433085f4.08007347', 87, 'Chilanga', 12),
(88, 'O5f05eb43328a97.90608276', 88, 'Corinto', 12),
(89, 'O5f05eb43349d89.88774485', 89, 'Delicias de Concepción', 12),
(90, 'O5f05eb4336af43.87810935', 90, 'El Divisadero', 12),
(91, 'O5f05eb4338d691.77333479', 91, 'El Rosario', 12),
(92, 'O5f05eb433ad522.08954035', 92, 'Gualococti', 12),
(93, 'O5f05eb433fa904.49888055', 93, 'Guatajiagua', 12),
(94, 'O5f05eb4341ba60.95447922', 94, 'Joateca', 12),
(95, 'O5f05eb4343dc42.95830046', 95, 'Jocoaitique', 12),
(96, 'O5f05eb4345dc29.12465360', 96, 'Jocoro', 12),
(97, 'O5f05eb4347f0e2.83946693', 97, 'Lolotiquillo', 12),
(98, 'O5f05eb434a0b54.38512421', 98, 'Meanguera', 12),
(99, 'O5f05eb434c2919.95373960', 99, 'Osicala', 12),
(100, 'O5f05eb4350b078.43105775', 100, 'Perquín', 12),
(101, 'O5f05eb4352bc14.51191186', 101, 'San Carlos', 12),
(102, 'O5f05eb4354d534.05069864', 102, 'San Fernando', 12),
(103, 'O5f05eb43570036.04604032', 103, 'San Francisco Gotera', 12),
(104, 'O5f05eb4358fee8.43876916', 104, 'San Isidro', 12),
(105, 'O5f05eb435b0dd5.77072355', 105, 'San Simón', 12),
(106, 'O5f05eb435d26b5.21794520', 106, 'Sensembra', 12),
(107, 'O5f05eb435f4ba7.63030805', 107, 'Sociedad', 12),
(108, 'O5f05eb43615960.58493714', 108, 'Torola', 12),
(109, 'O5f05eb436382f8.01080123', 109, 'Yamabal', 12),
(110, 'O5f05eb4365a832.07581480', 110, 'Yoloaiquín', 12),
(111, 'O5f05eb4367b440.37051463', 111, 'La Unión', 14),
(112, 'O5f05eb4369b6d0.05875922', 112, 'San Alejo', 14),
(113, 'O5f05eb436e08f0.85916902', 113, 'Yucuaiquín', 14),
(114, 'O5f05eb43701c02.38900619', 114, 'Conchagua', 14),
(115, 'O5f05eb437240b6.72431998', 115, 'Intipucá', 14),
(116, 'O5f05eb43744c35.53626094', 116, 'San José', 14),
(117, 'O5f05eb43765e25.74171455', 117, 'El Carmen', 14),
(118, 'O5f05eb43787312.01082444', 118, 'Yayantique', 14),
(119, 'O5f05eb437a86e6.43588326', 119, 'Bolívar', 14),
(120, 'O5f05eb437c9405.45366969', 120, 'Meanguera del Golfo', 14),
(121, 'O5f05eb437ea4f3.40548376', 121, 'Santa Rosa de Lima', 14),
(122, 'O5f05eb4380c3a2.36689096', 122, 'Pasaquina', 14),
(123, 'O5f05eb4382f539.91746309', 123, 'ANAMOROS', 14),
(124, 'O5f05eb43865cb0.30855251', 124, 'Nueva Esparta', 14),
(125, 'O5f05eb43887e91.04337986', 125, 'El Sauce', 14),
(126, 'O5f05eb438a8e11.88984619', 126, 'Concepción de Oriente', 14),
(127, 'O5f05eb438cbad6.00073278', 127, 'Polorós', 14),
(128, 'O5f05eb438eca00.26586173', 128, 'Lislique ', 14),
(129, 'O5f05eb4390ce97.62965718', 129, 'Antiguo Cuscatlán', 4),
(130, 'O5f05eb4392e782.16690249', 130, 'Chiltiupán', 4),
(131, 'O5f05eb43950bd7.53431337', 131, 'Ciudad Arce', 4),
(132, 'O5f05eb43971173.96966638', 132, 'Colón', 4),
(133, 'O5f05eb43992a64.38671662', 133, 'Comasagua', 4),
(134, 'O5f05eb439b4d31.70667489', 134, 'Huizúcar', 4),
(135, 'O5f05eb439d85b0.82054150', 135, 'Jayaque', 4),
(136, 'O5f05eb439f8a79.71048352', 136, 'Jicalapa', 4),
(137, 'O5f05eb43a3b956.76906165', 137, 'La Libertad', 4),
(138, 'O5f05eb43a5c2a3.16151455', 138, 'Santa Tecla', 4),
(139, 'O5f05eb43a7e2f7.74842941', 139, 'Nuevo Cuscatlán', 4),
(140, 'O5f05eb43a9ecd9.11754201', 140, 'San Juan Opico', 4),
(141, 'O5f05eb43abf651.44883048', 141, 'Quezaltepeque', 4),
(142, 'O5f05eb43ae0ed3.24688945', 142, 'Sacacoyo', 4),
(143, 'O5f05eb43b01fa1.76900007', 143, 'San José Villanueva', 4),
(144, 'O5f05eb43b4e2e7.99527578', 144, 'San Matías', 4),
(145, 'O5f05eb43b6ed35.03472043', 145, 'San Pablo Tacachico', 4),
(146, 'O5f05eb43b904b7.54054197', 146, 'Talnique', 4),
(147, 'O5f05eb43bb26c2.81158148', 147, 'Tamanique', 4),
(148, 'O5f05eb43bd3935.13786729', 148, 'Teotepeque', 4),
(149, 'O5f05eb43bf51e0.18640656', 149, 'Tepecoyo', 4),
(150, 'O5f05eb43c15a06.79911254', 150, 'Zaragoza', 4),
(151, 'O5f05eb43c383d2.09812516', 151, 'Agua Caliente', 5),
(152, 'O5f05eb43c5a2a6.40045407', 152, 'Arcatao', 5),
(153, 'O5f05eb43c7b346.77973094', 153, 'Azacualpa', 5),
(154, 'O5f05eb43c9bd59.11262361', 154, 'Cancasque', 5),
(155, 'O5f05eb43cbdfd7.12347728', 155, 'Chalatenango', 5),
(156, 'O5f05eb43cded28.78886347', 156, 'Citalá', 5),
(157, 'O5f05eb43d00d78.86427667', 157, 'Comapala', 5),
(158, 'O5f05eb43d22cd4.70034693', 158, 'Concepción Quezaltepeque', 5),
(159, 'O5f05eb43d44100.51740729', 159, 'Dulce Nombre de María', 5),
(160, 'O5f05eb43d64fd3.34748606', 160, 'El Carrizal', 5),
(161, 'O5f05eb43d86e37.46591278', 161, 'El Paraíso', 5),
(162, 'O5f05eb43da9063.98127434', 162, 'La Laguna', 5),
(163, 'O5f05eb43dc9d20.74587296', 163, 'La Palma', 5),
(164, 'O5f05eb43deb548.24007242', 164, 'La Reina', 5),
(165, 'O5f05eb43e0cf72.72980681', 165, 'Las Vueltas', 5),
(166, 'O5f05eb43e2da30.93023545', 166, 'Nueva Concepción', 5),
(167, 'O5f05eb43e50482.14655158', 167, 'Nueva Trinidad', 5),
(168, 'O5f05eb43e70595.24075927', 168, 'Nombre de Jesús', 5),
(169, 'O5f05eb43e91b42.37983337', 169, 'Ojos de Agua', 5),
(170, 'O5f05eb43ecefa1.07515783', 170, 'Potonico', 5),
(171, 'O5f05eb43ef1979.46162784', 171, 'San Antonio de la Cruz', 5),
(172, 'O5f05eb43f12909.46587691', 172, 'San Antonio Los Ranchos', 5),
(173, 'O5f05eb43f33dd2.59992011', 173, 'San Fernando', 5),
(174, 'O5f05eb440132c2.56115941', 174, 'San Francisco Lempa', 5),
(175, 'O5f05eb44034c57.66724213', 175, 'San Francisco Morazán', 5),
(176, 'O5f05eb44056369.02204107', 176, 'San Ignacio', 5),
(177, 'O5f05eb44077196.59106514', 177, 'San Isidro Labrador', 5),
(178, 'O5f05eb44097dd5.53296263', 178, 'Las Flores', 5),
(179, 'O5f05eb440ba167.61483562', 179, 'San Luis del Carmen', 5),
(180, 'O5f05eb440dab97.74794336', 180, 'San Miguel de Mercedes', 5),
(181, 'O5f05eb440fc222.54723805', 181, 'San Rafael', 5),
(182, 'O5f05eb4411d1e1.80466872', 182, 'Santa Rita', 5),
(183, 'O5f05eb44162de1.72653055', 183, 'Tejutla', 5),
(184, 'O5f05eb44183749.29254038', 184, 'Cojutepeque', 7),
(185, 'O5f05eb441a4c05.27365158', 185, 'Candelaria', 7),
(186, 'O5f05eb441c65a6.91473808', 186, 'El Carmen', 7),
(187, 'O5f05eb441e7fd9.97684321', 187, 'El Rosario', 7),
(188, 'O5f05eb44208b93.95752804', 188, 'Monte San Juan', 7),
(189, 'O5f05eb4422a624.91391840', 189, 'Oratorio de Concepción', 7),
(190, 'O5f05eb4424d702.42295795', 190, 'San Bartolomé Perulapía', 7),
(191, 'O5f05eb4426fe35.58142984', 191, 'San Cristóbal', 7),
(192, 'O5f05eb4428ffb1.36565676', 192, 'San José Guayabal', 7),
(193, 'O5f05eb442b1747.64101753', 193, 'San Pedro Perulapán', 7),
(194, 'O5f05eb442d2432.26517052', 194, 'San Rafael Cedros', 7),
(195, 'O5f05eb442f4745.39970580', 195, 'San Ramón', 7),
(196, 'O5f05eb44316be5.55093327', 196, 'Santa Cruz Analquito', 7),
(197, 'O5f05eb44337a56.14023542', 197, 'Santa Cruz Michapa', 7),
(198, 'O5f05eb443594e7.84750089', 198, 'Suchitoto', 7),
(199, 'O5f05eb443864d8.64866099', 199, 'Tenancingo', 7),
(200, 'O5f05eb443a7d65.92947112', 200, 'Aguilares', 6),
(201, 'O5f05eb443c8475.65666050', 201, 'Apopa', 6),
(202, 'O5f05eb443e9968.39304034', 202, 'Ayutuxtepeque', 6),
(203, 'O5f05eb4440c002.73328974', 203, 'Cuscatancingo', 6),
(204, 'O5f05eb4442cdb6.55099914', 204, 'Ciudad Delgado', 6),
(205, 'O5f05eb4444e499.31684350', 205, 'El Paisnal', 6),
(206, 'O5f05eb4446eb88.77142559', 206, 'Guazapa', 6),
(207, 'O5f05eb44491940.91071840', 207, 'Ilopango', 6),
(208, 'O5f05eb444b2a47.22613167', 208, 'Mejicanos', 6),
(209, 'O5f05eb444d3fc1.96627178', 209, 'Nejapa', 6),
(210, 'O5f05eb444f40e0.20552756', 210, 'Panchimalco', 6),
(211, 'O5f05eb44516469.42697774', 211, 'Rosario de Mora', 6),
(212, 'O5f05eb4455a5d1.21969657', 212, 'San Marcos', 6),
(213, 'O5f05eb4457a8c4.23190478', 213, 'San Martín', 6),
(214, 'O5f05eb4459d143.43937866', 214, 'San Salvador', 6),
(215, 'O5f05eb445bd872.80905098', 215, 'Santiago Texacuangos', 6),
(216, 'O5f05eb445ddb52.33034181', 216, 'Santo Tomás', 6),
(217, 'O5f05eb445ffeb7.88786232', 217, 'Soyapango', 6),
(218, 'O5f05eb44621477.16404241', 218, 'Tonacatepeque', 6),
(219, 'O5f05eb44642a89.53125309', 219, 'Zacatecoluca', 8),
(220, 'O5f05eb44663b92.84389355', 220, 'Cuyultitán', 8),
(221, 'O5f05eb44684716.06548139', 221, 'El Rosario', 8),
(222, 'O5f05eb446a6885.53363669', 222, 'Jerusalén', 8),
(223, 'O5f05eb446c9869.72549157', 223, 'Mercedes La Ceiba', 8),
(224, 'O5f05eb446e9740.34568326', 224, 'Olocuilta', 8),
(225, 'O5f05eb4472f793.55978479', 225, 'Paraíso de Osorio', 8),
(226, 'O5f05eb44750482.08296257', 226, 'San Antonio Masahuat', 8),
(227, 'O5f05eb447728a5.60939595', 227, 'San Emigdio', 8),
(228, 'O5f05eb44793575.82334506', 228, 'San Francisco Chinameca', 8),
(229, 'O5f05eb447b5428.18831978', 229, 'San Pedro Masahuat', 8),
(230, 'O5f05eb447d7057.24976777', 230, 'San Juan Nonualco', 8),
(231, 'O5f05eb447f8a89.30305300', 231, 'San Juan Talpa', 8),
(232, 'O5f05eb44840236.55670989', 232, 'San Juan Tepezontes', 8),
(233, 'O5f05eb448614c1.93648435', 233, 'San Luis La Herradura', 8),
(234, 'O5f05eb44882a57.26774057', 234, 'San Luis Talpa', 8),
(235, 'O5f05eb448a64a0.72398721', 235, 'San Miguel Tepezontes', 8),
(236, 'O5f05eb448c5949.51698908', 236, 'San Pedro Nonualco', 8),
(237, 'O5f05eb448e6c37.32770062', 237, 'San Rafael Obrajuelo', 8),
(238, 'O5f05eb44907f69.35989729', 238, 'Santa María Ostuma', 8),
(239, 'O5f05eb4492ab67.21133439', 239, 'Santiago Nonualco', 8),
(240, 'O5f05eb44949dc5.76415345', 240, 'Tapalhuaca', 8),
(241, 'O5f05eb4498a704.23388914', 241, 'Cinquera', 9),
(242, 'O5f05eb449952b7.57546222', 242, 'Dolores', 9),
(243, 'O5f05eb449b6136.71549893', 243, 'Guacotecti', 9),
(244, 'O5f05eb449d9e36.72393453', 244, 'Ilobasco', 9),
(245, 'O5f05eb449fe279.44820497', 245, 'Jutiapa', 9),
(246, 'O5f05eb44a1f0e0.22683119', 246, 'San Isidro', 9),
(247, 'O5f05eb44a3ffd4.49844589', 247, 'Sensuntepeque', 9),
(248, 'O5f05eb44a62268.92413116', 248, 'Tejutepeque', 9),
(249, 'O5f05eb44a82547.93617534', 249, 'Victoria', 9),
(250, 'O5f05eb44aa4284.11847000', 250, 'Apastepeque', 10),
(251, 'O5f05eb44ac5323.67747106', 251, 'Guadalupe', 10),
(252, 'O5f05eb44ae81f4.44127984', 252, 'San Cayetano Istepeque', 10),
(253, 'O5f05eb44b08eb3.47856753', 253, 'San Esteban Catarina', 10),
(254, 'O5f05eb44b29a65.99025393', 254, 'San Ildefonso', 10),
(255, 'O5f05eb44b4b4f8.20837842', 255, 'San Lorenzo', 10),
(256, 'O5f05eb44b6d0b9.09618531', 256, 'San Sebastián', 10),
(257, 'O5f05eb44b8d1e7.79856619', 257, 'San Vicente', 10),
(258, 'O5f05eb44baff40.20065560', 258, 'Santa Clara', 10),
(259, 'O5f05eb44bd11d9.51326535', 259, 'Santo Domingo', 10),
(260, 'O5f05eb44bf36b8.02873900', 260, 'Tecoluca', 10),
(261, 'O5f05eb44c13e63.25290676', 261, 'Tepetitán', 10),
(262, 'O5f05eb44c34e58.45874013', 262, 'Verapaz', 10);

-- --------------------------------------------------------

--
-- Table structure for table `nc_corte`
--

CREATE TABLE `nc_corte` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_nc` int(11) NOT NULL,
  `id_corte` int(11) NOT NULL,
  `n_nc` int(11) NOT NULL,
  `t_nc` double NOT NULL,
  `afecta` varchar(30) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `exento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `paises`
--

CREATE TABLE `paises` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id` int(11) NOT NULL,
  `iso` char(2) DEFAULT NULL,
  `nombre` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pedido`
--

CREATE TABLE `pedido` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `numero_doc` varchar(30) NOT NULL,
  `total` float NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `anulada` tinyint(1) NOT NULL DEFAULT '0',
  `id_sucursal` int(11) NOT NULL,
  `finalizada` tinyint(1) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `fecha_factura` date NOT NULL,
  `fecha_entrega` date NOT NULL,
  `lugar_entrega` varchar(80) CHARACTER SET utf8 NOT NULL,
  `transporte` varchar(20) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `id_municipio` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `observaciones` text CHARACTER SET utf8 NOT NULL,
  `hash` varchar(60) NOT NULL,
  `hora_pedido` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pedido_detalle`
--

CREATE TABLE `pedido_detalle` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_pedido_detalle` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_prod_serv` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` float NOT NULL,
  `subtotal` float NOT NULL,
  `combo` tinyint(1) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `tipo_prod_serv` varchar(30) NOT NULL COMMENT 'PRODUCTO o SERVICIO',
  `id_sucursal` int(11) NOT NULL,
  `cant_facturado` float NOT NULL,
  `unidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pedido_prov`
--

CREATE TABLE `pedido_prov` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_pedido_prov` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `numero` varchar(30) NOT NULL,
  `total` float NOT NULL,
  `id_empleado_proceso` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `fecha_factura` date NOT NULL,
  `numero_factura` varchar(50) NOT NULL,
  `id_empleado_factura` int(11) NOT NULL,
  `fecha_entrega` date NOT NULL,
  `lugar_entrega` varchar(80) CHARACTER SET utf8 NOT NULL,
  `reservado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pedido_prov_detalle`
--

CREATE TABLE `pedido_prov_detalle` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_pedido_detalle` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` decimal(11,4) NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `cantidad_enviar` decimal(11,4) NOT NULL,
  `precio_venta` decimal(11,4) NOT NULL,
  `subtotal` decimal(11,2) NOT NULL,
  `tipo_prod_serv` varchar(30) NOT NULL COMMENT 'PRODUCTO o SERVICIO',
  `id_sucursal` int(11) NOT NULL,
  `cant_facturado` decimal(11,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posicion`
--

CREATE TABLE `posicion` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_posicion` int(11) NOT NULL,
  `id_ubicacion` int(11) NOT NULL,
  `id_estante` int(11) NOT NULL,
  `posicion` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `precio_aut`
--

CREATE TABLE `precio_aut` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id` int(11) NOT NULL,
  `clave` varchar(6) NOT NULL,
  `aplicado` tinyint(4) NOT NULL,
  `id_sucursal` tinyint(4) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_generado` date NOT NULL,
  `fecha_aplicado` date NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `precio_aut`
--

INSERT INTO `precio_aut` (`id_server`, `unique_id`, `id`, `clave`, `aplicado`, `id_sucursal`, `id_usuario`, `fecha_generado`, `fecha_aplicado`, `precio`) VALUES
(1, 'O5f05eb44c9ab72.54213199', 1, 'ca9mj8', 1, 1, 1, '2020-06-23', '2020-06-23', 3),
(0, 'S5f9dd8ce571579.21050526', 2, 'y1asif', 1, 1, 9, '2020-10-31', '2020-10-31', 4);

-- --------------------------------------------------------

--
-- Table structure for table `presentacion`
--

CREATE TABLE `presentacion` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `presentacion`
--

INSERT INTO `presentacion` (`id_server`, `unique_id`, `id_sucursal`, `id_presentacion`, `nombre`, `descripcion`) VALUES
(0, 'S6074ab4e752410.85980606', 0, 1, 'CAJA AMPOLLAS BEBIBLES', '20 AMPOLLAS'),
(0, 'S6074acd6c41c24.60570859', 0, 2, 'FRASCO 30 ML', ''),
(0, 'S6074adef467f66.95384073', 0, 3, 'FRASCO 60 ML', ''),
(0, 'S6074adfcb48b66.86835631', 0, 4, 'FRASCO 120 ML', 'VIA ORAL'),
(0, 'S6074ae1e4bef15.35153202', 0, 5, 'FRASCO 450 ML', 'VIA ORAL'),
(0, 'S6074aeaca3eca9.60334598', 0, 6, 'FRASCO 450 ML  VIDRIO', ''),
(0, 'S6074afbc4b4065.39736658', 0, 7, 'CAJA 20 UN', ''),
(0, 'S6074b03e52fc83.98744711', 0, 8, 'FRASCO GOTAS', ''),
(0, 'S6074b0507661e5.28959720', 0, 9, ' TARRO', ''),
(0, 'S6074b0689ced82.07485516', 0, 10, 'CAJA 30 UN', ''),
(0, 'S6074b07b3d88c8.34778019', 0, 11, 'CAJA 40 UN', ''),
(0, 'S6074b088f3de84.97958185', 0, 12, 'CAJA 60 UN', ''),
(0, 'S6074b0961afe64.05755578', 0, 13, 'CAJA 100 UN', ''),
(0, 'S6074b0bfa2d244.60395741', 0, 14, 'TUBO', ''),
(0, 'S6074b0f2e20c80.93879050', 0, 15, 'FRASCO', ''),
(0, 'S6074b1441c1046.66224406', 0, 16, 'GALON', ''),
(0, 'S6074b18d0a88b4.38317687', 0, 17, 'TABLETA', ''),
(0, 'S6074b198db5fe7.81318807', 0, 18, 'SPRAY', ''),
(0, 'S6074b1e265cb34.84605550', 0, 19, 'OVULOS', ''),
(0, 'S6074b2dba69fa1.44118674', 0, 20, 'TABLETA ESFERVECENTE', ''),
(0, 'S6074b2f8eff046.04863376', 0, 21, 'SOBRE', ''),
(0, 'S6074b30a0380c1.17178742', 0, 22, 'GEL CAPS', ''),
(0, 'S6074b327a1eb74.53029947', 0, 23, 'AMPOLLA INYECTABLE', ''),
(0, 'S6074b3531abd27.58728100', 0, 24, 'INHALADOR', ''),
(0, 'S6074b366480963.44687573', 0, 25, 'BLISTER', ''),
(0, 'S6074b39de46b43.16219632', 0, 26, 'SUPOSITORIO', ''),
(0, 'S6074b3b5ca34f5.36655875', 0, 27, 'UNIDAD', ''),
(0, 'S6074b41b4b75d5.64569338', 0, 28, 'CREMA VAGINAL', ''),
(0, 'S6074b46310bf57.47220309', 0, 29, 'CREMA', ''),
(0, 'S6074b5567eba22.93932852', 0, 30, 'CAJA', ''),
(0, 'S6075dc113a31b7.96397301', 0, 31, 'BOLSA', ''),
(0, 'S60770ac0ccb569.69618284', 0, 32, 'FRASCO 100 ML', ''),
(0, 'S60786dc0281722.04573670', 0, 33, 'KIT', ''),
(0, 'S60a2fb74dcfcb4.83487380', 0, 34, 'Vial', '');

-- --------------------------------------------------------

--
-- Table structure for table `presentacion_producto`
--

CREATE TABLE `presentacion_producto` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_pp` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_server_prod` int(11) NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `descripcion` varchar(20) CHARACTER SET utf8 NOT NULL,
  `unidad` float NOT NULL,
  `costo` decimal(10,4) NOT NULL,
  `costo_s_iva` int(11) NOT NULL,
  `precio` decimal(12,4) NOT NULL,
  `precio1` decimal(12,4) NOT NULL,
  `precio2` decimal(12,4) NOT NULL,
  `precio3` decimal(12,4) NOT NULL,
  `precio4` decimal(12,4) NOT NULL,
  `precio5` decimal(12,4) NOT NULL,
  `precio6` decimal(12,4) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `barcode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `presentacion_producto`
--

INSERT INTO `presentacion_producto` (`id_server`, `unique_id`, `id_pp`, `id_producto`, `id_server_prod`, `id_presentacion`, `descripcion`, `unidad`, `costo`, `costo_s_iva`, `precio`, `precio1`, `precio2`, `precio3`, `precio4`, `precio5`, `precio6`, `activo`, `barcode`) VALUES
(0, 'S6075b47929b6d5.40141741', 2, 2, 0, 13, 'CAJA DE 100 TAB', 100, '8.4500', 0, '10.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '011418699182'),
(0, 'S6075ba085e45d0.24247002', 3, 3, 0, 13, 'CAJA 100 TAB', 100, '7.1800', 0, '11.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '011418030268'),
(0, 'S6075ba4b5d64e5.33852561', 5, 3, 0, 25, '1X10', 10, '0.7180', 0, '1.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075baf5a6d722.90745328', 6, 2, 0, 25, '1X10', 10, '0.8450', 0, '1.3500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075bb2c8ab2a5.15596214', 7, 2, 0, 27, '1', 1, '0.0845', 0, '0.1500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075bc7785cce4.93232965', 8, 4, 0, 30, '1X100 TAB', 100, '4.9100', 0, '6.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075bc9a32a8a9.50616797', 9, 4, 0, 25, '1X10 TAB', 10, '0.4910', 0, '0.6500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075bd1c03b545.17788365', 10, 4, 0, 27, '1', 1, '0.0491', 0, '0.0700', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075bef4444b43.78591040', 11, 5, 0, 30, '1X50 ', 50, '8.9000', 0, '12.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075bf210f2097.26772798', 12, 5, 0, 27, '1', 1, '0.1780', 0, '0.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075c16a64d551.78221234', 13, 6, 0, 30, '1X60', 60, '7.9020', 0, '12.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075c1ad2888e7.70484249', 14, 6, 0, 27, '1', 1, '0.1317', 0, '0.2100', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075c326e83762.32405479', 15, 7, 0, 30, '1X20 SOBRES', 20, '7.8000', 0, '20.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075c4f0b52ae8.11669490', 17, 8, 0, 30, '1X60 TAB', 60, '14.8680', 0, '16.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075c5093ff509.17268594', 18, 8, 0, 27, '1', 1, '0.2478', 0, '0.2800', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075c6321cba18.67402110', 19, 9, 0, 30, '1X100 TAB', 100, '13.4100', 0, '26.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075c66a6e1f13.42848381', 20, 9, 0, 27, '1', 1, '0.1341', 0, '0.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075d027d75717.73385393', 23, 10, 0, 30, '1X36 TAB', 36, '6.4200', 0, '8.6100', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075d1e22a4e55.16614249', 25, 10, 0, 27, '1', 1, '0.1783', 0, '0.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075d5e914ee63.73502098', 26, 11, 0, 30, '1X50 SBS', 50, '26.3180', 0, '34.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075d60e54aab7.96554838', 27, 11, 0, 27, '1', 1, '0.5264', 0, '0.6800', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075d6f2216008.12376676', 28, 12, 0, 8, '1', 1, '4.4700', 0, '5.8100', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075d80d489455.28035121', 29, 13, 0, 30, '1X 100 CAP', 100, '11.8500', 0, '16.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075d82f92d359.60952660', 30, 13, 0, 27, '1', 1, '0.1185', 0, '0.1700', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075d9e85a4ae8.66806775', 32, 14, 0, 30, '1X200 TAB', 200, '18.3274', 0, '30.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075dd8e570872.27237916', 34, 15, 0, 31, '1X100 SBS', 100, '13.4600', 0, '17.4800', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075ddbabbf087.51257867', 35, 15, 0, 21, 'SOBRE', 1, '0.1345', 0, '0.1748', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075deb7a080c9.14497485', 36, 16, 0, 30, '1X100 CAP', 100, '31.6700', 0, '46.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075dfab405878.63612457', 38, 17, 0, 8, 'GOTERO', 1, '3.5900', 0, '4.6700', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075e8b155acb9.08094740', 39, 9, 0, 25, '1X4', 4, '0.5364', 0, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '7410002602660'),
(0, 'S6075ef084b2860.82666458', 40, 18, 0, 30, '1X50 COMP', 50, '24.9750', 0, '32.4670', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075ef3512f0b4.12072389', 41, 18, 0, 27, '1', 1, '0.4995', 0, '0.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075f098804f76.49301737', 42, 19, 0, 31, '1X50 SBS', 50, '3.0950', 0, '5.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075f0d4003ba1.18371583', 43, 19, 0, 27, '1 SOBRE', 1, '0.0619', 0, '0.1250', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075f26b50b555.79914806', 44, 20, 0, 30, '1X36 TAB', 36, '3.9384', 0, '5.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075f45baaa216.87223755', 46, 21, 0, 30, '1X100 UN', 100, '1.2380', 0, '2.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075f5223709c7.87802447', 47, 22, 0, 30, '1X100', 100, '1.1500', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075f56232e743.52769757', 48, 22, 0, 27, '1', 1, '0.0115', 0, '0.0500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075f6de688b87.61105797', 49, 23, 0, 30, '1X60 GRAGEAS', 60, '10.2660', 0, '15.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075f70c947651.39682152', 50, 23, 0, 27, '1 GRAGEA', 1, '0.1711', 0, '0.2800', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075f89b3d82b6.18347292', 51, 24, 0, 30, '1X36', 36, '8.1865', 0, '12.3800', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075f8c0cde565.99209907', 52, 24, 0, 27, '1 CAPS', 1, '0.2274', 0, '0.3500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075fc78d703c8.35790218', 53, 25, 0, 30, '1X120 TAB', 120, '29.8247', 0, '38.7700', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075fcbae94c27.86186592', 54, 25, 0, 25, '1X5 TAB', 5, '1.2427', 0, '1.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075fcf21f9be0.92100278', 55, 25, 0, 27, '1', 1, '0.2485', 0, '0.4500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075fe68dd6806.62836727', 56, 26, 0, 30, '1X120 TAB', 120, '29.8247', 0, '38.7700', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075fe9f266394.33305651', 57, 26, 0, 25, '1X5 TAB', 5, '1.2427', 0, '1.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6075feb36d47a6.23648626', 58, 26, 0, 27, '1', 1, '0.2485', 0, '0.4500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6076000bb146b6.89255688', 59, 27, 0, 23, '1', 1, '5.9650', 0, '7.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607601058dda89.94353184', 60, 28, 0, 23, '1', 1, '6.9919', 0, '9.0870', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6076024460e389.72304104', 61, 29, 0, 30, '1X100 TAB', 100, '6.4100', 0, '7.9900', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60760259552681.46585894', 62, 29, 0, 27, '1', 1, '0.0641', 0, '0.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607604093b4bc8.27717104', 63, 30, 0, 30, '1X300 CARAMELO', 300, '15.0000', 0, '19.4870', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607604364b50c6.03806490', 64, 30, 0, 25, '1X6 CARAMELOS', 6, '0.3000', 0, '0.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6076045ae9f040.79714590', 65, 30, 0, 27, '1', 1, '0.0500', 0, '0.1250', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607605ac667016.38119491', 66, 31, 0, 30, '1X50 TAB', 50, '16.3805', 0, '21.2900', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607605d0476229.97972280', 67, 31, 0, 17, '1', 1, '0.3276', 0, '0.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60770969792fc4.98693641', 68, 32, 0, 30, '1X 100 TAB', 100, '5.8000', 0, '8.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6077098f7dd486.23111489', 69, 32, 0, 27, '1', 1, '0.0580', 0, '0.1300', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60770b98d2ffb8.29570313', 70, 33, 0, 32, '1', 1, '5.2800', 0, '6.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60771131385866.67479156', 71, 34, 0, 30, '1X 50 SOBRES', 50, '6.5000', 0, '10.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607712fe9b9b53.52197218', 73, 34, 0, 21, '1X2 TAB', 1, '0.1300', 0, '0.2100', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607714aa0ca528.21906606', 74, 35, 0, 13, '1X100 TAB', 100, '6.0100', 0, '8.1200', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607715468c0cb1.36361058', 75, 35, 0, 27, '1', 1, '0.0601', 0, '0.0900', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6077173dc4f456.99436665', 76, 36, 0, 30, '1X26 SOBRES', 26, '7.0616', 0, '11.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607717ccd29ee8.83791689', 77, 36, 0, 21, '1X 2 TAB', 1, '0.2716', 0, '0.4200', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607719d1b420e5.49465925', 78, 37, 0, 30, '1X26 SOBRES', 26, '5.8900', 0, '7.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607719f90925e6.26779095', 79, 37, 0, 21, '1X 2 TAB', 1, '0.2262', 0, '0.3500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60771b2b8e04d8.17314838', 80, 38, 0, 30, '1X 26 SOBRES', 26, '5.8900', 0, '7.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60771b68a7e6a7.60578130', 81, 38, 0, 21, '1X 2 TAB', 1, '0.2262', 0, '0.3500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60771dd55d35d8.45480426', 84, 39, 0, 30, '1X52 SOBRES', 52, '8.8505', 0, '10.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60771e3f55b4a3.64424452', 85, 39, 0, 21, '1X 2 TAB', 1, '0.1702', 0, '0.2700', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607720312475a1.84123165', 86, 40, 0, 13, '1X 100 TAB', 100, '26.5500', 0, '54.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6077204fae9913.37468372', 87, 40, 0, 17, '1', 1, '0.2654', 0, '0.6500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607722549030a4.51716398', 88, 41, 0, 13, '1X 100 TAB', 100, '6.6300', 0, '10.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607722713e88d9.91096637', 89, 41, 0, 17, '1', 1, '0.0663', 0, '0.1250', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6077241a0f6082.16894327', 90, 42, 0, 30, '1X 50 SOBRES', 50, '5.9300', 0, '7.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6077243eb04e34.57180683', 91, 42, 0, 21, '1', 1, '0.1186', 0, '0.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60772731c47d03.27894074', 92, 43, 0, 30, '60 TAB ', 60, '9.0000', 0, '14.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607727696c5a30.29902901', 93, 43, 0, 27, 'TABLETA ESFERVECENT', 1, '0.1500', 0, '0.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607728f6d07af6.66690437', 94, 44, 0, 30, '1X72 TAB ', 72, '8.9500', 0, '13.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60773ecea23b11.38622659', 95, 45, 0, 12, '1X 60 TAB', 60, '8.0340', 0, '10.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60773f0141b975.43128026', 96, 45, 0, 20, '1', 1, '0.1339', 0, '0.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60775c201f4db6.02262694', 98, 7, 0, 21, '1', 1, '0.3900', 0, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60776f77e27ac7.79674440', 99, 46, 0, 30, '1X24 SOBRES', 24, '8.1416', 0, '10.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60776f77e2a912.34565046', 100, 46, 0, 21, '1 SOBRE', 1, '0.3392', 0, '0.4700', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60777075afb535.02792370', 101, 47, 0, 30, '1X24 SOBRES', 24, '8.1416', 0, '10.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607770a132d645.50440194', 102, 47, 0, 21, '1', 1, '0.3392', 0, '0.4700', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607855dfdb41f0.61270510', 103, 48, 0, 30, '1X 24 SOBRES', 24, '8.1408', 0, '13.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607855f6e87739.90461108', 104, 48, 0, 21, '1', 1, '0.3392', 0, '0.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607857b7d03d37.33580080', 105, 49, 0, 30, '1X 24 SOBRES', 24, '8.1408', 0, '13.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60785805a6b017.50024048', 106, 49, 0, 21, '1', 1, '0.3392', 0, '0.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078599e853332.74859936', 107, 50, 0, 30, '1X 12 LATITAS', 12, '8.3629', 0, '11.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607859cc8f5b74.92992198', 108, 50, 0, 27, '1 LATITA', 1, '0.6969', 0, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60785b0ad4bc95.76706121', 109, 51, 0, 9, '1 TARRO', 1, '2.8480', 0, '3.6500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60785bdc591fd7.41666313', 110, 52, 0, 9, '1 TARRO', 1, '4.5366', 0, '5.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60785d5db96772.86503523', 111, 53, 0, 4, '1 FRASCO', 1, '6.2379', 0, '7.6500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60785e678afd36.82190169', 112, 54, 0, 30, '1X 24 SOBRES', 24, '7.3896', 0, '11.5300', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60785ebb8f0b22.80446243', 113, 54, 0, 21, '1 SOBRE ', 1, '0.3079', 0, '0.4800', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607860b2c77246.19554412', 114, 55, 0, 6, '1 FRASCO', 1, '1.5100', 0, '2.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607861acef4429.98146958', 115, 56, 0, 6, 'FRASCO', 1, '1.4250', 0, '2.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60786311d9db17.45309801', 116, 57, 0, 5, 'FRASCO', 1, '1.0708', 0, '2.0500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607863bb449de6.81274150', 117, 58, 0, 15, 'FRASCO', 1, '1.5487', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60786467a70c90.86712251', 118, 59, 0, 15, 'FRASCO', 1, '1.5487', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607864e4636687.79590167', 119, 60, 0, 15, 'FRASCO', 1, '1.5487', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607865471174d1.71860545', 120, 61, 0, 15, 'FRASCO', 1, '1.5487', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607865a66ec4b4.09292943', 121, 62, 0, 15, 'FRASCO', 1, '1.5487', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60786624958c32.58305956', 122, 63, 0, 15, 'FRASCO', 1, '1.5487', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60786be569c658.58972966', 123, 64, 0, 30, 'TUBO', 1, '0.7080', 0, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60786ce5347a10.34934059', 124, 65, 0, 27, '1', 1, '2.7434', 0, '3.4500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60786f138a6060.15794252', 125, 66, 0, 33, '1', 1, '0.5310', 0, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607870235a70b5.82797241', 126, 67, 0, 15, 'FRASCO', 1, '3.3000', 0, '4.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078713eab9645.55807272', 127, 68, 0, 15, 'FRASCO', 1, '4.2304', 0, '5.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607871fa6faf42.61997156', 128, 69, 0, 15, 'FRASCO', 1, '4.2304', 0, '5.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60787303e7e037.26915730', 129, 70, 0, 15, 'FRASCO 160 ML', 1, '3.0974', 0, '6.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607874914d7380.62334121', 130, 71, 0, 15, 'FRASCO', 1, '1.4867', 0, '2.8500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60787515e936a7.14018385', 131, 72, 0, 15, 'FRASCO', 1, '0.6800', 0, '1.5500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60787591bb2c62.76773492', 132, 73, 0, 15, 'FRASCO', 1, '0.2743', 0, '0.8500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078766b666104.34519244', 133, 74, 0, 16, 'GALON', 1, '8.4071', 0, '9.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078775477f315.75673519', 134, 75, 0, 30, 'CAJA 2 TAB', 1, '7.3040', 0, '9.8500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607879e6badd20.56405169', 135, 76, 0, 13, '1X 100', 100, '6.1947', 0, '8.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60787ad89c9c94.80831959', 137, 76, 0, 27, 'JERINGA', 1, '0.0619', 0, '0.1200', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '4968420726374'),
(0, 'S60787e3d704cf9.15476440', 138, 77, 0, 13, '1X 100 JERINGAS', 100, '7.5200', 0, '11.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60787f90ade495.30211417', 140, 77, 0, 27, 'JERINGA', 1, '0.0752', 0, '0.1500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '4968420726718'),
(0, 'S6078804ef32a20.75269271', 141, 78, 0, 13, '1X 100 JERINGAS', 100, '8.8500', 0, '12.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607880ba8e56c1.88419754', 142, 78, 0, 27, 'JERINGA', 1, '0.0885', 0, '0.2200', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '4968420729559'),
(0, 'S607890fb262d45.47762693', 145, 80, 0, 27, '1', 1, '0.4425', 0, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607892848ba922.51847686', 146, 81, 0, 27, '1', 1, '0.4425', 0, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078a2121c8c66.14736284', 147, 82, 0, 31, '1', 1, '0.9062', 0, '1.8000', '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078a5315b9064.74201139', 148, 79, 0, 30, '1X24', 24, '11.5032', 0, '13.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078a5c8f02d82.60004782', 149, 79, 0, 27, '1', 1, '0.4793', 0, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078a72185bec7.28872683', 150, 83, 0, 30, '1X12', 12, '11.5100', 0, '13.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078a7726178c3.94512585', 151, 83, 0, 27, '1', 1, '0.9587', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078a910676ae7.79040564', 152, 84, 0, 31, '1', 1, '0.9855', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078a97b8cff80.42641795', 153, 85, 0, 31, '1', 1, '1.2573', 0, '2.5000', '3.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078aa60464da6.00529295', 154, 86, 0, 27, '1', 1, '0.3982', 0, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078ab6c721459.15780573', 155, 87, 0, 27, '1', 1, '0.0708', 0, '0.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078ad312608c2.77520300', 156, 88, 0, 31, '1', 1, '0.0354', 0, '0.1500', '0.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078ada769ca79.69968044', 157, 89, 0, 31, '1', 1, '0.1529', 0, '0.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078ae0d17a388.65371395', 158, 90, 0, 31, '1', 1, '0.2832', 0, '0.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078aebb55c521.83279199', 159, 91, 0, 31, '1', 1, '0.5267', 0, '0.9300', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078b009ac04d2.38514102', 160, 92, 0, 4, '1', 1, '1.2567', 0, '5.3000', '5.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078b0ae41bfc4.62868592', 161, 93, 0, 4, '1', 1, '2.0178', 0, '5.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078b12171d109.94327670', 162, 94, 0, 4, '1', 1, '2.2127', 0, '4.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078b485430195.93667111', 163, 95, 0, 4, '1', 1, '2.2834', 0, '3.8200', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078b52a532670.16725138', 164, 96, 0, 4, '1', 1, '5.5412', 0, '9.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078b5a8ca7211.80765484', 165, 97, 0, 4, '1', 1, '3.5550', 0, '5.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078b673325ba8.07668496', 166, 98, 0, 4, '1', 1, '3.8195', 0, '5.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078b74bc80c82.21184924', 167, 99, 0, 4, '1', 1, '1.8585', 0, '4.2500', '4.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078b7fa634f76.94027735', 168, 100, 0, 4, '1', 1, '1.9472', 0, '4.2500', '4.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078b923162302.36911844', 169, 101, 0, 4, '1', 1, '2.3629', 0, '4.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078b9edd68e08.77539758', 170, 102, 0, 4, '1', 1, '1.7701', 0, '3.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078ba95e69e21.68552417', 171, 103, 0, 4, '1', 1, '1.9685', 0, '3.3500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078bb98c24827.25268792', 172, 104, 0, 15, '1', 1, '2.0356', 0, '6.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078bf60243bd2.74913991', 173, 105, 0, 23, '1', 1, '3.4519', 0, '6.7500', '6.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078c5e5a6eb54.28781744', 174, 106, 0, 23, 'INTRAVENOSA', 1, '3.4513', 0, '5.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078c7708db0e0.30053652', 175, 107, 0, 23, 'INTRAMUSCULAR', 1, '3.5044', 0, '7.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078c838c6e6a2.02233316', 176, 108, 0, 23, '1', 1, '1.6904', 0, '2.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078c9b15e2ed6.55639025', 177, 109, 0, 23, '1', 1, '1.1504', 0, '2.1500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6078cad3b51847.72367915', 178, 110, 0, 15, 'FRASCO 220 ML', 1, '2.7259', 0, '7.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607991b59d9fd9.92354538', 179, 111, 0, 23, '1', 1, '2.0354', 0, '6.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60799280ad2ec4.30881586', 180, 112, 0, 23, 'AMPOLLA', 1, '2.5842', 0, '5.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607992f9a56592.25823734', 181, 113, 0, 23, 'AMPOLLA', 1, '1.5929', 0, '4.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607993bee01f09.11805252', 182, 114, 0, 23, 'AMPOLLA', 1, '1.6196', 0, '4.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079946acec9e3.73986900', 183, 115, 0, 23, 'AMPOLLA', 1, '2.6550', 0, '5.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607995076573b4.95268257', 184, 116, 0, 23, 'AMPOLLA', 1, '2.6549', 0, '4.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079959114fef9.99342752', 185, 117, 0, 23, 'AMPOLLA', 1, '1.1752', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079960d94e705.80506756', 186, 118, 0, 23, 'AMPOLLA', 1, '1.2104', 0, '2.0600', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079975051c6c4.01738391', 187, 119, 0, 23, 'AMPOLLA', 1, '4.1595', 0, '7.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607998392afcd6.28700605', 188, 120, 0, 23, 'AMPOLLA', 1, '3.0380', 0, '5.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60799978eb8149.56027763', 189, 121, 0, 23, 'AMPOLLA', 1, '3.3895', 0, '7.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60799af4731a22.85478349', 190, 122, 0, 30, 'CAJA 50 TAB', 1, '8.5000', 0, '14.8000', '15.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60799b8693d250.04476188', 191, 123, 0, 30, 'CAJA 50 TAB', 1, '8.4900', 0, '14.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60799c3161f255.09026673', 192, 124, 0, 23, 'AMPOLLA', 1, '3.7611', 0, '6.1900', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60799d0bf047c3.52449511', 193, 125, 0, 23, 'AMPOLLA', 1, '3.5609', 0, '5.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60799de19e6197.67000262', 194, 126, 0, 30, 'CAJA 50 CAP', 1, '11.4602', 0, '12.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60799f425d69c4.32079345', 195, 127, 0, 30, 'CAJA 50 CAPS', 1, '7.0531', 0, '11.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079a05b96ead9.07325261', 196, 128, 0, 23, 'AMPOLLA ', 1, '2.9439', 0, '4.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079a0e0ea7cf2.61650350', 197, 129, 0, 9, 'TARRO', 1, '3.8694', 0, '5.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079a14db97e85.57815077', 198, 130, 0, 9, 'TARRO', 1, '3.1894', 0, '4.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079a1f3299eb8.31398919', 199, 131, 0, 9, 'TARRO', 1, '2.7259', 0, '4.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079a3160c2c32.05486957', 200, 132, 0, 9, 'TARRO', 1, '2.1504', 0, '3.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079a42415d9a4.53236288', 201, 133, 0, 9, 'TARRO', 1, '3.2267', 0, '4.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079a533140e64.19727086', 202, 134, 0, 9, 'TARRO', 1, '0.6637', 0, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079a5f320bf81.25969703', 203, 135, 0, 23, 'AMPOLLA INT', 1, '1.1826', 0, '2.1500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079a69e8f7b23.09408723', 204, 136, 0, 23, 'AMPOLLA INT', 1, '0.6196', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079a777c99072.48234526', 205, 137, 0, 14, ' TUBO GEL', 1, '2.9204', 0, '6.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079a898a55bc7.62499593', 206, 138, 0, 29, 'CREMA', 1, '0.6196', 0, '1.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079a9b7e8fab7.60402306', 207, 139, 0, 29, 'CREMA', 1, '0.4603', 0, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079aa2b7ead93.58953109', 208, 140, 0, 29, 'CREMA', 1, '0.3894', 0, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079abebcf0ee0.49661781', 209, 141, 0, 28, 'CREMA VAGINAL', 1, '1.3274', 0, '5.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079ad26baa7d0.01374384', 210, 142, 0, 13, '1X100 CAPS', 100, '5.8419', 0, '20.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079ad608c9e87.16532200', 211, 142, 0, 25, '1X10', 10, '0.5842', 0, '2.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079adba2ceff4.08924856', 212, 142, 0, 27, '1', 1, '0.0584', 0, '0.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079aeaf887d31.62774338', 213, 143, 0, 32, 'FRASCO', 1, '1.3805', 0, '5.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079afaaab5fa6.41134144', 214, 144, 0, 13, '1X 100 CAPS', 100, '5.8400', 0, '20.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079b591593100.50809955', 215, 144, 0, 25, '1X10', 10, '0.5840', 0, '2.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079b5bcaa9771.34518214', 216, 144, 0, 27, '1', 1, '0.0584', 0, '0.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079b9cbbddb65.44677857', 220, 145, 0, 30, '1X12 BLISTER', 12, '10.5132', 0, '25.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079ba8c2dc129.63342947', 221, 145, 0, 25, '1X5 TAB', 1, '0.8761', 0, '2.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079bc16cde5d6.38697816', 222, 146, 0, 4, 'FRASCO', 1, '2.6550', 0, '5.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079bd3f924063.35588085', 223, 147, 0, 30, '1X50', 50, '5.0900', 0, '13.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079bd59d229e1.38636434', 224, 147, 0, 27, '1', 1, '0.1018', 0, '0.1600', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079be74132bc6.31281783', 225, 148, 0, 30, '1X50 CAPS', 50, '5.3100', 0, '13.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079be74136a22.31834200', 226, 148, 0, 27, '1', 1, '0.1062', 0, '0.1600', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079bf43c1a3c6.10910755', 227, 149, 0, 13, '1X100 ', 100, '2.5500', 0, '6.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079bf5d801a03.95442644', 228, 149, 0, 25, '1X10', 10, '0.2550', 0, '0.6500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079bf899e5443.90239135', 229, 149, 0, 27, '1', 1, '0.0255', 0, '0.0800', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079c092808801.43417340', 230, 150, 0, 32, 'FRASCO', 1, '0.9470', 0, '3.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079c56788b8d1.64048649', 231, 151, 0, 32, 'FRASCO', 1, '2.1300', 0, '5.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079c69c838b72.25954488', 232, 152, 0, 29, 'CREMA', 1, '1.2389', 0, '3.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079ca113fc572.24888988', 233, 1, 0, 30, '1X4 TAB', 1, '1.0619', 0, '3.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079cbc3c68840.53509484', 234, 153, 0, 2, 'FRASCO', 1, '0.5075', 0, '4.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079ccf08cfd97.30978004', 235, 154, 0, 13, '1X100 TAB', 100, '6.3700', 0, '20.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079cd0a974925.63668549', 236, 154, 0, 25, '1X10 TAB', 10, '0.6370', 0, '2.1500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079cd31310ef6.39400935', 237, 154, 0, 27, '1', 1, '0.0637', 0, '0.2300', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079db093332b4.61650607', 238, 155, 0, 30, '1X2 TAB', 2, '0.5309', 0, '3.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079dc8ed98004.34802006', 239, 156, 0, 13, '1X100 CAPS', 100, '8.5000', 0, '25.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079dcbf4bc750.29641386', 240, 156, 0, 25, '1X10 CAPS', 10, '0.8500', 0, '2.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079dceb99f6c8.33165711', 241, 156, 0, 27, '1', 1, '0.0850', 0, '0.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079ddb9a0f9d9.58653518', 242, 157, 0, 13, '1X100 CAPS', 100, '6.3717', 0, '18.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079dde0acd2d7.93953058', 243, 157, 0, 25, '1X10 CAPS', 10, '0.6372', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079ddf3544880.41635832', 244, 157, 0, 27, '1', 1, '0.0637', 0, '0.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079df6a904fd1.23888714', 245, 158, 0, 29, 'CREMA', 1, '1.1062', 0, '4.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079e0691d7003.19917784', 246, 159, 0, 27, 'TEST', 1, '0.7434', 0, '1.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079e198a7fdd5.23451545', 247, 160, 0, 13, '1X100 TAB', 100, '7.7900', 0, '30.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079e1b98fe5c8.25464916', 248, 160, 0, 25, '1X10 TAB', 10, '0.7790', 0, '3.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079e1e2979f04.62332199', 249, 160, 0, 27, '1', 1, '0.0779', 0, '0.3500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079e30d2e5f51.34750985', 250, 161, 0, 30, '1X10 AMPOLLAS', 10, '2.7876', 0, '8.1500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079e3e08e8355.30175417', 251, 162, 0, 30, '1X10 AMPOLLAS', 10, '2.7882', 0, '8.1500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079e4c32671b0.61261797', 252, 163, 0, 13, '1X100 TAB', 100, '6.2000', 0, '19.5500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079e4e1388b06.56142159', 253, 163, 0, 25, '1X10 TAB', 10, '0.6200', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079e4f555a6c9.27367477', 254, 163, 0, 27, '1', 1, '0.0620', 0, '0.2300', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079e5e40d8364.97412307', 255, 164, 0, 14, 'GEL', 1, '0.6372', 0, '3.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079e760e70713.78811378', 256, 165, 0, 13, '1X100 CAPS', 100, '2.1200', 0, '9.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079e78ec27534.29331696', 257, 165, 0, 25, '1X10 CAPS', 10, '0.2120', 0, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079e7a5a66930.71487876', 258, 165, 0, 27, '1', 1, '0.0212', 0, '0.1200', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079e8c4bb54a7.03316020', 259, 166, 0, 13, '1X100 TAB', 100, '2.1200', 0, '9.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079e8e86e8280.14739731', 260, 166, 0, 25, '1X10 TAB', 10, '0.2120', 0, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079e90045af89.73776261', 261, 166, 0, 27, '1', 1, '0.0212', 0, '0.1500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079e9b84648d0.36149884', 262, 167, 0, 15, 'FRASCO X100 CAPS', 100, '2.1239', 0, '7.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079ea75b7ec72.62725611', 263, 168, 0, 13, '1X100 TAB', 100, '3.1866', 0, '20.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079ea9e99ae85.22822784', 264, 168, 0, 25, '1X10 TAB', 10, '0.3187', 0, '2.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079eab1cc8e02.54952392', 265, 168, 0, 27, '1', 1, '0.0319', 0, '0.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079ec01998090.61410264', 266, 169, 0, 23, 'AMPOLLA', 1, '0.3186', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079f2a20c9f60.59841973', 267, 170, 0, 13, '1X100 CAPS', 100, '4.2500', 0, '30.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079f2d2088728.45467245', 268, 170, 0, 27, '1', 1, '0.0425', 0, '0.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079f3a9c4bf35.80002964', 269, 171, 0, 13, '1X100 TAB', 100, '2.1200', 0, '14.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079f3d1a59994.34509235', 270, 171, 0, 25, '1X10 TAB', 10, '0.2120', 0, '1.4500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079f3e09c0d17.30722862', 271, 171, 0, 27, '1', 1, '0.0212', 0, '0.1500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079f4b98aa3d9.57754396', 272, 172, 0, 13, '1X100 TAB', 100, '4.2500', 0, '9.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079f50b0918b0.32368135', 273, 172, 0, 25, '1X10 TAB', 10, '0.4250', 0, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079f51ee8a369.40409183', 274, 172, 0, 27, '1', 1, '0.0425', 0, '0.1500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079f6af295415.66994055', 275, 173, 0, 13, '1X100 CAPS', 100, '5.1300', 0, '12.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079f7505b4711.70709657', 276, 173, 0, 25, '1X10 CAPS', 10, '0.5130', 0, '1.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079f76fb45432.34919520', 277, 173, 0, 27, '1', 1, '0.0513', 0, '0.1800', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079f86393d1f1.88795779', 278, 174, 0, 13, '1X100 CAPS', 100, '5.6600', 0, '20.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079f8b76a4be9.38589733', 279, 174, 0, 25, '1X10 TAB', 10, '0.5660', 0, '2.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079f8ec3c4ad9.84562789', 280, 174, 0, 27, '1', 1, '0.0566', 0, '0.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079f9bf50f766.15932138', 281, 175, 0, 13, '1X100 CAPS', 100, '1.0600', 0, '6.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079f9e33bb831.63154050', 282, 175, 0, 25, '1X10 CAPS', 10, '0.1060', 0, '0.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079f9f3a0cea5.04814475', 283, 175, 0, 27, '1', 1, '0.0106', 0, '0.0600', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079fada6dedb6.36853188', 284, 176, 0, 13, '1X100 TAB', 100, '5.3100', 0, '15.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079faf89a5e34.08078348', 285, 176, 0, 25, '1X10 TAB', 10, '0.5310', 0, '1.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079fb308b2cc1.29899553', 286, 176, 0, 27, '1', 1, '0.0531', 0, '0.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079fc41a49083.95705854', 287, 177, 0, 29, 'CREMA', 1, '0.7435', 0, '3.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079feee10bdb0.07668785', 288, 178, 0, 13, '1X100 TAB', 100, '4.2500', 0, '9.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079ff1206a981.94012851', 289, 178, 0, 25, '1X10 TAB', 10, '0.4250', 0, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079ff232dc9d3.45814717', 290, 178, 0, 27, '1', 1, '0.0425', 0, '0.1200', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6079ffa6eac558.49919653', 291, 179, 0, 32, 'FRASCO', 1, '1.3274', 0, '4.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607a015d6c6448.29868194', 292, 180, 0, 13, '1X100 TAB', 100, '6.3800', 0, '18.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607a0199025288.02655341', 293, 180, 0, 25, '1X10 TAB', 10, '0.6370', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607a01aeccaf66.56241737', 294, 180, 0, 27, '1', 1, '0.0637', 0, '0.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607a02eb2bd0f0.25953340', 295, 181, 0, 13, '1X100 TAB', 100, '7.3600', 0, '40.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607a036fc166f6.52339444', 296, 181, 0, 27, '1', 1, '0.0736', 0, '0.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607a0473356fc4.47172894', 297, 182, 0, 24, 'INHALADOR', 1, '2.9904', 0, '4.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607a05ad5feed3.79633312', 298, 183, 0, 21, '1X4 TAB', 4, '1.0619', 0, '5.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607a08887f4632.89036474', 299, 184, 0, 15, 'FRASCO', 1, '5.0478', 0, '7.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607a09511dc4a1.91096460', 300, 185, 0, 30, '1X12 SOBRES', 12, '8.2301', 0, '14.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607a0a0df22211.51121164', 301, 186, 0, 30, '1X10 AMP', 10, '8.7788', 0, '15.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607a0aa36957f9.55679959', 302, 187, 0, 30, '1X 10 AMP', 10, '8.2301', 0, '14.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607a0b7d4125b4.33474653', 303, 188, 0, 4, 'FRASCO', 1, '4.5265', 0, '7.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607a0f4d0251a8.73663350', 304, 189, 0, 4, 'FRASCO', 1, '4.6637', 0, '7.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607a0ff3b68796.07267957', 305, 190, 0, 4, 'FRASCO', 1, '5.2618', 0, '8.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607a11549a1dd2.31847721', 306, 191, 0, 4, 'FRASCO', 1, '4.2522', 0, '7.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607a11cfbb90f0.57333614', 307, 192, 0, 4, 'FRASCO', 1, '4.1150', 0, '6.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607a12618e6183.77056810', 308, 193, 0, 15, 'FRASCO ', 1, '4.9106', 0, '8.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607a130581f495.40545602', 309, 194, 0, 4, 'FRASCO', 1, '2.2221', 0, '3.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607a13ab28db65.99240440', 310, 195, 0, 30, '1X 2 TAB', 2, '2.1892', 0, '3.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607a1440862b13.31616321', 311, 196, 0, 15, 'FRASCO', 1, '4.8009', 0, '8.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607a1527728618.46469721', 312, 197, 0, 30, '1X15 AMP BEB', 15, '8.7788', 0, '14.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607a1606cf4a65.88206995', 313, 198, 0, 30, 'CAJA', 30, '4.9326', 0, '8.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607a16c13ca083.34118374', 314, 199, 0, 15, 'FRASCO', 1, '6.5841', 0, '11.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607ae28e46c7a4.23921868', 315, 200, 0, 30, '1X14 TAB', 14, '14.7504', 0, '23.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607ae385963ba1.36329862', 316, 201, 0, 32, 'FRASCO ', 1, '7.3009', 0, '17.8100', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607ae4a0b51027.69567059', 317, 202, 0, 10, '1X 30 TAB', 30, '18.6900', 0, '36.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607ae61c924222.12032106', 319, 203, 0, 24, 'INHALADOR', 1, '8.4690', 0, '20.6600', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607ae70bd3a9c1.10757064', 320, 204, 0, 30, '1', 1, '8.3823', 0, '13.9800', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607ae800e6c299.62922329', 321, 205, 0, 3, 'FRASCO', 1, '4.5310', 0, '7.5500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607ae8ecf3d2d5.76992003', 322, 206, 0, 10, '1X30 TAB', 30, '8.7600', 0, '21.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607ae9ac6a3a26.71354251', 323, 207, 0, 32, 'FRASCO', 1, '10.9027', 0, '26.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607aea6c8b4cb5.03249346', 324, 208, 0, 30, '1X20 TAB', 20, '11.2920', 0, '26.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607aec8f43e909.39635614', 325, 209, 0, 29, 'CREMA', 1, '1.3395', 0, '2.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607aee0c9d6103.00980245', 326, 210, 0, 7, '1X20 TAB', 24, '9.6384', 0, '23.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607aeec15102e2.17665610', 327, 211, 0, 13, '1X 100 TAB', 100, '9.7400', 0, '16.2100', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607af0d221dce7.82320250', 328, 212, 0, 10, '1X30CAPS', 1, '8.4248', 0, '12.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607af2240019c1.11933868', 330, 213, 0, 30, '1X50 TAB', 50, '8.5650', 0, '20.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607af24cd5d0c1.55971325', 331, 213, 0, 25, '1X10 TAB', 10, '1.7130', 0, '4.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607af27086d3e4.76118818', 332, 213, 0, 27, '1', 1, '0.1713', 0, '0.4400', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607af3dde7b4d0.50380663', 333, 214, 0, 10, '1X30 TAB', 30, '18.3000', 0, '44.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607af3fb88fcb2.26008628', 334, 214, 0, 25, '1X10 TAB', 10, '6.1000', 0, '15.3300', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607af426205b34.34122960', 335, 214, 0, 27, '1', 1, '0.6100', 0, '1.5600', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607af4eb638821.37542827', 336, 215, 0, 10, '1X30 TAB', 30, '11.6820', 0, '28.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607af5218e31a0.20925352', 337, 215, 0, 25, '1X10 TAB', 10, '3.8940', 0, '9.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607af54630dcb1.47203160', 338, 215, 0, 27, '1', 1, '0.3894', 0, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607af90e76c450.09059792', 339, 216, 0, 1, '1', 1, '9.8761', 0, '16.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607af9eb04a906.93675098', 340, 217, 0, 1, 'AMPOLLAS BEB', 1, '9.6018', 0, '16.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607afa8c70b9a7.15952750', 341, 218, 0, 1, 'AMPOLLAS BEB', 1, '9.3274', 0, '15.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607afb67f11fd7.01294845', 342, 219, 0, 15, 'FRASCO', 1, '3.8498', 0, '11.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607afc8f24c099.92960348', 343, 220, 0, 1, 'AMPOLLAS BEB', 1, '14.3291', 0, '18.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607afd80d02eb1.52362306', 344, 221, 0, 30, '1X 4 TAB', 1, '4.4991', 0, '7.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607afe3658c4b0.30226504', 345, 222, 0, 2, 'FRASCO', 1, '3.7968', 0, '6.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607afeeac0cc64.43516652', 346, 223, 0, 1, 'AMPOLLAS BEB', 1, '8.7788', 0, '15.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b01181ac859.60198265', 347, 224, 0, 30, '1 X 2 CAPS', 1, '3.1150', 0, '7.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b01fd1a7ac0.70612758', 348, 225, 0, 10, '1X30 TAB', 30, '9.2880', 0, '22.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b0274b67c06.35825636', 350, 225, 0, 25, '1X10 TAB', 10, '3.0960', 0, '7.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b03facfee45.70398668', 351, 225, 0, 27, '1', 1, '0.3096', 0, '0.7900', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b058274ea92.71327975', 352, 226, 0, 24, 'INHALADOR', 1, '5.4513', 0, '13.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '');
INSERT INTO `presentacion_producto` (`id_server`, `unique_id`, `id_pp`, `id_producto`, `id_server_prod`, `id_presentacion`, `descripcion`, `unidad`, `costo`, `costo_s_iva`, `precio`, `precio1`, `precio2`, `precio3`, `precio4`, `precio5`, `precio6`, `activo`, `barcode`) VALUES
(0, 'S607b06450bb020.87389723', 353, 227, 0, 10, '1X 30 TAB', 30, '12.4560', 0, '32.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b065f111f34.43479875', 354, 227, 0, 25, '1X10 TAB', 10, '4.1520', 0, '11.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b06a430ad71.95945543', 355, 227, 0, 27, '1', 1, '0.4152', 0, '1.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b078fafa942.52291599', 356, 228, 0, 10, '1X30 TAB', 30, '34.6560', 0, '84.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b07d4db84e7.89974473', 357, 228, 0, 25, '1X10 TAB', 10, '11.5520', 0, '28.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b083c058950.34467968', 358, 228, 0, 27, '1', 1, '1.1552', 0, '2.9600', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b0a811d9044.15327814', 359, 229, 0, 30, '1X 50 TAB', 50, '18.4950', 0, '44.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b0ab29bedf9.49501974', 360, 229, 0, 25, '1X10 TAB', 10, '3.6990', 0, '9.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b0aeccd6849.24247135', 361, 229, 0, 27, '1', 1, '0.3699', 0, '0.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b0bf262f4c5.37751723', 362, 230, 0, 10, '1X30 TAB', 30, '4.2840', 0, '10.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b0cb67616a0.51202754', 363, 231, 0, 10, '1X 30 TAB', 30, '6.2310', 0, '15.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b0cdc7c1dc3.88310632', 364, 231, 0, 25, '1X 10 TAB', 10, '2.0770', 0, '5.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b0d0a0ccb79.07520963', 365, 231, 0, 27, '1', 1, '0.2077', 0, '0.5666', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b106ad881b5.10838160', 366, 232, 0, 15, 'FRASCO', 1, '6.0177', 0, '10.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b11739bb315.56290613', 367, 233, 0, 1, 'AMPOLLAS BEB', 15, '12.0977', 0, '19.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b13c07afad5.00045094', 368, 234, 0, 1, 'AMPOLLAS BEB', 10, '14.8236', 0, '24.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b1522e80964.99364755', 369, 235, 0, 15, 'FRASCO', 1, '0.0000', 0, '6.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b162e34ee68.38943632', 370, 236, 0, 15, 'FRASCO', 1, '2.2124', 0, '8.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b1747599e27.11893130', 371, 237, 0, 10, '1X30 TAB', 30, '5.0747', 0, '7.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b1a1f6d16b4.39065127', 372, 238, 0, 10, '1X 30 TAB', 30, '6.6381', 0, '12.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b1d5e569431.56534015', 374, 239, 0, 23, 'AMPOLLA I.M', 1, '3.1858', 0, '5.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b1e4c0c7021.42905211', 375, 240, 0, 11, '1X40 TAB MAST.', 40, '5.0806', 0, '8.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b1e72a24ca8.92591981', 376, 240, 0, 25, '1X10 TAB MAST.', 10, '1.2702', 0, '2.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b1ea9036c11.94239752', 377, 240, 0, 27, '1', 1, '0.1270', 0, '0.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b1fe397c6c8.37103939', 378, 241, 0, 7, '1X 20 GRAG', 20, '3.1127', 0, '5.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b2165417196.42002153', 379, 242, 0, 23, 'AMPOLLA I.M - I.V', 1, '2.4313', 0, '4.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b235fa75461.49704614', 380, 243, 0, 23, 'AMPOLLA I.M.', 1, '4.8789', 0, '8.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b26a3904098.94909625', 381, 244, 0, 23, 'AMP. I.M I.V', 1, '1.0903', 0, '1.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b27d28505b8.56469551', 382, 245, 0, 13, '1X 100 CAPS', 100, '7.6300', 0, '13.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b27f2bf77c7.36447445', 383, 245, 0, 25, '1X10 CAPS', 10, '0.7630', 0, '1.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b2812164687.32226740', 384, 245, 0, 27, '1', 1, '0.0763', 0, '0.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b28c14242c2.20145653', 385, 246, 0, 3, 'FRASCO ', 1, '3.1127', 0, '5.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b2bc3d3e5f6.56656554', 386, 247, 0, 25, '1X6 TAB', 6, '1.9116', 0, '1.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b2be6de2610.64622763', 387, 247, 0, 27, '1', 1, '0.3186', 0, '0.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b2d66e97265.28353689', 388, 248, 0, 30, '1', 1, '8.7166', 0, '14.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b2e0e7ba175.83446814', 389, 249, 0, 23, 'AMP. I.M. I.V.', 1, '1.3137', 0, '2.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b2eb1c499a0.69691038', 390, 250, 0, 13, '1X100 CAPS', 100, '19.6248', 0, '33.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b2ecfd6ea92.10102239', 391, 250, 0, 25, '1X10 CAPS', 10, '1.9625', 0, '3.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b2ef92cdc19.69251375', 392, 250, 0, 27, '1', 1, '0.1962', 0, '0.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b2fc12b9ab0.17789804', 393, 251, 0, 30, '1X6 SOBRES', 6, '4.9880', 0, '8.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b30633d9fa9.99584477', 394, 252, 0, 30, '1X30 SOBRES', 30, '7.8554', 0, '13.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b308dd79094.39867612', 395, 252, 0, 21, 'SOBRE', 1, '0.2618', 0, '0.5500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b3147ecefb7.23452145', 396, 253, 0, 27, 'AMPOLLA BEB', 1, '3.1604', 0, '4.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b31dd9fded4.95183284', 397, 254, 0, 27, 'AMP. BEB', 1, '3.0287', 0, '4.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b3e130e0a38.39147335', 398, 255, 0, 1, '20 AMP. BEB', 20, '31.0950', 0, '56.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b3f36504669.49275978', 399, 256, 0, 30, ' 1X10 TAB', 10, '23.0750', 0, '35.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b409e114081.76700974', 400, 257, 0, 18, 'SPRAY NASAL', 1, '25.6650', 0, '39.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b432518b7a9.16891897', 401, 258, 0, 30, '1X10 TAB', 10, '9.0375', 0, '13.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b44e146b4c7.77802560', 402, 259, 0, 24, 'INHALADOR', 1, '21.8600', 0, '33.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b4617cf3289.08009014', 403, 260, 0, 30, '1X200 TAB', 200, '40.7300', 0, '62.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b46622cb221.96257558', 404, 260, 0, 25, '1X10 TAB', 10, '2.0350', 0, '3.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b46f208ea53.98923586', 405, 260, 0, 27, '1', 1, '0.2035', 0, '0.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b48a670c9a2.10814085', 406, 261, 0, 7, 'GRAGEAS', 20, '10.3000', 0, '15.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b4d25a94ef3.16129256', 407, 262, 0, 24, 'INHALADOR', 1, '29.2616', 0, '60.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b4d9b1e0752.41081707', 408, 263, 0, 27, 'FLETE', 1, '2.0000', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b56ab9b25d0.49579034', 409, 264, 0, 30, 'CAJA 50 TAB', 50, '4.8566', 0, '6.8600', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b57d66e5b14.25091023', 410, 265, 0, 30, 'CAJA 50 TAB', 50, '11.4855', 0, '16.2100', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b5871b97865.94781661', 411, 266, 0, 30, 'CAJA 50 TAB', 50, '4.4300', 0, '6.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b590eabfcf1.45199135', 412, 267, 0, 30, 'CAJA 50 TAB', 50, '10.9400', 0, '15.4500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b59a345f403.36178167', 413, 268, 0, 30, 'CAJA 50 TAB', 50, '11.2200', 0, '15.8500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b5bc52b6960.98339946', 414, 269, 0, 7, 'CAJA 20 TAB', 20, '18.1300', 0, '26.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b5cbebd27c4.99033728', 415, 270, 0, 7, 'CAJA 20 TAB', 20, '17.8700', 0, '25.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b5d58bfe375.80482395', 416, 271, 0, 10, 'CAJA 30 TAB', 30, '19.6700', 0, '28.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607b5dde179c64.67307002', 417, 272, 0, 10, 'CAJA 30 TAB', 30, '30.9100', 0, '44.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607d8a1c98b9f8.25751084', 418, 273, 0, 30, 'CAJA X 1 CAPS', 1, '17.8880', 0, '52.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607d8f80d10947.77884735', 419, 274, 0, 30, 'CAJA X 5 DISPOSITIVO', 5, '64.6280', 0, '87.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607d911ecbdb21.63958271', 420, 274, 0, 23, 'INSULINA INYECT.', 1, '12.9256', 0, '19.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607d94656b7933.98576021', 421, 275, 0, 27, '1', 1, '3.1200', 0, '3.9300', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607d94fd1a5d75.42254233', 422, 276, 0, 27, '1', 1, '3.1200', 0, '3.9300', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607d98dc4d3b62.85983157', 423, 277, 0, 27, '1', 1, '3.1900', 0, '4.1500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607d9cf0c9dfb2.70160407', 424, 278, 0, 27, '1', 1, '2.7000', 0, '3.4500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607d9d7bbdcd90.73755095', 425, 279, 0, 27, '1', 1, '2.7000', 0, '3.4500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607d9e4d772b89.15459459', 426, 280, 0, 27, '1', 1, '2.5745', 0, '3.3800', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607db1215ec2a0.95913993', 427, 281, 0, 23, 'AMPOLLA I.M.', 1, '2.2832', 0, '5.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607db1f8945339.87589916', 428, 282, 0, 2, 'FRASCO 30 ML', 1, '3.4959', 0, '5.8500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607db582a9e178.51861844', 429, 283, 0, 10, '1X30 TAB', 30, '19.2100', 0, '26.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607db66c4b69b2.17654602', 430, 284, 0, 10, '1X30 TAB', 30, '23.5450', 0, '32.6500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607db72ddf2649.82036689', 431, 285, 0, 10, '1X 30 TAB', 30, '16.8100', 0, '23.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607db8fce80826.17118555', 432, 286, 0, 10, '1X30 TAB', 30, '21.5500', 0, '29.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dbb26191e69.52377279', 433, 287, 0, 10, '1X30 TAB', 30, '24.9000', 0, '34.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dbbd705afc5.24786883', 434, 288, 0, 10, '1X 30 TAB', 30, '29.6200', 0, '41.0500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dbd3d8ea159.45902153', 435, 289, 0, 10, '1X 30 CAPS', 30, '89.0790', 0, '129.6500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dbd5caa8908.60437946', 436, 289, 0, 27, '1', 1, '2.9693', 0, '4.8500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dbed6b362c4.78069480', 437, 290, 0, 32, 'FRASCO 100 ML', 1, '27.2600', 0, '39.9900', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dbf8a487ef6.86768808', 438, 291, 0, 15, 'FRASCO 50 ML', 1, '14.3400', 0, '19.8500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dc1bd3c4c40.98601895', 439, 292, 0, 30, 'CAJA 50 TAB', 50, '14.4600', 0, '19.9900', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dc2b7c45c18.14173683', 440, 293, 0, 30, 'CAJA 50 TAB', 50, '17.4700', 0, '24.3500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dc3605fa2d8.83576073', 441, 294, 0, 10, 'CAJA 30 TAB', 30, '12.0700', 0, '16.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dc49b2e9522.24606671', 442, 295, 0, 10, 'CAJA 30 TAB', 30, '4.9400', 0, '6.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dc55329fb69.57098903', 443, 296, 0, 10, 'CAJA 30 TAB', 30, '12.1900', 0, '16.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dc5edb003f1.64001337', 444, 297, 0, 10, 'CAJA 30 TAB', 30, '18.6100', 0, '25.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dc717b91c09.67933842', 445, 298, 0, 10, 'CAJA 30 TAB', 30, '13.5400', 0, '18.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dc7c1f086b9.00232282', 446, 299, 0, 10, 'CAJA 30 TAB', 30, '15.5400', 0, '21.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dc868b1c379.77276296', 447, 300, 0, 10, 'CAJA X 30 CAPS', 30, '24.0100', 0, '33.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dd5d30da061.69390195', 448, 301, 0, 30, 'CAJA 28 CAPS', 28, '42.4115', 0, '54.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dd8499b35d8.33905219', 449, 302, 0, 10, 'CAJA 30 TAB', 30, '11.4100', 0, '13.4500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dd8f64b3b28.98916183', 450, 303, 0, 10, 'CAJA 30 TAB', 30, '20.0640', 0, '26.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607ddb739cf008.39748811', 451, 304, 0, 8, 'FRASCO GOTAS', 1, '8.4300', 0, '10.6500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607ddc3a88aac3.81333586', 452, 305, 0, 8, 'FRASCO GOTAS', 1, '2.5371', 0, '3.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dddeeee0c80.15201693', 453, 306, 0, 13, '1X 100 TAB', 100, '3.4517', 0, '6.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dde07e61eb2.42939661', 454, 306, 0, 25, '1X10 TAB', 10, '0.3450', 0, '0.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dde2980f131.27685369', 455, 306, 0, 27, '1', 1, '0.0345', 0, '0.1250', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607de03f4de060.64448493', 456, 307, 0, 30, '1X 24 TAB', 24, '5.7120', 0, '9.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607de06366a028.26670382', 457, 307, 0, 27, '1', 1, '0.2380', 0, '0.5300', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607def983ec565.97034212', 458, 308, 0, 32, 'FRASCO 100 ML', 1, '3.0653', 0, '5.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607df1cd0d4811.43861646', 459, 309, 0, 30, '1X 50 CAPS', 50, '7.3000', 0, '14.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607df28b046b21.46621038', 460, 310, 0, 15, 'FRASCO 15 ML', 1, '5.3580', 0, '10.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607df3822636a8.77846076', 461, 311, 0, 30, 'CAJA 12 CAPS', 12, '4.0344', 0, '7.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607df3fad5cb50.24990590', 462, 309, 0, 25, '1X10 CAPS', 10, '1.4600', 0, '3.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '7703763070428'),
(0, 'S607df4ba0ff697.37207264', 463, 309, 0, 27, '1', 1, '0.1460', 0, '0.3200', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607df63a8b3285.31223008', 464, 312, 0, 28, 'CREMA VAGINAL', 1, '2.9323', 0, '5.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607df6fa88a496.49176037', 465, 313, 0, 29, 'CREMA ', 1, '2.9300', 0, '5.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607df7dbbc6248.69768199', 466, 314, 0, 30, '1X50 TAB', 50, '9.5317', 0, '18.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607df818a69704.25084010', 467, 314, 0, 25, '1X10 TAB', 10, '1.9060', 0, '3.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '7703763280674'),
(0, 'S607df86d1fe8d5.09812938', 468, 314, 0, 27, '1', 1, '0.1906', 0, '0.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607df9fc574004.12267085', 469, 315, 0, 30, '1X 50 CAPS', 50, '10.2600', 0, '19.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dfa362bd343.29677218', 470, 315, 0, 25, '1X10 CAPS', 10, '2.0520', 0, '4.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '7703763480265'),
(0, 'S607dfa63d91c26.46101152', 471, 315, 0, 27, '1', 1, '0.2052', 0, '0.4500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dfb2fe4aff7.90138128', 472, 316, 0, 30, 'CAJA 1 CAPS', 1, '2.9640', 0, '5.8500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dfc076ff148.26164815', 473, 317, 0, 13, '1X100 TAB', 100, '12.5600', 0, '24.8500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dfc2936de92.18412841', 474, 317, 0, 25, '1X 10 TAB', 10, '1.2560', 0, '2.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dfc537fddc8.34384916', 475, 317, 0, 27, '1', 1, '0.1256', 0, '0.2800', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dff1c5af5c4.46110784', 477, 318, 0, 30, '1X12 SOBRES', 12, '12.8630', 0, '25.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607dffec69ea54.29358160', 481, 318, 0, 21, 'SOBRE', 1, '1.0719', 0, '2.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '7703763750122'),
(0, 'S607e00a0672cc8.00429390', 482, 319, 0, 30, 'CAJA 10 TAB', 1, '5.0350', 0, '9.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607e0342058557.68059175', 485, 320, 0, 30, '1X24 CAPS', 24, '8.3157', 0, '16.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607e041ace95c3.25872215', 487, 320, 0, 25, '1X8 CAPS', 8, '2.7719', 0, '5.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '7703763670222'),
(0, 'S607e04f0a30950.06061110', 488, 321, 0, 30, 'CAJA 10 TAB', 10, '7.0490', 0, '13.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607e058c870f47.39681664', 489, 322, 0, 30, 'CAJA 2 TAB MAST', 2, '2.7740', 0, '5.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607e0737c94344.70621248', 490, 323, 0, 15, 'FRASCO 90 ML', 1, '1.9063', 0, '3.8500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607e07eb404190.79585282', 491, 324, 0, 10, '1X30 TAB', 30, '6.8280', 0, '13.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607e0823a71822.57309286', 492, 324, 0, 25, '1X10 TAB', 10, '2.2760', 0, '4.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607e0857d42410.21539325', 493, 324, 0, 27, '1', 1, '0.2276', 0, '0.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607e0927f1ae09.27923901', 494, 325, 0, 4, 'FRASCO 120 ML', 1, '2.0140', 0, '3.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607e09fdeed9b0.56103911', 495, 326, 0, 10, '1X30 TAB', 30, '17.3520', 0, '34.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607e0a36dd9588.88115580', 496, 326, 0, 25, '1X10 TAB', 10, '5.7840', 0, '11.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607e0a76a87573.64871461', 497, 326, 0, 27, '1', 1, '0.5784', 0, '1.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607e0b18d7c122.94728374', 498, 327, 0, 10, '1X30 TAB', 30, '11.5470', 0, '22.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607e0b3b2f0316.10405953', 499, 327, 0, 25, '1X10 TAB', 10, '3.8490', 0, '7.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607e0b5a593d15.46618601', 500, 327, 0, 27, '1', 1, '0.3849', 0, '0.8500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607e0c09227885.68682951', 501, 328, 0, 30, 'CAJA 6 TAB', 6, '3.1740', 0, '6.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607e0cf6972a16.51907006', 502, 329, 0, 30, '1X50 TAB', 50, '94.9750', 0, '189.8500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607e0d2cb78676.47377984', 503, 329, 0, 25, '1X 5 TAB', 5, '9.4975', 0, '19.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607e0db5520297.92604746', 504, 329, 0, 27, '1', 1, '1.8995', 0, '3.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607eda6a6f5ec3.52861663', 505, 330, 0, 30, '1X50 TAB', 50, '33.2500', 0, '66.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607eda94f1dd43.87777528', 506, 330, 0, 25, '1X10 TAB', 10, '6.6500', 0, '13.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607edae21e3b12.51973147', 507, 330, 0, 27, '1', 1, '0.6650', 0, '1.4500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607edba296dd62.67960647', 508, 331, 0, 30, '1X50 TAB', 50, '14.8700', 0, '29.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607edbd478a1d8.18600253', 509, 331, 0, 25, '1X10 TAB', 10, '2.9740', 0, '6.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607edbff8a6dd1.25307669', 510, 331, 0, 27, '1', 1, '0.2974', 0, '0.6500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607eddddbb0118.45452959', 511, 332, 0, 10, 'CAJA 30 TAB', 1, '39.2870', 0, '56.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607ede73f0dfd9.22787167', 512, 333, 0, 10, 'CAJA 30 TAB', 1, '39.2870', 0, '56.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607edf57d8a365.61425925', 513, 334, 0, 12, 'CAJA 60 TAB', 1, '38.9895', 0, '55.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607ee0b57262c5.42928016', 514, 335, 0, 30, 'CAJA 14 TAB', 1, '21.8900', 0, '24.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607ee170803ed3.30553659', 515, 336, 0, 30, 'CAJA 28 TAB', 1, '35.5895', 0, '50.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607ee2006c0fd7.70707796', 516, 337, 0, 30, 'CAJA 14 TAB', 1, '23.6740', 0, '27.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607ee2be8190e4.70825873', 517, 338, 0, 30, 'CAJA 20 CAPS', 1, '37.0600', 0, '52.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607eebf4d7e928.50368301', 518, 339, 0, 12, 'CAJA 60 TAB', 1, '37.2810', 0, '53.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607eed1a132618.28720985', 519, 340, 0, 12, 'CAJA 60 TAB', 1, '37.2810', 0, '53.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607eedf0872d44.70284463', 520, 341, 0, 12, 'CAJA 60 TAB', 1, '37.2810', 0, '53.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607eeeb3bb59a1.58705661', 521, 342, 0, 10, 'CAJA 30 TAB', 1, '37.8845', 0, '51.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607ef255e44752.12615302', 522, 343, 0, 30, '1X24 SOBRES', 24, '3.4872', 0, '4.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607ef28f419f27.69076386', 523, 343, 0, 21, 'SOBRE 2 UN', 1, '0.1453', 0, '0.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607ef3a56e58e6.19707772', 524, 344, 0, 15, 'FRASCO 10 ML', 1, '1.9809', 0, '3.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607ef8da5b73b1.27601304', 525, 345, 0, 30, 'CAJA 2 TAB', 1, '1.1468', 0, '1.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607ef9a3ddd930.29936371', 526, 346, 0, 32, 'FRASCO 100 ML', 1, '2.5022', 0, '3.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607efa942a2cb1.84268333', 527, 347, 0, 3, 'FRASCO 60 ML', 1, '11.1057', 0, '17.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607efbb988b029.04235723', 528, 348, 0, 3, 'FRASCO 60 ML', 1, '14.8596', 0, '21.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607efca6e576e6.87092427', 529, 349, 0, 12, '1X60 TAB', 60, '8.2680', 0, '12.3600', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607efceebee241.47915154', 530, 349, 0, 25, '1X10 TAB', 10, '1.3780', 0, '2.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607efd100b7836.14052543', 531, 349, 0, 27, '1', 1, '0.1378', 0, '0.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607efefdf12d35.49878885', 532, 350, 0, 30, '1X50 TAB', 50, '5.5000', 0, '7.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607eff3c31fe99.76404547', 533, 350, 0, 25, '1X10 TAB', 10, '1.1000', 0, '1.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607eff703c2150.97777468', 534, 350, 0, 27, '1', 1, '0.1100', 0, '0.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f01f6b23865.71463429', 535, 351, 0, 13, '1X100 TAB', 100, '8.9200', 0, '13.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f02178bd490.06318350', 536, 351, 0, 25, '1X10 CAPS', 10, '0.8920', 0, '1.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f023c1740c7.52606700', 537, 351, 0, 27, '1', 1, '0.0892', 0, '0.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f0337d0e342.07361959', 538, 352, 0, 30, 'CAJA 10 TAB', 1, '19.6899', 0, '32.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f049901a988.65591416', 539, 353, 0, 10, '1X30 TAB', 30, '11.4630', 0, '17.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f04ba885717.65098981', 540, 353, 0, 25, '1X10 TAB', 10, '3.8210', 0, '6.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f04d92e5567.76282642', 541, 353, 0, 27, '1', 1, '0.3821', 0, '0.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f05c6b9b756.90999393', 542, 354, 0, 10, '1X 30 TAB', 30, '8.1090', 0, '12.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f05eb348586.77227958', 543, 354, 0, 25, '1X10 TAB', 10, '2.7030', 0, '4.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f060c982085.69302927', 544, 354, 0, 27, '1', 1, '0.2703', 0, '0.5500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f06da182c77.51268849', 545, 355, 0, 13, '1X100 TAB', 100, '11.5700', 0, '17.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f06f35472a7.79391837', 546, 355, 0, 25, '1X10 TAB', 10, '1.1570', 0, '1.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f070e342298.91552323', 547, 355, 0, 27, '1', 1, '0.1157', 0, '0.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f07fc6ae8b5.00151011', 548, 356, 0, 24, 'INHALADOR', 1, '2.3160', 0, '3.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f0abbcbe704.06924919', 549, 357, 0, 13, '1X100 CAPS', 100, '5.5300', 0, '8.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f0ae4d98dc6.53021050', 550, 357, 0, 25, '1X10 CAPS', 10, '0.5530', 0, '0.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f0b0edf5f94.60465432', 551, 357, 0, 27, '1', 1, '0.0553', 0, '0.1250', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f0be51ca155.82476419', 552, 358, 0, 30, '1X50 TAB', 50, '21.3550', 0, '32.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f0c0711e900.28232659', 553, 358, 0, 25, '1X10 TAB', 10, '4.2710', 0, '6.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f0c2dc439a7.00278829', 554, 358, 0, 27, '1', 1, '0.4271', 0, '0.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f0da3508590.69837126', 555, 359, 0, 30, 'CAJA 14 TAB', 1, '5.6672', 0, '9.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f0eb112d0b3.13583358', 556, 360, 0, 10, '1X30 TAB', 30, '26.1090', 0, '42.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f0edd609d33.41897270', 557, 360, 0, 25, '1X10 TAB', 10, '8.7030', 0, '14.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f0efd5d49e8.81411172', 558, 360, 0, 27, '1', 1, '0.8703', 0, '1.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f0ff66da6e2.71632666', 559, 361, 0, 29, 'CREMA ', 1, '4.9915', 0, '8.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f110ce11c30.82164852', 560, 362, 0, 30, '1X15 SOBRES', 15, '7.2390', 0, '12.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f1136172585.86903610', 561, 362, 0, 21, 'SOBRE', 1, '0.4826', 0, '0.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f127700f818.32538063', 562, 363, 0, 30, 'CAJA 14 TAB', 1, '7.3651', 0, '12.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f148cdaa8d1.90367672', 563, 364, 0, 30, 'CAJA 10 CAPS', 1, '3.2723', 0, '4.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f158075b092.49008911', 564, 365, 0, 30, 'CAJA 14 TAB', 1, '7.0747', 0, '11.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f16a5189a52.04016913', 565, 366, 0, 10, 'CAJA 30 TAB', 1, '9.0150', 0, '13.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f176d263586.19772519', 566, 367, 0, 30, 'CAJA 30 CAPS', 1, '13.0495', 0, '18.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f18c2250eb3.74129793', 567, 368, 0, 30, '1X25 SOBRES', 25, '4.7975', 0, '7.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f18f5b706d3.29378098', 568, 368, 0, 21, 'SOBRE', 1, '0.1919', 0, '0.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f3b19bc29c8.43424502', 569, 369, 0, 10, 'CAJA 30 TAB', 1, '21.2800', 0, '26.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f3cb9b722d7.03221551', 570, 370, 0, 10, 'CAJA 30 TAB', 1, '12.4250', 0, '15.8500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f3db8f420e1.13000647', 571, 371, 0, 30, 'CAJA 24 TAB', 1, '68.3000', 0, '81.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f3ed8e91141.59369886', 572, 372, 0, 3, 'FRASCO 60 ML', 1, '11.5800', 0, '14.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f415fb928a8.92630877', 573, 373, 0, 14, 'TUBO GEL', 1, '32.9500', 0, '42.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f425092dec7.82938457', 574, 374, 0, 30, 'CAJA 20 TAB', 1, '4.2600', 0, '5.1500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f42e4de7636.82475770', 575, 375, 0, 30, 'CAJA 20 TAB', 1, '7.2800', 0, '8.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f43a5067311.13385771', 576, 376, 0, 30, 'CAJA 20 TAB', 1, '23.7950', 0, '27.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f445d42bfd9.64092548', 577, 377, 0, 11, 'CAJA 40 TAB', 1, '8.5300', 0, '10.1500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f455ec8d087.95776951', 578, 378, 0, 4, 'FRASCO 120 ML', 1, '10.6800', 0, '13.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f46162f1b30.99863816', 579, 379, 0, 18, 'SPRAY NASAL', 1, '26.4600', 0, '31.6500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f471fb9ded2.94575138', 580, 380, 0, 24, 'INHALADOR', 1, '51.0400', 0, '61.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f480a4126e9.76372463', 581, 381, 0, 24, 'INHALADOR', 1, '44.4550', 0, '56.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f49209ded81.73321883', 582, 382, 0, 24, 'INHALADOR', 1, '4.9700', 0, '5.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f4ae817de18.26833703', 583, 383, 0, 30, 'CAJA 14 TAB', 1, '18.1400', 0, '21.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f4b965aa7a2.50199152', 584, 384, 0, 30, 'CAJA 14 TAB', 1, '17.4250', 0, '20.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S607f4c8b4d7901.21597095', 585, 385, 0, 30, 'CAJA 14 TAB', 1, '17.6700', 0, '21.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080262754b962.04650401', 586, 386, 0, 30, 'CAJA 14 TAB', 1, '19.9700', 0, '24.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608027180cd045.12589912', 587, 387, 0, 10, 'CAJA 30 TAB', 1, '40.9700', 0, '50.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608027f26b2126.99045920', 588, 388, 0, 10, 'CAJA 30 TAB', 1, '62.6600', 0, '77.6500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60802899a4b736.63320202', 589, 389, 0, 30, 'CAJA 14 TAB', 1, '21.4300', 0, '25.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080297f03cbd6.12441881', 590, 390, 0, 10, 'CAJA 30 TAB', 1, '48.6100', 0, '59.8500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60aa91f67e8290.68703268', 591, 391, 0, 30, '1X28', 28, '37.6292', 0, '46.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60802c868611c0.46083651', 592, 392, 0, 30, 'CAJA 21 GRAGEAS', 1, '10.4225', 0, '12.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60802d5851e1e7.33497985', 593, 393, 0, 30, 'CAJA 28 GRAGEAS', 1, '8.3700', 0, '10.6500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60802e28922081.09724852', 594, 394, 0, 30, 'CAJA 21 TAB', 1, '14.0600', 0, '18.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60802ec441def8.22433645', 595, 395, 0, 30, 'CAJA 28 GRAGEAS', 1, '17.5100', 0, '22.6500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080307095a8c5.46524169', 596, 396, 0, 23, 'FRASCO AMPOLLA', 1, '6.3950', 0, '8.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608031170b0de3.71414728', 597, 397, 0, 23, 'FRASCO AMPOLLA', 1, '8.0700', 0, '9.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608032038146e8.98371309', 598, 398, 0, 23, 'FRASCO AMPOLLA', 1, '25.2050', 0, '33.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080332b0147a9.13104481', 599, 399, 0, 23, 'FRASCO AMPOLLA', 1, '6.3950', 0, '9.1300', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608033f94f27a7.81480133', 600, 400, 0, 9, 'TARRO 150 G', 1, '5.6600', 0, '7.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608034ab97b3c2.40375339', 601, 401, 0, 9, 'TARRO 300 G', 1, '9.5500', 0, '12.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608035fb152318.05262616', 602, 402, 0, 30, ' CAJA 10 SOBRES', 1, '4.4900', 0, '5.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608036c88759a1.16888193', 603, 403, 0, 30, 'CAJA 24 TAB', 1, '7.6500', 0, '10.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608037cbd19dd9.39026564', 604, 404, 0, 15, 'FRASCO 105 ML', 1, '6.0900', 0, '8.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608038ebc4fd94.37642582', 605, 405, 0, 13, 'CAJA 100  MINITABS', 1, '17.9700', 0, '23.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60803b0c55f379.32877713', 606, 406, 0, 4, 'FRASCO  120 ML', 1, '7.1628', 0, '10.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60803c35252ca6.62267584', 607, 407, 0, 15, 'FRASCO 180 ML', 1, '2.3100', 0, '3.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080412149b0c8.36263097', 608, 408, 0, 27, 'KIT/2 UN', 1, '5.8000', 0, '6.9900', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60804376327540.86914231', 609, 409, 0, 15, 'FRASCO 300 ML', 1, '44.2200', 0, '49.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080443206da79.61550600', 610, 410, 0, 10, 'CAJA 30 TAB', 1, '24.7500', 0, '28.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60804580d56452.01019434', 611, 411, 0, 32, 'FRASCO 100 ML', 1, '23.2300', 0, '26.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080493605ffd3.53023674', 612, 412, 0, 15, 'FRASCO 70 ML', 1, '14.1300', 0, '15.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60804b64bc5384.91676109', 613, 413, 0, 30, 'CAJA 10 TAB', 1, '13.0200', 0, '14.8500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60804cd62d0af0.24467436', 614, 414, 0, 30, 'CAJA 14 TAB', 1, '20.6800', 0, '23.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60804d90b25d10.78842266', 615, 415, 0, 15, 'FRASCO 70 ML', 1, '13.8500', 0, '15.6500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60804ee3e97ac4.02546130', 616, 416, 0, 30, 'CAJA 20 TAB', 1, '1.7100', 0, '2.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60804fbb8085b1.93567332', 617, 417, 0, 15, 'FRASCO 110 ML', 1, '2.9500', 0, '4.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608050f8d333a1.33441801', 618, 418, 0, 15, 'FRASCO 480 ML', 1, '3.0300', 0, '4.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608051ed499e03.42463953', 619, 419, 0, 15, 'FRASCO 240 ML', 1, '3.6800', 0, '4.8500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608052d6029972.50739716', 620, 420, 0, 3, 'FRASCO 60 ML', 1, '2.8750', 0, '3.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608053bc6c2fd8.42698076', 621, 421, 0, 4, 'FRASCO 120 ML', 1, '5.5000', 0, '7.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60805c576b1d18.61548733', 622, 422, 0, 3, 'FRASCO 60 ML', 1, '4.0200', 0, '5.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60805e3160c6c1.63521093', 623, 423, 0, 1, 'CAJA 10 AMP. B', 1, '7.4400', 0, '10.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60805f0516d238.30010857', 624, 424, 0, 4, 'FRASCO 120 ML', 1, '3.3250', 0, '4.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60805fea792d80.63193424', 625, 425, 0, 30, '1X50 CAPS', 50, '3.5350', 0, '9.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608060086c5c97.47661309', 626, 425, 0, 27, '1', 1, '0.0707', 0, '0.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608060ec1bf1f0.81086174', 627, 426, 0, 3, 'FRASCO 60 ML', 1, '2.2500', 0, '3.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608061ab9dcf96.76822011', 628, 427, 0, 29, 'CREMA ', 1, '3.2550', 0, '4.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608062c9bee7a0.80608915', 629, 428, 0, 29, 'CREMA', 2, '2.7900', 0, '3.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608063daa76ec5.61264546', 630, 429, 0, 30, 'CAJA 10 TAB', 1, '1.9600', 0, '2.8500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60806550ca9ac8.72708497', 631, 430, 0, 30, '1X 50 TAB', 50, '9.9200', 0, '16.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080656a1c2db0.40493142', 632, 430, 0, 27, '1', 1, '0.1984', 0, '0.3200', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608066bb4183f3.72369521', 633, 431, 0, 30, 'CAJA 10 TAB', 1, '2.1000', 0, '3.0500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60806790efae50.15621945', 634, 432, 0, 30, '1X50 TAB', 50, '10.9400', 0, '17.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608067a7d7db10.80203348', 635, 432, 0, 27, '1', 1, '0.2188', 0, '0.3400', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608069628fa6b3.56745661', 636, 433, 0, 30, 'CAJA 20 TAB', 1, '1.2200', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080772398a4a5.25149609', 637, 434, 0, 13, '1X100 TAB', 100, '4.8600', 0, '8.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60807742ce36f1.18902425', 638, 434, 0, 27, '1', 1, '0.0486', 0, '0.0800', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608077f29006b0.88009308', 639, 435, 0, 30, 'CAJA 10 CAPS', 1, '1.0700', 0, '1.6500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080797d3f4958.11627603', 640, 436, 0, 30, 'CAJA 10 TAB', 1, '3.6000', 0, '5.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60807a8cda7944.33260290', 641, 437, 0, 30, '1X50 TAB', 50, '9.0050', 0, '27.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60807aaf8b6bf7.61183848', 642, 437, 0, 25, '1X10 TAB', 10, '1.8010', 0, '5.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60807ae423be45.54243362', 643, 437, 0, 27, '1', 1, '0.1801', 0, '0.5900', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60807cdbc41ff0.05908320', 644, 438, 0, 30, 'CAJA 10 TAB', 1, '4.3900', 0, '6.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60807e3c4f99d3.52511989', 645, 439, 0, 15, 'FRASCO 360 ML', 1, '5.3850', 0, '7.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60807ee9b9b3f0.46999566', 646, 440, 0, 3, 'FRASCO 60 ML', 1, '1.7399', 0, '2.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60807fd17fc191.10556128', 647, 441, 0, 9, 'CREMA TARRO 120 GR', 1, '7.0500', 0, '11.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60808078b51232.73365665', 648, 442, 0, 29, 'CREMA TUBO', 1, '4.3900', 0, '7.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080816923a803.56776030', 649, 443, 0, 23, 'AMPOLLA I.M.', 1, '3.7400', 0, '6.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60808236b69737.31716930', 650, 444, 0, 23, 'AMPOLLA I.M.', 1, '2.6200', 0, '4.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080846a73edc1.34663013', 651, 445, 0, 5, 'FCO VIDRIO 450 ML', 1, '1.5100', 0, '2.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608085e4d1f674.10626381', 652, 446, 0, 15, 'FCO PLAST 570 ML', 1, '1.4250', 0, '2.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60808ba2ec0b56.48908051', 653, 447, 0, 23, 'CAJA 3 AMP. I.M.', 1, '1.7700', 0, '3.0500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60808d13385c85.52961292', 654, 448, 0, 30, '1X40 TAB', 40, '4.7400', 0, '7.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60808da21cd882.59061742', 655, 448, 0, 25, '1X10', 10, '1.1850', 0, '2.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60808dc0714d62.92904556', 656, 448, 0, 27, '1', 1, '0.1185', 0, '0.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60808f70884f50.13260379', 657, 449, 0, 2, 'FCO GOTAS 30 ML', 1, '2.5400', 0, '4.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080911874aac9.69296037', 658, 450, 0, 12, 'CAJA 60 TAB', 1, '16.7800', 0, '20.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608091e68ac6b3.01589633', 659, 451, 0, 15, 'FCO 200 ML', 1, '11.8200', 0, '14.8500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080935d354142.18233371', 660, 452, 0, 10, 'CAJA 30 TAB', 1, '19.5000', 0, '24.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080942b366af0.05760960', 661, 453, 0, 30, 'CAJA 20 TAB', 1, '94.1700', 0, '122.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60809500b87d99.72899023', 662, 454, 0, 30, 'CAJA 28 TAB', 1, '29.6800', 0, '38.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608095df9ffa00.84394387', 663, 455, 0, 30, 'CAJA 10 TAB', 1, '29.2150', 0, '37.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608096bd9a2c36.21005208', 664, 456, 0, 30, 'CAJA 14 TAB', 1, '40.8902', 0, '53.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60809851990fd9.14468481', 665, 457, 0, 30, 'CAJA 28 TAB', 1, '81.8005', 0, '106.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608098eb225a57.79147798', 666, 458, 0, 30, 'CAJA 14 TAB', 1, '40.9005', 0, '52.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608099843b5501.41469691', 667, 459, 0, 30, 'CAJA 28 TAB', 1, '81.8005', 0, '106.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60809a990ab3b9.30254658', 668, 460, 0, 10, 'CAJA 30 TAB', 1, '17.2509', 0, '23.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60809b79b8cec9.35724340', 669, 461, 0, 10, 'CAJA 30 TAB', 1, '49.5902', 0, '69.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60809c15d48445.20213923', 670, 462, 0, 10, 'CAJA 30 TAB', 1, '32.7900', 0, '45.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60809cb99f75f7.21396777', 671, 463, 0, 10, 'CAJA 30 TAB', 1, '21.3700', 0, '29.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60809e0e5df4c8.40455695', 672, 464, 0, 30, 'CAJA 10 SOBRES', 1, '9.7100', 0, '12.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60809eed132a80.43532426', 673, 465, 0, 30, 'CAJA 10 SOBRES', 1, '7.9000', 0, '9.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60809f95321798.66883179', 674, 466, 0, 30, 'CAJA 10 SOBRES', 1, '6.9000', 0, '8.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080a09d0ba358.46840685', 675, 467, 0, 30, 'CAJA 7 TAB', 1, '7.9000', 0, '9.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080a1481be189.03067451', 676, 468, 0, 30, 'CAJA 28 TAB', 1, '36.4700', 0, '50.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080a1e72cd669.03693804', 677, 469, 0, 30, 'CAJA 20 TAB', 1, '20.9800', 0, '27.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080a2e21f68a1.44998459', 678, 470, 0, 3, 'FCO 60 ML', 1, '10.9000', 0, '14.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080a3939ed5d8.71494951', 679, 471, 0, 3, 'FCO 60 ML', 1, '18.9000', 0, '24.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '');
INSERT INTO `presentacion_producto` (`id_server`, `unique_id`, `id_pp`, `id_producto`, `id_server_prod`, `id_presentacion`, `descripcion`, `unidad`, `costo`, `costo_s_iva`, `precio`, `precio1`, `precio2`, `precio3`, `precio4`, `precio5`, `precio6`, `activo`, `barcode`) VALUES
(0, 'S6080a541d7e467.38394730', 680, 472, 0, 30, 'CAJA 10 TAB', 1, '15.1000', 0, '19.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080a746523b11.62697254', 681, 473, 0, 10, 'CAJA 30 TAB', 1, '15.9900', 0, '18.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080a9431df3c3.91321727', 682, 474, 0, 10, 'CAJA 30 TAB', 1, '2.6200', 0, '3.4500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080aa70ce87e3.47565413', 683, 475, 0, 10, 'CAJA 30 TAB', 1, '3.0100', 0, '3.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080ab34afe647.90496088', 684, 476, 0, 10, 'CAJA 30 TAB', 1, '6.7850', 0, '8.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080ac0e4e1478.31963065', 685, 477, 0, 10, 'CAJA 30 TAB', 1, '7.1200', 0, '9.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080acd960d783.74884124', 686, 478, 0, 30, 'CAJA 30 TAB', 1, '7.9900', 0, '9.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080af437d3d95.58179985', 687, 479, 0, 30, 'CAJA 30 TAB', 1, '7.5300', 0, '9.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080b0685fee94.18507612', 688, 480, 0, 3, 'FCO 60 ML', 1, '15.7500', 0, '22.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080b15bcd8c52.05047739', 689, 481, 0, 30, 'CAJA 20 TAB MAST', 1, '19.9900', 0, '28.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080b22f977871.59106990', 690, 482, 0, 19, 'CAJA 6 OVULOS', 1, '13.1250', 0, '18.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080b321cce335.74990542', 691, 483, 0, 30, 'CAJA 12 TAB EFERV.', 1, '1.9900', 0, '2.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080b4afde72f6.50020315', 692, 484, 0, 30, 'CAJA 12 TAB', 1, '2.6450', 0, '3.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080b55c2024e1.22107384', 693, 485, 0, 30, 'CAJA 12 TAB', 1, '2.9000', 0, '3.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080b6522f8e07.91383817', 694, 486, 0, 30, 'CAJA 10 TAB ', 1, '2.9900', 0, '3.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080b6d9cf8f16.10596911', 695, 487, 0, 30, 'CAJA 20 TAB', 1, '1.8550', 0, '2.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080b826848389.26431822', 696, 488, 0, 13, '1X100 TAB', 100, '7.9900', 0, '10.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080b8415f1326.55480504', 697, 488, 0, 25, '1X10 ', 10, '0.7990', 0, '1.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6080b8612955a5.29803444', 698, 488, 0, 27, '1', 1, '0.0799', 0, '0.1100', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608179e9b22c06.19169156', 699, 489, 0, 30, 'CAJA 20 TAB', 1, '1.8100', 0, '2.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60817c7fdcb1f8.66488093', 700, 490, 0, 30, 'CAJA 20 TAB', 1, '1.8550', 0, '2.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60817d59bbbe87.63729776', 701, 491, 0, 30, 'CAJA 12 TAB', 1, '2.4300', 0, '3.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60817e4094b454.18924172', 702, 492, 0, 30, '1X36 TAB', 36, '4.3380', 0, '8.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60817e6ed4e768.47243941', 703, 492, 0, 27, '1', 1, '0.1205', 0, '0.2700', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60817f748c4c13.57755649', 704, 493, 0, 30, 'CAJA 12 TAB', 1, '1.9000', 0, '2.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6081806cb5e1b0.65717134', 705, 20, 0, 27, '1', 1, '0.1094', 0, '0.1700', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608181471b04a4.68576892', 706, 494, 0, 10, '1X30 TAB', 30, '7.3035', 0, '10.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6081815dd2e1b1.45549617', 707, 494, 0, 27, '1', 1, '0.2435', 0, '0.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608182f85d9bc2.97641991', 708, 495, 0, 30, 'CAJA 12 ', 1, '2.9000', 0, '3.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608184a77b9848.32238395', 709, 496, 0, 30, 'CAJA 12 CAPS', 1, '1.8200', 0, '2.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6081859dd1e048.69531566', 710, 497, 0, 30, 'CAJA 12 TAB', 1, '2.9000', 0, '3.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6081860ed882e0.91951783', 711, 44, 0, 27, '1', 1, '0.1328', 0, '0.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60818816c5ddd0.58971605', 712, 498, 0, 29, 'TUBO CREMA', 1, '4.9000', 0, '7.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608188ae4448c1.65501071', 713, 499, 0, 30, 'CAJA 1 OVULO', 1, '8.9000', 0, '12.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60818b1776aae3.32860321', 714, 500, 0, 10, 'CAJA 30 TAB', 1, '14.9000', 0, '21.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60818bcadc96b3.10896714', 715, 501, 0, 15, 'FRASCO 60 TAB', 1, '21.9700', 0, '32.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60818ca7e68df4.80753074', 716, 502, 0, 10, 'CAJA 30 TAB', 1, '13.9000', 0, '19.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6081903b7e2db1.32760034', 717, 503, 0, 10, 'CAJA 30 TAB', 1, '10.9600', 0, '15.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608190f6516e92.61421150', 718, 504, 0, 30, 'CAJA 20 TAB', 1, '9.9800', 0, '14.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608192368ce157.78985709', 719, 505, 0, 29, 'TUBO CREMA', 1, '4.9000', 0, '5.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60819490184a25.91072867', 720, 506, 0, 10, '1X30 TAB', 30, '20.9000', 0, '26.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6081967cbeab51.57747775', 722, 506, 0, 27, '1', 1, '0.6910', 0, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608197f94a9551.00177703', 723, 507, 0, 30, '1X40 TAB', 40, '12.9000', 0, '16.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608198130612b9.75090549', 724, 507, 0, 27, '1', 1, '0.3099', 0, '0.4500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608199745640d7.68239373', 725, 508, 0, 30, '1X40 TAB', 40, '16.9000', 0, '21.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60819990d8f710.09617633', 726, 508, 0, 27, '1', 1, '0.4063', 0, '0.6500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60819b05e25949.12971875', 727, 509, 0, 10, 'CAJA 30 TAB', 1, '10.9900', 0, '13.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60819c381b57b1.95984857', 728, 510, 0, 3, 'FCO 60 ML', 1, '12.9900', 0, '16.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60819dd1849103.54605724', 729, 511, 0, 10, 'CAJA 30 TAB', 1, '25.9900', 0, '32.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60819f682238a8.10800781', 730, 512, 0, 30, 'CAJA 15 TAB', 1, '8.9900', 0, '10.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6081a023b91822.85152061', 731, 513, 0, 10, 'CAJA 30 TAB', 1, '17.9900', 0, '22.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6081a155f19267.23793209', 732, 514, 0, 10, 'CAJA 30 TAB', 1, '20.9900', 0, '25.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6081a293e86004.01780473', 733, 515, 0, 30, 'CAJA 15 TAB', 1, '9.9900', 0, '12.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6081a39cc401f2.77542923', 734, 516, 0, 30, '1X 40 TAB', 40, '14.8800', 0, '18.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6081a3ce548997.12231712', 735, 516, 0, 27, '1', 1, '0.3645', 0, '0.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6081a564e57846.27168252', 736, 517, 0, 10, 'CAJA 30 TAB', 1, '10.9990', 0, '24.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6081a605cc1e33.98508945', 737, 518, 0, 30, 'CAJA 20 TAB', 1, '9.9990', 0, '20.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6081a6d982a865.91461013', 738, 519, 0, 28, 'CREMA VAGINAL', 1, '13.9000', 0, '17.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6081a7cd18c7e8.35664717', 739, 520, 0, 30, 'CAJA 28 TAB', 1, '40.9900', 0, '49.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6081a8668e7ed3.75033434', 740, 521, 0, 30, 'CAJA 14 TAB', 1, '20.9900', 0, '24.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6081cc7bd11b31.67392435', 741, 3, 0, 27, '1', 1, '0.0718', 0, '0.1100', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6082e4693f0107.13790417', 742, 14, 0, 25, '1X10 TAB', 10, '0.9164', 0, '1.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6082e4a1b1dc96.34037403', 743, 14, 0, 27, '1', 1, '0.0916', 0, '0.1500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6082e7c3385133.68704057', 744, 16, 0, 25, '1X10 TAB', 10, '3.1670', 0, '4.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6082e7e1a8bf15.59750639', 745, 16, 0, 27, '1', 1, '0.3167', 0, '0.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b0afeb24b22.93530989', 746, 522, 0, 23, 'AMPOLLA INYECTABLE', 1, '1.3763', 0, '2.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b0c64002991.37047920', 747, 523, 0, 23, 'AMPOLLA INYECTAABLE', 1, '1.5037', 0, '2.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b0eb5e39581.73143350', 748, 524, 0, 13, '1X100', 100, '0.8900', 0, '10.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b0ece0e0c72.98038693', 749, 524, 0, 25, '1X10', 10, '0.0890', 0, '1.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b0efd65e789.45201921', 750, 524, 0, 27, '1', 1, '0.0089', 0, '0.1200', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b1081121123.36849419', 751, 525, 0, 23, 'AMPOLLA INYECTABLE', 1, '0.6195', 0, '1.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b13ddd26114.44541383', 752, 526, 0, 13, '1X100', 100, '10.0900', 0, '20.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b13f55caa24.76371456', 753, 526, 0, 27, '1', 1, '0.1009', 0, '0.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b17686b9e72.83833771', 754, 527, 0, 27, '1', 1, '1.3699', 0, '2.1500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b190fca3477.73387346', 755, 528, 0, 27, '1', 1, '1.4004', 0, '2.1500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b1a1b329494.64333007', 756, 529, 0, 27, '1', 1, '1.4159', 0, '2.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b1d300de2a8.71366206', 757, 530, 0, 13, '1X100', 100, '3.0500', 0, '13.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b1d4b51d0b4.64211116', 758, 530, 0, 25, '1X10', 10, '0.3050', 0, '1.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b1d6ba40563.78205853', 759, 530, 0, 27, '1', 1, '0.0305', 0, '0.1600', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b1ea09b2401.91158563', 760, 531, 0, 30, '1X50', 50, '8.4950', 0, '28.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b1f7ca8dc74.33179469', 761, 531, 0, 25, '1X10', 10, '1.6990', 0, '3.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b2008722a86.66415707', 762, 531, 0, 27, '1', 1, '0.1699', 0, '0.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b2162aa4175.12973511', 763, 532, 0, 13, '1X100', 100, '7.0100', 0, '17.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b218768b6d5.99449446', 764, 532, 0, 25, '1X10', 10, '0.7010', 0, '1.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b21aa709474.03929758', 765, 532, 0, 27, '1', 1, '0.0701', 0, '0.1800', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b2294267ba7.25961162', 766, 533, 0, 13, '1X100', 100, '5.1800', 0, '21.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b22ad20f2f4.32981372', 767, 533, 0, 25, '1X10', 10, '0.5180', 0, '2.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b22d80a8d10.88502216', 768, 533, 0, 27, '1', 1, '0.0518', 0, '0.2300', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b23bc991d47.47417222', 769, 534, 0, 13, '1X100', 100, '15.4144', 0, '28.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b23d623d924.09230219', 770, 534, 0, 25, '1X10', 10, '1.5414', 0, '2.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b23f43d9fc4.38469207', 771, 534, 0, 27, '1', 1, '0.1541', 0, '0.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b250f55ac63.89747145', 772, 535, 0, 27, '1', 1, '1.7699', 0, '2.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S608b25a4592a12.83276431', 773, 536, 0, 27, '1', 1, '1.2920', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6091527adbf8a3.74017112', 774, 537, 0, 10, '1X30', 30, '12.4063', 0, '17.6200', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609156b1c3d944.47017099', 775, 538, 0, 15, 'FRASCO 150 ML', 1, '11.3102', 0, '16.0650', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609157b416a5b9.34509349', 776, 539, 0, 23, 'AMP.I.V.', 1, '6.6639', 0, '9.4700', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6091587118b7c7.99084240', 777, 540, 0, 30, '1X3', 3, '15.7044', 0, '22.3100', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609158c56b1a78.38149743', 779, 540, 0, 23, 'AMP. I.M.', 1, '5.2348', 0, '7.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '764600110360'),
(0, 'S609159f1003545.22447885', 780, 541, 0, 30, 'CAJA 5 TAB', 1, '9.1416', 0, '15.6700', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60931af49c02e1.21298067', 781, 542, 0, 23, '1X5 AMP', 5, '5.5850', 0, '6.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60931c5d428fd4.71015796', 782, 543, 0, 13, '1X100', 100, '18.7000', 0, '27.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60931c78632dc3.70708092', 783, 543, 0, 27, '1', 1, '0.1870', 0, '0.2900', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60931fb41b9d12.15468712', 784, 544, 0, 13, '1X100', 100, '11.0619', 0, '15.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60931fccc5ca58.78557745', 785, 544, 0, 27, '1', 1, '0.1106', 0, '0.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609328d91e6e49.11685222', 786, 545, 0, 27, '1', 1, '16.7600', 0, '20.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609329ac0b7597.96279853', 787, 546, 0, 27, '1', 1, '29.1500', 0, '37.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60932ba6b670f9.63216094', 788, 547, 0, 27, '1', 1, '33.6600', 0, '43.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60932cc5ac91b3.10951978', 789, 548, 0, 27, '1', 1, '13.6650', 0, '17.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60932d9a445c25.91802035', 790, 549, 0, 27, '1', 1, '13.6600', 0, '17.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60932e57549341.28897372', 791, 550, 0, 27, '1', 1, '38.0300', 0, '48.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60932f17927b04.43490474', 792, 551, 0, 27, '1', 1, '16.4000', 0, '21.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60932fbb8e0732.16964505', 793, 552, 0, 27, '1', 1, '16.4000', 0, '21.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609334203ceaf4.47075890', 794, 553, 0, 10, 'CAJA  ', 1, '8.1900', 0, '11.8500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S6093359e49e948.26586760', 795, 554, 0, 23, '1X3 AMP.', 3, '10.3128', 0, '12.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609ac7011c8757.47181083', 796, 211, 0, 25, '1X10', 10, '0.9740', 0, '1.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609ac719af5961.58168439', 797, 211, 0, 27, '1', 1, '0.0974', 0, '0.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609bf8d33f4698.18394142', 798, 555, 0, 13, '1X100', 100, '43.2662', 0, '59.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609bf8d3402041.55434713', 799, 555, 0, 25, '1X4', 4, '1.7306', 0, '2.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609bf8d3405e82.76348979', 800, 555, 0, 27, '1X1', 1, '0.4327', 0, '0.6400', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609e8845b4afb2.73221729', 801, 556, 0, 15, 'FRASCO 240 ML', 1, '15.3648', 0, '21.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609e893ecc8d56.66995876', 802, 557, 0, 30, '1X12', 12, '22.9380', 0, '32.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609e89c15aa906.82267932', 804, 557, 0, 27, '1', 1, '1.9115', 0, '2.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '612255331213'),
(0, 'S609e8b33e37927.20452773', 805, 558, 0, 30, '1X54', 54, '4.8673', 0, '9.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609e8b5466ab39.89459164', 806, 558, 0, 27, '1', 1, '0.0901', 0, '0.1700', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609e8c45b11dc7.54441872', 807, 559, 0, 30, '1X54', 54, '4.8673', 0, '9.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609e8c5eda3c25.64343128', 808, 559, 0, 27, '1', 1, '0.0901', 0, '0.1700', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609fd927172154.54910411', 809, 560, 0, 27, '1', 1, '11.3800', 0, '14.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609fda088cdef0.19738085', 810, 561, 0, 27, '1', 1, '12.1000', 0, '15.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609fdaeb95e402.45091507', 811, 562, 0, 27, '1', 1, '11.4700', 0, '14.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609fdb75273606.55287494', 812, 563, 0, 27, '1', 1, '8.1100', 0, '10.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609fdc1d674112.26200219', 813, 564, 0, 27, '1', 1, '24.3900', 0, '31.3500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609fde21ec57f9.84021929', 814, 565, 0, 27, '1', 1, '23.1700', 0, '29.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609fdec0607b28.10474740', 815, 566, 0, 27, '1', 1, '16.2800', 0, '20.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S609fdf4d2fb0b3.01756538', 816, 567, 0, 27, '1', 1, '13.9250', 0, '17.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60a2f7ba647ea3.54282285', 817, 210, 0, 25, '1x10', 10, '4.0160', 0, '11.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60a2f817d9c625.37513277', 818, 210, 0, 27, '1x1', 1, '0.4016', 0, '1.1500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60a2fba14a94e6.66786232', 819, 568, 0, 23, '1', 1, '46.8500', 0, '69.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60a56f29861412.73426449', 820, 569, 0, 13, '1X100', 100, '10.4000', 0, '27.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60a56f4023c7f6.25484482', 821, 569, 0, 25, '1X10', 10, '1.0400', 0, '3.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60a56f74e8b4f8.33647443', 822, 569, 0, 27, '1', 1, '0.1040', 0, '0.3500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60a5727e2c3451.24461091', 823, 570, 0, 4, 'FRASCO 120 ML', 1, '3.1500', 0, '5.3500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60a573a0213d66.87624300', 824, 571, 0, 15, 'FRASCO 75 ML', 1, '5.9592', 0, '8.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60a57541d59b85.59095422', 825, 572, 0, 4, 'FRASCO 120 ML', 1, '7.1972', 0, '9.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60a6eec29214f3.67813722', 826, 573, 0, 27, '1', 1, '2.1200', 0, '3.3300', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60a6f043d81b18.06652889', 827, 574, 0, 27, 'Venda de gasa 4\" x 1', 1, '1.4900', 0, '2.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60a6f1316c4470.45449395', 828, 575, 0, 27, 'Venda de Gasa 3\"X11y', 1, '1.1300', 0, '1.8500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '27'),
(0, 'S60a6f2dd6a5e52.45238098', 829, 576, 0, 27, 'Venda de gasa 2\"X11y', 1, '0.9000', 0, '1.3800', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '28'),
(0, 'S60a6f541805d21.31095174', 830, 577, 0, 27, 'Venda Elastica 6\" X5', 1, '2.3900', 0, '3.3800', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '29'),
(0, 'S60a6f5e980f1f8.68883269', 831, 578, 0, 27, 'Venda Elastica 5\"x 5', 1, '1.9900', 0, '2.8100', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '30'),
(0, 'S60a6f673381b44.10430110', 832, 579, 0, 27, 'Venda Elastica 4\"x 5', 1, '1.6200', 0, '2.2900', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '31'),
(0, 'S60a6f7029f5848.35417803', 833, 580, 0, 27, 'Venda Elastica 3\" x5', 1, '1.2100', 0, '1.7100', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '32'),
(0, 'S60a6f796112434.89162602', 834, 581, 0, 27, 'Venda Elastica 2\" X ', 1, '0.9230', 0, '1.3400', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '33'),
(0, 'S60a705a5cf8480.41305793', 838, 585, 0, 15, 'Electrolit Pediatric', 1, '1.5487', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60a7062cc88201.79807374', 839, 586, 0, 15, 'Electrolit Pediatric', 1, '1.5487', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60a706952244e5.45409495', 840, 587, 0, 15, 'Electrolit Pediatric', 1, '1.5487', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60a7ba1b6309e4.80670048', 846, 582, 0, 15, 'FRASCO', 1, '1.5487', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60a7ba81e04046.60960694', 847, 583, 0, 15, 'FRASCO', 1, '1.5487', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60a7bae3136c05.47718613', 848, 584, 0, 15, 'FRASCO', 1, '1.5487', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60aa9210307831.91308183', 850, 391, 0, 27, '1', 1, '1.3439', 0, '1.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60abc3ba1a6442.05333245', 851, 364, 0, 27, '1X1', 1, '3.2723', 0, '0.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60aed360a13e43.80275775', 852, 87, 0, 30, '1X50', 50, '3.5398', 0, '7.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60aed4fdc79930.86365193', 853, 588, 0, 23, 'AMP IM', 1, '1.5929', 0, '3.9800', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60aed5ffb26874.27266869', 854, 589, 0, 29, 'CREMA', 1, '3.9866', 0, '5.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60aed7b84b3a37.41585333', 855, 590, 0, 15, 'FRASCO 40 ML', 1, '3.8057', 0, '5.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60aef7fdc15db7.20923414', 856, 542, 0, 27, '1', 1, '1.1170', 0, '1.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60b9607f68cb84.04400941', 857, 591, 0, 31, '1x100', 100, '14.0000', 0, '25.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60b9607f697172.96496733', 858, 591, 0, 27, '1x1', 1, '0.1400', 0, '0.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60b963bdd0fd70.10076070', 859, 592, 0, 15, '1', 1, '1.5487', 0, '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60b9655b322813.97349740', 860, 593, 0, 27, 'FLETE', 1, '1.9550', 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60c37405e68f78.38610764', 861, 594, 0, 27, '1', 1, '0.3717', 0, '0.9000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60c374f2197d79.73735445', 862, 595, 0, 27, '1', 1, '0.7434', 0, '2.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60c37608bd9c21.77011507', 863, 596, 0, 27, '1', 1, '1.8054', 0, '4.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60c376e08b6be6.52625990', 864, 597, 0, 4, 'FRASCO 120 ML', 1, '0.7965', 0, '1.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60c8b1664d2b33.51398418', 865, 598, 0, 30, 'CAJA', 1, '11.3550', 0, '17.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60c8b7fc20cd09.99978620', 866, 599, 0, 27, '1', 1, '0.9433', 0, '1.4200', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60c8bb83af3b46.46345316', 867, 600, 0, 10, 'CAJA 30 UN', 1, '8.9600', 0, '12.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60c8bcce063729.85982492', 868, 601, 0, 30, 'CAJA ', 1, '7.5600', 0, '11.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60ca0e92750c17.07941490', 869, 602, 0, 27, '1X1', 1, '0.9900', 0, '1.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60ca0fcb401686.68786305', 870, 603, 0, 27, '1X1', 1, '0.9700', 0, '1.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60ca1167e5b2d7.34136520', 871, 604, 0, 13, '1X100', 100, '4.6500', 0, '7.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60ca1167e5e2f8.65623815', 872, 604, 0, 27, '1X1', 1, '0.0465', 0, '0.1500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60ca18d40e6904.38501541', 873, 605, 0, 13, '1X100', 100, '2.9200', 0, '7.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60ca18d40e9cb6.89887277', 874, 605, 0, 25, '1X10', 10, '0.2920', 0, '0.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60ca18d40ec8a9.12074419', 875, 605, 0, 27, '1X1', 1, '0.0292', 0, '0.0750', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60ca19d9d59511.69429612', 876, 606, 0, 13, '1X100', 100, '22.9200', 0, '30.6800', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60ca19d9d5c6a2.60902480', 877, 606, 0, 25, '1X10', 10, '2.2920', 0, '3.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60ca19d9d5f2f5.61362578', 878, 606, 0, 27, '1X1', 1, '0.2292', 0, '0.3500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60ca1c9784fe07.14504821', 879, 607, 0, 30, '1X24', 24, '2.1239', 0, '4.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60ca1c9785a458.33065665', 880, 607, 0, 27, '1X1', 1, '0.0885', 0, '0.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60d7566e14f652.45186704', 881, 608, 0, 27, 'SOBRE', 1, '3.8500', 0, '3.8500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60da24c22fb8a8.88943126', 882, 609, 0, 9, '1X1', 1, '2.1303', 0, '3.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60da2ba35755c4.67798083', 883, 610, 0, 9, '1X1', 1, '2.3119', 0, '3.3500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60db369de30868.87041001', 884, 611, 0, 27, '1', 1, '4.9200', 0, '6.8500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60db3773d8f5a9.07813641', 885, 612, 0, 27, '1', 1, '4.2100', 0, '5.8500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60db3879d3ac89.17836333', 886, 613, 0, 13, '1X100', 100, '17.7000', 0, '22.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60db3946632019.02887475', 887, 613, 0, 27, '1', 1, '0.1770', 0, '0.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60db3a4306b2a3.04655892', 888, 614, 0, 13, '1X100', 100, '15.4800', 0, '20.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60db3a8e312480.51964466', 890, 614, 0, 27, '1', 1, '0.1548', 0, '0.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '4968420726985'),
(0, 'S60db3bff58c225.78838479', 891, 615, 0, 31, 'BOLSA 10 UN', 1, '8.0500', 0, '11.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60db3ccd8e85a3.96409806', 892, 616, 0, 31, 'BOLSA 10 UN', 1, '7.2800', 0, '10.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60db3d53db6d91.82674941', 893, 617, 0, 31, 'BOLSA 10 UN', 1, '8.6700', 0, '12.3900', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60db3f0916bc93.85371181', 894, 618, 0, 23, 'AMP IM IV', 1, '2.9700', 0, '4.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60db3fbb650043.37571788', 895, 619, 0, 23, 'AMP IM IV', 1, '3.8600', 0, '5.3500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60dcb9c38715d1.87078048', 896, 620, 0, 23, 'AMPIM', 1, '7.4685', 0, '12.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60dcbe3a55c328.16334205', 897, 621, 0, 27, '1', 1, '1.2037', 0, '2.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60dcbea6565b49.61894148', 898, 622, 0, 27, '1', 1, '1.2037', 0, '2.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60dcbf3989de03.09726046', 899, 623, 0, 27, '1', 1, '1.6726', 0, '2.7500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60dcbfd8221ee7.17855692', 900, 624, 0, 4, 'FRASCO 120 ML', 1, '3.9965', 0, '5.9500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60dcc0e2dfc7d2.65380304', 901, 625, 0, 10, '1X30', 30, '12.1200', 0, '20.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60dcc11e579260.69247730', 902, 625, 0, 25, '1X10', 10, '4.0400', 0, '6.8000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60dcc158565ca4.24373293', 903, 625, 0, 27, '1', 1, '0.4040', 0, '0.7000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60e35abb49c445.83904067', 904, 626, 0, 27, '1X1', 1, '3.2000', 0, '5.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60e636e5d2c9d0.25921608', 905, 170, 0, 25, '1X4', 4, '0.1700', 0, '1.2000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60e7462db18ab7.87578171', 906, 206, 0, 25, '1X10', 10, '2.9200', 0, '7.1000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60e74657ef4a78.42245393', 907, 206, 0, 27, '1', 1, '0.2920', 0, '0.7400', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60e7471f15db34.68228532', 908, 230, 0, 25, '1X10', 10, '1.4280', 0, '3.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60e74742612383.21585576', 909, 230, 0, 27, '1', 1, '0.1428', 0, '0.3600', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60e74817b6c119.39639219', 910, 202, 0, 25, '1X10', 10, '6.2300', 0, '15.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60e748385ce964.12360254', 911, 202, 0, 27, '1', 1, '0.6230', 0, '1.5600', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60e74cb9a07a74.11872290', 912, 208, 0, 25, '1X10', 10, '5.6460', 0, '13.5000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60e74ce4e3db32.41741628', 913, 208, 0, 27, '1', 1, '0.5646', 0, '1.4500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60e9e5ef8688e8.47825305', 914, 311, 0, 25, '1X6', 6, '2.0172', 0, '4.2500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60e9e611896b48.22045159', 915, 311, 0, 27, '1', 1, '0.3362', 0, '0.7400', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60edf1c71b8a07.95771567', 916, 627, 0, 15, 'FRASCO 115 ML', 1, '2.2641', 0, '3.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, ''),
(0, 'S60edfa4e765482.80471522', 917, 628, 0, 27, '1', 1, '3.5488', 0, '6.3000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `id_server` int(11) NOT NULL,
  `unique_id` text COLLATE utf8_spanish_ci NOT NULL,
  `id_producto` int(11) NOT NULL,
  `barcode` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `codart` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(250) CHARACTER SET latin1 NOT NULL,
  `composicion` text COLLATE utf8_spanish_ci NOT NULL,
  `marca` varchar(100) CHARACTER SET latin1 NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `perecedero` tinyint(1) NOT NULL,
  `exento` tinyint(1) NOT NULL,
  `minimo` int(11) NOT NULL,
  `decimals` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `imagen` varchar(250) CHARACTER SET latin1 NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `costo` float NOT NULL,
  `precio` float NOT NULL,
  `precio_mayoreo` float NOT NULL,
  `color` text COLLATE utf8_spanish_ci NOT NULL,
  `id_laboratorio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`id_server`, `unique_id`, `id_producto`, `barcode`, `codart`, `descripcion`, `composicion`, `marca`, `estado`, `perecedero`, `exento`, `minimo`, `decimals`, `id_categoria`, `id_proveedor`, `imagen`, `id_sucursal`, `costo`, `precio`, `precio_mayoreo`, `color`, `id_laboratorio`) VALUES
(0, 'S6074c06d3761e6.99941303', 1, '18901790703210', '1', 'SECNIDAZOL 500 ML X 4 TAB SAIMED', 'SECNIDAZOL 500 MG CAJA 4 TB', 'SECNIDAZOL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6075b47928e601.67578722', 2, '011418699182', '2', 'ASPIRINA FORTE  X 100 TAB BAYER', 'ACIDO ACETILALICILICO 500 MG \nCAFEINA 50 MG', 'ASPIRINA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 4),
(0, 'S6075ba085d8711.42331709', 3, '011418030268', '3', 'ASPIRINA NIÑOS X 100  TAB MAST. BAYER', 'ACIDO ACETILSALICILICO', 'ASPIRINA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 4),
(0, 'S6075bc77852662.02635679', 4, '7410002800028', '4', 'ACETAMINOFEN MK   500MG X 100 TAB', 'ACETAMINOFEN', 'MK', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 6),
(0, 'S6075bef443ab53.95171809', 5, '011418462823', '5', 'ALKA-SELTZER EXTREME BOOST TAB ESFERVECENT', 'ACIDO ACETILSALICILICO\nCAFEINA', 'EXTREME', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 4),
(0, 'S6075c16a642c40.52916239', 6, '011418386891', '6', 'ALKA-SELTZER RAPID.ALIV. TAB EFERVECENT', 'ACIDO  ACETYLSALICILICO\nBICARBONATO DE SODIO\nACIDO CITRICO', 'ALKA-SELTZER', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 4),
(0, 'S6075c326e78109.38118659', 7, '7410003710555', '7', 'ARTRIBION VITAM. X20 SBS  BIOKEMICAL', 'VITAMINA B1 VITAMINA B6\nVITAMINA B12 DICLOFENACO SODICO\n', 'ARTRIBION', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 34),
(0, 'S6075c4f0b48ae3.80883739', 8, '011418240780', '8', 'ALKA-AD  2 MG X 60 TAB  BAYER', 'LOPERAMIDE HYDROCLORIDE', 'LOPERAMIDE', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 4),
(0, 'S6075c6321bebc6.99756001', 9, '7702057023119', '9', 'ANA-DENT TD X 100 TAB  TERA.MEDIC', 'DICLOFENAC SODICO\nACETAMINOFEN', 'DICLOFENAC', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 38),
(0, 'S6075d027d683a6.66712916', 10, '011418215092', '10', 'ALKA-GASTRIC  X 36 TAB MAST. BAYER', 'HIDROXICARBONATO DE MAGNESIO Y ALUMINIO', 'HIDROXICARBONATO', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 4),
(0, 'S6075d5e9143f02.43973351', 11, '7501088500114', '11', 'ANARA LAXANTE X 50 SOBRES TAB CHINOIN', 'PICOSULFATO DE SODIO 5 MG', 'ANARA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 39),
(0, 'S6075d6f220af65.36062023', 12, '7501088500107', '12', 'ANARA GOTAS 7.5 MG CHINOIN', 'PICOSULFATO DE SODIO 7.5 MG/ML', 'ANARA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 39),
(0, 'S6075d80d47b820.14866481', 13, '769041045424', '13', 'INTESTINOMICINA AD X 100 CAPS LOPEZ', 'LOPERAMIDA HCI\nSIMETICONA', 'INTESTINOMICINA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 11),
(0, 'S6075d9e859b366.44251146', 14, '769041009792', '14', 'ALERFIN  CLORFENIRAMINA X200 TAB LOPEZ', 'CLORFENIRAMINA MALEATO 4MG', 'CLORFENIRAMINA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 11),
(0, 'S6075dd8e566516.56152222', 15, '029001', '15', 'BISMUTO COMPUESTO BLS X 100 SOBRE', 'SUBSALICILATO DE BISMUTO\nBENZONAFTOL', 'BISMUTO', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 32),
(0, 'S6075deb79fe2f7.19505735', 16, '7410000704557', '16', 'AIRESA-COMPUESTA DU. X100 CAPS FARDEL', 'BROMURO DE CLIDINIO\nDIMETILPOLISILOXANO GRANULAR', 'AIRESA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 36),
(0, 'S6075dfab3fb635.14185501', 17, '7410000704564', '17', 'AIRESA  50 MG FRASCO  GOTAS 15 ML', 'SIMETICONA 50MG', 'AIRESA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 36),
(0, 'S6075ef084a7a65.91112413', 18, '7501258214872', '18', 'BINOTAL 1000 X 50 TAB     SERRAL', 'AMPICILINA 1000 MG', 'AMPICILINA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 5),
(0, 'S6075f0987fd0b4.58723038', 19, '01', '19', 'BICARBONATO DE SODIO X 50 SBS', '', 'BICARBONATO', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 33),
(0, 'S6075f26b4fed75.61147186', 20, '011418216037', '20', 'BAY KID TAB MASTICABLE X 36 TAB', 'IBUPROFENO 50MG', 'BAY KID', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 4),
(0, 'S6075f45baa05e4.91493261', 21, '7702136642286', '21', 'CURITA REDONDA X 100 UN', '', 'CURE BAND', 1, 0, 0, 1, 0, 89, 4, '', 0, 0, 0, 0, '', 24),
(0, 'S6075f5223692f5.99762722', 22, '7702136645003', '22', 'CURITA STANDAR X100 UN', '', 'CURE BAND', 1, 0, 0, 1, 0, 89, 4, '', 0, 0, 0, 0, '', 24),
(0, 'S6075f6de67e488.94383189', 23, '011418205116', '23', 'DORIVAL 200 MG  X 60 GRAGEAS', 'IBUPROFENO 200 MG', 'DORIVAL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 4),
(0, 'S6075f89b3cdda1.85442205', 24, '011418399549', '24', 'DORIVAL  X 36 CAPS GEL', 'IBUPROFENO 200 MG', 'DORIVAL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 4),
(0, 'S6075fc78d653c9.51590964', 25, '7501298221670', '25', 'DOLO-NEUROBION N X 120 TAB', 'TIAMINA MONONITRATO, PIROXIDINA\nCYANOCOBALAMIN, DICLOFENACO', 'MERCK', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 15),
(0, 'S6075fe68dcd259.58340044', 26, '7501298265278', '26', 'NEUROBION VIT. X 120 TAB', 'VIT. B1  B6 B12', 'MERCK', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 15),
(0, 'S6076000bb0c188.32820522', 27, '7501298218151', '27', 'DOLO- NEUROBION AMP I.M.', 'TIAMINA CLORHIDRATO,PIRIDOXINA CLORHIDRATO\nLIDOCAINA CLORHIDRATO, CIANOCOBALAMINA\nDICLOFENACO SÓDICO', 'DOLO-NEUROBION', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 15),
(0, 'S607601058d0d89.06850710', 28, '7501298218205', '28', 'NEUROBION 25000 AMP. I.M. MERCK', 'VITAMINAS B1 B6 B12', 'MERCK', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 15),
(0, 'S60760244605015.04170430', 29, '769041045462', '29', 'DOLOFIN RAPID. ACCION NF X100 TAB LOP.', 'ACETAMINOFEN 500 MG\nCAFEÍNA 65 MG', 'LOPEZ', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 11),
(0, 'S607604093a7a51.44102666', 30, '7410000115483', '30', 'GARGANTINAS CARAMELOS', 'EUCALIPTO, GOMENOL, TERPINA HIDRATO\nMENTOL, BENZOCAINA, DEXTROMETORFANO\n', 'GARGANTINAS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 35),
(0, 'S607605ac65e742.07744824', 31, '7420002000151', '31', 'MUS-FLEX COMPUESTO X 50  TAB', 'CARISOPRODOL 200 MG\nNAPROXENO     500 MG', 'MC', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 40),
(0, 'S60770969787049.69385230', 32, '7891058008598', '32', 'NOVALGINA METAMIZOL SODICO X100 TAB', 'METAMIZOL SODICO (DIPIRONA)', 'NOVALGINA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 52),
(0, 'S60770b98d23269.82816209', 33, '7891058009052', '33', 'NOVALGINA JARABE 100 ML', 'METAMIZOL SODICO MONOHIDRATADO (DIPIRONA)', 'NOVALGINA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 52),
(0, 'S60771131376299.42273920', 34, '7451079000133', '34', 'PANADOL EXTRA FUERTE X 50 SBS 2 TAB', 'ACETAMINOFEN 500 MG', 'PANADOL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 12),
(0, 'S607714aa0c17b3.91713907', 35, '7451079000126', '35', 'PANADOL NIÑOS TAB MASTICABLE X 100', 'ACETAMINOFEN', 'PANADOL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 0),
(0, 'S6077173dc437b5.88091986', 36, '7451079003226', '36', 'PANADOL MULTI-SINTOMAS C/SB 2 TAB', 'ACETAMINOFEN, ANTIPIRÉTICO, BROMHIDRATO\nCLORFERINAMINA ,CLORHIDRATO DE FENILEFRINA', 'PANADOL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 12),
(0, 'S607719d1b36da8.26934863', 37, '7451079003271', '37', 'PANADOL NOCHE C/SB 2 TAB', 'ACETAMINOFEN CLORHIDRATO DE FENILEFRINA\nMALEATO DE CLORFENIRAMINA', 'PANADOL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 12),
(0, 'S60771b2b8d4154.35948786', 38, '7451079003318', '38', 'PANADOL SINUSITIS C/SB 2 TAB', 'ACETAMINOFEN ANTIPIRÉTICO \nCLORHIDRATO DE FENILEFRINA\nMALEATO DE  CLORFENIRAMINA', 'PANADOL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 12),
(0, 'S60771c9d50beb9.72281769', 39, '7451079003431', '39', 'PANADOL ULTRA C/SB 2 TAB', 'ACETAMINOFEN ANTIPIRÉTICO\nCAFEÍNA ANALGÉSICO', 'PANADOL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 12),
(0, 'S6077203123d638.69589698', 40, '7441020200644', '40', 'PRONOL NAPROXENO SODICO TAB', 'NAPROXENO SODICO 500 MG', 'PRONOL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 37),
(0, 'S607722548f6ef0.04750658', 41, '7452079700559', '41', 'SIN SUEÑO   X 100 TAB COFASA', 'CAFEÍNA ANHIDRA 150 MG\nTIAMINA MONONITRATO', 'SIN SUEÑO', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 33),
(0, 'S6077241a0ebd00.27570739', 42, '74410187', '42', 'SAL- ANDREWS ESFERVECENT SB', 'BICARBONATO DE SODIO ,SULFATO DE MAGNESIO \nSACARINA SÓDICA, ÁCIDO CÍTRICO', 'SAL-ANDREWS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 12),
(0, 'S60772731c3fb09.80612462', 43, '011418218604', '43', 'TABCIN GRIPE Y TOS X60 TAB ESFERV.', 'ÁCIDO ACETILSALICILICO MALEATO DE CLORFENIRAMINA\nBITARTRATO DE FENILEFRINA BROMHIDRATO DEXTROMETORFAN', 'TABCIN', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 4),
(0, 'S607728f6cfd301.76441178', 44, '011418217003', '44', 'TABCIN ADULTO FAST ACTION X 72 TAB', '', 'TABCIN', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 4),
(0, 'S60773ecea1b4c4.04684689', 45, '011418221017', '45', 'TABCIN INFANTIL TAB EFERVECENT', 'ACETAMINOFEN ,MALEATO DE CLORFENIRAMINA\nBITARTRATO DE FENILEFRINA ÁCIDO ASCORBICO', 'TABCIN', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 4),
(0, 'S60776f77e1dec2.59035901', 46, '7415100205379', '46', 'VIRO-GRIP AM X 24 SOBS GEL CAPS', 'ACETAMINOFEN\nDEXTROMETORFANO\nFENILEFRINA', 'VIRO-GRIP', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S60777075af02b3.43638566', 47, '7415100205386', '47', 'VIRO-GRIP PM X 24 SOBS GEL  CAPS', '', 'VIRO-GRIP', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S607855dfd998d8.47838721', 48, '7415100224264', '48', 'VIRO-GRIP  AM  TE  X 24 SOBRES', '', 'VIRO-GRIP', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S607857b7cf8936.84754689', 49, '7415100224271', '49', 'VIRO-GRIP PM TE X 24 SOBRES', '', 'VIRO-GRIP', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S6078599e847ed6.94174567', 50, '7500435122726', '50', 'VIC VAPORUB LATITA', '', 'VIC VAPORUB', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 30),
(0, 'S60785b0ad42097.31469975', 51, '7590002012468', '51', 'VIC TARRO PEQUEÑO 50 GR', '', 'VIC VAPORUB', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 30),
(0, 'S60785bdc587ea7.50824728', 52, '7590002012475', '52', 'VIC TARRO GRANDE 100 GR', '', 'VIC VAPORUB', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 30),
(0, 'S60785d5db8df75.04864758', 53, '7501001116187', '53', 'VIC 44 FRASCO 120 ML', '', 'VIC', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 30),
(0, 'S60785e678a1aa5.46151899', 54, '7501001147846', '54', 'VICK SOBRE CARAMELOS DROPS', '', 'VICK', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 30),
(0, 'S607860b2c6d069.59111219', 55, '7410000114189', '55', 'SUERO ORALITE COCO VIDRIO 450 ML', '', 'ORALITE', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 3),
(0, 'S607861acee9e57.22605289', 56, '7410000114240', '56', 'SUERO ORALITE VITAM. VIDRIO 450 ML', '', 'ORALITE', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 3),
(0, 'S60786311d90f14.05232996', 57, '7410000010764', '57', 'SUERO ORALDEX 450 ML', '', 'ORALDEX', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 49),
(0, 'S607863bb440539.28533011', 58, '7501125168345', '58', 'SUERO ELECTROLIT COCO 625 ML', '', 'ELECTROLIT', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 29),
(0, 'S60786467a66596.92591964', 59, '7501125170805', '59', 'SUERO ELECTROLIT FRESA/KIWI 625 ML', '', 'ELECTROLIT', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 29),
(0, 'S607864e462d5c5.58085357', 60, '7501125168369', '60', 'SUERO ELECTROLIT FRESA 625 ML', '', 'ELECTROLIT', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 29),
(0, 'S6078654710cfe7.86731722', 61, '7501125168383', '61', 'SUERO ELECTROLIT MANZANA 625 ML', '', 'ELECTROLIT', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 29),
(0, 'S607865a66e1275.98471072', 62, '7501125170829', '62', 'SUERO ELECTROLIT UVA 625 ML', '', 'ELECTROLIT', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 29),
(0, 'S6078662494e8b9.81523036', 63, '7501125168390', '63', 'SUERO ELECTROLIT NARANJ. MAND. 625 ML', '', 'ELECTROLIT', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 29),
(0, 'S60786be5691f89.56406686', 64, '7509546000985', '64', 'PASTA DENTAL COLGATE TRIPLE A. 75 ML', '', 'COLGATE', 1, 0, 0, 1, 0, 88, 4, '', 0, 0, 0, 0, '', 31),
(0, 'S60786ce533d253.87207763', 65, '7891024183083', '65', 'HILO DENTAL COLGATE 25M', '', 'COLGATE', 1, 0, 0, 1, 0, 88, 4, '', 0, 0, 0, 0, '', 31),
(0, 'S60786f1389cc61.41106130', 66, '7509546651842', '66', 'KIT CEPILLO   PASTA COLGATE', '', 'COLGATE', 1, 0, 0, 1, 0, 88, 4, '', 0, 0, 0, 0, '', 31),
(0, 'S6078702359df15.04206087', 67, '7702031642725', '67', 'LISTERINE COOL MINT 250 ML', '', 'JHONSON ', 1, 0, 0, 1, 0, 88, 4, '', 0, 0, 0, 0, '', 26),
(0, 'S6078713eab00b1.60092081', 68, '7702035432339', '68', 'LISTERINE COOL MINT 500 ML', '', 'LISTERINE', 1, 0, 0, 1, 0, 88, 4, '', 0, 0, 0, 0, '', 26),
(0, 'S607871fa6f0159.32228090', 69, '7702035431110', '69', 'LISTERINE ORIGINAL 500 ML', '', 'LISTERINE', 1, 0, 0, 1, 0, 88, 4, '', 0, 0, 0, 0, '', 26),
(0, 'S60787303e71810.22283602', 70, '02', '70', 'CLORHEXIDINA COLUT. ENJUAGUE BUCAL', '', 'CLORHEXIDINA', 1, 1, 0, 1, 0, 88, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S607874914cbe45.30315785', 71, '03', '71', 'ALCOHOL 90º 750 ML', '', 'ALCOHOL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 53),
(0, 'S60787515e8a0e7.67634499', 72, '04', '72', 'ALCOHOL 90º 240 ML', '', 'ALCOHOL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 53),
(0, 'S60787591ba9fb4.69205781', 73, '05', '73', 'ALCOHOL 90º 120 ML', '', 'ALCOHOL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 53),
(0, 'S6078766b65da29.36318327', 74, '06', '74', 'ALCOHOL 90º GALON', '', 'ALCOHOL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 53),
(0, 'S60787754775dc5.48994888', 75, '7415100201029', '75', 'VERMAGEST 2 TAB ANTICONCEPTIVO', '', 'VERMAGEST', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S607879e6ba09c2.56659448', 76, '4968420726374', '76', 'JERINGA NIPRO 3 ML 22 X 1 1/2X100', '', 'NIPRO', 1, 0, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 47),
(0, 'S60787e3d6fab82.69824150', 77, '4968420726718', '77', 'JERINGA NIPRO 5 ML 22 X 1 1/2 X100', '', 'NIPRO', 1, 0, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 47),
(0, 'S6078804ef268b1.03201557', 78, '4968420729559', '78', 'JERINGA INSULINA NIPRO 1 ML', '', 'NIPRO', 1, 0, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 47),
(0, 'S60788e6c77e708.61710445', 79, '08', '79', 'MICROPORE 1/2', '', 'PORE', 1, 0, 0, 1, 0, 89, 4, '', 0, 0, 0, 0, '', 55),
(0, 'S607890fb255e84.21877632', 80, '7898909175188', '80', 'CATETER INTRAVENOSO NIPRO 24X 3/4', '', 'NIPRO', 1, 0, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 47),
(0, 'S607892848b2058.52244718', 81, '7898909175508', '81', 'CATETER INTRAVENOSO NIPRO 22X 1', '', 'NIPRO', 1, 0, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 47),
(0, 'S6078a2121bc601.09978423', 82, '07', '82', 'SOLUCION SALINA 100 ML', '', 'DELMED', 1, 1, 0, 1, 0, 89, 4, '', 0, 0, 0, 0, '', 54),
(0, 'S6078a721850801.85762779', 83, '09', '83', 'MICROPORE 1', '', 'PORE', 1, 0, 0, 1, 0, 89, 4, '', 0, 0, 0, 0, '', 55),
(0, 'S6078a91066d379.61888234', 84, '10', '84', 'SOLUCION SALINA 250 ML', '', 'DELMED', 1, 0, 0, 1, 0, 89, 4, '', 0, 0, 0, 0, '', 55),
(0, 'S6078a97b8c3921.41871197', 85, '11', '85', 'SOLUCION SALINA 500 ML', '', 'DELMED', 1, 0, 0, 1, 0, 89, 4, '', 0, 0, 0, 0, '', 55),
(0, 'S6078aa604591c0.95571172', 86, 'wbs383790170avf', '86', 'DESCARTABLE P/ SUERO NIPRO', '', 'NIPRO', 1, 1, 0, 1, 0, 89, 4, '', 0, 0, 0, 0, '', 47),
(0, 'S6078ab6c7183f2.12043909', 87, '12', '87', 'MASCARILLA DE ELASTICO NIPRO', '', 'NIPRO', 1, 0, 0, 1, 0, 89, 4, '', 0, 0, 0, 0, '', 47),
(0, 'S6078ad31254dc3.77581308', 88, '7415800230466', '88', 'ALGODON MIGASA 2.5 GRS', '', 'MIGASA', 1, 1, 0, 1, 0, 89, 4, '', 0, 0, 0, 0, '', 56),
(0, 'S6078ada7693c63.01970894', 89, '7415800230411', '89', 'ALGODON MIGASA 10 GRS', '', 'MIGASA', 1, 1, 0, 1, 0, 89, 4, '', 0, 0, 0, 0, '', 56),
(0, 'S6078ae0d171379.07920582', 90, '7415800230503', '90', 'ALGODON MIGASA 25 GRS', '', 'MIGASA', 1, 1, 0, 1, 0, 89, 4, '', 0, 0, 0, 0, '', 56),
(0, 'S6078aebb552f77.26339814', 91, '7415800230510', '91', 'ALGODON MIGASA 50 GRS', '', 'MIGASA', 1, 1, 0, 1, 0, 89, 4, '', 0, 0, 0, 0, '', 56),
(0, 'S6078b009ab5ef1.19622740', 92, '7415100211813', '92', 'AMBROXOL NORDIC 120 ML', '', 'NORDIC', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S6078b0ae410d03.39626515', 93, '7415100205355', '93', 'PULMO GRIP 120 ML', '', 'NORDIC', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S6078b121713e34.37333797', 94, '7415100205447', '94', 'VIRO GRIP GRIPE Y TOS 120 ML', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S6078b485426543.23312480', 95, '7415100200381', '95', 'TRIMETOSE 120 ML', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S6078b52a528e69.59833188', 96, '7415100223984', '96', 'MUCOBROXOL COMPUESTO 120 ML', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S6078b5a8c9b980.88449545', 97, '7415100200183', '97', 'MUCOBROXOL 120 ML', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S6078b67331b545.87595169', 98, '7415100200169', '98', 'FLUIBRON 120 ML', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S6078b74bc78933.61027619', 99, '7415100201159', '99', 'GUAIACOLATO  EXPECTORANTE 120 ML', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S6078b7fa62ba82.16931593', 100, '74101603', '100', 'DEXTRO-METORFANO 120 ML', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S6078b923158369.21652079', 101, '7415100201180', '101', 'SALBUTAMOL 120 ML', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S6078b9edd5ba53.08584516', 102, '7415100201173', '102', 'CLORFENIRAMINA JARABE 120 ML', '', 'NORDIC', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 43),
(0, 'S6078ba95e618b2.34509297', 103, '7415100200145', '103', 'FENALER JARABE 120 ML', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S6078bb98c183a1.19892266', 104, '7415100200930', '104', 'SELECTAVIT 120 ML', '', 'NORDIC', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 43),
(0, 'S6078bf60238e40.15383554', 105, '7415100200305', '105', 'ROCEFORT CEFTRIAXONE  1G I.M. VIJOSA', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S6078c5e5a645f9.34089356', 106, '7415100200312', '106', 'ROCEFORT  CEFTRIAXONA 1 G I.V. VIJOSA', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S6078c7708d2125.15684895', 107, '18901790712229', '107', 'CEFTRIAXONA BROTZON 1 GR AMPOLLA', '', 'ARGUS', 1, 0, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S6078c838c633f7.10497588', 108, '7415100201104', '108', 'PULMO GRIP  VITAMINADO INYECTABLE', '', 'NORDIC', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 43),
(0, 'S6078c9b15dacb4.30779833', 109, '7415100200657', '109', 'PULMO GRIP BALSAMICO AMPOLLA', '', 'NORDIC', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 43),
(0, 'S6078cad3b475a7.25367312', 110, '7415100203436', '110', 'CAMPOLON FORTE C/ LISINA 220 ML', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S607991b59c6f90.31839928', 111, '7415100203559', '111', 'NERVIDOCE  AMPOLLA INT.25,000 D.A.', '', 'NORDIC', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 43),
(0, 'S60799280ac6d50.56757439', 112, '7415100203528', '112', 'DEXA NERVIDOCE  AMPOLLA INT. D.A.', '', 'NORDIC', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 43),
(0, 'S607992f9a4c341.15190535', 113, '7415100200817', '113', 'DOLO NERVIDOCE AMPOLLA INT.', '', 'NORDIC', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 43),
(0, 'S607993bedf7746.26088349', 114, '7415100204792', '114', 'DOLO NERVIDOCE -D AMPOLLA INT.', '', 'NORDIC', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 43),
(0, 'S6079946ace2183.79599762', 115, '7415100224530', '115', 'NEURO CAMPOLON 25,000 AMPOLL. INT.', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S6079950764d9a1.66854982', 116, '7415100223946', '116', 'NEURO CAMPOLON ANTI-DOLOR AMP..INT', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S60799591147378.67009760', 117, '7415100200114', '117', 'DRAMAVOL AMPOLL. INT. 50 MG/ 2 ML', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S6079960d943cf5.97599321', 118, '74100231', '118', 'PASMOLIT AMPOLL. INT. 2 ML', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S60799750513469.45859274', 119, '7415100203504', '119', 'DOCEPLEX 25,000 D.A. AMPOLL. INT.', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S607998392a55a6.83787510', 120, '7415100203498', '120', 'DOCEPLE 10,000 D.A. AMPOLL. INT.', '', '1', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S60799978eac728.98765005', 121, '7415100200435', '121', 'ULTRA DOCEPLEX AMPOLL. INT.', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S60799af4729708.16107072', 122, '7415100201210', '122', 'ULTRA DOCEPLEX MEGA MAN X 50 TAB', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S60799b86932461.65838028', 123, '7415100201227', '123', 'ULTRA DOCEPLEX MEGA WOMAN 50 TAB', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S60799c31616a96.97182309', 124, '7415100200640', '124', 'CYCLONOR AMPOLL. 1 MG', '', 'NORDIC', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 43),
(0, 'S60799d0bef9ed4.71570732', 125, '7415100203511', '125', 'DEXA DOCEPLEX  D.A AMPOLL. INT.', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S60799de19dc474.74065170', 126, '7411002159901', '126', 'VITASIL OMEGA- 3 X 50 CAP', '', 'SUIZOS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 44),
(0, 'S60799f425cd618.50943179', 127, '7415100201241', '127', 'FORTIPLEX OMEGA - 3 X 50 TAB 1000 MG', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S6079a05b9659b7.88352938', 128, '7415100224028', '128', 'MESYGEST X 1 AMPOLLA ANTICONCEPTIVO', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S6079a0e0e9b974.81280221', 129, '7441026000118', '129', 'COFAL FUERTE 120 G', '', 'ASPEN', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 2),
(0, 'S6079a14db8cc62.79881835', 130, '7441026000170', '130', 'COFAL FUERTE 60 G', '', 'ASPEN', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 2),
(0, 'S6079a1f328e284.47714131', 131, '7410003710418', '131', 'ARTRIBION FUERTE 120 G', '', 'BIOKEMICAL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 34),
(0, 'S6079a3160b9f24.40995172', 132, '7410003710968', '132', 'ARTRIBION FUERTE 60 GR', '', 'BIOKEMICAL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 34),
(0, 'S6079a424155909.68869184', 133, '7411002159611', '133', 'DOLO CRIM FORTE 120 GR', '', 'SUIZOS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 44),
(0, 'S6079a533137927.31957832', 134, '7414902461150', '134', 'ICE GEL ANALGESICO 8 OZ', '', 'CUSCATLAN', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 46),
(0, 'S6079a5f3201349.58759550', 135, '74109364', '135', 'DICLOFENAC SODICO AMPOLLA INT.', '', 'PAILL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 45),
(0, 'S6079a69e8ef2b7.06527605', 136, '7410003710579', '136', 'DICLOFENACO BK 75 MG AMP. INT', '', 'BIOKEMICAL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 34),
(0, 'S6079a777c8fff2.33018156', 137, '18901790705351', '137', 'DICLOFENACO GEL ARGUS 30 GR', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S6079a898a4af85.65306988', 138, '18901790698424', '138', 'GENTA  BETA CLOTR CREMA 30 GR', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079a9b7e85f51.91893486', 139, '18901790698431', '139', 'GENTA BETA CLOTRI CREMA 20 GR', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079aa2b7e21a8.94252859', 140, '18901790698462', '140', 'CLOTRIMAZOL CREMA 1 %', '', 'SAIMED', 1, 0, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079abebce98d2.58027394', 141, '18901790698448', '141', 'CLOTRIMAZOLE CREMA VAGINAL 2 %X 30 GR', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079ad26ba1406.64503051', 142, '18901790684069', '142', 'AMOXICILINA 500 MG 1X100 CAPS', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079aeaf87af47.91161330', 143, '18901790684038', '143', 'AMOXICILINA,SAIMED  FRASCO 250 X 100 ML', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079afaaaad622.46416494', 144, '18901790684182', '144', 'AMPICILINA, SAIMED 500 MG X100 CAPS', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079b86431acb1.32265577', 145, '7410003420638', '145', 'TRIMETOPRIN SULFA 800G X 60 TB ECOMED', '', 'ECOMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 57),
(0, 'S6079bc16cd35b3.91052898', 146, '7410010597200', '146', 'TRIMETOPRIN SULFA NECATRIN FRASCO 120 ML', '', 'ENMILEN', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 58),
(0, 'S6079bd3f91a060.89975030', 147, '18901790704446', '147', 'VITAMINA E 400 UI 1X50 CAPS', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079be74127743.21089407', 148, '18901790707805', '148', 'VITAMINA A, SAIMED 50000 UI X 50 CAPS', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079bf43c104b3.04953418', 149, '18901790683932', '149', 'ACETAMINOFEN 500 MG 1X100 TAB SAIMED', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079c0927fd3d5.00879456', 150, '18901790704279', '150', 'ACETAMINOFEN JARABE 100 ML SAIMED', '', 'CAPLIN POINT', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079c5678817c4.96253581', 151, '14', '151', 'ACICLOVIR FRASCO 100 ML', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079c69c821200.14737396', 152, '18901790698400', '152', 'ACICLOVIR CREMA 5% X 5GR', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079cbc3c5d9c0.86248246', 153, '15', '153', 'SECNIDAZOL FRASCO 30 ML', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079ccf08c75b2.92731796', 154, '18901790700011', '154', 'ACICLOVIR 400 MG 1 X 100 TAB SAIMED', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079db09329578.41666666', 155, '18901790697670', '155', 'ALBENDAZO 400 MG 1X2 TAB', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079dc8ed8d068.07024841', 156, '18901790698516', '156', 'LANSOPRAZOL,SAIMED 30 MG 1X 100 CAPS', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079ddb9a05555.03797621', 157, '18901790698530', '157', 'OMEPRAZOL,SAIMED 20 MG 1X 100 CAPS', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079df6a8fa594.28755363', 158, '18901790690220', '158', 'NEOMICINA BACITRACINA ZINC CREMA 15 G', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079e0691cf873.22109139', 159, '18901790713295', '159', 'TRAN- KILO PRUEBA DE EMBARAZO 1 TEST', '', 'TRAN-KILO', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079e198a74fc4.08759807', 160, '18901790703357', '160', 'CIPROFLOXACINA 500 MG X100 TAB SAIMED', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079e30d2dce56.80541902', 161, '18901790684663', '161', 'GINSENG CON JALEA REAL 10X10 AMP', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079e3e08de8f1.20939582', 162, '18901790684809', '162', 'MULTIVITAMINAS Y HIERRO 10 ML X 10 AMP', '', 'SAIMED', 1, 1, 0, 11, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079e4c325c435.18618090', 163, '18901790697687', '163', 'CARBAMAZEPINA,SAIMED 200 MG X 100 TAB', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079e5e40d00e3.54626350', 164, '18901790698493', '164', 'SPORT GEL 1 % 30 GR', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079e760e638d2.17189350', 165, '16', '165', 'DICLOFENACO SODICO GEL CAPSX 100 SAIMED', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079e8c4ba8996.96530288', 166, '18901790684441', '166', 'DICLOFENACO POTASICO 50 MG X 100 TAB', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079e9b8459133.67798494', 167, '08901790689982', '167', 'AJO   PEREJIL X100 CAPS', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079ea75b72c88.35006197', 168, '18901790699841', '168', 'AMLODIPINA 5 MG X100 TAB SAIMED', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079ec0198eb06.73085278', 169, '17', '169', 'DEXAMETASONA AMPOLLA INY. X 2ML', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079f2a20c0216.87131680', 170, '28901790708779', '170', 'DICLO CIEN 100 MG X 100 CAPS', '', 'DICLO CIEN', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079f3a9c42447.81485685', 171, '18901790699070', '171', 'GLIBENCLAMIDA 5 MG X100 TAB', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079f4b98a1626.71720958', 172, '18', '172', 'IBUPROFENO 600 MG X 100 TAB SAIMED', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079f6af288bb4.83875891', 173, '18901790708710', '173', 'IBUWIN, IBUPOFENO 400 MG X100 CAPS,SAIMED', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079f863934ae4.64614083', 174, '18901790708727', '174', 'IBUWIN PLUS  IBUPROFENO 600 MG 100 CAPS', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079f9bf506c53.74463333', 175, '18901790700196', '175', 'INDOMETACINA,SAIMED 25 MG X100 CAPS', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079fada6d5f74.18360161', 176, '19', '176', 'KETOCONAZOL,SAIMED 200 MG X 100 TAB', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079fc41a40592.93538885', 177, '18901790698479', '177', 'KETOCONAZOL CREMA 2 % 15 G', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079feee102585.64618861', 178, '18901790697717', '178', 'LORATADINA 10 MG X 100 TAB SAIMED', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S6079ffa6ea0d62.02109452', 179, '18901790697748', '179', 'LORATADINA FRASCO 100 ML', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S607a015d6b9573.78237507', 180, '18901790701025', '180', 'METFORMINA,SAIMED 850 MG X 100 TAB', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S607a02eb2b2119.87882376', 181, '18901790707959', '181', 'NAPPIL -550 MG 100 TAB SAIMED', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S607a047334efe7.27239546', 182, '18906006643939', '182', 'SALBUTAMOL INHALADOR 100 MG X200 DOSIS', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607a05ad5f3454.58599423', 183, '18901790683864', '183', 'SILDENAFIL CITRATO SOBRE X4 TAB 50 MG', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S607a08887ebf19.47585847', 184, '7410005400591', '184', 'APETI- KID JARABE 220 ML', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607a09511cf515.80977272', 185, '7410005400416', '185', 'BIO- NEURON DUO X12 SOBRES 15 ML', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607a0a0df198a1.24123166', 186, '7410005400362', '186', 'BIO-NEURON C/GINGO B. X 10 AMP.BEB', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607a0aa368c1c1.38527405', 187, '7410005400355', '187', 'BIO- NEURON RECONSTITUYENTE X 10 AMP', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607a0b7d409330.33445292', 188, '7410005400478', '188', 'BRONKOFLU BALSAMICO JARABE X 120 ML', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607a0f4d019e26.98838576', 189, '7410005400492', '189', 'BRONKO FLU GRIPE Y TOS  JARABE 120 ML', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607a0ff3b5f2d0.13522954', 190, '7410005400799', '190', 'BRONKO FLU HEDERA JARABE 120 ML', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607a1154995d66.60192747', 191, '7410005400485', '191', 'BRONKO FLU MIEL JARABE 120 ML', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607a11cfbb0720.72237610', 192, '7410005400393', '192', 'BRONKO- FLU MUCOLITICO FRASCO 120 ML', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607a12618dd999.22288180', 193, '7410005400706', '193', 'CALFEROL JARABE 220 ML', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607a1305815c98.28243191', 194, '7410005400836', '194', 'DOL  (PARACETAMOL) JARABE 120 ML', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607a13ab283643.43225274', 195, '7410005400683', '195', 'ERECFIL 50 MG X 2 TAB', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607a144085a2e0.53041123', 196, '7410005400720', '196', 'GLUTAPLEX CEREBRAL JARABE 220 ML', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607a152771d419.63240348', 197, '7410005400010', '197', 'GLUTAPLEX CEREBRAL 15 AMP. BEB 10 ML', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607a1606cead69.03327677', 198, '7410005400690', '198', 'GLUTAPLEX CEREBRAL X 30 TAB', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607a16c13c2257.27721887', 199, '7410005400546', '199', 'HEMOTOTAL JARABE 220 ML', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607ae28e450af5.69057766', 200, '18901790707768', '200', 'AMOXICILINA ACIDO CLAVULANICO 14 TAB ARGUS', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607ae385954784.50171351', 201, '18901790707751', '201', 'AMOXICILINA ACIDO CLAVULANATO 100 ML', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607ae4a0b447f7.45247762', 202, '18901790708178', '202', 'ATORVASTATINA 40 MG X 30 TAB ARGUS', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607ae61c91bb96.03398761', 203, '18901790707775', '203', 'BUDESONIDA INHALADOR 200 DOSIS 200 MG', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607ae70bd30dc1.92661488', 204, '18901790708468', '204', 'CEFDRO-CEFADROXILO X20 TAB 500 MG', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607ae800e62eb2.78166969', 205, '18901790708215', '205', 'CEFDRO-CEFADROXILO FRASCO 60 ML', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607ae8ecf33bd6.34404247', 206, '18901790705221', '206', 'CIPROFLOXACINA 500 MG X30 TAB ARGUS', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607ae9ac69a573.34581936', 207, '18901790707737', '207', 'CLARITROMICINA FRASCO 100 ML', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607aea6c8ac753.51712779', 208, '18901790707720', '208', 'CLARITROMICINA 20 TAB 500 MG ARGUS', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607aec8f432ff4.53370940', 209, '18901790705344', '209', 'CLOTRIMAZOL CREMA 1 % 20G ARGUS', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607aee0c9cc912.34883694', 210, '18901790710065', '210', 'DEXKETOPROFENO X 20 TAB ARGUS', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607aeec1506279.95654011', 211, '18901790712236', '211', 'ENALAPRIL 20 MG X 100 TAB ARGUS', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607af0d2214738.93930998', 212, '18901790707744', '212', 'DICLOXACILINA ARGUS 500 MG 30 CAPS', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607af19e9f7590.00011745', 213, '18901790708185', '213', 'ERITROMICINA ARGUS 500 MG 50 TAB', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607af3dde72065.74364415', 214, '18901790708192', '214', 'ESOMEPRAZOL ARGUS 40 MG X30 TAB', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607af4eb630155.35088360', 215, '18901790706785', '215', 'FEXOFENADINA ARGUS 120 MG X30 TAB', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607af90e762501.95257726', 216, '7410005400409', '216', 'GLUTAVIT GIN GIN X 15 AMPOLLAS BEB.', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607af9eb0251d6.89506399', 217, '7410005400386', '217', 'GLUTAVIT C/ GINSENG X 15 AMP. BEB', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607afa8c701596.55357246', 218, '7410005400379', '218', 'GLUTAVIT X 15 AMP. BEBIBLES', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607afb67f066f6.27240537', 219, '7410005400454', '219', 'ORANGE VIT C  JARABE X 220 ML', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607afc8f243674.49291585', 220, '7410005400812', '220', 'ORANGE VIT C  15 AMP. BEB', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607afd80cf8582.94519892', 221, '7410005400133', '221', 'SECNI- PARAX (SECNIDAZOL) 500 MG 4 TAB', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607afe36580d85.55847133', 222, '7410005400140', '222', 'SECNI- PARAX (SECNIDAZOL) FRASCO 30 ML', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607afeeac025f0.77026093', 223, '7410005400027', '223', 'SUPLERALL 15 AMP. BEB  RAZEL', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607b01181a3501.89460505', 224, '18901790705306', '224', 'FLUCONAZOL ARGUS X 2 CAPS 200 MG', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607b01fd19f657.11110824', 225, '18901790707676', '225', 'FLUOXETINA ARGUS 20 MG 30 CAPS', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607b0582746964.49910768', 226, '18906006647203', '226', 'IPRATROPIO INHALADOR 200 DOSIS ARGUS', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607b06450b1d31.50258226', 227, '18901790708444', '227', 'IRBESARTAN 300 MG X 30 TAB ARGUS', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607b078faf1fb8.55981857', 228, '18901790710089', '228', 'LEVOFLOXACINA ARGUS 500 MG 1X30 TAB', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607b0a811cef48.65835698', 229, '18901790710041', '229', 'PREGABALINA ARGUS 75 MG X 50 TAB', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607b0bf2623609.45692082', 230, '18901790705320', '230', 'RANITIDINA ARGUS 150 MG 30 TAB', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607b0cb67596a4.99254580', 231, '18901790705337', '231', 'RANITIDINA ARGUS 300 MG 30 TAB', '', 'ARGUS', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S607b106ad7fdf9.72542969', 232, '7452079700696', '232', 'B- MENTAL JARABE 240 ML', '', 'COFASA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 33),
(0, 'S607b11739b15d9.16742375', 233, '7452079700115', '233', 'FOSFO B-12 COFASA X 15 AMP. BEB', '', 'COFASA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 33),
(0, 'S607b13c07a6113.37606390', 234, '7452079700580', '234', 'PONTEX COFASA  X 10 AMP. BEB', '', 'COFASA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 33),
(0, 'S607b1522e789a3.17402997', 235, '7452079700689', '235', 'FERROVITALON COFASA FRASCO  240 ML', '', 'COFASA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 33),
(0, 'S607b162e3451f8.19338048', 236, '7452079700160', '236', 'FOSFO  B-12 JARABE 240 ML COFASA', '', 'COFASA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 33),
(0, 'S607b17475918f8.22443056', 237, '7452079700023', '237', 'FOSFO B-12  X30 TAB COFASA', '', 'COFASA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 33),
(0, 'S607b1a1f6c9972.41854801', 238, '7452079700429', '238', 'XICONEURAL P.M. X 30 CAPS', '', 'COFASA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 33),
(0, 'S607b1d5e55fda6.15273475', 239, '74104598', '239', 'NOVULAR AMP. I.M. 1 ML PAILL', '', 'PAILL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 45),
(0, 'S607b1e4c0bdcb6.53653381', 240, '7410002010250', '240', 'ANAFLAT 40 TAB MATICABLES PAILL', '', 'PAILL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 45),
(0, 'S607b1fe3972640.64331943', 241, '7410002010267', '241', 'ANAFLAT ENZIMATICO X20 GRAGEAS PAILL', '', 'PAILL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 45),
(0, 'S607b216540efc8.76287070', 242, '7410002005010', '242', 'BIO- MIKIN ADULTOS 500 MG AMP.I.M I.V.', '', 'PAILL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 45),
(0, 'S607b235fa6d3a3.94921958', 243, '7410002001876', '243', 'DICLOSONA AMP. I.M PAILL', '', 'PAILL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 45),
(0, 'S607b26a38faf11.96290500', 244, '74105380', '244', 'DRAMANYL AMP 2 ML. I.M. I.V. PAILL', '', 'PAILL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 45),
(0, 'S607b27d2848905.71054404', 245, '7410002010106', '245', 'DRAMANYL  X100 CAPS PAILL', '', 'PAILL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 45),
(0, 'S607b28c141ac22.57188430', 246, '7410002010137', '246', 'GABROSIDINA JARABE 60 ML PAILL', '', 'PAILL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 45),
(0, 'S607b2bc3d31a86.39755344', 247, '20', '247', 'GABROSIDINA  TAB 250 MG PAILL', '', 'PAILL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 45),
(0, 'S607b2d66e8d219.92281395', 248, '7410002010731', '248', 'NYVU RETARD 100 MG X 20 CAPS PAILL', '', 'PAILL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 45),
(0, 'S607b2e0e7b24b6.91128856', 249, '7410002009599', '249', 'ORFENAFLEX AMP. I.M. I.V. PAILL', '', 'PAILL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 45),
(0, 'S607b2eb1c40651.55163291', 250, '7410002009605', '250', 'ORFENAFLEX- D X 100 CAPS PAILL', '', 'PAILL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 45),
(0, 'S607b2fc12b11b0.68259456', 251, '7410002004693', '251', 'PEDIAROL X6 SOBRES 200 MG PAILL', '', 'PAILL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 45),
(0, 'S607b30633d21d0.86446447', 252, '7410002004716', '252', 'SUCRASYL X 30 SOBRES PAILL 1 G', '', 'PAILL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 45),
(0, 'S607b3147eb48e2.16252395', 253, '74107087', '253', 'VITADAK 15  AMP. BEB PAILL', '', 'PAILL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 45),
(0, 'S607b31dd9f5846.62440110', 254, '74107735', '254', 'VITADAK 5 AMP. BEB. PAILL 1 ML', '', 'PAILL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 45),
(0, 'S607b3e130d8480.66216238', 255, '7401078960075', '255', 'SARGENOR FORTE ASPART.ARGININA X 20 AMP. BEB 10 ML', '', 'MEDA', 1, 1, 0, 1, 0, 87, 3, '', 0, 0, 0, 0, '', 51),
(0, 'S607b3f364f9be5.63153545', 256, '7401078930504', '256', 'DEFLARIN 30 MG X 10 TAB ALTIAN  PHARMA', '', 'ALTIAN PHARMA ', 1, 1, 0, 1, 0, 87, 3, '', 0, 0, 0, 0, '', 23),
(0, 'S607b409e109fb6.30818269', 257, '7401078991000', '257', 'OXALIP SPRAY NASAL 18 ML ALT. PHARMA', '', 'ALTIAN PHARMA', 1, 1, 0, 1, 0, 87, 3, '', 0, 0, 0, 0, '', 23),
(0, 'S607b4325180232.64226436', 258, '7401078930160', '258', 'PRELONE 50 MG X 10 TAB ASTA MEDICA', '', 'ASTA MEDICA', 1, 1, 0, 1, 0, 87, 3, '', 0, 0, 0, 0, '', 22),
(0, 'S607b44e145ffc7.70767391', 259, '7401078930269', '259', 'FENOROL INHALADOR 12 MCG X 60 CAPS', '', 'DALT PHARMA', 1, 1, 0, 1, 0, 87, 3, '', 0, 0, 0, 0, '', 25),
(0, 'S607b4617ceab86.16238878', 260, '7401078920079', '260', 'AVAMIGRAN X 200 TAB  ASTA MEDICA', '', 'ASTA MEDICA', 1, 1, 0, 1, 0, 87, 3, '', 0, 0, 0, 0, '', 22),
(0, 'S607b48a67041f1.68426000', 261, '7401078980011', '261', 'SPASMO - UROLONG X20 GRAGEAS', '', 'ASTA MEDICA', 1, 1, 0, 1, 0, 87, 3, '', 0, 0, 0, 0, '', 22),
(0, 'S607b4d25a8c549.55043130', 262, '7401078930337', '262', 'FLUDALT DUO INHALADOR 250/50 60 CAPS', '', 'DALT PHARMA', 1, 1, 0, 1, 0, 87, 3, '', 0, 0, 0, 0, '', 25),
(0, 'S607b4d9b1d3e27.95185254', 263, '21', '263', 'FLETES', '', 'FLETES', 1, 0, 0, 1, 0, 86, 1, '', 0, 0, 0, 0, '', 0),
(0, 'S607b56ab9a8ba5.96892687', 264, '7501298200057', '264', 'EUTIROX 50 MCG X50 TAB MERCK', '', 'MERCK', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 15),
(0, 'S607b57d66db9e9.36605534', 265, '7501298234670', '265', 'EUTIROX X100 MCG 50 TAB MERCK', '', 'MERCK', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 15),
(0, 'S607b5871b8d4e1.91679524', 266, '7501298204420', '266', 'EUTIROX 25 MCG 50 TAB MERCK', '', 'MERCK', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 15),
(0, 'S607b590eab40d4.29542723', 267, '7501298204444', '267', 'EUTIROX 75 MCG 50 TAB MERCK', '', 'MERCK', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 15),
(0, 'S607b59a3456759.64743214', 268, '7501298223742', '268', 'EUTIROX 88 MCG 50 TAB MERCK', '', 'MERCK', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 15),
(0, 'S607b5bc52aec75.92794407', 269, '7401156603313', '269', 'NEURO TAZAROL X 20 TAB LAFAGE', '', 'LAFAGE', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 59),
(0, 'S607b5cbebca2d2.15372817', 270, '7401156601319', '270', 'REVERSAL FLEX X20 TAB LAFAGE', '', 'LAFAGE', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 59),
(0, 'S607b5d58bf4071.89249711', 271, '7401156604112', '271', 'UROBERRY 50 MG X30 TAB LAFAGE', '', 'LAFAGE', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 59),
(0, 'S607b5dde170a60.67311577', 272, '7401156608141', '272', 'VALIDAL 40 MG X 30 TAB LAFAGE', '', 'LAFAGE', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 59),
(0, 'S607d8a1c96fa93.17270587', 273, '7401156614210', '273', 'MAXIMUM D3 100,000 UI X 1 CAPS LAFAGE', '', 'LAFAGE', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 59),
(0, 'S607d8f80d07d03.58012090', 274, '7795990000910', '274', 'BASAGLAR KWIKPEN 100 U/ML INSULINA', '', 'INSULINA GLARGINA', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 60),
(0, 'S607d94656ad1d6.85490264', 275, '7703186031310', '275', 'ENSURE ADVANCE FRESA 237 ML 8 OZ', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 10),
(0, 'S607d94fd19bb69.65477839', 276, '070074116211', '276', 'ENSURE ADVANCE VAINILLA 237 ML 8 OZ', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 10),
(0, 'S607d98dc4c9202.06799814', 277, '070074120935', '277', 'GLUCERNA TRIPLECARE  VAINILLA 237 ML', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 10),
(0, 'S607d9cf0c93af2.60991698', 278, '070074119878', '278', 'PEDIASURE VAINILLA 8 OZ', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 10),
(0, 'S607d9d7bbd37f9.47552944', 279, '070074119892', '279', 'PEDIASURE FRESA 8 OZ', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 10),
(0, 'S607d9e4d767b87.18058229', 280, '070074121017', '280', 'ENSURE VAINILLA RPB 8 OZ', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 10),
(0, 'S607db1215e32f0.18205771', 281, '22', '281', 'SEGUMES ANTICONCEPTIVO AMPOLLA 1 ML', '', 'PAILL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 0),
(0, 'S607db1f8939be3.51666974', 282, '7410003500668', '282', 'SECNIDAZOL FRASCO  30 ML  RAZEL', '', 'RAZEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 50),
(0, 'S607db582a959b1.18186990', 283, '7404000049664', '283', 'CILOSTAL 100 MG X 30 TAB MERCK', '', 'MERCK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 15),
(0, 'S607db66c4aca66.60132563', 284, '7702418000988', '284', 'CONCOR 10 MG X 30 TAB MERCK', '', 'MERCK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 15),
(0, 'S607db72dde7818.83986728', 285, '7702418000728', '285', 'CONCOR 2.5 MG X 30 TAB MERCK', '', 'MERCK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 15),
(0, 'S607db8fce75fc5.40193606', 286, '7702418000872', '286', 'CONCOR 5 MG X 30 TAB MERCK', '', 'MERCK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 15),
(0, 'S607dbb26188345.78075454', 287, '7404000047615', '287', 'CONCOR AM 5 MG/ 5 MG 30 TAB MERCK', '', 'MERCK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 15),
(0, 'S607dbbd7052bd3.43639332', 288, '7404000043761', '288', 'CONCOR AM 10 MG/ 5 MG 30 TAB MERCK', '', 'MERCK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 15),
(0, 'S607dbd3d8dfa92.28569630', 289, '7404000041958', '289', 'DENVAR 400 MG X 30 CAPS MERCK', '', 'MERCK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 15),
(0, 'S607dbed6b28d88.83681318', 290, '7404000047622', '290', 'DENVAR 100 MG FRASCO 100 ML MERCK', '', 'MERCK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 15),
(0, 'S607dbf8a47e1a3.30649506', 291, '7404000047653', '291', 'DENVAR FRASCO 100 MG 50 ML MERCK', '', 'MERCK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 15),
(0, 'S607dc1bd3b7776.78597696', 292, '7501298211923', '292', 'EUTIROX 150 MCG X 50 TAB MERCK', '', 'MERCK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 15),
(0, 'S607dc2b7c3bd85.21111883', 293, '7501298211947', '293', 'EUTIROX 200 MCG X 50 TAB MERCK', '', 'MERCK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 15),
(0, 'S607dc3605f1b26.48093524', 294, '7404000044249', '294', 'GLISULIN 1000 MG X 30 TAB MERCK', '', 'MERCK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 15),
(0, 'S607dc49b2dd048.75414485', 295, '7501298245324', '295', 'GLISULIN 500 MG X 30 TAB MERCK', '', 'MERCK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 15),
(0, 'S607dc553293d29.44008368', 296, '7404000049923', '296', 'GLISULIN XR 500 MG X 30 TAB MERCK', '', 'MERCK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 15),
(0, 'S607dc5edaf7e56.13837655', 297, '7404000042610', '297', 'GLISULIN XR 1000 MG X 30 TAB MERCK', '', 'MERCK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 15),
(0, 'S607dc717b86138.08520266', 298, '7501298244723', '298', 'GLUCOVANCE 500 MG/2.50 MG X 30 TAB', '', 'MERCK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 15),
(0, 'S607dc7c1efd869.79071967', 299, '7501298244730', '299', 'GLUCOVANCE 500/5 MG X30 TAB MERCK', '', 'MERCK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 15),
(0, 'S607dc868b136b2.12618808', 300, '7404000047318', '300', 'CILOSTAL XR 100 MG X 30 TAB MERCK', '', 'MERCK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 15),
(0, 'S607dd5d30d1cd8.43232196', 301, '7441139400744', '301', 'LYRICA PREGABALI. 75 MG X 28 CAPS PFIZER', '', 'PFIZER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 14),
(0, 'S607dd8499a96b6.05486857', 302, '3582913026645', '302', 'CORDARONE 200 MG  X 30  PFIZER', '', 'SANOFI', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 52),
(0, 'S607dd8f64ac214.58818455', 303, '7706263002036', '303', 'HIPERLIPEN 100 MG X 30 TAB SANOFI', '', 'SANOFI', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 52),
(0, 'S607ddb739c45b0.09995851', 304, '736085410693', '304', 'METICEL OFTENO  GOTAS 0.5% 10 ML', '', 'OPHIA ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 19),
(0, 'S607ddc3a87c412.25121636', 305, '736085132069', '305', 'NAZIL OFTENO FRASCO GOTAS 15 ML', '', 'OPHIA', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 19),
(0, 'S607dddeeed71d5.71629368', 306, '7703763190119', '306', 'ACETAMINOFEN 500 MG X100 TAB LA SANTE', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607de03f4d4bb0.05831303', 307, '7703763640119', '307', 'ACICLOVIR 200 MG X 24 TAB LA SANTE', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607def983d3cb5.11285935', 308, '7703763070329', '308', 'AMOXICILINA 250 MG /5 ML FCO 100 ML,LA SANTE', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607df1cd0c9e68.98148287', 309, '7703763070237', '309', 'AMOXICILINA 500 MG X 50 CAPS LA SANTE', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607df28b03c5f4.44374315', 310, '7703763700318', '310', 'AZITROMICINA 200 MG/5 ML FCO 15 ML', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607df382259be3.56916276', 311, '7703763180233', '311', 'CEFADROXILO 500 MG X 12 CAPS LA SANTE', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607df63a8a9620.33003611', 312, '7703763050758', '312', 'CLOTRIMAZOL 1% CREMA VAGI. 40 G C/APLI.', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607df6fa87efc8.90954600', 313, '7703763050727', '313', 'CLOTRIMAZOL CREMA 1% 40 GR  LA SANTE', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61);
INSERT INTO `producto` (`id_server`, `unique_id`, `id_producto`, `barcode`, `codart`, `descripcion`, `composicion`, `marca`, `estado`, `perecedero`, `exento`, `minimo`, `decimals`, `id_categoria`, `id_proveedor`, `imagen`, `id_sucursal`, `costo`, `precio`, `precio_mayoreo`, `color`, `id_laboratorio`) VALUES
(0, 'S607df7dbbbc7a3.17393899', 314, '7703763280629', '314', 'DICLOFENACO 50 MG X 50 TAB LA SANTE', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607df9fc569d94.92563803', 315, '7703763253517', '315', 'DICLOXACILINA 500 MG X 50 CAPS LA SANTE', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607dfb2fe40b15.77601795', 316, '7703763001132', '316', 'FLUCONAZOL 150 MG 1 CAPS  DUO PACK', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607dfc076f1057.05271249', 317, '7703763250127', '317', 'METRONIDAZOL 500 MG X 100 TAB LA SANT', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607dfe791d5531.13302691', 318, '7703763750153', '318', 'VITAMINA C 500 MG  X 12 SOB/TAB MAST.', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607e00a066a7d4.43782208', 319, '7703763190164', '319', 'SERTRALINA 50 MG X10 TAB LA SANTE', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607e02aec73e54.16331551', 320, '7703763670215', '320', 'CLINDAMICINA 300 MG X 24 CAPS LA SANTE', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607e04f0a27512.22120613', 321, '7703763660117', '321', 'CLARITROMICINA 500 MG X10 TAB LA SANTE', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607e058c866c60.74544706', 322, '7703763163069', '322', 'SILDENAFIL 50 MG X 2 TAB MAST. LA SANTE', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607e0737c8c3c2.88538464', 323, '7703763881901', '323', 'ACETAMINOFEN JBE 150MG/5ML FCO 90 ML', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607e07eb3f96f6.50215808', 324, '7703763996537', '324', 'AMLODIPINO 5 MG X 30 TAB LA SANTE', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607e0927f11e84.40519560', 325, '7703763270361', '325', 'IBUPROFENO 100 MG/5 FCO 120 ML', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607e09fdee21d8.64803738', 326, '7703763992980', '326', 'ATORVASTATINA 20 MG X30 TAB LA SANTE', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607e0b18d71171.90943449', 327, '7703763997657', '327', 'ATORVASTATINA 10 MG X 30 TAB LA SANTE', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607e0c0921d104.10749264', 328, '7703763992355', '328', 'NITAZOXANIDA 500 MG X 6 TAB LA SANTE', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607e0cf696a4f5.55840273', 329, '7703763995615', '329', 'AZITROMICINA 500 MG X 50 TAB LA SANTE', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607eda6a6db628.59203333', 330, '7703763995639', '330', 'CIPROFLOXACINA 500 MG X 50 TAB LA SANT', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607edba2963048.53477756', 331, '7703763996636', '331', 'LORATADINA 10 MG X50 TAB LA SANTE', '', 'LA SANTE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 61),
(0, 'S607eddddba8321.24508434', 332, '7501037935097', '332', 'JARDIANZ (EMPAGLIFOZINA) 10 MG X 30 TAB', '', 'BOHERINGER INGELHEIM', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 20),
(0, 'S607ede73f06673.93842910', 333, '7501037935103', '333', 'JARDIANZ (EMPAGLIFOZINA) 25 MG 30 TAB', '', 'BOEHRINGER INGELHEIM', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 20),
(0, 'S607edf57d82c25.49686780', 334, '7501034692764', '334', 'JARDIANZ DUO EMP MET 1000MG/12.5 60 TB', '', 'BOEHRINGER INGELHEIM', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 20),
(0, 'S607ee0b571b457.24776270', 335, '7501037946178', '335', 'MICARDIS (TELMISARTAN) 80 MG X 14 TAB', '', 'BOEHRINGER INGELHEIM', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 20),
(0, 'S607ee1707fa305.83302245', 336, '7501037920154', '336', 'MICARDIS DUO TEL AML 80/10 MG X28 TAB', '', 'BOEHRINGER INGELHEIM', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 20),
(0, 'S607ee2006b8266.41063958', 337, '7501037946215', '337', 'MICARDIS PLUS TEL HID 80/12.5 MG 14 TAB', '', 'BOEHRINGER INGELHEIM', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 20),
(0, 'S607ee2be80e899.41977061', 338, '7501037980172', '338', 'SPIRIVA REFIL  BROM/TIOT 18 MCG X 20 CAPS', '', 'BOEHRINGER INGELHEIM', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 20),
(0, 'S607eebf4d76269.82432591', 339, '7501034692856', '339', 'TRAYENTA DUO 2.5/1000 MG X 60 TAB', '', 'BOEHRINGER INGELHEIM', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 20),
(0, 'S607eed1a129d59.30376079', 340, '7501034692863', '340', 'TRAYENTA DUO 2.5/500 MG X 60 TAB', '', 'BOEHRINGER INGELHEIM', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 20),
(0, 'S607eedf086a415.03137082', 341, '7501034692870', '341', 'TRAYENTA DUO 2.5/850 MG X 60 TAB', '', 'BOEHRINGER INGELHEIM', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 20),
(0, 'S607eeeb3baa6a8.40785119', 342, '7501037925593', '342', 'TRAYENTA LINAGLIPTINA 5 MG X 30 TAB', '', 'BOEHRINGER INGELHEIM', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 20),
(0, 'S607ef255e3c8b8.77208600', 343, '7702136647694', '343', 'GASA CB  10 X 10 CM X 24 SOBRES', '', 'CURE BAND', 1, 0, 0, 1, 0, 89, 2, '', 0, 0, 0, 0, '', 24),
(0, 'S607ef3a56dae23.68800164', 344, '74101795', '344', 'ALBENDAZOL FCO MK 400 MG/10 ML', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S607ef8da5ab2c0.66311275', 345, '74101818', '345', 'ALBENDAZOL MK 200 MG X 2 TAB', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S607ef9a3dd4495.87963212', 346, '7410002802183', '346', 'AMBROXOL JARABE 15 MG/5 ML MK', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S607efa94298927.19380386', 347, '7410002801940', '347', 'CLARITROMICINA FCO 250 MG/5 ML MK', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S607efbb9880dc1.31600209', 348, '7702057025625', '348', 'MINOXIDIL FORTE 5 % FCO 60 ML MK', '', 'MK', 1, 1, 0, 1, 0, 88, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S607efca6e4e474.57893055', 349, '7702057001810', '349', 'ENALAPRIL  20MG X 60 TAB MK', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S607efefdf0b182.37336790', 350, '7410002801032', '350', 'IBUPROFENO 400 MG X 50 TAB  MK', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S607f01f6b0bf16.28394882', 351, '7410002801070', '351', 'INDOMETACINA 25 MG X100 CAPS MK', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S607f0337d023a0.06510535', 352, '7410002802268', '352', 'LEVOFLOXACIN 500 MG X10 TAB MK', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S607f0499010e94.82675587', 353, '7702057001834', '353', 'LOSARTAN 100 MG X 30 TAB MK', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S607f05c6b93389.49432163', 354, '7702057001827', '354', 'LOSARTAN 50 MG X30 TAB MK', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S607f06da17a721.24404684', 355, '7410002801407', '355', 'PREDNISONA 5 MG X 100 TAB MK', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S607f07fc6a6622.28104902', 356, '7702057296575', '356', 'SALBUTAMOL INHALADOR X 200 DOSIS MK', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S607f0abbcb5112.59928513', 357, '7410002801551', '357', 'TETRACYCLINE 500 MG X 100 CAPS MK', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S607f0be51b5bc3.13904339', 358, '7410002801636', '358', 'TRIMETOPRIMA SULFA 160/800 MG X50 TAB', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S607f0da34fd019.68161166', 359, '7702057069995', '359', 'IRBESARTAN HCT 300/12.5 X 14 TAB MK', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S607f0eb1123b55.84653629', 360, '7702057709006', '360', 'ESOMEPRAZOL 40 MG X30 TAB MK', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S607f0ff66d23d9.92186427', 361, '7702057073541', '361', 'ACIDO FUSIDICO CREMA 2 % 15 G  MK', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S607f110ce07320.45234138', 362, '7702057078782', '362', 'GLUCOSAMINA 1500 MG X 15 SOBRES MK', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S607f12770052f4.48452990', 363, '7702057074371', '363', 'IRBESARTAN HCT 150/12.5 MG X 14 TAB MK', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S607f148cd9fce6.49016798', 364, '7702057079406', '364', 'TRAMADOL 50 MG X 10 CAPS MK', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S607f15807528e8.41879759', 365, '7702057074470', '365', 'IRBESARTAN 150 MG X 14 TAB MK', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S607f16a5181389.01174408', 366, '7702057063726', '366', 'CARVEDILOL 25 MG X 30 TAB MK', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S607f176d258833.64313651', 367, '7702057070229', '367', 'GABAPENTIN 300 MG X 30 CAPS MK', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S607f18c22474e1.80350765', 368, '7410002605357', '368', 'SALVADOL  500/25 MG  X 50 TAB  MK', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 21),
(0, 'S607f3b19bb7e59.52396811', 369, '7501049713454', '369', 'ALDACTONE 100 MG X 30 TAB PFIZER', '', 'PFIZER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 14),
(0, 'S607f3cb9b69303.44178306', 370, '7501049703950', '370', 'ALDACTONE A 25 MG X 30 TAB PFIZER', '', 'PFIZER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 14),
(0, 'S607f3db8f38448.85740022', 371, '7501100089443', '371', 'ELEQUINE 500 MG X24 TAB  JANSSEN', '', 'JANSSEN', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 1),
(0, 'S607f3ed8e892c8.78314167', 372, '7501109901098', '372', 'MOTILIUM SUSPENSION FCO  C/PIPET 60 ML', '', 'JANSSEN', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 1),
(0, 'S607f415fb89962.27025506', 373, '7501109901487', '373', 'SUFREXAL GEL TUBO 78 G  JANSSEN', '', 'JANSSEN', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 1),
(0, 'S607f4250922b37.90245336', 374, '7501100089016', '374', 'TYLEX PARACETAMOL  750 GR X 20 TAB', '', 'JANSSEN', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 1),
(0, 'S607f42e4ddcfd6.36594393', 375, '7501100089122', '375', 'TOPAMAX 25 MG X 20 TAB JANSSEN', '', 'JANSSEN', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 1),
(0, 'S607f43a505df23.76908218', 376, '7501100089108', '376', 'TOPAMAX 100 MG X 20 TAB JANSSEN', '', 'JANSSEN', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 1),
(0, 'S607f445d421600.06519876', 377, '7501109911035', '377', 'TYLEX PARACETAMOL  750 MG X 40 TAB', '', 'JANSSEN', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 1),
(0, 'S607f455ec82885.35854420', 378, '7502273993315', '378', 'MICRODACYN 60 MG SOL. ANTISEP. 120 ML', '', 'MORE PHARMA', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 18),
(0, 'S607f46162e86e2.14115127', 379, '5033439032965', '379', 'AVAMYS 27.5 MC SPRAY NASAL 120 DS GSK', '', 'GSK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 12),
(0, 'S607f471fb94e41.02267830', 380, '5034642021524', '380', 'SERETIDE DISKUS 50/250 MCG X 60 DOSIS', '', 'GSK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 12),
(0, 'S607f480a409cf6.29369411', 381, '7703363006469', '381', 'RELVAR ELLIPTA  200/25 X 30 DOSIS', '', 'GSK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 12),
(0, 'S607f49209d3a41.10971907', 382, '7861028101246', '382', 'VENTOLIN INHALADOR 100 MCG/200 DOSIS', '', 'GSK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 12),
(0, 'S607f4ae81734b9.27319821', 383, '7501098605984', '383', 'ATACAND PLUS 16/12.5 MG  X 14 TAB', '', 'ASTRAZENECA', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 9),
(0, 'S607f4b965a3209.75898193', 384, '7501098605953', '384', 'ATACAND 16 MG X 14 TAB ASTRAZENECA', '', 'ASTRAZENECA', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 9),
(0, 'S607f4c8b4cd4d0.25754806', 385, '7501098607520', '385', 'ATACAND 32 MG X 14 TAB ASTRAZENECA', '', 'ASTRAZENECA', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 9),
(0, 'S6080262752fdf8.64923916', 386, '7501098606301', '386', 'ATACAND PLUS 32 MG/12.5 X 14 TAB', '', 'AZTRAZENECA', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 9),
(0, 'S608027180c43c7.95893732', 387, '7501098605762', '387', 'CRESTOR  ROSUVASTATINA 10 MG X 30 TAB', '', 'ASTRAZENECA', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 9),
(0, 'S608027f26a9f87.65923366', 388, '7501098607452', '388', 'CRESTOR ROSUVASTATINA 20 MG X 30 TAB', '', 'ASTRAZENECA', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 9),
(0, 'S60802899a42ec6.89539388', 389, '7501098606332', '389', 'ATACAND PLUS 32/25 MG X 14 TAB', '', 'ASTRAZENECA', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 9),
(0, 'S6080297f02f9d9.26856432', 390, '7441082117829', '390', 'FORXIGA DAPAGLIFLOZIN  10 MG X 30 TAB', '', 'ASTRAZENECA', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 9),
(0, 'S60aa91f67cdef5.73107125', 391, '7501098609654', '588', 'NEXIUM ESOMEPRAZOLE 10 MG X28 SOBRES', '', 'ASTRAZENECA', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 9),
(0, 'S60802c86857557.83613964', 392, '7896116865588', '392', 'DIANE CIPROTERONA 35 X 21 GRAGEAS', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S60802d58515614.57620043', 393, '7896116861214', '393', 'PROGYNOVA 1 MG X 28 GRAGEAS BAYER', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S60802e2891a2e3.88352287', 394, '7896116866189', '394', 'YASMIN  ANTICONCEPTIVO X 21 TAB', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S60802ec4412137.20307066', 395, '7896116861634', '395', 'YAZ ANTICONCEPTIVO  X 28 GRAGEAS', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S60803070951782.72709399', 396, '030280010734', '396', 'DEPO-MEDROL 40 MG 1 ML  PFIZER', '', 'PFIZER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 14),
(0, 'S608031170a5290.32595776', 397, '7441139401451', '397', 'DEPO- PROVERA 150 MG 1 ML PFIZER', '', 'PFIZER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 14),
(0, 'S6080320380b830.06365715', 398, '030887010939', '398', 'SOLU- MEDROL 500 MG 8 ML I.M. I.V. PFIZER', '', 'PFIZER ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 14),
(0, 'S6080332b00b111.19172539', 399, '030113120364', '399', 'SOLU- MEDROL 40 MG  I.M.  I. V. PFIZER', '', 'PFIZER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 14),
(0, 'S608033f94e84f3.20878867', 400, '7803510773319', '400', 'CIRUELAX MERMELADA 150 GR  GARDEN H.', '', 'GARDEN HOUSE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 13),
(0, 'S608034ab972b63.86104175', 401, '7803510441010', '401', 'CIRUELAX MERMELADA 300 G GARDEN H', '', 'GARDEN HOUSE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 13),
(0, 'S608035fb1462b8.75329888', 402, '7803510000651', '402', 'CIRUELAX TE X 10 SOBRES GARDEN H', '', 'GARDEN HOUSE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 13),
(0, 'S608036c886bc01.79587566', 403, '7803510001931', '403', 'CIRUELAX FORTE  125 MG X 24 TAB', '', 'GARDEN HOUSE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 13),
(0, 'S608037cbd0ef45.77059664', 404, '7803510001962', '404', 'CIRUELAX JARABE 0.25% P/V  105 ML', '', 'GARDEN HOUSE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 13),
(0, 'S608038ebc45905.27608203', 405, '7803510003430', '405', 'CIRUELAX 75 MG X 100 MINITABS', '', 'GARDEN HOUSE', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 13),
(0, 'S60803b0c554884.42808603', 406, '7501100088170', '406', 'TYLENOL FRASCO 3.2 G/100  120 ML', '', 'JANSSEN', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 1),
(0, 'S60803c35248c81.85417467', 407, '7702035432117', '407', 'LISTERINE COOL MINT 180 ML   J', '', 'JHONSON ', 1, 1, 0, 1, 0, 88, 2, '', 0, 0, 0, 0, '', 26),
(0, 'S60804121490f20.30283713', 408, '8710103518266', '408', 'CUCHARA PRIMEROS PASOS 6 M', '', 'PHILLIPS', 1, 0, 0, 1, 0, 86, 2, '', 0, 0, 0, 0, '', 27),
(0, 'S6080437631d502.22658137', 409, '7441026001979', '409', 'KEPRA 100 MG FCO 300 ML  GSK', '', 'GSK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 12),
(0, 'S608044320639b7.64957697', 410, '7441026001986', '410', 'KEPRA DG 500 MG X 30 TAB GSK', '', 'GSK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 12),
(0, 'S60804580d4dcd4.43692318', 411, '7861028101291', '411', 'AUGMENTIN ES FRASCO   100 ML GSK', '', 'GSK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 12),
(0, 'S60804936055950.82884475', 412, '7861028101345', '412', 'AUGMENTIN BID 400 MG FCO 70 ML', '', 'GSK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 12),
(0, 'S60804b64bbc8c0.05895294', 413, '7861028101352', '413', 'AUGMENTIN 500   125 MG X 10 TAB GSK', '', 'GSK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 12),
(0, 'S60804cd62c5e92.24015902', 414, '7758713058827', '414', 'AUGMENTIN BID 875/125 MG X 14 TAB GSK', '', 'GSK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 12),
(0, 'S60804d90b1d4a5.55406968', 415, '7861028101338', '415', 'AUGMENTIN BID 200 MG  FCO 70 ML GSK', '', 'GSK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 12),
(0, 'S60804ee3e90333.84910813', 416, '769041014482', '416', 'ALERFIN 4 MG X 20 TAB   L. LOPEZ', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 11),
(0, 'S60804fbb7fea90.02901497', 417, '769041000072', '417', 'ALERFIN EXPECT FCO 110 ML  L. LOPEZ', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 11),
(0, 'S608050f8d26979.71452650', 418, '7411002600335', '418', 'BACAOLINA JARABE FCO  480 ML  L. LOPEZ', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 11),
(0, 'S608051ed491085.19043705', 419, '7411002600274', '419', 'BACAOLINITA JBE FCO  240 ML  L.LOPEZ', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 11),
(0, 'S608052d601d989.15814793', 420, '769041000270', '420', 'BACZOL ANTIGRIP. BALSAMICO  FCO 60 ML', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 11),
(0, 'S608053bc6bac71.04350449', 421, '769041002113', '421', 'BACZOL EXPECTORANTE FCO 120 ML LOPEZ', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 11),
(0, 'S60805c576a8267.11961844', 422, '769041002342', '422', 'BACZOL EXPECTORANTE 60 ML L. LOPEZ', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 11),
(0, 'S60805e31602f17.37513361', 423, '769041000232', '423', 'CEREBROFOS  10 ML X 10 AMP. BEBIBLES', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 11),
(0, 'S60805f05161e83.13470211', 424, '769041041013', '424', 'CEREBROFOS INF.  JBE FCO 120 ML LOPEZ', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 11),
(0, 'S60805fea7894f1.73945095', 425, '769041445170', '425', 'CEREBROFOS NF X50 CAPS  LOPEZ', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 11),
(0, 'S608060ec1b2261.57818253', 426, '769041002670', '426', 'CETAFREN JBE FCO  60 ML  LOPEZ', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 11),
(0, 'S608061ab9d5ab1.46407571', 427, '7416904183139', '427', 'CLOTEN FORTE 2% CREMA  TUBO 15 GR', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 11),
(0, 'S608062c9be0979.87806163', 428, '769041051029', '428', 'DERMISONA CREMA TUBO 1% 15 GR LOPEZ', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 11),
(0, 'S608063daa6edc9.75516108', 429, '769041019944', '429', 'DOLOFIN AR 7.5 MG X 10 TAB LOPEZ', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 11),
(0, 'S60806550c9d8d7.44043153', 430, '769041001352', '430', 'DOLOFIN AR 7.5 MG X 50 TAB LOPEZ', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 11),
(0, 'S608066bb40d384.66236618', 431, '769041000294', '431', 'DOLOFIN FLEX 7.5/400 MG X 10 TAB LOPEZ', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 11),
(0, 'S60806790eeecf0.13996553', 432, '769041001345', '432', 'DOLOFIN FLEX 7.5/400 MG X 50 TAB LOPEZ', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 11),
(0, 'S608069628f17a4.48789201', 433, '7416904145403', '433', 'DOLOFIN RAPIDA ACCION NF X 20 TAB', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 11),
(0, 'S608077239801d2.84401411', 434, '769041001253', '434', 'DOMINAL 500 /25 MG X 100 TAB', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 11),
(0, 'S608077f28f6995.76547032', 435, '769041045431', '435', 'INTESTINOMICINA   AD X10 CAPS', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 11),
(0, 'S6080797d3e92d0.05971574', 436, '769041009747', '436', 'LORATINE 10 MG X 10 TAB  LOPEZ', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 11),
(0, 'S60807a8cd9e693.76717923', 437, '769041002014', '437', 'LORATINE 10 MG X 50 TAB LOPEZ', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 11),
(0, 'S60807cdbc383e0.22251887', 438, '7416904104325', '438', 'NORMALINA  NF X 10 TAB LOPEZ', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 11),
(0, 'S60807e3c4f0e04.06002963', 439, '74410279', '439', 'LECHE MAGNESIA PHILLIPS FCO  360 ML', '', 'ASPEN', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 2),
(0, 'S60807ee9b90081.67273652', 440, '74410255', '440', 'LECHE MAGNESIA PHILLIPS  FCO 60 ML', '', 'ASPEN', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 2),
(0, 'S60807fd17f0cf2.68036830', 441, '7410000100076', '441', 'INFADERM CREMA TARRO 120 GR', '', 'ARSAL', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 3),
(0, 'S60808078b47577.93863179', 442, '7410000114172', '442', 'INFADERM CREMA TUBO 60 GR', '', 'ARSAL', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 3),
(0, 'S6080816922ffc2.67560852', 443, '7410000101448', '443', 'DEXA-BIOPLEXIN X 2 AMP 1 ML C/JER ARSAL', '', 'ARSAL', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 3),
(0, 'S60808236b5f323.04221272', 444, '7410000100885', '444', 'NOGESTAL-1 ANTICONC. AMP 1 ML C/JER', '', 'ARSAL', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 3),
(0, 'S6080846a734de1.60914355', 445, '7410000100694', '445', 'SUERO ORALITE CEREZA 450 ML FCO VIDRIO', '', 'ARSAL', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 3),
(0, 'S608085e4d15464.74328687', 446, '7410000115162', '446', 'SUERO ORALITE COCO  FCO PLAST.  570 ML', '', 'ARSAL', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 3),
(0, 'S60808ba2eb5140.27436653', 447, '7410000101332', '447', 'CLO-PRIM 10 MG/2 ML X 3 AMP. I.M. ARSAL', '', 'ARSAL', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 3),
(0, 'S60808d1337ce71.75431135', 448, '7410000101356', '448', 'CLO-PRIM 10 MG X 40 TAB ARSAL', '', 'ARSAL', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 3),
(0, 'S60808f7087a6e4.11705224', 449, '7410000101462', '449', 'NISTATINA INFANT. FCO GOTAS ORAL 30 ML', '', 'ARSAL ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 3),
(0, 'S608091187350a4.70421914', 450, '5600360210047', '450', 'NEUFIL  DIPROFILINA  60 TAB  BIAL', '', 'BIAL', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 16),
(0, 'S608091e68a46e5.57312135', 451, '5600360210054', '451', 'NEUFIL DIPROFILINA JBE FCO 200 ML BIAL', '', 'BIAL', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 16),
(0, 'S6080935d34b1c4.26538541', 452, '5600360210139', '452', 'MELEX  MEXAZOLAM  1 MG X30 TAB  BIAL', '', 'BIAL', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 16),
(0, 'S6080942b35c042.39611765', 453, '7406158863383', '453', 'AVELOX MOXIFLOXACINO 400 MG X 20 TAB', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S60809500b7f281.09526042', 454, '7415100474263', '454', 'XARELTO RIVAAROXABAN 2.50 MG X 28 TAB', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S608095df9f3336.25271743', 455, '7793640991762', '455', 'XARELTO RIVAROXABAN 10 MG X 10 TAB', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S608096bd997ba8.43942327', 456, '7795320000139', '456', 'XARELTO RIVAROXABAN  15 MG X14 TAB', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S60809851986082.35189040', 457, '7795320000122', '457', 'XARELTO RIVAROXABAN 15 MG X 28 TAB', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S608098eb21aaf4.91783489', 458, '7795320000160', '458', 'XARELTO RIVAROXABAN 20 MG X 14 TAB', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S608099843abfe8.65493542', 459, '7795320000153', '459', 'XARELTO RIVAROXABAN 20 MG X 28 TAB', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S60809a9909fa37.10168664', 460, '7441151901014', '460', 'QUETIDIN 25 MG X 30 TAB  ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 10),
(0, 'S60809b79b82782.87480744', 461, '7441151901076', '461', 'QUETIDIN 200 MG X 30 TAB  ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 10),
(0, 'S60809c15d3d6e2.75457152', 462, '7441151902783', '462', 'CRESADEX 20 MG X 30 TAB ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 10),
(0, 'S60809cb99ebc50.91868820', 463, '7441151902806', '463', 'CRESADEX 10 MG X 30 TAB ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 10),
(0, 'S60809e0e5d77b6.86068913', 464, '7441151903698', '464', 'MUCOLIT 600 MG X 10 SOBRES  ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 10),
(0, 'S60809eed128655.29494639', 465, '7441151903681', '465', 'MUCOLIT 200 MG X 10 SOBRES ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 10),
(0, 'S60809f95318928.35449266', 466, '7441151903674', '466', 'MUCOLIT 100 MG X 10 SOBRES ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 10),
(0, 'S6080a09d0b0fa7.60766431', 467, '7441151904848', '467', 'QUPRA 400/4  MG X 7 TAB  ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 10),
(0, 'S6080a1481b4711.31719506', 468, '7441151905845', '468', 'CRESADEX EZE 10/10 MG X 28 TAB ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 10),
(0, 'S6080a1e72c4b43.05557670', 469, '7501285601126', '469', 'ISOPTIN SR 240 MG, VERAPAMIL X 20 TAB ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 10),
(0, 'S6080a2e21ef051.78243972', 470, '7501033923005', '470', 'KLARICID 125MG/5 ML  FCO  60 ML C/JER', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 10),
(0, 'S6080a3939e2d17.64295943', 471, '7501033923012', '471', 'KLARICID 250 MG/5 ML FCO 60 ML C/JER', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 10),
(0, 'S6080a541d74e96.62678498', 472, '7501033922121', '472', 'KLARICID  500 MG X 10 TAB  ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 10),
(0, 'S6080a746519349.61478036', 473, '7501033922367', '473', 'OGASTRO LANSOPRAZOL 30 MG X 14 CAPS', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 10),
(0, 'S6080a9431d6450.88689492', 474, '8002660012074', '474', 'SYNTROID LEVOTEROXINA 25 MCG X 30 TAB', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 10),
(0, 'S6080aa70cdf102.38771203', 475, '8002660012081', '475', 'SYNTROID  LEVOTIROXINA 50 MCG X 30 TAB', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 10),
(0, 'S6080ab34af2a02.52970554', 476, '8002660012098', '476', 'SYNTROID LEVOTIROXINA  75 MCG X 30 TAB', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 10),
(0, 'S6080ac0e4d97b8.46059735', 477, '8002660012111', '477', 'SYNTROID  LEVOTIR. 100 MCG X 30 TAB', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 10),
(0, 'S6080acd9602040.75453168', 478, '8002660012128', '478', 'SYNTROID  LEVOT. 112 MCG X 30 TAB', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 10),
(0, 'S6080af437c94e1.64732452', 479, '8002660012135', '479', 'SYNTROID LEVOTIROX 125 MCG X 30 TAB', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 10),
(0, 'S6080b0685f2df4.77075622', 480, '7501123010707', '480', 'CARDISPAN  LEVOC. 30% FCO 60 ML', '', 'GROSSMAN', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 7),
(0, 'S6080b15bcce454.83725336', 481, '7501123011209', '481', 'CARDISPAN  1 G  X 20 TAB MASTICABLES', '', 'GROSSMAN', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 7),
(0, 'S6080b22f96edd0.34339200', 482, '7501123011803', '482', 'FITOESTIMULINA 600/40 MG  X 6 OVULOS', '', 'GROSSMAN', 1, 1, 0, 0, 0, 87, 2, '', 0, 0, 0, 0, '', 7),
(0, 'S6080b321cc5497.41182915', 483, '011418387003', '483', 'ALKA-SELTZER FAST RELIEF X 12 TAB EFERV.', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S6080b4afddd518.45385539', 484, '011418215085', '484', 'ALKA- GASTRIC X 12 TAB  BAYER', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S6080b55c1f8103.09253725', 485, '011418240704', '485', 'ALKA- AD  X 12 TAB  BAYER', '', 'BAYER ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S6080b6522ee9d6.01025006', 486, '011418462311', '486', 'ALKA-SELTZER EXTREME BOOST X 10 TAB', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S6080b6d9cee8a6.27326708', 487, '011418696754', '487', 'ASPIRINA 500 MG X 20 TAB BAYER', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S6080b82683c5f0.34894269', 488, '011418696839', '488', 'ASPIRINA 500 MG X 100 TAB BAYER', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S608179e9b08af7.28804105', 489, '011418697645', '489', 'ASPIRINA FORTE X20 TAB BAYER', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S60817c7fdc2bc2.86748062', 490, '011418014091', '490', 'ASPIRINA FORTE NIÑOS X20 TAB BAYER', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S60817d59bb0899.13511858', 491, '011418210288', '491', 'ALEVE EXTRA FUERTE 220 MG X 12 TAB', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S60817e40941bc2.03567366', 492, '011418210295', '492', 'ALEVE EXTRA FUERTE 220 MG X 36 TAB', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S60817f748bb456.41709744', 493, '011418216020', '493', 'BAYKID DOLOR Y FIEBRE X 12 TAB', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S608181471a5188.21975895', 494, '011418721296', '494', 'CARDIOASPIRINA 81 MG  X 30 TAB', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S608182f85cfc95.21505063', 495, '011418205109', '495', 'DORIVAL 200 MG  X 12 GRAGEAS BAYER', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S608184a77b2291.89184792', 496, '011418258389', '496', 'TABCIN EXTRA FUERTE DIA X 12 CAPS', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S6081859dd15690.25689433', 497, '011418217102', '497', 'TABCIN ADULTO ANT. EFERV.  X 12 TAB', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S60818816c52648.81403961', 498, '011418012004', '498', 'CANESTEN TUBO CREMA 1% 15 G', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S608188ae43b7f5.03895513', 499, '011418428928', '499', 'CANESTEN V 500 MG X 1 OVULO', '', 'BAYER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 4),
(0, 'S60818b1775ede3.34724299', 500, '7703454123426', '500', 'CALCIBON D  CALCIO 1,500 MG X 30 TAB', '', 'ALTIAN', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 23),
(0, 'S60818bcadbebd0.03127594', 501, '7703454123433', '501', 'CALCIBON D CALCIO 1,500 MG X 60 TAB', '', 'ALTIAN', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 23),
(0, 'S60818ca7e5e4f3.42362070', 502, '7703454121873', '502', 'CALCIBON NATAL CALCIO X 30 TAB', '', 'ALTIAN', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 23),
(0, 'S6081903b7d9064.38286204', 503, '7703454123501', '503', 'SENOKOT 8.6 MG X 30 TAB  ALTIAN PHARM.', '', 'ALTIAN', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 23),
(0, 'S608190f650f027.47651282', 504, '7703454123518', '504', 'SENOKOT DOCUSADO X 20 TAB ALTIAN', '', 'ALTIAN', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 23),
(0, 'S608192368c4fa6.18293520', 505, '7406076100102', '505', 'CORTIGEN 0.25% CREMA TOPICA 30 GR', '', 'GLOBAL', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 8),
(0, 'S6081949017bb83.85344058', 506, '7406076103967', '506', 'DIAMENIL G 1000/4 MG X 30 TAB', '', 'GLOBAL', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 8),
(0, 'S608197f94a0f95.51501270', 507, '7406076100997', '507', 'GLICAZET 500/2.5 MG X 40 TAB GLOBAL', '', 'GLOBAL', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 8),
(0, 'S6081997455c595.50198429', 508, '7406076101208', '508', 'GLICAZET 850/5 MG X 40 TAB  GLOBAL', '', 'GLOBAL', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 8),
(0, 'S60819b05e1b500.76615808', 509, '7406076103882', '509', 'ISTIN  AMLODIPINA 5 MG X 30 TAB GF', '', 'GLOBAL', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 8),
(0, 'S60819c381a8485.20588547', 510, '7406076104193', '510', 'KLARISTAT 250 MG/5 ML FCO  60 ML', '', 'GLOBAL', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 8),
(0, 'S60819dd1841268.78180746', 511, '7406076101352', '511', 'NEUROLESS CITALOP.  20 MGX30 TAB GF', '', 'GLOBAL', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 8),
(0, 'S60819f6821b436.93760270', 512, '7406076101307', '512', 'VASSLUTEN IRBESARTAN  150 MG X 15 TAB', '', 'GLOBAL ', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 8),
(0, 'S6081a023b87c47.47515114', 513, '7406076101727', '513', 'VASLUTEN IRBESARTAN 150 MG X 30 TAB', '', 'GLOBAL', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 8),
(0, 'S6081a155f104e1.11259442', 514, '7406076101734', '514', 'VASSLUTEN IRBESARTAN 300 MG X 30 TAB', '', 'GLOBAL', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 8),
(0, 'S6081a293e7d551.02932212', 515, '7406076102731', '515', 'VASSLUTEN H 150/12.5 IRB HIDR.  X15 TAB', '', 'GLOBAL', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 8),
(0, 'S6081a39cc32887.01274467', 516, '7406076104469', '516', 'GLICAZET METF.  GLIB 1000/5 MG X 40 TAB', '', 'GLOBAL', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 8),
(0, 'S6081a564e4c869.34006275', 517, '6091403216512', '517', 'METICORTEN  PREDNISONA 20 MG X 30 TAB', '', 'ASPEN', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 2),
(0, 'S6081a605cb9088.39482276', 518, '6091403216499', '518', 'METICORTEN PREDNISONA 50 MG X 20 TAB', '', 'ASPEN', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 2),
(0, 'S6081a6d98216c8.05911063', 519, '6091403216543', '519', 'OVESTIN CREMA VAGINAL 1/15 GR', '', 'ASPEN', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 2),
(0, 'S6081a7cd1842b1.58846610', 520, '7501092722694', '520', 'PANTECTA  PANTOPRAZOL 40 MG X 28 TAB', '', 'ASPEN', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 2),
(0, 'S6081a8668de7a1.34942513', 521, '7501092722663', '521', 'PANTECTA PANTOPRAZOL 40 MG X 14 TAB', '', 'ASPEN', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 2),
(0, 'S608b0afeb1adc3.11403367', 522, '7410002012872', '522', 'SUDAGRIP ANTIG. AMPOLLA  I.M. PAILL', '', 'PAILL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 45),
(0, 'S608b0c63f3ced0.81060241', 523, '7410002010120', '523', 'SUDAGRIP BALSAMICO AMPOLLA I.M PAILL', '', 'PAILL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 45),
(0, 'S608b0eb5e30d74.90832776', 524, '18901790702558', '524', 'FUROSEMIDA 40 MG X 100 SAIMED', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S608b1081117a76.53325537', 525, '24', '525', 'FUROSEMIDA  AMPOLLA I.M. I.V. 2 ML PAILL', '', 'PAILL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 45),
(0, 'S608b13ddd1e3d9.33903237', 526, '7410002010052', '526', 'SUDAGRIP  ANTIGRIPAL X100 CAPS  PAILL', '', 'PAILL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 45),
(0, 'S608b17686af357.87856761', 527, '7404001753942', '527', 'CONDON VIVE RETARD. X8  X3', '', 'VIVE', 1, 1, 0, 1, 0, 86, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S608b190fc9aeb9.52151778', 528, '7404001753881', '528', 'CONDON VIVE COLORS  FRESA X8  X3', '', 'SAIMED', 1, 1, 0, 1, 0, 86, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S608b1a1b31fc40.74814646', 529, '8802550012111', '529', 'CONDON LONG-LOVE RETARD.', '', 'SAIMED', 1, 1, 0, 1, 0, 86, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S608b1d300d6659.73788092', 530, '18901790684618', '530', 'ENALAPRIL MALEATO 20 MG X100 TAB SAIMED', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S608b1ea09a8083.96194658', 531, '18901790700059', '531', 'LOSARTAN POTASICO 50 MG X50 TAB SAIMED', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S608b2162a996e5.32317059', 532, '7410003426258', '532', 'CAPTOPRIL ANTIHIPERTENSIVO  25 MGX100 TAB ECOMED', '', 'ECOMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 57),
(0, 'S608b229425b988.01623928', 533, '18901790699797', '533', 'ALOPURINOL 300 MG X 100 TAB SAIMED', '', 'SAIMED', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S608b23bc988420.63546131', 534, '7410002002095', '534', 'CIPROFIBRATO PL  GENERICO 100 MG X100 TAB', '', 'PL GENERICO', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 41),
(0, 'S608b250f552445.66953064', 535, '7501019006623', '535', 'SABA BUENAS NOCHES C/ALAS  8 UN', '', 'SABA', 1, 0, 0, 1, 0, 88, 4, '', 0, 0, 0, 0, '', 24),
(0, 'S608b25a4589132.04051251', 536, '7501019030352', '536', 'SABA MANZANILLA C/ALAS X 10 UN', '', 'SABA', 1, 0, 0, 1, 0, 88, 4, '', 0, 0, 0, 0, '', 24),
(0, 'S6091527ada7881.93927856', 537, '764600111596', '537', 'INTRAFER HIERRO X30 TAB REC. UNIPHARM', '', 'UNIPHARM', 1, 1, 0, 1, 0, 87, 3, '', 0, 0, 0, 0, '', 62),
(0, 'S609156b1c354d4.49265666', 538, '764600111701', '538', 'INTRAFER HIERRO  500 SUS. 150 ML UNIPHARM', '', 'UNIPHARM', 1, 1, 0, 1, 0, 87, 3, '', 0, 0, 0, 0, '', 62),
(0, 'S609157b4161316.85869367', 539, '764600110384', '539', 'AXTAR CEFTRIAXONA  1.0 AMP. I.V X 1  1 UNIPHARM', '', 'AXTAR', 1, 1, 0, 1, 0, 87, 3, '', 0, 0, 0, 0, '', 62),
(0, 'S609158711822a2.82751559', 540, '764600243242', '540', 'AXTAR CEFTRIAXONA 1.0 G AMP. I.M UNIPHARM', '', 'AXTAR', 1, 1, 0, 1, 0, 87, 3, '', 0, 0, 0, 0, '', 62),
(0, 'S609159f0f3c8a1.27771327', 541, '764600211104', '541', 'FIXIM CEFIXIMA 400 MG X 5 TAB UNIPHARM', '', 'UNIPHARM', 1, 1, 0, 1, 0, 87, 3, '', 0, 0, 0, 0, '', 62),
(0, 'S60931af49b4761.91014009', 542, '7861073902126', '542', 'TRAMAL CLORHIDRATO DE TRAMADOL 2 ML X 5 AMP', '', 'GRUNENTHAL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 63),
(0, 'S60931c5d41c0f5.78987282', 543, '769041001727', '543', 'UROFIN METENAMINA X100 TAB LOPEZ', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 11),
(0, 'S60931fb41b1877.15968816', 544, '9555002108120', '544', 'GUANTE LATEX MEDICAL MEDIUM X100', '', 'SUPER GUARD', 1, 0, 0, 1, 0, 89, 4, '', 0, 0, 0, 0, '', 47),
(0, 'S609328d91de622.95503063', 545, '8710428999283', '545', 'ENSURE ADVANCE VAINILLA POLVO 400 G ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 10),
(0, 'S609329ac0aefb2.64123858', 546, '5391523054041', '546', 'ENSURE NG VAINILLA POLVO 850 G ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 10),
(0, 'S60932ba6b5cfc7.28810442', 547, '8710428999306', '547', 'ENSURE ADVANCE VAINILLA POLVO 850 G ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 10),
(0, 'S60932cc5ab0dc2.60861952', 548, '5391523054034', '548', 'ENSURE NG VAINILLA POLVO 400 G ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 10),
(0, 'S60932d9a43ad84.43667312', 549, '5391523054065', '549', 'ENSURE NG FRESA POLVO 400 G ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 10),
(0, 'S60932e5753c067.61468724', 550, '8710428015112', '550', 'GLUCERNA VAINILLA POLVO 900 G ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 10),
(0, 'S60932f1791e007.65842577', 551, '8886451001061', '551', 'PEDIASURE VAINILLA POLVO 400 G ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 10),
(0, 'S60932fbb8d8ca6.37733563', 552, '8886451001115', '552', 'PEDIASURE FRESA POLVO 400 G ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 10),
(0, 'S609334203c4179.19993322', 553, '8433042001575', '553', 'NUCLEO C.M.P. FORTE X 30 CAPS FERRER', '', 'FERRER', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 64),
(0, 'S6093359e496427.87596632', 554, '8433042001582', '554', 'NUCLEO C.M.P. FORTE X3 AMPOLL. FERRER', '', 'FERRER', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 64),
(0, 'S609bf8d33daba4.06283644', 555, '7501088500145', '555', 'ANTIFLU-DES X100 CHINOIN', 'ANTIVIRAL, ANTIHISTAMINICO, ANTIPIRETICO', 'ANTIFLU-DES', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 39),
(0, 'S609e8845b30963.46915722', 556, '7703889016102', '556', 'LACTULAX JBE 240 ML CHALVER', '', 'CHALVER', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 66),
(0, 'S609e893ecbecf2.87421334', 557, '612255331213', '557', 'ANESTENKA ANALGESICO 2 ML X 12 TUBOS', '', 'ANESTENKA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 38),
(0, 'S609e8b33e2bde7.95405404', 558, '765446070399', '558', 'SUERO ORAL COCO X 54  SOBRES ANCALMO', '', 'ANCALMO', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 65),
(0, 'S609e8c45b0a134.38687869', 559, '765446070375', '559', 'SUERO ORAL VITAMINADO X 54 SOBRES ANCALMO', '', 'ANCALMO', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 65),
(0, 'S609fd927159805.44482815', 560, '8427030003139', '560', 'LECHE SIMILAC SENSITIVE LF 375 GR  ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 86, 5, '', 0, 0, 0, 0, '', 10),
(0, 'S609fda088c5a96.95736763', 561, '5391523056175', '561', 'LECHE SIMILAC 1  400 GR HMO ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 86, 5, '', 0, 0, 0, 0, '', 10),
(0, 'S609fdaeb955fd4.98125744', 562, '5391523056199', '562', 'LECHE SIMILAC 2 400 GR HMO ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 86, 5, '', 0, 0, 0, 0, '', 10),
(0, 'S609fdb7526ba39.35071173', 563, '5391523056212', '563', 'LECHE SIMILAC 3 HMO 400 GR ABOOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 86, 5, '', 0, 0, 0, 0, '', 10),
(0, 'S609fdc1d668fe2.57604525', 564, '5391523056182', '564', 'LECHE SIMILAC 1 HMO 850 GR ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 86, 5, '', 0, 0, 0, 0, '', 10),
(0, 'S609fde21ebb0a8.92643673', 565, '5391523056205', '565', 'LECHE SIMILAC 2 HMO 850 GR ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 86, 5, '', 0, 0, 0, 0, '', 10),
(0, 'S609fdec0600090.95589326', 566, '5391523056229', '566', 'LECHE SIMILAC 3 HMO 850 GR ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 86, 5, '', 0, 0, 0, 0, '', 10),
(0, 'S609fdf4d2f3455.25229405', 567, '8427030006215', '567', 'LECHE SIMILAC TOTAL CONFORT 1 360 GR ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 86, 5, '', 0, 0, 0, 0, '', 10),
(0, 'S60a2fba149f2d9.45362594', 568, '0030911010799', '568', 'SOLUMEDROL,  METILPREDNISOLONA 1 GR PFIZER', 'Metilprednizolona 1gr/ml', 'PFIZER', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 14),
(0, 'S60a56f29845383.64714897', 569, '7410000320146', '569', 'COLIPAX BROMURO DE CLIDINIO 5 MG X 100 TAB', '', 'TERAPEUTICOS MEDICINALES', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 38),
(0, 'S60a5727e2b7560.53555596', 570, '7410000114738', '570', 'CLOPRIM METOCLOPRAMIDA  JBE120 ML ARSAL', '', 'ARSAL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 3),
(0, 'S60a573a0209b67.99757029', 571, '7415100204129', '571', 'DRAMAVOL KIDS JBE 75 ML VIJOSA', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S60a57541d4fcc8.38176595', 572, '7452079700139', '572', 'FERROVITALON PLUS JBE KIDS 120 ML COFASA', '', 'COFASA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 33),
(0, 'S60a6eec290b804.83918149', 573, '25', '573', 'VENDA DE GASA 6\" CAMBRIC', '', 'CAMBRIC', 1, 0, 0, 1, 0, 89, 6, '', 0, 0, 0, 0, '', 67),
(0, 'S60a6f043d77f96.34370479', 574, '26', '574', 'VENDA DE GASA 4\" CAMBRIC/TEXPOL', '', 'CAMBRIC/TEXPOL', 1, 0, 0, 1, 0, 89, 6, '', 0, 0, 0, 0, '', 67),
(0, 'S60a6f1316b97d3.36492093', 575, '27', '575', 'VENDA DE GASA 3\" CAMBRIC/TEXPOL', '', 'CAMBRIC/TEXPOL', 1, 0, 0, 1, 0, 89, 6, '', 0, 0, 0, 0, '', 67),
(0, 'S60a6f2dd6992e7.68838034', 576, '28', '576', 'VENDA DE GASA 2\" CAMBRIC/TEXPOL', '', 'CAMCRIC/TEXPOL', 1, 0, 0, 1, 0, 89, 6, '', 0, 0, 0, 0, '', 67),
(0, 'S60a6f5417fd5d9.68379309', 577, '29', '577', 'VENDA ELASTICA 6\" FUTURA', '', 'FUTURA', 1, 0, 0, 1, 0, 89, 6, '', 0, 0, 0, 0, '', 69),
(0, 'S60a6f5e9803648.37511091', 578, '30', '578', 'VENDA ELASTICA 5\" FUTURA', '', 'FUTURA', 1, 0, 0, 1, 0, 89, 6, '', 0, 0, 0, 0, '', 69),
(0, 'S60a6f673375941.20592073', 579, '31', '579', 'VENDA ELASTICA 4\" FUTURA', '', 'FUTURA', 1, 0, 0, 1, 0, 89, 6, '', 0, 0, 0, 0, '', 69),
(0, 'S60a6f7029ed422.31087045', 580, '32', '580', 'VENDA ELASTICA 3\" FUTURA', '', 'FUTURA', 1, 0, 0, 1, 0, 89, 6, '', 0, 0, 0, 0, '', 69),
(0, 'S60a6f796108fb1.84929910', 581, '33', '581', 'VENDA ELASTICA 2\" FUTURA', '', 'FUTURA', 1, 0, 0, 0, 0, 89, 6, '', 0, 0, 0, 0, '', 69),
(0, 'S60a703e76e8b59.46208156', 582, '7501125173547', '582', 'SUERO ELECTROLIT, MARACUYA 625 ML', '', 'Electrolit ', 1, 1, 0, 1, 0, 87, 6, '', 0, 0, 0, 0, '', 29),
(0, 'S60a70489bc99a3.56896253', 583, '7501125174797', '583', 'SUERO ELECTROLIT, MORA AZUL 625ML', '', 'Electrolit', 1, 1, 0, 1, 0, 87, 6, '', 0, 0, 0, 0, '', 29),
(0, 'S60a704eeadbc34.40129191', 584, '7501125174803', '584', 'SUERO ELECTROLIT JAMAICA, 625ML', '', 'Electrolit', 1, 1, 0, 1, 0, 87, 6, '', 0, 0, 0, 0, '', 29),
(0, 'S60a705a5cef034.84088017', 585, '7501125143182', '585', 'SUERO ELECTROLIT PEDIATRICO MANZANA 500ML', '', 'Electrolit', 1, 1, 0, 1, 0, 87, 6, '', 0, 0, 0, 0, '', 29),
(0, 'S60a7062cc7f356.92351907', 586, '7501125143199', '586', 'SUERO ELECTROLIT PEDIATRICO UVA 500 ML', '', 'Electrolit', 1, 1, 0, 1, 0, 87, 6, '', 0, 0, 0, 0, '', 29),
(0, 'S60a7069521d012.18629735', 587, '7501125143205', '587', 'SUERO ELECTROLIT PEDIATRICO FRESA 500 ML', '', 'Electrolit ', 1, 1, 0, 1, 0, 87, 6, '', 0, 0, 0, 0, '', 29),
(0, 'S60aed4fdc708b5.04767577', 588, '7415100203542', '589', 'NERVIDOCE 10,000 D.A. AMP.I.M. NORDIC', '', 'NORDIC', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 43),
(0, 'S60aed5ffb1de32.92729513', 589, '769041001505', '590', 'VITAMICIN UNGUENTO 15 G LOPEZ', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 5, '', 0, 0, 0, 0, '', 11),
(0, 'S60aed7b84a9c36.52410554', 590, '7410003000298', '591', 'NISTATINA DB FRASCO 100,000 UI 40 ML FARDEL', '', 'FARDEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 36),
(0, 'S60b9607f672781.35869586', 591, '00034', '592', 'GORRO DE ENFERMERA BLANCO', '', 'generica', 1, 0, 0, 1, 0, 89, 6, '', 0, 0, 0, 0, '', 67),
(0, 'S60b963bdd03bb4.25883613', 592, '7501125170812', '593', 'SUERO ELECTROLIT LIMA/LIMON 625ML', '', 'PISA', 1, 1, 0, 1, 0, 87, 6, '', 0, 0, 0, 0, '', 29),
(0, 'S60b9655b314b59.57584049', 593, '00035', '594', 'FLETE', '', 'FLETE', 1, 0, 0, 1, 0, 89, 6, '', 0, 0, 0, 0, '', 69),
(0, 'S60c37405e4ab94.02707826', 594, '115981000113', '595', 'AGUA FLORIDA 120 ML HIFAR', '', 'SUIZOS', 1, 1, 0, 1, 0, 89, 4, '', 0, 0, 0, 0, '', 32),
(0, 'S60c374f218eda5.29683182', 595, '1711625842', '596', 'AGUA FLORIDA 240 ML HIFAR', '', 'SUIZOS', 1, 1, 0, 1, 0, 89, 4, '', 0, 0, 0, 0, '', 32),
(0, 'S60c37608bce622.70741214', 596, '1711625843', '597', 'AGUA FLORIDA 750 ML', '', 'SUIZOS', 1, 1, 0, 1, 0, 89, 4, '', 0, 0, 0, 0, '', 32),
(0, 'S60c376e08ae550.35005634', 597, '7410061000117', '598', 'AGUA OXIGENADA 120 ML', '', 'FARMA', 1, 1, 0, 1, 0, 89, 4, '', 0, 0, 0, 0, '', 17),
(0, 'S60c8b1664b80f2.49090306', 598, '3582910009900', '599', 'ENTEROGERMINA 1X10 FRASCOS 5ML SANOFI', '', 'SANOFI', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 52),
(0, 'S60c8b7fc1ffe72.61054055', 599, '769041052026', '600', 'DERMOXIDO UNGUENTO  12 GR X LTA LOPEZ', '', 'LOPEZ', 1, 1, 0, 1, 0, 88, 2, '', 0, 0, 0, 0, '', 11),
(0, 'S60c8bb83ae9777.42574730', 600, '8002660012142', '601', 'SYNTROID 150 MCG LEVOTIROX X30 TAB ABBOTT', '', 'ABBOTT', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 10),
(0, 'S60c8bcce059515.12051118', 601, '7702057063085', '602', 'DEXKETOPROFENO 25 MG X 10 TAB MK', '', 'MK', 1, 1, 0, 1, 0, 87, 2, '', 0, 0, 0, 0, '', 6),
(0, 'S60ca0e92734c46.54945129', 602, '7415800229781', '603', 'VENDA DE GASA 3\" MIGASA', '', 'MIGASA', 1, 0, 0, 1, 0, 89, 4, '', 0, 0, 0, 0, '', 56),
(0, 'S60ca0fcb3f7c91.73177644', 603, '7410010733011', '604', 'VENDA ELEASTICA 3\"X5YDS CROSSFARMA', '', 'CROSSFARMA', 1, 0, 0, 1, 0, 89, 4, '', 0, 0, 0, 0, '', 56),
(0, 'S60ca1167e503d1.88894625', 604, '7415800229811', '605', 'COMPRESA DE GASA MIGASA 3\"X 3\"', '', 'MIGASA', 1, 0, 0, 1, 0, 89, 4, '', 0, 0, 0, 0, '', 56),
(0, 'S60ca18d40dc351.49981571', 605, '18901790706624', '606', 'PARACETAMOL 500MG ARGUS', '', 'ARGUS', 1, 1, 0, 0, 0, 87, 4, '', 0, 0, 0, 0, '', 42),
(0, 'S60ca19d9d50368.96195430', 606, '7410002802626', '607', 'PARACETAMOL 750MG MK', '', 'MK', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 6),
(0, 'S60ca1c97844518.40558294', 607, '7702136647670', '608', 'GASA CUREBAND 7.5X7.5', '', 'CUREBAND', 1, 0, 0, 1, 0, 89, 4, '', 0, 0, 0, 0, '', 24),
(0, 'S60d7566e137ad6.13969251', 608, '794688011808', '609', 'RENAMENT SOBRE POLVO 46.4 G', '', 'MEDTRITION', 1, 1, 0, 1, 0, 87, 7, '', 0, 0, 0, 0, '', 51),
(0, 'S60da24c22df006.78587916', 609, '7411002158867', '610', 'DOLO  CRIM ORIGINAL 60GR', '', 'DOLOCRIM', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 44),
(0, 'S60da2ba35683e2.49629502', 610, '7411002159666', '611', 'DOLOCRIM FORTE 60GR', '', 'DOLOCRIM', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 44),
(0, 'S60db369de199e8.63508771', 611, '301320201604', '612', 'FLEET ENEMA LAXANTE P/ADULTO 133ML', '', 'LAB. SUIZOS', 1, 1, 0, 1, 0, 87, 8, '', 0, 0, 0, 0, '', 44),
(0, 'S60db3773d86108.04214774', 612, '301320202601', '613', 'FLEET ENEMA P/ NIÑOS 66 ML SUIZOS', '', 'SUIZOS', 1, 1, 0, 1, 0, 87, 8, '', 0, 0, 0, 0, '', 44),
(0, 'S60db3879d309b4.70370209', 613, '4968420500332', '614', 'GUANTES LATEX TALLA SMALL 1X 100 NIPRO', '', 'NIPRO', 1, 0, 0, 1, 0, 89, 8, '', 0, 0, 0, 0, '', 44),
(0, 'S60db3a43061845.80766902', 614, '4968420726985', '615', 'JERINGA 10 CC 22X1 1/2 CJA X 100 NIPRO', '', 'NIPRO', 1, 0, 0, 1, 0, 89, 8, '', 0, 0, 0, 0, '', 44),
(0, 'S60db3bff582ff6.27855817', 615, '7411002118021', '616', 'PAMPERS ADULTO TALLA L NIPRO X 10', '', 'NIPRO', 1, 0, 0, 1, 0, 88, 8, '', 0, 0, 0, 0, '', 44),
(0, 'S60db3ccd8de737.40562365', 616, '7411002118014', '617', 'PAMPERS  P/ ADULTO TALLA M NIPRO X10', '', 'NIPRO', 1, 0, 0, 1, 0, 88, 8, '', 0, 0, 0, 0, '', 44),
(0, 'S60db3d53daea85.42807787', 617, '7411002118038', '618', 'PAMPERS ADULTO TALLA XL X 10  NIPRO', '', 'NIPRO', 1, 0, 0, 1, 0, 88, 8, '', 0, 0, 0, 0, '', 44),
(0, 'S60db3f0915f886.12497957', 618, '7411002182947', '619', 'TRABIT KETOROLAC 30 MG X 1 AMP.I .M. I.V.', '', 'SUIZOS', 1, 1, 0, 1, 0, 87, 8, '', 0, 0, 0, 0, '', 44),
(0, 'S60db3fbb644bc0.60760350', 619, '7411002154425', '620', 'TRABIT  KETOROLAC 60 MGS AMP. I.M. I.V.', '', 'SUIZOS', 1, 1, 0, 1, 0, 87, 8, '', 0, 0, 0, 0, '', 44),
(0, 'S60dcb9c3856348.00355827', 620, '7415100200442', '621', 'VERMAGEST EMERGENCY AMP.I.M. 2 ML VIJOSA', '', 'VIJOSA', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 28),
(0, 'S60dcbe3a551464.77887618', 621, '7410044246815', '622', 'CALAMINA ROSADA 120 ML ROWALT', '', 'ROWALT', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 70),
(0, 'S60dcbea655e415.46442761', 622, '7410042246817', '623', 'CALAMINA MENTOLADA 120 ML ROWALT', '', 'ROWALT', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 70),
(0, 'S60dcbf39893896.22255827', 623, '765446120025', '624', 'CALAMINA ANTIALERGICA 120 ML ANCALMO', '', 'ANCALMO', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 65),
(0, 'S60dcbfd8213b35.53253345', 624, '7410002801285', '625', 'METRONIDAZOL JBE 250 MG X 120 ML MK', '', 'MK', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 6),
(0, 'S60dcc0e2df3a20.12042651', 625, '7410000703772', '626', 'CODOFEN FORTE ACET.  CODE. X 30 TAB', '', 'FARDEL', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 36),
(0, 'S60e35abb488393.60336549', 626, '709708001523', '627', 'ESPACIADOR DE VOLUMEN PULMO-AIR', '', 'PULMO-AIR', 1, 1, 0, 1, 0, 89, 9, '', 0, 0, 0, 0, '', 71),
(0, 'S60edf1c71a64c9.97544710', 627, '7411002600328', '628', 'BACAOLINITA 115 ML JBE LOPEZ', '', 'LOPEZ', 1, 1, 0, 1, 0, 87, 4, '', 0, 0, 0, 0, '', 11),
(0, 'S60edfa4e75bf82.77232816', 628, '7411002158997', '629', 'PRUEBA DE EMBARAZO SECRET - TEST SUIZOS', '', 'SUIZOS', 1, 0, 0, 1, 0, 86, 4, '', 0, 0, 0, 0, '', 44);

-- --------------------------------------------------------

--
-- Table structure for table `proveedor`
--

CREATE TABLE `proveedor` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `categoria` int(1) DEFAULT NULL,
  `tipo` int(1) DEFAULT NULL,
  `codigoant` int(3) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `municipio` varchar(20) DEFAULT NULL,
  `depto` varchar(12) DEFAULT NULL,
  `pais` varchar(10) DEFAULT NULL,
  `contacto` varchar(40) DEFAULT NULL,
  `nrc` varchar(8) DEFAULT NULL,
  `nit` varchar(17) DEFAULT NULL,
  `dui` varchar(12) DEFAULT NULL,
  `giro` varchar(40) DEFAULT NULL,
  `telefono1` varchar(15) DEFAULT NULL,
  `telefono2` varchar(15) DEFAULT NULL,
  `celular` varchar(15) NOT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ultcompra` date DEFAULT NULL,
  `acumulado` int(1) DEFAULT NULL,
  `saldo` int(1) DEFAULT NULL,
  `percibe` int(1) DEFAULT NULL,
  `retiene` int(1) DEFAULT NULL,
  `retiene10` int(1) DEFAULT NULL,
  `a30` int(1) DEFAULT NULL,
  `a60` int(1) DEFAULT NULL,
  `a90` int(1) DEFAULT NULL,
  `m90` int(1) DEFAULT NULL,
  `vencido` int(1) DEFAULT NULL,
  `pagadas` int(1) DEFAULT NULL,
  `pendientes` decimal(7,2) DEFAULT NULL,
  `total1` decimal(7,2) DEFAULT NULL,
  `nombreche` varchar(45) DEFAULT NULL,
  `viñeta` int(1) DEFAULT NULL,
  `nacionalidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proveedor`
--

INSERT INTO `proveedor` (`id_server`, `unique_id`, `id_sucursal`, `id_proveedor`, `categoria`, `tipo`, `codigoant`, `nombre`, `direccion`, `municipio`, `depto`, `pais`, `contacto`, `nrc`, `nit`, `dui`, `giro`, `telefono1`, `telefono2`, `celular`, `fax`, `email`, `ultcompra`, `acumulado`, `saldo`, `percibe`, `retiene`, `retiene10`, `a30`, `a60`, `a90`, `m90`, `vencido`, `pagadas`, `pendientes`, `total1`, `nombreche`, `viñeta`, `nacionalidad`) VALUES
(1, '', 1, 1, 1, 1, NULL, 'Generico', 'Generic', '81', '13', NULL, 'Nadie', '8714555-', '7878-787878-787-7', '78787878-8', 'Alguno', '7878-7877', '8787-8788', '', '7878-7878', 'fake@gmail.com', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GENERICO', NULL, 68),
(0, 'S60707192558826.17976795', 1, 2, 3, 1, NULL, 'DROGUERIA SANTA LUCIA, S.A. DE C.V.', 'CALLE ROMA 238,COLONIA ROMA S.S. E.S.', '214', '6', NULL, '', '9690-3', '0614-280142-002-7', '', 'DISTRIBUCION DE PRODUCTOS FARMACOLOGICOS', '2223-8000', '2250-6200', '', '2223-8033', 'www.drogueriasantalucia.com', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 68),
(0, 'S607074aedf88b2.58509153', 1, 3, 3, 1, NULL, 'DROGUERIA Y LABORATORIOS VIDES', '13 AV. SUR N.318/ 324', '214', '6', NULL, '', '88-4', '0614-050135-001-0', '', 'VENTA DE PRODUCTOS FARMACEUTICOS Y MEDIC', '2535-9900', '', '', '2271-3578', 'informacion@ojvides.com', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 68),
(0, 'S6070766dabaf99.46514532', 1, 4, 3, 1, NULL, 'INVERSIONES EL AGUILA S.A. DE C.V.', '4ª. AVENIDA SUR Nº.203, BARRIO EL CALVARIO', '81', '13', NULL, '', '137230-2', '1217-120701-101-5', '', 'VENTA DE PRODUCTOS FARMACEUTICOS Y MEDIC', '', '', '', '2661-3706', '', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 68),
(0, 'S607b52398a4762.76146908', 1, 5, 3, 1, NULL, 'C. IMBERTON S.A. DE C.V.', 'CARRETERA A LA LIBERTAD KM 11 ANT.CUSCATLAN, LA LI', '129', '4', NULL, '', '157-0', '0614-081261-014-5', '', 'VENTA DE PRODUCTOS FARMACEUTICOS Y MEDIC', '7165-2761', '', '', '2228-3237', 'WWW.CIMBERTON.COM.SV', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 68),
(0, 'S60a6edb2751c58.38285015', 1, 6, 3, 1, NULL, 'DROGUERIA REDIFAR', 'Calle al mirador Col Escalon ·5502 SS', '214', '6', NULL, 'Arturo Redifar', '235363-5', '0614-050614-107-7', '', 'VENTA DE PRODUCTOS FARMACEUTICOS Y MEDIC', '2264-8043', '', '', '', '', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'REDIFAR SA de SV', NULL, 68),
(0, 'S60d754aa8b75c4.58210232', 1, 7, 2, 1, NULL, 'ACACIA S.A .DE C.V.', '25 AV. SUR Y CALL. GERARDO BARRIOS #1436 S.S. EL S', '214', '6', NULL, '', '105656-5', '0614-240398-104-5', '', 'VENTA DE PRODUCTOS FARMACEUTICOS Y MEDIC', '2226-1311', '', '', '2564-6482', 'WWW.CORP.ADS.COM', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 68),
(0, 'S60db352bb07d98.68280916', 1, 8, 3, 1, NULL, 'LABORATORIOS SUIZOS, S.A. DE C.V.', 'KM.10 CARRETERA AL PUERTO LA LIBERTAD', '129', '4', NULL, '', '115-5', '0614-061180-002-2', '', 'VENTA AL POR MAYOR DE PRODUCTOS MEDICINA', '2500-5530', '2500-5500', '', '', 'BUZON@LABSUIZO.COM', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 68),
(0, 'S60e3578c7a3067.67700973', 1, 9, 2, 1, NULL, 'DROGUERIA NOVA', '8a Avenida Sur Santa Tecla, La libertad ', '138', '4', NULL, 'Julio NOva', '58513-0', '0511-270792-101-4', '', 'VENTA DE PRODUCTOS FARMACEUTICOS Y MEDIC', '2228-2530', '', '', '', '', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DROGUERIA NOVA ', NULL, 68);

-- --------------------------------------------------------

--
-- Table structure for table `rutas`
--

CREATE TABLE `rutas` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `ruta` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rutas`
--

INSERT INTO `rutas` (`id_server`, `unique_id`, `id`, `descripcion`, `ruta`) VALUES
(1, 'O5f05eba6b67e89.17178057', 1, 'server', 'http://localhost/karinasyncro/server/mothership.php'),
(2, 'O5f05eba6b7e9b9.88558815', 2, 'local', 'http://localhost/karinasyncro/sistema/slave.php');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_stock` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `stock` decimal(11,4) NOT NULL,
  `stock_local` decimal(11,4) NOT NULL,
  `precio_unitario` float NOT NULL,
  `costo_unitario` float NOT NULL,
  `create_date` date NOT NULL,
  `update_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stock_ubicacion`
--

CREATE TABLE `stock_ubicacion` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_su` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` decimal(11,4) NOT NULL,
  `id_ubicacion` int(11) NOT NULL,
  `id_estante` int(11) NOT NULL,
  `id_posicion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sucursal`
--

CREATE TABLE `sucursal` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefono1` varchar(20) NOT NULL,
  `telefono2` varchar(20) NOT NULL,
  `casa_matriz` tinyint(1) NOT NULL,
  `iva` float NOT NULL,
  `monto_retencion1` float NOT NULL,
  `monto_retencion10` float NOT NULL,
  `monto_percepcion` float NOT NULL,
  `n_sucursal` int(11) NOT NULL,
  `vigencia_factura` int(11) NOT NULL,
  `vigencia_pedido` int(11) NOT NULL,
  `giro` varchar(100) NOT NULL,
  `nrc` varchar(100) NOT NULL,
  `nit` varchar(100) NOT NULL,
  `razon_social` varchar(150) NOT NULL,
  `logo` varchar(150) NOT NULL,
  `serie_cof` varchar(100) NOT NULL,
  `desde_cof` int(11) NOT NULL,
  `hasta_cof` int(11) NOT NULL,
  `serie_ccf` varchar(100) NOT NULL,
  `desde_ccf` int(11) NOT NULL,
  `hasta_ccf` int(11) NOT NULL,
  `ultima_act` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sucursal`
--

INSERT INTO `sucursal` (`id_server`, `unique_id`, `id_sucursal`, `descripcion`, `direccion`, `telefono1`, `telefono2`, `casa_matriz`, `iva`, `monto_retencion1`, `monto_retencion10`, `monto_percepcion`, `n_sucursal`, `vigencia_factura`, `vigencia_pedido`, `giro`, `nrc`, `nit`, `razon_social`, `logo`, `serie_cof`, `desde_cof`, `hasta_cof`, `serie_ccf`, `desde_ccf`, `hasta_ccf`, `ultima_act`) VALUES
(1, 'O5f05eba6d58230.73714202', 1, 'FARMACIA', '', '', '', 1, 13, 100, 0, 100, 1, 1, 1, '', '294431-1', '1416-260920-101-3', '', '', '18NU000F', 1, 5000, '18UN000C', 1, 5000, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_empleado`
--

CREATE TABLE `tipo_empleado` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_tipo_empleado` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipo_empleado`
--

INSERT INTO `tipo_empleado` (`id_server`, `unique_id`, `id_tipo_empleado`, `descripcion`) VALUES
(1, 'O5f05eba6d7a449.64890848', 1, 'Administrador'),
(2, 'O5f05eba6d93257.30798688', 2, 'Vendedor'),
(3, 'O5f05eba6db4a16.71013016', 3, 'Cajero'),
(4, 'O5f05eba6dd5c20.32959094', 4, 'Bodeguero'),
(5, 'O5f05eba6df7252.09792126', 5, 'Oficios Varios ');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_pago`
--

CREATE TABLE `tipo_pago` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_tipopago` int(11) NOT NULL,
  `alias_tipopago` char(3) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `inactivo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipo_pago`
--

INSERT INTO `tipo_pago` (`id_server`, `unique_id`, `id_tipopago`, `alias_tipopago`, `descripcion`, `inactivo`) VALUES
(1, 'O5f05eba6e23ce1.97808373', 1, 'CON', 'CONTADO', 0),
(2, 'O5f05eba6e3c170.13829318', 2, 'TAR', 'TARJETA DEBITO/CREDITO', 1),
(3, 'O5f05eba6e5c752.59341489', 3, 'CRE', 'CREDITO', 0),
(4, 'O5f05eba6e7d292.43341976', 4, 'CHE', 'CHEQUE', 0),
(5, 'O5f05eba6e9f643.40351170', 5, 'TRA', 'TRANSFERENCIA', 0),
(6, 'O5f05eba6ec12d7.46494495', 6, 'PEN', 'PENDIENTE', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tipo_proveedor`
--

CREATE TABLE `tipo_proveedor` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipo_proveedor`
--

INSERT INTO `tipo_proveedor` (`id_server`, `unique_id`, `id_tipo`, `nombre`, `descripcion`) VALUES
(1, 'O5f05eba6eec1b2.07494052', 1, 'Costo', ''),
(2, 'O5f05eba6f04176.60112373', 2, 'Gasto', '');

-- --------------------------------------------------------

--
-- Table structure for table `to_corte`
--

CREATE TABLE `to_corte` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `to_corte`
--

INSERT INTO `to_corte` (`id`, `id_categoria`) VALUES
(1, 192),
(2, 131);

-- --------------------------------------------------------

--
-- Table structure for table `to_corte_producto`
--

CREATE TABLE `to_corte_producto` (
  `id` int(11) NOT NULL,
  `id_corte` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `to_corte_producto`
--

INSERT INTO `to_corte_producto` (`id`, `id_corte`, `id_producto`) VALUES
(1, 18, 5005),
(2, 18, 5004),
(3, 18, 5003);

-- --------------------------------------------------------

--
-- Table structure for table `to_corte_producto_detalle`
--

CREATE TABLE `to_corte_producto_detalle` (
  `id` int(11) NOT NULL,
  `id_ref` int(11) NOT NULL,
  `cantidad` decimal(10,4) DEFAULT NULL,
  `stock_anterior` decimal(10,4) DEFAULT NULL,
  `stock_actual` decimal(10,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `to_corte_producto_detalle`
--

INSERT INTO `to_corte_producto_detalle` (`id`, `id_ref`, `cantidad`, `stock_anterior`, `stock_actual`) VALUES
(1, 1, '10.0000', '0.0000', '10.0000'),
(2, 1, '1.0000', '10.0000', '9.0000'),
(3, 2, '10.0000', '0.0000', '10.0000'),
(4, 3, '10.0000', '0.0000', '10.0000'),
(5, 3, '1.0000', '10.0000', '9.0000'),
(6, 3, '1.0000', '9.0000', '8.0000');

-- --------------------------------------------------------

--
-- Table structure for table `traslado`
--

CREATE TABLE `traslado` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal_origen` int(11) NOT NULL,
  `id_sucursal_destino` int(11) NOT NULL,
  `id_traslado` int(11) NOT NULL,
  `n_vale` varchar(50) NOT NULL,
  `id_ubicacion_destino` int(11) NOT NULL,
  `concepto` varchar(50) DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id_empleado_envia` int(11) NOT NULL,
  `id_empleado_recibe` int(11) NOT NULL,
  `empleado_envia` varchar(250) NOT NULL,
  `empleado_recibe` varchar(250) NOT NULL,
  `total` float NOT NULL,
  `anulada` tinyint(4) NOT NULL,
  `finalizada` tinyint(4) NOT NULL,
  `id_origen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `traslado_detalle`
--

CREATE TABLE `traslado_detalle` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal_origen` int(11) NOT NULL,
  `id_sucursal_destino` int(11) NOT NULL,
  `id_detalle_traslado` int(11) NOT NULL,
  `id_traslado` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_server_prod` int(11) NOT NULL,
  `cantidad` decimal(11,4) NOT NULL,
  `unidad` int(11) NOT NULL,
  `costo` float NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `id_server_presen` int(11) NOT NULL,
  `presentacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `traslado_detalle_g`
--

CREATE TABLE `traslado_detalle_g` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal_origen` int(11) NOT NULL,
  `id_sucursal_destino` int(11) NOT NULL,
  `id_detalle_traslado` int(11) NOT NULL,
  `id_traslado` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_server_prod` int(11) NOT NULL,
  `cantidad` decimal(11,4) NOT NULL,
  `unidad` int(11) NOT NULL,
  `costo` float NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `id_server_presen` int(11) NOT NULL,
  `presentacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `traslado_detalle_recibido`
--

CREATE TABLE `traslado_detalle_recibido` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal_origen` int(11) NOT NULL,
  `id_sucursal_destino` int(11) NOT NULL,
  `id_detalle_traslado_recibido` int(11) NOT NULL,
  `id_traslado` int(11) NOT NULL,
  `id_traslado_server` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_server_prod` int(11) NOT NULL,
  `cantidad` decimal(11,4) NOT NULL,
  `recibido` decimal(11,4) NOT NULL,
  `unidad` int(11) NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `id_server_presen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `traslado_g`
--

CREATE TABLE `traslado_g` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal_origen` int(11) NOT NULL,
  `id_sucursal_destino` int(11) NOT NULL,
  `id_traslado` int(11) NOT NULL,
  `n_vale` varchar(50) NOT NULL,
  `id_ubicacion_destino` int(11) NOT NULL,
  `concepto` varchar(50) DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id_empleado_envia` int(11) NOT NULL,
  `id_empleado_recibe` int(11) NOT NULL,
  `empleado_envia` varchar(250) NOT NULL,
  `empleado_recibe` varchar(250) NOT NULL,
  `total` float NOT NULL,
  `anulada` tinyint(4) NOT NULL,
  `finalizada` tinyint(4) NOT NULL,
  `id_origen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ubicacion`
--

CREATE TABLE `ubicacion` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_ubicacion` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `bodega` tinyint(1) NOT NULL,
  `borrado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ubicacion`
--

INSERT INTO `ubicacion` (`id_server`, `unique_id`, `id_sucursal`, `id_ubicacion`, `descripcion`, `bodega`, `borrado`) VALUES
(1, 'O5f05eba701fe26.32360857', 1, 1, 'LOCAL DE VENTA', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `nombre` varchar(250) CHARACTER SET utf8 NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `password` varchar(250) NOT NULL,
  `admin` int(11) NOT NULL,
  `precios` int(11) NOT NULL,
  `latitud_ultima` double NOT NULL,
  `longitud_ultima` double NOT NULL,
  `fecha_tracking` date NOT NULL,
  `hora_tracking` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id_server`, `unique_id`, `id_sucursal`, `id_usuario`, `id_empleado`, `nombre`, `usuario`, `password`, `admin`, `precios`, `latitud_ultima`, `longitud_ultima`, `fecha_tracking`, `hora_tracking`) VALUES
(1, 'O5f05eba70a0f04.98442249', 1, 1, 1, 'administrador', 'admin', 'f90d1250fd96b918b6d474a2e549510c', 1, 1, 0, 0, '0000-00-00', '00:00:00'),
(2, 'O5f05eba70b5441.22527719', 1, 2, 1, 'YANCI', 'yancimondragon', '1f36c15d6a3d18d52e8d493bc8187cb9', 1, 4, 0, 0, '0000-00-00', '00:00:00'),
(0, 'S606c72944f4357.99953964', 1, 3, 1, 'YANCI', 'cajero', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 0, 0, '0000-00-00', '00:00:00'),
(0, 'S608583c1554226.66730994', 1, 4, 3, 'Daris Moraga', 'darismoraga', '8ae5b4733e90eef682e85603c73b5637', 1, 1, 0, 0, '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `usuario_modulo`
--

CREATE TABLE `usuario_modulo` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_mod_user` int(11) NOT NULL,
  `id_modulo` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario_modulo`
--

INSERT INTO `usuario_modulo` (`id_server`, `unique_id`, `id_sucursal`, `id_mod_user`, `id_modulo`, `id_usuario`) VALUES
(1, 'O5f05eba71ae8e9.81652603', 0, 1, 43, 47),
(2, 'O5f05eba71c1c60.19319526', 0, 2, 44, 47),
(3, 'O5f05eba71e0183.18929924', 0, 3, 68, 47),
(4, 'O5f05eba72018f7.09616987', 0, 4, 82, 47),
(5, 'O5f05eba7221f99.12348082', 0, 5, 83, 47),
(6, 'O5f05eba7244727.85262800', 0, 6, 1, 47),
(7, 'O5f05eba72642d0.41656359', 0, 7, 2, 47),
(8, 'O5f05eba7284cb6.06937575', 0, 8, 3, 47),
(9, 'O5f05eba72a90d1.48385613', 0, 9, 4, 47),
(10, 'O5f05eba72cbfb2.90806916', 0, 10, 5, 47),
(11, 'O5f05eba72eb022.85998647', 0, 11, 19, 47),
(12, 'O5f05eba730d496.36874177', 0, 12, 20, 47),
(13, 'O5f05eba73506d0.13785795', 0, 13, 21, 47),
(14, 'O5f05eba7371ab6.29594900', 0, 14, 22, 47),
(15, 'O5f05eba7391838.43509738', 0, 15, 23, 47),
(16, 'O5f05eba73b1477.98020687', 0, 16, 45, 47),
(17, 'O5f05eba73d1ef4.70581627', 0, 17, 46, 47),
(18, 'O5f05eba73f3c84.95446309', 0, 18, 47, 47),
(19, 'O5f05eba7420546.12793440', 0, 19, 48, 47),
(20, 'O5f05eba743b002.90327676', 0, 20, 49, 47),
(21, 'O5f05eba745b6a0.32624680', 0, 21, 77, 47),
(22, 'O5f05eba747da56.31031507', 0, 22, 78, 47),
(23, 'O5f05eba749e622.03335530', 0, 23, 79, 47),
(24, 'O5f05eba74bff29.65350240', 0, 24, 80, 47),
(25, 'O5f05eba74e0ad1.31748918', 0, 25, 81, 47),
(26, 'O5f05eba7503ff7.04224687', 0, 26, 98, 47),
(27, 'O5f05eba7524737.58081008', 0, 27, 99, 47),
(28, 'O5f05eba7545905.17483547', 0, 28, 100, 47),
(29, 'O5f05eba75675d8.12053181', 0, 29, 101, 47),
(30, 'O5f05eba7587d54.01453946', 0, 30, 103, 47),
(31, 'O5f05eba75a8a96.85164063', 0, 31, 72, 47),
(32, 'O5f05eba75ca113.32222166', 0, 32, 73, 47),
(33, 'O5f05eba75eb9d1.76648377', 0, 33, 74, 47),
(34, 'O5f05eba760c7d5.36478921', 0, 34, 75, 47),
(35, 'O5f05eba762d692.81865422', 0, 35, 76, 47),
(36, 'O5f05eba764ed30.82665757', 0, 36, 134, 47),
(37, 'O5f05eba766fe78.84673792', 0, 37, 135, 47),
(38, 'O5f05eba7691e96.26340448', 0, 38, 85, 47),
(39, 'O5f05eba76b1ac1.50503102', 0, 39, 86, 47),
(40, 'O5f05eba76d3b75.49413181', 0, 40, 87, 47),
(41, 'O5f05eba76f5e25.18755398', 0, 41, 88, 47),
(42, 'O5f05eba77182a6.71673330', 0, 42, 89, 47),
(43, 'O5f05eba7737c81.04834757', 0, 43, 90, 47),
(44, 'O5f05eba77598a7.18481436', 0, 44, 91, 47),
(45, 'O5f05eba777ab77.26591328', 0, 45, 92, 47),
(46, 'O5f05eba779b1d2.72962904', 0, 46, 93, 47),
(47, 'O5f05eba77bbad5.35651718', 0, 47, 94, 47),
(48, 'O5f05eba77de3c6.10790877', 0, 48, 95, 47),
(49, 'O5f05eba77fff06.08419738', 0, 49, 96, 47),
(50, 'O5f05eba7820c13.32140160', 0, 50, 97, 47),
(51, 'O5f05eba7842381.48159371', 0, 51, 137, 47),
(52, 'O5f05eba7863e60.82665602', 0, 52, 35, 47),
(53, 'O5f05eba7885cd4.70495642', 0, 53, 36, 47),
(54, 'O5f05eba78a6733.09101369', 0, 54, 106, 47),
(55, 'O5f05eba78c74f5.43801742', 0, 55, 107, 47),
(56, 'O5f05eba78e9161.19252888', 0, 56, 108, 47),
(57, 'O5f05eba7909ab4.25410698', 0, 57, 109, 47),
(58, 'O5f05eba792ad76.36825392', 0, 58, 110, 47),
(59, 'O5f05eba794cc86.39267265', 0, 59, 118, 47),
(60, 'O5f05eba796e393.47061949', 0, 60, 120, 47),
(61, 'O5f05eba7991759.35793907', 0, 61, 37, 47),
(62, 'O5f05eba79b2080.00714355', 0, 62, 38, 47),
(63, 'O5f05eba79d3731.62562662', 0, 63, 50, 47),
(64, 'O5f05eba79f50f4.88840057', 0, 64, 69, 47),
(65, 'O5f05eba7a17af3.20611541', 0, 65, 70, 47),
(66, 'O5f05eba7a38183.03729821', 0, 66, 71, 47),
(67, 'O5f05eba7a597c9.15747388', 0, 67, 84, 47),
(68, 'O5f05eba7a7a266.94183765', 0, 68, 124, 47),
(69, 'O5f05eba7a9c9f1.79898422', 0, 69, 133, 47),
(70, 'O5f05eba7abc960.58338406', 0, 70, 119, 47),
(71, 'O5f05eba7ade0b8.79836068', 0, 71, 121, 47),
(72, 'O5f05eba7b00639.00888099', 0, 72, 122, 47),
(73, 'O5f05eba7b239b3.56982231', 0, 73, 123, 47),
(74, 'O5f05eba7b43684.46772651', 0, 74, 126, 47),
(75, 'O5f05eba7b64225.03197469', 0, 75, 128, 47),
(76, 'O5f05eba7b85d77.32441486', 0, 76, 129, 47),
(77, 'O5f05eba7ba8d30.40335699', 0, 77, 130, 47),
(78, 'O5f05eba7bc9183.86333960', 0, 78, 138, 47),
(79, 'O5f05eba7becab5.68796319', 0, 79, 41, 47),
(80, 'O5f05eba7c0ef78.37119244', 0, 80, 42, 47),
(81, 'O5f05eba7c2e516.11550719', 0, 81, 111, 47),
(82, 'O5f05eba7c4f402.52634619', 0, 82, 112, 47),
(83, 'O5f05eba7c70597.38519073', 0, 83, 113, 47),
(84, 'O5f05eba7c90da5.38499666', 0, 84, 114, 47),
(85, 'O5f05eba7cb42b8.85182139', 0, 85, 115, 47),
(86, 'O5f05eba7cd43e3.47873502', 0, 86, 116, 47),
(87, 'O5f05eba7cf64d5.47061684', 0, 87, 117, 47),
(88, 'O5f05eba7d176f5.55129864', 0, 88, 127, 47),
(89, 'O5f05eba7d386a6.63325660', 0, 89, 132, 47),
(90, 'O5f05eba7d597a4.13054155', 0, 90, 54, 47),
(91, 'O5f05eba7d7acc7.69634282', 0, 91, 55, 47),
(92, 'O5f05eba7d9b8e8.24641520', 0, 92, 56, 47),
(93, 'O5f05eba7dbd589.11615068', 0, 93, 57, 47),
(94, 'O5f05eba7ddf661.45030385', 0, 94, 58, 47),
(95, 'O5f05eba7e013c0.31923651', 0, 95, 59, 47),
(96, 'O5f05eba7e20bd4.91132737', 0, 96, 60, 47),
(97, 'O5f05eba7e42517.76543079', 0, 97, 61, 47),
(98, 'O5f05eba7e64229.03928088', 0, 98, 62, 47),
(99, 'O5f05eba7e85709.62950319', 0, 99, 63, 47),
(100, 'O5f05eba7ea6331.73019304', 0, 100, 64, 47),
(101, 'O5f05eba7ec70f9.42771710', 0, 101, 65, 47),
(102, 'O5f05eba7ee8d81.46827640', 0, 102, 66, 47),
(103, 'O5f05eba7f0a469.54744761', 0, 103, 6, 47),
(104, 'O5f05eba7f2b435.26593953', 0, 104, 7, 47),
(105, 'O5f05eba800a520.28061681', 0, 105, 8, 47),
(106, 'O5f05eba802b7b1.98921420', 0, 106, 9, 47),
(107, 'O5f05eba804f479.63434537', 0, 107, 10, 47),
(108, 'O5f05eba80702b4.98892614', 0, 108, 11, 47),
(109, 'O5f05eba8091147.10241504', 0, 109, 12, 47),
(110, 'O5f05eba80b2d10.96914387', 0, 110, 13, 47),
(111, 'O5f05eba80d4dc7.19986469', 0, 111, 14, 47),
(112, 'O5f05eba80f5f37.24226037', 0, 112, 15, 47),
(113, 'O5f05eba8116f22.87618661', 0, 113, 16, 47),
(114, 'O5f05eba8139221.94620868', 0, 114, 17, 47),
(115, 'O5f05eba815a987.64215049', 0, 115, 18, 47),
(116, 'O5f05eba817b765.87393680', 0, 116, 139, 47),
(117, 'O5f05eba819c827.97737739', 0, 117, 24, 47),
(118, 'O5f05eba81bd494.43717212', 0, 118, 25, 47),
(119, 'O5f05eba81e0127.76879077', 0, 119, 26, 47),
(120, 'O5f05eba82017d9.88033404', 0, 120, 27, 47),
(121, 'O5f05eba8222aa0.44156906', 0, 121, 28, 47),
(122, 'O5f05eba8243690.45810191', 0, 122, 29, 47),
(123, 'O5f05eba8265b53.69713114', 0, 123, 30, 47),
(124, 'O5f05eba8286d02.94293890', 0, 124, 31, 47),
(125, 'O5f05eba82a8141.39828863', 0, 125, 32, 47),
(126, 'O5f05eba82c8f57.12915533', 0, 126, 33, 47),
(127, 'O5f05eba82eb007.30435545', 0, 127, 34, 47),
(128, 'O5f05eba830cc85.08525726', 0, 128, 39, 47),
(129, 'O5f05eba832e367.82924487', 0, 129, 40, 47),
(130, 'O5f05eba83506d3.69516042', 0, 130, 136, 47),
(166, 'O5f05eba8738fb0.64501114', 0, 166, 35, 6),
(171, 'O5f05eba875aa90.25911644', 0, 171, 35, 3),
(172, 'O5f05eba877b7e6.64068302', 0, 172, 106, 3),
(173, 'O5f05eba879cad2.60557030', 0, 173, 107, 3),
(174, 'O5f05eba87bdd03.98714413', 0, 174, 118, 3),
(175, 'O5f05eba87df1c2.39986741', 0, 175, 35, 4),
(176, 'O5f05eba8800899.86361920', 0, 176, 106, 4),
(177, 'O5f05eba8821b44.49774214', 0, 177, 107, 4),
(178, 'O5f05eba8842949.77780368', 0, 178, 118, 4),
(179, 'O5f05eba8861bf2.48399413', 0, 179, 35, 5),
(180, 'O5f05eba8882a15.16803225', 0, 180, 106, 5),
(181, 'O5f05eba88a6825.80940911', 0, 181, 107, 5),
(182, 'O5f05eba88c7612.66067084', 0, 182, 118, 5),
(183, 'O5f05eba88e87f2.10262702', 0, 183, 43, 7),
(184, 'O5f05eba890a489.15828024', 0, 184, 44, 7),
(185, 'O5f05eba892c124.97386068', 0, 185, 68, 7),
(186, 'O5f05eba894d167.34663987', 0, 186, 82, 7),
(187, 'O5f05eba896e7e1.49116918', 0, 187, 83, 7),
(188, 'O5f05eba8990273.15346280', 0, 188, 1, 7),
(189, 'O5f05eba89b3580.12365044', 0, 189, 2, 7),
(190, 'O5f05eba89d4490.87251060', 0, 190, 3, 7),
(191, 'O5f05eba89f54b5.28952414', 0, 191, 4, 7),
(192, 'O5f05eba8a16ce0.91628198', 0, 192, 5, 7),
(193, 'O5f05eba8a39b22.58740739', 0, 193, 19, 7),
(194, 'O5f05eba8a5a4f5.16174323', 0, 194, 20, 7),
(195, 'O5f05eba8a7bb62.10101221', 0, 195, 21, 7),
(196, 'O5f05eba8a9cda6.66181316', 0, 196, 22, 7),
(197, 'O5f05eba8abe8e9.01546551', 0, 197, 23, 7),
(198, 'O5f05eba8adf190.13388801', 0, 198, 45, 7),
(199, 'O5f05eba8b00b53.98780594', 0, 199, 46, 7),
(200, 'O5f05eba8b21708.18962612', 0, 200, 47, 7),
(201, 'O5f05eba8b42ff2.81060950', 0, 201, 48, 7),
(202, 'O5f05eba8b64d34.97209899', 0, 202, 49, 7),
(203, 'O5f05eba8b86730.64985209', 0, 203, 77, 7),
(204, 'O5f05eba8ba7998.36344631', 0, 204, 78, 7),
(205, 'O5f05eba8bc9826.58659427', 0, 205, 79, 7),
(206, 'O5f05eba8beb3c7.95780569', 0, 206, 80, 7),
(207, 'O5f05eba8c0f284.02357798', 0, 207, 81, 7),
(208, 'O5f05eba8c2f601.55429456', 0, 208, 98, 7),
(209, 'O5f05eba8c50644.07247347', 0, 209, 99, 7),
(210, 'O5f05eba8c72243.84062522', 0, 210, 100, 7),
(211, 'O5f05eba8c92d75.63331428', 0, 211, 101, 7),
(212, 'O5f05eba8cb4366.84410576', 0, 212, 103, 7),
(213, 'O5f05eba8cd5c82.09857829', 0, 213, 72, 7),
(214, 'O5f05eba8cf7f91.11459718', 0, 214, 73, 7),
(215, 'O5f05eba8d197f3.90685270', 0, 215, 74, 7),
(216, 'O5f05eba8d3ae32.03093622', 0, 216, 75, 7),
(217, 'O5f05eba8d5c895.05686501', 0, 217, 76, 7),
(218, 'O5f05eba8d7ed20.92489844', 0, 218, 134, 7),
(219, 'O5f05eba8d9df89.19164677', 0, 219, 135, 7),
(220, 'O5f05eba8de1803.94439803', 0, 220, 85, 7),
(221, 'O5f05eba8e02043.54728967', 0, 221, 86, 7),
(222, 'O5f05eba8e23d45.44257726', 0, 222, 87, 7),
(223, 'O5f05eba8e43d35.14945764', 0, 223, 88, 7),
(224, 'O5f05eba8e65b89.12085235', 0, 224, 89, 7),
(225, 'O5f05eba8e86dc6.76510775', 0, 225, 90, 7),
(226, 'O5f05eba8ea82d9.31119421', 0, 226, 91, 7),
(227, 'O5f05eba8ec8b05.71413847', 0, 227, 92, 7),
(228, 'O5f05eba8eea5a8.87107271', 0, 228, 93, 7),
(229, 'O5f05eba8f0bae7.16108757', 0, 229, 94, 7),
(230, 'O5f05eba8f2c7a9.73510558', 0, 230, 95, 7),
(231, 'O5f05eba900b606.33801050', 0, 231, 96, 7),
(232, 'O5f05eba902c4e7.99528422', 0, 232, 97, 7),
(233, 'O5f05eba904dc16.40945783', 0, 233, 137, 7),
(234, 'O5f05eba906f127.32701709', 0, 234, 35, 7),
(235, 'O5f05eba90902f5.18373710', 0, 235, 36, 7),
(236, 'O5f05eba90b0925.25843658', 0, 236, 106, 7),
(237, 'O5f05eba90d3492.51186013', 0, 237, 107, 7),
(238, 'O5f05eba90f46b2.60103875', 0, 238, 108, 7),
(239, 'O5f05eba9115882.01555091', 0, 239, 109, 7),
(240, 'O5f05eba9136263.14698813', 0, 240, 110, 7),
(241, 'O5f05eba91579d4.85609144', 0, 241, 118, 7),
(242, 'O5f05eba91789f3.13419544', 0, 242, 120, 7),
(243, 'O5f05eba91989b4.72921462', 0, 243, 37, 7),
(244, 'O5f05eba91b9c34.66800321', 0, 244, 38, 7),
(245, 'O5f05eba91daf67.57389970', 0, 245, 50, 7),
(246, 'O5f05eba91fd048.43407483', 0, 246, 69, 7),
(247, 'O5f05eba921e0f3.44315249', 0, 247, 70, 7),
(248, 'O5f05eba923f892.54180855', 0, 248, 71, 7),
(249, 'O5f05eba9261172.09807892', 0, 249, 84, 7),
(250, 'O5f05eba9283999.77567690', 0, 250, 124, 7),
(251, 'O5f05eba92a5529.92265278', 0, 251, 133, 7),
(252, 'O5f05eba92c50f2.58576135', 0, 252, 119, 7),
(253, 'O5f05eba92e6cd4.66249385', 0, 253, 121, 7),
(254, 'O5f05eba9308d29.64096444', 0, 254, 122, 7),
(255, 'O5f05eba9328741.00301849', 0, 255, 123, 7),
(256, 'O5f05eba934b5d8.81447427', 0, 256, 126, 7),
(257, 'O5f05eba936cad5.93703898', 0, 257, 128, 7),
(258, 'O5f05eba938e987.32304110', 0, 258, 129, 7),
(259, 'O5f05eba93aebb9.47220176', 0, 259, 130, 7),
(260, 'O5f05eba93cfdc1.76511228', 0, 260, 138, 7),
(261, 'O5f05eba93f07a4.23444900', 0, 261, 41, 7),
(262, 'O5f05eba94134c3.37273496', 0, 262, 42, 7),
(263, 'O5f05eba9433b26.51025815', 0, 263, 111, 7),
(264, 'O5f05eba9454d78.42259281', 0, 264, 112, 7),
(265, 'O5f05eba9475cf3.16152685', 0, 265, 113, 7),
(266, 'O5f05eba9497b94.39810095', 0, 266, 114, 7),
(267, 'O5f05eba94b9f15.11917887', 0, 267, 115, 7),
(268, 'O5f05eba94dc599.37432306', 0, 268, 116, 7),
(269, 'O5f05eba94fd0f7.53238267', 0, 269, 117, 7),
(270, 'O5f05eba951f563.13698916', 0, 270, 127, 7),
(271, 'O5f05eba9540497.25229419', 0, 271, 132, 7),
(272, 'O5f05eba9562270.53220586', 0, 272, 54, 7),
(273, 'O5f05eba9582f88.17203255', 0, 273, 55, 7),
(274, 'O5f05eba95a4972.77720630', 0, 274, 56, 7),
(275, 'O5f05eba95c5364.28588813', 0, 275, 57, 7),
(276, 'O5f05eba95e6c10.76503602', 0, 276, 58, 7),
(277, 'O5f05eba9608ec1.34138567', 0, 277, 59, 7),
(278, 'O5f05eba962a535.61156653', 0, 278, 60, 7),
(279, 'O5f05eba964bba5.18398906', 0, 279, 61, 7),
(280, 'O5f05eba966cdb4.56403043', 0, 280, 62, 7),
(281, 'O5f05eba968d4f2.41413688', 0, 281, 63, 7),
(282, 'O5f05eba96afd80.41183165', 0, 282, 64, 7),
(283, 'O5f05eba96cfdd9.96149711', 0, 283, 65, 7),
(284, 'O5f05eba96f10d9.41313048', 0, 284, 66, 7),
(285, 'O5f05eba9712748.16689870', 0, 285, 6, 7),
(286, 'O5f05eba97349d6.12291891', 0, 286, 7, 7),
(287, 'O5f05eba9755090.75166269', 0, 287, 8, 7),
(288, 'O5f05eba9776059.94813854', 0, 288, 9, 7),
(289, 'O5f05eba9797594.08120094', 0, 289, 10, 7),
(290, 'O5f05eba97b7fc7.42800878', 0, 290, 11, 7),
(291, 'O5f05eba97dbd70.97820929', 0, 291, 12, 7),
(292, 'O5f05eba97fc3f3.63599280', 0, 292, 13, 7),
(293, 'O5f05eba981da06.57441627', 0, 293, 14, 7),
(294, 'O5f05eba983f6a6.59741655', 0, 294, 15, 7),
(295, 'O5f05eba98609e7.59607724', 0, 295, 16, 7),
(296, 'O5f05eba9881344.35678221', 0, 296, 17, 7),
(297, 'O5f05eba98a2833.12321866', 0, 297, 18, 7),
(298, 'O5f05eba98c40f4.60306732', 0, 298, 139, 7),
(299, 'O5f05eba98e4fd5.35058133', 0, 299, 24, 7),
(300, 'O5f05eba9906273.65722745', 0, 300, 25, 7),
(301, 'O5f05eba9927d92.36839482', 0, 301, 26, 7),
(302, 'O5f05eba9949df6.55593509', 0, 302, 27, 7),
(303, 'O5f05eba996a336.82675484', 0, 303, 28, 7),
(304, 'O5f05eba998b486.11929709', 0, 304, 29, 7),
(305, 'O5f05eba99ada80.40318949', 0, 305, 30, 7),
(306, 'O5f05eba99cfbb8.37561687', 0, 306, 31, 7),
(307, 'O5f05eba99f07d9.51109937', 0, 307, 32, 7),
(308, 'O5f05eba9a12371.98043844', 0, 308, 33, 7),
(309, 'O5f05eba9a34725.23916950', 0, 309, 34, 7),
(310, 'O5f05eba9a56018.12343845', 0, 310, 39, 7),
(311, 'O5f05eba9a784c9.40285274', 0, 311, 40, 7),
(312, 'O5f05eba9a99763.18458160', 0, 312, 136, 7),
(313, 'O5f05eba9aba5e9.25788607', 0, 313, 2, 8),
(314, 'O5f05eba9adcb89.83991759', 0, 314, 5, 8),
(315, 'O5f05eba9afdd34.53652677', 0, 315, 78, 8),
(316, 'O5f05eba9b1e2c1.94538993', 0, 316, 81, 8),
(317, 'O5f05eba9b3fcd6.41663377', 0, 317, 99, 8),
(318, 'O5f05eba9b60be4.42158184', 0, 318, 100, 8),
(319, 'O5f05eba9b80bf3.15186493', 0, 319, 101, 8),
(320, 'O5f05eba9ba1a61.41899870', 0, 320, 103, 8),
(321, 'O5f05eba9bc3214.24488508', 0, 321, 88, 8),
(322, 'O5f05eba9be49a3.51373573', 0, 322, 89, 8),
(323, 'O5f05eba9c07319.42712913', 0, 323, 90, 8),
(324, 'O5f05eba9c29d82.28459566', 0, 324, 91, 8),
(325, 'O5f05eba9c4b245.06042705', 0, 325, 35, 8),
(326, 'O5f05eba9c6b7f3.51156245', 0, 326, 36, 8),
(327, 'O5f05eba9c8cd48.28254069', 0, 327, 107, 8),
(328, 'O5f05eba9caf955.57058453', 0, 328, 108, 8),
(329, 'O5f05eba9cd0181.59514783', 0, 329, 110, 8),
(330, 'O5f05eba9cf08c0.20872128', 0, 330, 118, 8),
(331, 'O5f05eba9d11aa5.77024564', 0, 331, 50, 8),
(0, 'S5f8b523a9bb2d3.18295005', 0, 332, 43, 2),
(0, 'S5f8b523a9da309.66094765', 0, 333, 44, 2),
(0, 'S5f8b523a9fcd76.32078602', 0, 334, 68, 2),
(0, 'S5f8b523aa20f87.86803806', 0, 335, 82, 2),
(0, 'S5f8b523aa3e4c0.07601078', 0, 336, 83, 2),
(0, 'S5f8b523aa61bc9.82922678', 0, 337, 1, 2),
(0, 'S5f8b523aa80fa9.44522174', 0, 338, 2, 2),
(0, 'S5f8b523aaa4734.37034997', 0, 339, 3, 2),
(0, 'S5f8b523aac2e55.70045114', 0, 340, 4, 2),
(0, 'S5f8b523aae6494.93835509', 0, 341, 5, 2),
(0, 'S5f8b523ab1b543.69660542', 0, 342, 19, 2),
(0, 'S5f8b523ab3b186.46499875', 0, 343, 20, 2),
(0, 'S5f8b523ab5be57.14246769', 0, 344, 21, 2),
(0, 'S5f8b523ab7ce58.11972087', 0, 345, 22, 2),
(0, 'S5f8b523aba1138.07741401', 0, 346, 23, 2),
(0, 'S5f8b523abbf925.36008003', 0, 347, 45, 2),
(0, 'S5f8b523abe2403.60000609', 0, 348, 46, 2),
(0, 'S5f8b523ac037f3.54598572', 0, 349, 47, 2),
(0, 'S5f8b523ac24f11.17747353', 0, 350, 48, 2),
(0, 'S5f8b523ac460c2.83960599', 0, 351, 49, 2),
(0, 'S5f8b523ac68de6.25615686', 0, 352, 77, 2),
(0, 'S5f8b523ac89292.38287877', 0, 353, 78, 2),
(0, 'S5f8b523acaa0b8.12815358', 0, 354, 79, 2),
(0, 'S5f8b523accbe38.15972893', 0, 355, 80, 2),
(0, 'S5f8b523aced7b9.92821902', 0, 356, 81, 2),
(0, 'S5f8b523ad0e153.51928700', 0, 357, 98, 2),
(0, 'S5f8b523ad2f868.69254556', 0, 358, 99, 2),
(0, 'S5f8b523ad503e0.14656810', 0, 359, 100, 2),
(0, 'S5f8b523ad71f40.29793399', 0, 360, 101, 2),
(0, 'S5f8b523ad93148.06265151', 0, 361, 103, 2),
(0, 'S5f8b523adb79d8.73729067', 0, 362, 72, 2),
(0, 'S5f8b523add69e5.00877527', 0, 363, 73, 2),
(0, 'S5f8b523adf8d96.59333142', 0, 364, 74, 2),
(0, 'S5f8b523ae19630.56235398', 0, 365, 75, 2),
(0, 'S5f8b523ae3ce54.77481911', 0, 366, 76, 2),
(0, 'S5f8b523ae5bec7.59990469', 0, 367, 134, 2),
(0, 'S5f8b523ae7d229.88186242', 0, 368, 135, 2),
(0, 'S5f8b523ae9f291.73683520', 0, 369, 85, 2),
(0, 'S5f8b523aeea252.47535823', 0, 370, 86, 2),
(0, 'S5f8b523af0c2e8.30990572', 0, 371, 87, 2),
(0, 'S5f8b523af2fa38.00268401', 0, 372, 88, 2),
(0, 'S5f8b523b00bb46.58375389', 0, 373, 89, 2),
(0, 'S5f8b523b02bfa2.65731058', 0, 374, 90, 2),
(0, 'S5f8b523b04e4a7.65767049', 0, 375, 91, 2),
(0, 'S5f8b523b070c37.82680263', 0, 376, 92, 2),
(0, 'S5f8b523b0910e5.29899266', 0, 377, 93, 2),
(0, 'S5f8b523b0b3581.38344939', 0, 378, 94, 2),
(0, 'S5f8b523b0d4cf2.87857359', 0, 379, 95, 2),
(0, 'S5f8b523b0f5925.62968241', 0, 380, 96, 2),
(0, 'S5f8b523b115437.25052181', 0, 381, 97, 2),
(0, 'S5f8b523b138131.10403458', 0, 382, 137, 2),
(0, 'S5f8b523b1587d9.06654208', 0, 383, 37, 2),
(0, 'S5f8b523b17cbc7.40599311', 0, 384, 38, 2),
(0, 'S5f8b523b19c4d5.34460253', 0, 385, 50, 2),
(0, 'S5f8b523b1be149.60380496', 0, 386, 69, 2),
(0, 'S5f8b523b1dd426.57526684', 0, 387, 70, 2),
(0, 'S5f8b523b1fdde2.78885563', 0, 388, 71, 2),
(0, 'S5f8b523b21fe46.34914740', 0, 389, 84, 2),
(0, 'S5f8b523b2415f5.78048823', 0, 390, 124, 2),
(0, 'S5f8b523b2625d2.61673670', 0, 391, 133, 2),
(0, 'S5f8b523b2852a3.44229778', 0, 392, 35, 2),
(0, 'S5f8b523b2a4a37.14600820', 0, 393, 36, 2),
(0, 'S5f8b523b2c7011.35591209', 0, 394, 106, 2),
(0, 'S5f8b523b2e8ee5.93776823', 0, 395, 107, 2),
(0, 'S5f8b523b30c981.05405372', 0, 396, 108, 2),
(0, 'S5f8b523b32a5c3.74298324', 0, 397, 109, 2),
(0, 'S5f8b523b34c661.19819470', 0, 398, 110, 2),
(0, 'S5f8b523b38ff14.09477447', 0, 399, 118, 2),
(0, 'S5f8b523b3b1c33.14224676', 0, 400, 120, 2),
(0, 'S5f8b523b3d4614.01893685', 0, 401, 142, 2),
(0, 'S5f8b523b3f5687.28995278', 0, 402, 143, 2),
(0, 'S5f8b523b4152c9.90940398', 0, 403, 41, 2),
(0, 'S5f8b523b4370b9.93759756', 0, 404, 42, 2),
(0, 'S5f8b523b4575e9.75520468', 0, 405, 111, 2),
(0, 'S5f8b523b479018.67681667', 0, 406, 112, 2),
(0, 'S5f8b523b49c307.02136782', 0, 407, 113, 2),
(0, 'S5f8b523b4bc791.90274427', 0, 408, 114, 2),
(0, 'S5f8b523b4de899.63255980', 0, 409, 115, 2),
(0, 'S5f8b523b4ff839.52714704', 0, 410, 116, 2),
(0, 'S5f8b523b523066.61484548', 0, 411, 117, 2),
(0, 'S5f8b523b5429a3.71178703', 0, 412, 127, 2),
(0, 'S5f8b523b565cc6.26186053', 0, 413, 132, 2),
(0, 'S5f8b523b586d66.65397570', 0, 414, 54, 2),
(0, 'S5f8b523b5a7de7.45478318', 0, 415, 55, 2),
(0, 'S5f8b523b5c8817.59662170', 0, 416, 56, 2),
(0, 'S5f8b523b5e94f7.46598407', 0, 417, 57, 2),
(0, 'S5f8b523b60ae79.85689841', 0, 418, 58, 2),
(0, 'S5f8b523b62c664.06050119', 0, 419, 59, 2),
(0, 'S5f8b523b64f039.35292261', 0, 420, 60, 2),
(0, 'S5f8b523b66f461.76602402', 0, 421, 61, 2),
(0, 'S5f8b523b690896.24625401', 0, 422, 62, 2),
(0, 'S5f8b523b6b1512.25187705', 0, 423, 63, 2),
(0, 'S5f8b523b6d2c43.97241846', 0, 424, 64, 2),
(0, 'S5f8b523b6f52e0.78123002', 0, 425, 65, 2),
(0, 'S5f8b523b719eb0.27511642', 0, 426, 66, 2),
(0, 'S5f8b523b739726.38033925', 0, 427, 119, 2),
(0, 'S5f8b523b75a294.99428575', 0, 428, 121, 2),
(0, 'S5f8b523b77c5a4.28758796', 0, 429, 122, 2),
(0, 'S5f8b523b79e975.96681924', 0, 430, 123, 2),
(0, 'S5f8b523b7bdf89.03779199', 0, 431, 126, 2),
(0, 'S5f8b523b7efc47.90058710', 0, 432, 128, 2),
(0, 'S5f8b523b8110f3.19750708', 0, 433, 129, 2),
(0, 'S5f8b523b832b53.09962505', 0, 434, 130, 2),
(0, 'S5f8b523b853748.77553212', 0, 435, 138, 2),
(0, 'S5f8b523b8759c1.17457498', 0, 436, 144, 2),
(0, 'S5f8b523b895f89.41262494', 0, 437, 145, 2),
(0, 'S5f8b523b8b6b21.23367888', 0, 438, 146, 2),
(0, 'S5f8b523b8d7353.84567245', 0, 439, 147, 2),
(0, 'S5f8b523b8fa3c0.03738581', 0, 440, 6, 2),
(0, 'S5f8b523b919fb8.67836034', 0, 441, 7, 2),
(0, 'S5f8b523b93b917.58316844', 0, 442, 8, 2),
(0, 'S5f8b523b95cbc5.61124495', 0, 443, 9, 2),
(0, 'S5f8b523b97e9d1.07610999', 0, 444, 10, 2),
(0, 'S5f8b523b99fc68.28168130', 0, 445, 11, 2),
(0, 'S5f8b523b9c25b6.56792724', 0, 446, 12, 2),
(0, 'S5f8b523b9e3cc4.33028643', 0, 447, 13, 2),
(0, 'S5f8b523ba02d48.40888565', 0, 448, 14, 2),
(0, 'S5f8b523ba25f87.73749993', 0, 449, 15, 2),
(0, 'S5f8b523ba484f4.31535713', 0, 450, 16, 2),
(0, 'S5f8b523ba67725.09292055', 0, 451, 17, 2),
(0, 'S5f8b523ba89f14.21246928', 0, 452, 18, 2),
(0, 'S5f8b523baab7b2.77218190', 0, 453, 139, 2),
(0, 'S5f8b523bace407.09431030', 0, 454, 24, 2),
(0, 'S5f8b523baede27.63667331', 0, 455, 25, 2),
(0, 'S5f8b523bb11797.88084450', 0, 456, 26, 2),
(0, 'S5f8b523bb302a1.29706844', 0, 457, 27, 2),
(0, 'S5f8b523bb51805.62222761', 0, 458, 28, 2),
(0, 'S5f8b523bb72fc0.20764191', 0, 459, 29, 2),
(0, 'S5f8b523bb94fe0.99604464', 0, 460, 30, 2),
(0, 'S5f8b523bbb4db1.28171154', 0, 461, 31, 2),
(0, 'S5f8b523bbd57b3.56557614', 0, 462, 32, 2),
(0, 'S5f8b523bbf7c99.39996649', 0, 463, 33, 2),
(0, 'S5f8b523bc18742.90434170', 0, 464, 34, 2),
(0, 'S5f8b523bc38c50.57436781', 0, 465, 39, 2),
(0, 'S5f8b523bc5bc27.17246283', 0, 466, 40, 2),
(0, 'S5f8b523bc7bd21.00867653', 0, 467, 136, 2),
(0, 'S5f8b523bc9d827.36255107', 0, 468, 140, 2),
(0, 'S5f8b523bcbe763.18420554', 0, 469, 141, 2),
(0, 'S5f9dd8351cb739.55056043', 0, 494, 1, 9),
(0, 'S5f9dd8351edbe3.35054956', 0, 495, 2, 9),
(0, 'S5f9dd83520dfc9.90322170', 0, 496, 3, 9),
(0, 'S5f9dd83522fa39.09415688', 0, 497, 4, 9),
(0, 'S5f9dd83524eba6.98203605', 0, 498, 5, 9),
(0, 'S5f9dd835272153.46813536', 0, 499, 77, 9),
(0, 'S5f9dd835295e02.17174528', 0, 500, 78, 9),
(0, 'S5f9dd8352b6153.45823754', 0, 501, 79, 9),
(0, 'S5f9dd8352d6c72.15814187', 0, 502, 80, 9),
(0, 'S5f9dd8352f92b6.88099284', 0, 503, 81, 9),
(0, 'S5f9dd83531bf12.29642684', 0, 504, 36, 9),
(0, 'S5f9dd83533a8d3.05049042', 0, 505, 106, 9),
(0, 'S5f9dd83535b830.61149278', 0, 506, 107, 9),
(0, 'S5f9dd83537d365.99971622', 0, 507, 108, 9),
(0, 'S5f9dd8353a0386.65400090', 0, 508, 41, 9),
(0, 'S5f9dd8353c0450.00496912', 0, 509, 42, 9),
(0, 'S5f9dd8353e3e48.61773460', 0, 510, 111, 9),
(0, 'S5f9dd835403f31.14504898', 0, 511, 112, 9),
(0, 'S5f9dd835426617.18773987', 0, 512, 113, 9),
(0, 'S5f9dd835446eb8.51617413', 0, 513, 114, 9),
(0, 'S5f9dd835469935.83910080', 0, 514, 115, 9),
(0, 'S5f9dd8354890f4.05521166', 0, 515, 117, 9),
(0, 'S5f9dd8354a8088.77037238', 0, 516, 127, 9),
(0, 'S5f9dd8354ca035.32782339', 0, 517, 132, 9);

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_voucher` int(11) NOT NULL,
  `forma_pago` varchar(50) NOT NULL,
  `referencia_pago` varchar(50) NOT NULL,
  `numero_doc` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `monto` float NOT NULL,
  `responsable` varchar(200) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `id_movimiento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `voucher_mov`
--

CREATE TABLE `voucher_mov` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_mv` int(11) NOT NULL,
  `id_movimiento` int(11) NOT NULL,
  `id_cuenta_pagar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abono_credito`
--
ALTER TABLE `abono_credito`
  ADD PRIMARY KEY (`id_abono_credito`);

--
-- Indexes for table `access_conf`
--
ALTER TABLE `access_conf`
  ADD PRIMARY KEY (`id_conf`);

--
-- Indexes for table `altclitocli`
--
ALTER TABLE `altclitocli`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apertura_caja`
--
ALTER TABLE `apertura_caja`
  ADD PRIMARY KEY (`id_apertura`);

--
-- Indexes for table `banco`
--
ALTER TABLE `banco`
  ADD PRIMARY KEY (`id_banco`);

--
-- Indexes for table `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`id_caja`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indexes for table `categoria_proveedor`
--
ALTER TABLE `categoria_proveedor`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indexes for table `cheque`
--
ALTER TABLE `cheque`
  ADD PRIMARY KEY (`id_cheque`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indexes for table `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_compra`);

--
-- Indexes for table `compra2`
--
ALTER TABLE `compra2`
  ADD PRIMARY KEY (`id_compra`);

--
-- Indexes for table `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id_configuracion`);

--
-- Indexes for table `config_dir`
--
ALTER TABLE `config_dir`
  ADD PRIMARY KEY (`id_config_dir`);

--
-- Indexes for table `config_pos`
--
ALTER TABLE `config_pos`
  ADD PRIMARY KEY (`id_config_pos`);

--
-- Indexes for table `consignacion`
--
ALTER TABLE `consignacion`
  ADD PRIMARY KEY (`id_consignacion`);

--
-- Indexes for table `consignacion_detalle`
--
ALTER TABLE `consignacion_detalle`
  ADD PRIMARY KEY (`id_consignacion_detalle`),
  ADD KEY `id_consignacion` (`id_consignacion`);

--
-- Indexes for table `controlcaja`
--
ALTER TABLE `controlcaja`
  ADD PRIMARY KEY (`id_corte`);

--
-- Indexes for table `correlativo`
--
ALTER TABLE `correlativo`
  ADD PRIMARY KEY (`id_numdoc`);

--
-- Indexes for table `cotizacion`
--
ALTER TABLE `cotizacion`
  ADD PRIMARY KEY (`id_cotizacion`);

--
-- Indexes for table `cotizacion_detalle`
--
ALTER TABLE `cotizacion_detalle`
  ADD PRIMARY KEY (`id_detalle`);

--
-- Indexes for table `credito`
--
ALTER TABLE `credito`
  ADD PRIMARY KEY (`id_credito`);

--
-- Indexes for table `cuentas_por_pagar_abonos`
--
ALTER TABLE `cuentas_por_pagar_abonos`
  ADD PRIMARY KEY (`id_abono`);

--
-- Indexes for table `cuenta_banco`
--
ALTER TABLE `cuenta_banco`
  ADD PRIMARY KEY (`id_cuenta`);

--
-- Indexes for table `cuenta_pagar`
--
ALTER TABLE `cuenta_pagar`
  ADD PRIMARY KEY (`id_cuenta_pagar`);

--
-- Indexes for table `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indexes for table `detalle_apertura`
--
ALTER TABLE `detalle_apertura`
  ADD PRIMARY KEY (`id_detalle`);

--
-- Indexes for table `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD PRIMARY KEY (`id_det_compra`);

--
-- Indexes for table `detalle_compra2`
--
ALTER TABLE `detalle_compra2`
  ADD PRIMARY KEY (`id_det_compra`);

--
-- Indexes for table `detalle_voucher`
--
ALTER TABLE `detalle_voucher`
  ADD PRIMARY KEY (`id_detalle`);

--
-- Indexes for table `devoluciones`
--
ALTER TABLE `devoluciones`
  ADD PRIMARY KEY (`id_dev`);

--
-- Indexes for table `devoluciones_corte`
--
ALTER TABLE `devoluciones_corte`
  ADD PRIMARY KEY (`id_dev`);

--
-- Indexes for table `devoluciones_det`
--
ALTER TABLE `devoluciones_det`
  ADD PRIMARY KEY (`id_dev_det`);

--
-- Indexes for table `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indexes for table `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`idempresa`);

--
-- Indexes for table `estante`
--
ALTER TABLE `estante`
  ADD PRIMARY KEY (`id_estante`);

--
-- Indexes for table `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_factura`);

--
-- Indexes for table `factura_detalle`
--
ALTER TABLE `factura_detalle`
  ADD PRIMARY KEY (`id_factura_detalle`);

--
-- Indexes for table `laboratorio`
--
ALTER TABLE `laboratorio`
  ADD PRIMARY KEY (`id_laboratorio`);

--
-- Indexes for table `log_cambio_local`
--
ALTER TABLE `log_cambio_local`
  ADD PRIMARY KEY (`id_log_cambio`);

--
-- Indexes for table `log_detalle_cambio_local`
--
ALTER TABLE `log_detalle_cambio_local`
  ADD PRIMARY KEY (`id_detalle_cambio`);

--
-- Indexes for table `log_update_local`
--
ALTER TABLE `log_update_local`
  ADD PRIMARY KEY (`id_log_cambio`);

--
-- Indexes for table `lote`
--
ALTER TABLE `lote`
  ADD PRIMARY KEY (`id_lote`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`id_modulo`);

--
-- Indexes for table `movimiento_caja_tipo`
--
ALTER TABLE `movimiento_caja_tipo`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indexes for table `movimiento_producto`
--
ALTER TABLE `movimiento_producto`
  ADD PRIMARY KEY (`id_movimiento`);

--
-- Indexes for table `movimiento_producto_detalle`
--
ALTER TABLE `movimiento_producto_detalle`
  ADD PRIMARY KEY (`id_detalle`);

--
-- Indexes for table `movimiento_producto_pendiente`
--
ALTER TABLE `movimiento_producto_pendiente`
  ADD PRIMARY KEY (`id_detalle`);

--
-- Indexes for table `movimiento_stock_ubicacion`
--
ALTER TABLE `movimiento_stock_ubicacion`
  ADD PRIMARY KEY (`id_movimiento`);

--
-- Indexes for table `mov_caja`
--
ALTER TABLE `mov_caja`
  ADD PRIMARY KEY (`id_movimiento`);

--
-- Indexes for table `mov_cta_banco`
--
ALTER TABLE `mov_cta_banco`
  ADD PRIMARY KEY (`id_movimiento`);

--
-- Indexes for table `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`id_municipio`);

--
-- Indexes for table `nc_corte`
--
ALTER TABLE `nc_corte`
  ADD PRIMARY KEY (`id_nc`);

--
-- Indexes for table `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`);

--
-- Indexes for table `pedido_detalle`
--
ALTER TABLE `pedido_detalle`
  ADD PRIMARY KEY (`id_pedido_detalle`),
  ADD KEY `id_pedido` (`id_pedido`);

--
-- Indexes for table `pedido_prov`
--
ALTER TABLE `pedido_prov`
  ADD PRIMARY KEY (`id_pedido_prov`);

--
-- Indexes for table `pedido_prov_detalle`
--
ALTER TABLE `pedido_prov_detalle`
  ADD PRIMARY KEY (`id_pedido_detalle`),
  ADD KEY `id_pedido` (`id_pedido`);

--
-- Indexes for table `posicion`
--
ALTER TABLE `posicion`
  ADD PRIMARY KEY (`id_posicion`);

--
-- Indexes for table `precio_aut`
--
ALTER TABLE `precio_aut`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `presentacion`
--
ALTER TABLE `presentacion`
  ADD PRIMARY KEY (`id_presentacion`);

--
-- Indexes for table `presentacion_producto`
--
ALTER TABLE `presentacion_producto`
  ADD PRIMARY KEY (`id_pp`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indexes for table `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indexes for table `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id_stock`);

--
-- Indexes for table `stock_ubicacion`
--
ALTER TABLE `stock_ubicacion`
  ADD PRIMARY KEY (`id_su`);

--
-- Indexes for table `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`id_sucursal`);

--
-- Indexes for table `tipo_empleado`
--
ALTER TABLE `tipo_empleado`
  ADD PRIMARY KEY (`id_tipo_empleado`);

--
-- Indexes for table `tipo_pago`
--
ALTER TABLE `tipo_pago`
  ADD PRIMARY KEY (`id_tipopago`);

--
-- Indexes for table `tipo_proveedor`
--
ALTER TABLE `tipo_proveedor`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indexes for table `to_corte`
--
ALTER TABLE `to_corte`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `to_corte_producto`
--
ALTER TABLE `to_corte_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `to_corte_producto_detalle`
--
ALTER TABLE `to_corte_producto_detalle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `traslado`
--
ALTER TABLE `traslado`
  ADD PRIMARY KEY (`id_traslado`);

--
-- Indexes for table `traslado_detalle`
--
ALTER TABLE `traslado_detalle`
  ADD PRIMARY KEY (`id_detalle_traslado`);

--
-- Indexes for table `traslado_detalle_g`
--
ALTER TABLE `traslado_detalle_g`
  ADD PRIMARY KEY (`id_detalle_traslado`);

--
-- Indexes for table `traslado_detalle_recibido`
--
ALTER TABLE `traslado_detalle_recibido`
  ADD PRIMARY KEY (`id_detalle_traslado_recibido`);

--
-- Indexes for table `traslado_g`
--
ALTER TABLE `traslado_g`
  ADD PRIMARY KEY (`id_traslado`);

--
-- Indexes for table `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`id_ubicacion`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indexes for table `usuario_modulo`
--
ALTER TABLE `usuario_modulo`
  ADD PRIMARY KEY (`id_mod_user`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id_voucher`);

--
-- Indexes for table `voucher_mov`
--
ALTER TABLE `voucher_mov`
  ADD PRIMARY KEY (`id_mv`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abono_credito`
--
ALTER TABLE `abono_credito`
  MODIFY `id_abono_credito` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `access_conf`
--
ALTER TABLE `access_conf`
  MODIFY `id_conf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `altclitocli`
--
ALTER TABLE `altclitocli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `apertura_caja`
--
ALTER TABLE `apertura_caja`
  MODIFY `id_apertura` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `banco`
--
ALTER TABLE `banco`
  MODIFY `id_banco` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `caja`
--
ALTER TABLE `caja`
  MODIFY `id_caja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `categoria_proveedor`
--
ALTER TABLE `categoria_proveedor`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cheque`
--
ALTER TABLE `cheque`
  MODIFY `id_cheque` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `compra`
--
ALTER TABLE `compra`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `compra2`
--
ALTER TABLE `compra2`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id_configuracion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `config_dir`
--
ALTER TABLE `config_dir`
  MODIFY `id_config_dir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `config_pos`
--
ALTER TABLE `config_pos`
  MODIFY `id_config_pos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `consignacion`
--
ALTER TABLE `consignacion`
  MODIFY `id_consignacion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `consignacion_detalle`
--
ALTER TABLE `consignacion_detalle`
  MODIFY `id_consignacion_detalle` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `controlcaja`
--
ALTER TABLE `controlcaja`
  MODIFY `id_corte` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `correlativo`
--
ALTER TABLE `correlativo`
  MODIFY `id_numdoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cotizacion`
--
ALTER TABLE `cotizacion`
  MODIFY `id_cotizacion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cotizacion_detalle`
--
ALTER TABLE `cotizacion_detalle`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `credito`
--
ALTER TABLE `credito`
  MODIFY `id_credito` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cuentas_por_pagar_abonos`
--
ALTER TABLE `cuentas_por_pagar_abonos`
  MODIFY `id_abono` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cuenta_banco`
--
ALTER TABLE `cuenta_banco`
  MODIFY `id_cuenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cuenta_pagar`
--
ALTER TABLE `cuenta_pagar`
  MODIFY `id_cuenta_pagar` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `detalle_apertura`
--
ALTER TABLE `detalle_apertura`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `id_det_compra` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `detalle_compra2`
--
ALTER TABLE `detalle_compra2`
  MODIFY `id_det_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `detalle_voucher`
--
ALTER TABLE `detalle_voucher`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `devoluciones`
--
ALTER TABLE `devoluciones`
  MODIFY `id_dev` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `devoluciones_corte`
--
ALTER TABLE `devoluciones_corte`
  MODIFY `id_dev` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `devoluciones_det`
--
ALTER TABLE `devoluciones_det`
  MODIFY `id_dev_det` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `estante`
--
ALTER TABLE `estante`
  MODIFY `id_estante` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `factura`
--
ALTER TABLE `factura`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `factura_detalle`
--
ALTER TABLE `factura_detalle`
  MODIFY `id_factura_detalle` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `laboratorio`
--
ALTER TABLE `laboratorio`
  MODIFY `id_laboratorio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `log_cambio_local`
--
ALTER TABLE `log_cambio_local`
  MODIFY `id_log_cambio` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `log_detalle_cambio_local`
--
ALTER TABLE `log_detalle_cambio_local`
  MODIFY `id_detalle_cambio` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `log_update_local`
--
ALTER TABLE `log_update_local`
  MODIFY `id_log_cambio` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lote`
--
ALTER TABLE `lote`
  MODIFY `id_lote` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `modulo`
--
ALTER TABLE `modulo`
  MODIFY `id_modulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
--
-- AUTO_INCREMENT for table `movimiento_caja_tipo`
--
ALTER TABLE `movimiento_caja_tipo`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `movimiento_producto`
--
ALTER TABLE `movimiento_producto`
  MODIFY `id_movimiento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `movimiento_producto_detalle`
--
ALTER TABLE `movimiento_producto_detalle`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `movimiento_producto_pendiente`
--
ALTER TABLE `movimiento_producto_pendiente`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `movimiento_stock_ubicacion`
--
ALTER TABLE `movimiento_stock_ubicacion`
  MODIFY `id_movimiento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mov_caja`
--
ALTER TABLE `mov_caja`
  MODIFY `id_movimiento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mov_cta_banco`
--
ALTER TABLE `mov_cta_banco`
  MODIFY `id_movimiento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `municipio`
--
ALTER TABLE `municipio`
  MODIFY `id_municipio` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID del municipio', AUTO_INCREMENT=263;
--
-- AUTO_INCREMENT for table `nc_corte`
--
ALTER TABLE `nc_corte`
  MODIFY `id_nc` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pedido_detalle`
--
ALTER TABLE `pedido_detalle`
  MODIFY `id_pedido_detalle` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pedido_prov`
--
ALTER TABLE `pedido_prov`
  MODIFY `id_pedido_prov` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pedido_prov_detalle`
--
ALTER TABLE `pedido_prov_detalle`
  MODIFY `id_pedido_detalle` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posicion`
--
ALTER TABLE `posicion`
  MODIFY `id_posicion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `precio_aut`
--
ALTER TABLE `precio_aut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `presentacion`
--
ALTER TABLE `presentacion`
  MODIFY `id_presentacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `presentacion_producto`
--
ALTER TABLE `presentacion_producto`
  MODIFY `id_pp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=918;
--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=629;
--
-- AUTO_INCREMENT for table `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `rutas`
--
ALTER TABLE `rutas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id_stock` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stock_ubicacion`
--
ALTER TABLE `stock_ubicacion`
  MODIFY `id_su` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `id_sucursal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tipo_empleado`
--
ALTER TABLE `tipo_empleado`
  MODIFY `id_tipo_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tipo_pago`
--
ALTER TABLE `tipo_pago`
  MODIFY `id_tipopago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tipo_proveedor`
--
ALTER TABLE `tipo_proveedor`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `to_corte`
--
ALTER TABLE `to_corte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `to_corte_producto`
--
ALTER TABLE `to_corte_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `to_corte_producto_detalle`
--
ALTER TABLE `to_corte_producto_detalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `traslado`
--
ALTER TABLE `traslado`
  MODIFY `id_traslado` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `traslado_detalle`
--
ALTER TABLE `traslado_detalle`
  MODIFY `id_detalle_traslado` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `traslado_detalle_g`
--
ALTER TABLE `traslado_detalle_g`
  MODIFY `id_detalle_traslado` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `traslado_detalle_recibido`
--
ALTER TABLE `traslado_detalle_recibido`
  MODIFY `id_detalle_traslado_recibido` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `traslado_g`
--
ALTER TABLE `traslado_g`
  MODIFY `id_traslado` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `id_ubicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `usuario_modulo`
--
ALTER TABLE `usuario_modulo`
  MODIFY `id_mod_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=518;
--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id_voucher` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `voucher_mov`
--
ALTER TABLE `voucher_mov`
  MODIFY `id_mv` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
