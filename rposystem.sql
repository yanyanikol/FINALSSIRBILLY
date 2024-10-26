-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2024 at 04:31 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rposystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `rpos_admin`
--

CREATE TABLE `rpos_admin` (
  `admin_id` varchar(200) NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_admin`
--

INSERT INTO `rpos_admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
('10e0b6dc958adfb5b094d8935a13aeadbe783c25', 'Admin Sinead', 'Lian@gmail.com', '903b21879b4a60fc9103c3334e4f6f62cf6c3a2d');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_customers`
--

CREATE TABLE `rpos_customers` (
  `customer_id` varchar(200) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `customer_phoneno` varchar(200) NOT NULL,
  `customer_email` varchar(200) NOT NULL,
  `customer_password` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_customers`
--

INSERT INTO `rpos_customers` (`customer_id`, `customer_name`, `customer_phoneno`, `customer_email`, `customer_password`, `created_at`) VALUES
('f8c32e72e296', 'Nichole', '09564856268', 'nichole@gmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', '2024-10-08 04:35:44.748094');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_orders`
--

CREATE TABLE `rpos_orders` (
  `order_id` varchar(200) NOT NULL,
  `order_code` varchar(200) NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `prod_id` varchar(200) NOT NULL,
  `prod_name` varchar(200) NOT NULL,
  `prod_price` varchar(200) NOT NULL,
  `prod_qty` varchar(200) NOT NULL,
  `order_status` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_orders`
--

INSERT INTO `rpos_orders` (`order_id`, `order_code`, `customer_id`, `customer_name`, `prod_id`, `prod_name`, `prod_price`, `prod_qty`, `order_status`, `created_at`) VALUES
('d87fb133cd', 'ZUQR-2364', 'f8c32e72e296', 'Nichole', 'f9c2770a32', 'Onikuma TZ5006 5 in 1 Combo Gaming Set - Mouse/Keyboard/Headset/Headset stand/Mousepad', '1050', '2', '', '2024-10-08 04:43:50.003573'),
('e2a2326c24', 'QAWT-4912', 'f8c32e72e296', 'Nichole', 'f9c2770a32', 'Onikuma TZ5006 5 in 1 Combo Gaming Set - Mouse/Keyboard/Headset/Headset stand/Mousepad', '1050', '65', 'Paid', '2024-10-08 05:22:40.685138');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_pass_resets`
--

CREATE TABLE `rpos_pass_resets` (
  `reset_id` int(20) NOT NULL,
  `reset_code` varchar(200) NOT NULL,
  `reset_token` varchar(200) NOT NULL,
  `reset_email` varchar(200) NOT NULL,
  `reset_status` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_pass_resets`
--

INSERT INTO `rpos_pass_resets` (`reset_id`, `reset_code`, `reset_token`, `reset_email`, `reset_status`, `created_at`) VALUES
(1, '63KU9QDGSO', '4ac4cee0a94e82a2aedc311617aa437e218bdf68', 'sysadmin@icofee.org', 'Pending', '2020-08-17 15:20:14.318643');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_payments`
--

CREATE TABLE `rpos_payments` (
  `pay_id` varchar(200) NOT NULL,
  `pay_code` varchar(200) NOT NULL,
  `order_code` varchar(200) NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `pay_amt` varchar(200) NOT NULL,
  `pay_method` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_payments`
--

INSERT INTO `rpos_payments` (`pay_id`, `pay_code`, `order_code`, `customer_id`, `pay_amt`, `pay_method`, `created_at`) VALUES
('073a53', '2A7QFTJD1E', 'GYWH-6527', 'c6427e875572', '42', 'Cash', '2024-10-06 10:05:49.248885'),
('0bf592', '9UMWLG4BF8', 'EJKA-4501', '35135b319ce3', '8', 'Cash', '2022-09-04 16:31:54.525284'),
('4423d7', 'QWERT0YUZ1', 'JFMB-0731', '35135b319ce3', '11', 'Cash', '2022-09-04 16:37:03.655834'),
('442865', '146XLFSC9V', 'INHG-0875', '9c7fcc067bda', '10', 'Paypal', '2022-09-04 16:35:22.470600'),
('65891b', 'MF2TVJA1PY', 'ZPXD-6951', 'e711dcc579d9', '16', 'Cash', '2022-09-03 13:12:46.959558'),
('75ae21', '1QIKVO69SA', 'IUSP-9453', 'fe6bb69bdd29', '10', 'Cash', '2022-09-03 11:50:40.496625'),
('7e1989', 'KLTF3YZHJP', 'QOEH-8613', '29c759d624f9', '9', 'Cash', '2022-09-03 12:02:32.926529'),
('7fdda2', '4K3TDBN6CR', 'QAWT-4912', 'f8c32e72e296', '68250', 'Cash', '2024-10-08 05:22:40.681339'),
('968488', '5E31DQ2NCG', 'COXP-6018', '7c8f2100d552', '22', 'Cash', '2022-09-03 12:17:44.639979'),
('984539', 'LSBNK1WRFU', 'FNAB-9142', '35135b319ce3', '18', 'Paypal', '2022-09-04 16:32:14.852482'),
('9fcee7', 'AZSUNOKEI7', 'OTEV-8532', '3859d26cd9a5', '15', 'Cash', '2022-09-03 13:13:38.855058'),
('c81d2e', 'WERGFCXZSR', 'AEHM-0653', '06549ea58afd', '8', 'Cash', '2022-09-03 13:26:00.331494'),
('e46e29', 'QMCGSNER3T', 'ONSY-2465', '57b7541814ed', '12', 'Cash', '2022-09-03 08:35:50.172062');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_products`
--

CREATE TABLE `rpos_products` (
  `prod_id` varchar(200) NOT NULL,
  `prod_code` varchar(200) NOT NULL,
  `prod_name` varchar(200) NOT NULL,
  `prod_img` varchar(200) NOT NULL,
  `prod_desc` longtext NOT NULL,
  `prod_price` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_products`
--

INSERT INTO `rpos_products` (`prod_id`, `prod_code`, `prod_name`, `prod_img`, `prod_desc`, `prod_price`, `created_at`) VALUES
('06dc36c1be', 'FCWU-5762', 'Gamdias Atlas HD24CII 24', 'Gamdias_Atlas_HD24CII_24_180HZ_FHD_Curved_Monitor-a_2048x.webp', 'Experience immersive gaming with the Gamdias Atlas HD24CII 24\" Curved Monitor. Featuring a 180Hz refresh rate, FHD resolution, and ultra-fast response time, this monitor ensures smooth, lag-free visuals. Its sleek design and eye-care technology make it perfect for extended gaming sessions. Elevate your gameplay!\r\n\r\nProduct Specifications\r\nPANEL TYPE: VA\r\nFLAT/CURVED: CURVED\r\nASPECT RATIO: 16:9\r\nSCREEN SIZE: 23.6\r\nPANEL RESOLUTION: 1920x1080\r\nREFRESH RATE: 180HZ\r\nVIEWING ANGLE: 178/178\r\nContrast Ratio: STATIC - 3000:1\r\nHDR: HDR10\r\nColor Gamut: sRGB 99% | NTSC 70%\r\nRESPONSE TIME: OC - 5MS | OD - 1MS | MPRT - 0.5MS\r\nINPUT: HDMI (2.0), DP (1.4)\r\nPOWER INPUT: DC 12V 3A - External Power Adapter\r\nVESA: 75X75\r\nSTAND FUNCTIONS: TILT - Forerake: 5, Lean Back: 15', '6000', '2024-10-08 04:52:17.048426'),
('0c4b5c0604', 'JRZN-9518', 'ViewPlus MG-27KI 27', 'ViewPlus_MG-27KI_27_165Hz_1MS_2K_IPS_Gaming_Monitor_Black-a_540x.webp', 'Experience gaming in stunning detail with the ViewPlus MG-27KI. This 27\" IPS monitor boasts a 2K resolution, 165Hz refresh rate, and lightning-fast 1ms response time for smooth gameplay. Immerse yourself in vibrant colors and precision performance. Elevate your gaming setup with ViewPlus.\r\n\r\nProduct Specifications:\r\nScreen Size: 27\"\r\nScreen Panel: IPS\r\nScreen Scale: 16:9\r\nDisplay Color: 16.7M\r\nVesa: NONE\r\nResolution: 2560x1440\r\nRefresh Rate: 165Hz\r\nResponse Time: 1Ms\r\nInterface: DP/HDMI\r\nFeatures:\r\nIPS\r\n2K Resolution\r\n165Hz', '7420', '2024-10-08 04:53:23.181684'),
('14c7b6370e', 'QZHM-0391', 'ViewSonic VX2479-HD-PRO 24', 'ViewSonic_VX2479-HD-PRO_24_180Hz_1MS_MPRT_IPS_Gaming_Monitor-a_540x.webp', 'Unleash your gaming potential with the ViewSonic VX2479-HD-PRO. This 24” IPS gaming monitor features a blazing 180Hz refresh rate and 1ms MPRT for ultra-smooth visuals. Experience vibrant colors and wide viewing angles, perfect for immersive gameplay. Elevate your gaming setup with this high-performance monitor.\r\n\r\nProduct Specifications\r\nDisplay Size (in.): 24\r\nViewable Area (in.): 23.8\r\nPanel Type: IPS Technology\r\nResolution: 1920 x 1080\r\nResolution Type: FHD (Full HD)\r\nStatic Contrast Ratio: 1,000:1 (typ)\r\nDynamic Contrast Ratio: 50M:1\r\nHigh Dynamic Range: HDR10\r\nLight Source: LED\r\nBrightness: 250 cd/m² (typ)\r\nColors: 16.7M\r\nColor Space Support: 8 bit (6 bit + FRC)\r\nAspect Ratio: 16:9\r\nResponse Time (MPRT): 1ms\r\nViewing Angles: 178º horizontal, 178º vertical\r\nBacklight Life (Hours): 30000 Hrs (Min)\r\nCurvature: Flat\r\nRefresh Rate (Hz): 180\r\nVariable Refresh Rate Technology: FreeSync\r\nBlue Light Filter: Yes\r\nFlicker-Free: Yes\r\nColor Gamut: NTSC: 72% size (Typ)\r\nsRGB: 104% size (Typ)\r\nPixel Size: 0.275 mm (H) x 0.275 mm (V)\r\nSurface Treatment: Anti-Glare, Hard Coating (3H)\r\nCompatibility\r\nPC Resolution (max): 1920x1080\r\nMac® Resolution (max): 1920x1080\r\nPC Operating System: Windows 10/11 certified; macOS tested\r\nMac® Resolution (min): 1920x1080\r\nConnector\r\n3.5mm Audio Out: 1\r\nHDMI 1.4: 2\r\nDisplayPort: 1\r\nPower in: DC Socket (Center Positive)', '6540', '2024-10-08 04:53:04.387967'),
('1e0fa41eee', 'ICFU-1406', 'SpecterPro 27GX IPS 27 ', 'SpecterPro_27GX_IPS_27_Gaming_Monitor_144hz-a_540x.webp', 'Dive into unparalleled gaming with the SpecterPro 27GX IPS 27\" Gaming Monitor. Boasting a 144Hz refresh rate on a vibrant IPS display, it delivers smooth visuals with vivid colors. Immerse yourself in every detail, elevate your gameplay, and experience a new level of gaming excellence. \r\n\r\nProduct Specifications\r\nProduct Model: 27GX-IPS\r\nResolution: 1920 x 1080p\r\nPanel Size: Wide Screen 27”\r\nAspect Ratio: 16:09\r\nPanel: BOE-IPS\r\nRefresh Rate: 144hz\r\nResponse Time: 1ms (GtG)\r\nSynchronization: Freesync\r\nDisplay Input: DVI + HDMI 1.4 + DP 1.2 + VGA\r\nAudio Input: 3.5 mm Mini Jack\r\nVesa Mounting: 100 x 100\r\nBrightness: Max 300 cd/m²\r\nContrast Ratio: 1000:01:00\r\nViewing Angel: CR?10): 178° (H)/178° (V)\r\nDisplay Colors: 16.7 m\r\nFlicker Free: Yes\r\nDimension (WxHxD): 616.4 * 361.4 * 70.66 mm (Standless)\r\nDimension (WxHxD): 616.4 * 461.5 * 249.5 mm (Stand)\r\nDimension (WxHxD): 750 * 164 * 497 mm (Box)\r\nWeight: 5.8kg (Net) 7.3kg (Gross)\r\nPower supply: AC\r\nAccessories: User Manual, DisplayPort Cable, Power Cable', '8695', '2024-10-08 04:52:31.825870'),
('2b976e49a0', 'CEWV-9438', 'SpecterPro G24SL 24', 'SpecterPro_G24SL_24_IPS_75Hz_Freesync_Gaming_Monitor_T-Stand-a_540x.webp', 'SpecterPro G24SL 24\" IPS Gaming Monitor: Immerse in vibrant visuals with 75Hz refresh rate and Freesync technology. Choose T-Stand or V-Stand for ergonomic versatility. Elevate your gaming setup with stunning colors and smooth performance.\r\n\r\nProduct Specifications\r\nBrand: Specterpro\r\nModel: G24SL\r\nFeatures:\r\nVivid display, Full High Definition resolution with In-Plane Switching Technology\r\nEco-friendly, Low Power Consumption with Low BlueLight Technology Screen Size - 24\"\r\nResolution - 1920x1080\r\nResponse time(gtg) - 5ms\r\nRefresh Rate - 75Hz\r\nBrightness - 250cd/m2\r\nDynamic Contrast Ratio - 60000000:1\r\nDisplay Ports - HDMI + VGA\r\nSeamless at multi monitor setup with Frameless and slim design\r\nIPS  Panel with 60000000:1 Dynamic Contrast Ratio for more detailed images\r\n7575 Vesa Wall mount for proper positioning, secure mounting at your workstation', '6995', '2024-10-08 04:52:02.828905'),
('2fdec9bdfb', 'UJAK-9614', 'MSI Optix G241VC 24', 'MSI_Optix_G241VC_24_Full_HD_75hz_FreeSync-a_540x.webp', 'Immerse in gaming brilliance with the MSI Optix G241VC 24\" Curved Gaming Monitor. Enjoy Full HD visuals at 75Hz, FreeSync technology, and a frameless design for a seamless experience. Anti-glare protection, VESA mounting, and a curved screen combine for an immersive and versatile gaming setup.\r\n\r\nProduct Specifications\r\nBRAND: MSI\r\nMODEL: Optix G241VC\r\nPANEL SIZE: 23.6\" (60cm)\r\nPANEL RESOLUTION: 1920 x 1080 (FHD)\r\nREFRESH RATE: 75Hz\r\nRESPONSE TIME: 1ms\r\nPANEL TYPE: VA\r\nBRIGHTNESS (NITS): 250 nits\r\nVIEWING ANGLE: 178° (H) / 178° (V)\r\nASPECT RATIO: 16:9\r\nCURVATURE: 1800R\r\nCONTRAST RATIO: 3000:1\r\nDCR: 100000000:1\r\nNTSC / SRGB: 85% / 115%\r\nPIXEL PITCH (H X V): 0.27156(H) x 0.27156(V)\r\nSURFACE TREATMENT: Anti-glare\r\nDISPLAY COLORS: 16.7M\r\nVIDEO PORTS: 1x HDMI (1.4)\r\nACTIVE DISPLAY AREA (MM): 1x VGA\r\nVESA MOUNTING: 521.3952(H) x 293.2848(V)\r\nCONTROL: Requires special MSI wall mount adaptor (75 x 75 mm, 100 x 100mm) (sold separately)\r\nMenu, Bri (-), Vol (+) Input/Enter, Power\r\nPOWER TYPE: Internal Adaptor\r\nPOWER INPUT: 100~240V, 50~60Hz\r\nPOWER CONSUMPTION: 45W\r\nSIGNAL FREQUENCY: 54.2 to 84.3KHz (H), 48 to 75Hz (V)\r\nADJUSTMENT (TILT): -5° ~ 15°\r\nDIMENSION (W X H X D): 543 x 403 x 192 mm / 21.3 x 15.86 x 7.55 inch\r\nCARTON DIMENSION (W X H X D): 621 x 421 x 148 mm / 24.4 x 16357 x 5.82 inch\r\nWEIGHT (NW / GW): 4.1kg / 5.5kg, 9.04lbs / 12.13lbs\r\nFRAMELESS DESIGN: Yes', '6829', '2024-10-08 04:52:46.986117'),
('31dfcc94cf', 'SYQP-3710', 'MSI Thin A15 B7UCX-084PH 15.6', 'MSI_Thin_A15_B7UCX-084PH_15.6_FHD_144Hz_AMD_RYZEN_5_7535HS_8GB_512GBSSD_RTX_2050_4GB_WIN11_Laptop-c_540x.webp', 'Unleash performance with the MSI Thin A15 B7UCX-084PH laptop. Featuring a 15.6\" FHD 144Hz display, AMD Ryzen 5 7535HS processor, 8GB RAM, and a rapid 512GB SSD. Equipped with RTX 2050 4GB graphics for immersive visuals. Windows 11 ensures a seamless experience in a sleek, portable design.\r\n\r\nProduct Specifications\r\nProcessor: AMD Ryzen 5 7535HS, Up to AMD Ryzen? 7 7000 HS-Processors\r\nOperating System: Windows 11 Home (MSI recommends Windows 11 Pro for business.)\r\nDisplay: 15.6\" FHD (1920x1080), 144Hz, IPS-Level | 512GB M.2 SSD slot (NVMe PCIe Gen4)\r\nGraphics: NVIDIA® GeForce RTX? 2050 Laptop GPU 4GB GDDR6\r\nUp to 1170MHz Boost Clock 45W Maximum Graphics Power with Dynamic Boost. *May vary by scenario\r\nMemory: 8GB RAM, Max 64GB DDR5-4800 2 Slots\r\nStorage Capability: 512GB M.2 SSD slot (NVMe PCIe Gen4)\r\nSecurity: Firmware Trusted Platform Module(fTPM) 2.0 Kensington Lock\r\nWebcam: HD type (30fps@720p)\r\nKeyboard: Single Backlit Keyboard (Blue)\r\nCommunication: Gb LAN 802.11 ax Wi-Fi 6E + Bluetooth v5.3\r\nAudio: 2x 2W Speaker\r\nAudio Jack: 1x Mic-in, 1x Headphone-out\r\nI/O Ports:\r\n1x Type-C (USB3.2 Gen2 / DP) with PD charging\r\n3x Type-A USB3.2 Gen1\r\n1x HDMI? 2.1 (8K @ 60Hz / 4K @ 120Hz)\r\n1x RJ45\r\nBattery: 3-Cell 52.4 Battery (Whr)\r\nAC Adapter: 120W adapter\r\nDimension (WXDXH): 359 x 254 x 21.7 mm\r\nWeight (w/Battery): 1.86 kg\r\nColor: Cosmos Gray', '35795', '2024-10-08 04:51:49.920908'),
('3adfdee116', 'HIPF-5346', 'MSI Cyborg 15 A13VF-1256PH 15.6 FHD IPS i5-13420H/8GB DDR5/512GB NVMe SSD/RTX4060 GDDR6/Win11 Laptop', 'MSICyborg15A13VF-433PH_a_540x.webp', 'Unleash your potential with the MSI Cyborg 15 A13VF-1256PH Laptop. Featuring a 15.6\" FHD 144Hz IPS display, Raptor Lake i5-13420H processor, 8GB DDR5 RAM, and 512GB NVMe PCIe SSD, it ensures smooth performance. Equipped with an RTX 4060 8GB GPU and Windows 11 for stunning visuals and responsive gaming.\r\n\r\nProduct Specifications\r\nDISPLAY               15.6\" FHD (1920*1080), 144Hz, IPS, Thin Bezel, Anti-Glare\r\nCPU       Raptor Lake i5-13420H\r\nVGA,V-RAM        RTX 4060, GDDR6 8GB\r\nMemory               DDR5 8GB (8GB*1)\r\n2 SODIMM: 1 used, 1 vacant\r\nStorage 512GB NVMe PCIe SSD\r\nNetwork              Intel Wi-Fi 6E AX211\r\nOS          Windows 11\r\nThickness & Weight        \r\nKeyboard             Blue Backlit Gaming Keyboard\r\nColor     Translucent Black\r\nWarranty             2 Years Warranty\r\n(+3 months upon registration)\r\n1 Year for Battery/Adapter\r\nAss\'ry     Gaming Backpack', '58595', '2024-10-08 04:51:36.510674'),
('3d19e0bf27', 'EMBH-6714', 'MSI Cyborg 15 A13VF-433PH 15.6', 'MSI_Cyborg_15_A13VF-1256PH_15.6_FHD_IPS_i5-13420H_8GB_DDR5_512GB_NVMe_SSD_RTX4060_GDDR6_Win11_Laptop-a_540x.webp', 'Unleash the future of computing with the MSI Cyborg 15 A13VF-433PH 15.6\" Laptop. Powered by Raptor Lake i7-13620H, it redefines performance. Windows 11 enhances productivity. Embrace cutting-edge power and innovation in one sleek package. MSI Cyborg 15: where excellence meets the digital frontier. \r\n\r\nProduct Specifications:\r\nCyborg 15 A13VF-433PH\r\nRaptor Lake i7-13620H\r\nRTX 4060, GDDR6 8GB\r\nIntel Wi-Fi 6 AX201(2*2 ax) + BT5.2\r\nWindows® 11 Home\r\n6\" FHD (1920*1080), 144Hz IPS-Level\r\n16GB DDR5( 8GB*2) (2 memory slots upgradable up to 64GB)\r\n512GB NVMe PCIe SSD Gen4x4\r\nHD type (30fps@720p)\r\nBlue Backlit Gaming Keyboard\r\n1x Type-C (USB3.2 Gen1 / DP), 2x Type-A USB3.2 Gen1, 1x HDMI™ 2.1 (4K @ 60Hz), 1x RJ45\r\n3 cell, 53.5Whr\r\n2 Year Warranty Term\r\nMSI Essential Backpack', '86995', '2024-10-08 04:51:17.248330'),
('4e68e0dd49', 'QLKW-0914', 'LENOVO Lenovo V15 G4 15.6', 'Lenovo_V15_G4_15.6_FHD_Ryzen_5-7530U_8GB_DDR4_256GB_SSD_Laptop_MN-a_540x.webp', 'The Lenovo V15 G4 features a 15.6\" FHD display and is powered by a Ryzen 5 7530U processor for efficient performance. With 8GB DDR4 RAM and a 256GB SSD, it offers ample storage and speed. Ideal for both work and play, this laptop is designed for productivity and everyday use.\r\n\r\nProduct Specifications\r\nCPU AMD RYZEN 5 7530U\r\nRAM 8GB DDR4 (extra slot up to 16GB)\r\nSTORAGE 256GB SSD\r\nSreen size 15.6\"\r\nFHD (1920x1080)\r\nResolution IPS 300nits Anti-glare\r\nOS Windows 11 Trial\r\nGPU AMD RADEON 610M 2GB', '24995', '2024-10-08 04:50:40.262179'),
('5d66c79953', 'GOEW-9248', 'MSI NVIDIA® GeForce RTX? 3060 Ventus 2X OC 12gb 192bit GDdr6 Gaming Videocard LHR', 'MSI_RTX_3060_Ventus_2X_OC-a_540x.webp', 'Discover the ultimate gaming power with MSI RTX 3060 Ventus 2X OC 12GB. Boasting 192-bit GDDR6 memory and PCI Express Gen 4, it offers incredible speed and responsiveness. G-SYNC technology ensures tear-free, immersive gaming. Unleash unparalleled graphics performance for an unmatched gaming adventure.\r\n\r\nProduct Specifications \r\nUPC: 824142240106\r\nGPU: RTX 3060\r\nGPU Memory Size: 12\r\nGPU Memory Type: GDDR6\r\nCooling System: Dual Fan\r\nBoost Clock Speed : 1807\r\nBRAND: MSI\r\nMODEL NAME: GeForce RTX™ 3060 VENTUS 2X 12G OC\r\nGRAPHICS PROCESSING UNIT: NVIDIA® GeForce RTX™ 3060\r\nINTERFACE: PCI Express® Gen 4\r\nCORES: 3584\r\nCORE CLOCKS - Boost: 1807 MHz\r\nMEMORY SPEED: 15 Gbps\r\nMEMORY: 12GB GDDR6\r\nMEMORY BUS: 192-bit\r\nOUTPUT: DisplayPort x 3 (v1.4) / HDMI x 1 (Supports 4K@120Hz as specified in HDMI 2.1)\r\nHDCP SUPPORT: Y\r\nPOWER CONSUMPTION: 170W\r\nPOWER CONNECTORS: 8-pin x 1\r\nRECOMMENDED PSU: 550W\r\nCARD DIMENSION (MM): 235 x 124 x 42 mm\r\nWEIGHT (CARD / PACKAGE): 675 g / 1030 g\r\nDIRECTX VERSION SUPPORT: 12 API\r\nOPENGL VERSION SUPPORT: 4.6\r\nMULTI-GPU TECHNOLOGY: Y\r\nMAXIMUM DISPLAYS: 4\r\nVR READY: Y\r\nG-SYNC® TECHNOLOGY: Y\r\nADAPTIVE VERTICAL SYNC: Y\r\nDIGITAL MAXIMUM RESOLUTION: 7680 x 4320\r\nOVERVIEW:\r\nVENTUS brings a performance-focused design that maintains the essentials to accomplish any task at hand. Rocking a trusted dual fan arrangement laid into a rigid industrial design lets this sharp looking graphics card fit into any build.\r\nREINFORCING BACKPLATE: A clean-looking brushed-finish backplate reinforces the length of the card.\r\nTAILORED PCB DESIGN: Not all circuit boards are created equal. A custom PCB Design provides greater reliability and beefed up power circuitry for pushing the card to its limits\r\nFEATURES:\r\nGeForce RTX™ 3060 VENTUS 2X 12G OC\r\nThe GeForce RTX™ 3060 lets you take on the latest games using the power of Ampere—NVIDIA\'s 2nd generation RTX architecture. Get incredible performance with enhanced Ray Tracing Cores and Tensor Cores, new streaming multiprocessors, and high-speed G6 memory.\r\nBoost Clock / Memory Speed\r\n1807 MHz / 15 Gbps\r\n12GB GDDR6\r\nDisplayPort x 3\r\nHDMI x 1 (Supports 4K@120Hz as specified in HDMI 2.1)\r\nDual Fan Thermal Design\r\nTORX Fan 3.0: The award-winning MSI TORX Fan 3.0 design creates high static pressure and pushes the limits of thermal performance.\r\nAfterburner Overclocking Utility\r\nSupports multi-GPU setups.\r\nOC Scanner: An automated function finds the highest stable overclock settings.\r\nOn Screen Display: Provides real-time information of your system\'s performance.\r\nPredator: In-game video recording.\r\nMSI Center\r\nThe exclusive MSI Center software lets you monitor, tweak and optimize MSI products in real-time.', '18695', '2024-10-08 04:50:22.021551'),
('826e6f687f', 'AYFW-2683', 'Gigabyte Rx 6600 Eagle GV-R66EAGLE-8GD 8gb 128bit GDdr6, WINDFORCE 3X Cooling System,Integrated w/ 8GB GDDR6 128-bit memory interface Gaming Videocard', '4253-a_fff7ba84-2bce-49e3-a9f5-76b1b22c03ba_540x.webp', 'Experience next-level gaming with Gigabyte RX 6600 Eagle. Boasting 8GB GDDR6, 128-bit memory interface, and WINDFORCE 3X Cooling, it ensures superior performance and thermal efficiency. Elevate your gaming setup with this powerhouse!\r\n\r\nProduct Specifications\r\nBrand: Gigabyte\r\nModel: Rx 6600 Eagle GV-R66EAGLE-8GD\r\nGraphics Processing - Radeon™ RX 6600\r\nCore Clock - Boost Clock* : up to 2491 MHz | Game Clock* : up to 2044 MHz\r\nStream Processors - 1792\r\nMemory Clock - 14000 MHz\r\nMemory Size - 8 GB\r\nMemory Type - GDDR6\r\nMemory Bus - 128 bit\r\nMemory Bandwidth (GB/sec) - 224 GB/s\r\nCard Bus - PCI-E 4.0 x 8\r\nDigital max resolution - 7680x4320\r\nMulti-view - 4\r\nCard size - L=282 W=113 H=41 mm\r\nPCB Form - ATX\r\nDirectX - 12 Ultimate\r\nOpenGL - 4.6\r\nRecommended PSU - 500W\r\nPower Connectors - 8 pin*1\r\nOutput - DisplayPort 1.4a *2 - HDMI 2.1 *2\r\nFeatures:\r\nPowered by AMD RDNA™ 2 Radeon™ RX 6600\r\nIntegrated with 8GB GDDR6 128-bit memory interface\r\nWINDFORCE 3X Cooling System with alternate spinning fans\r\nScreen cooling\r\nGraphene nano lubricant\r\nProtection back plate\r\nThe WINDFORCE 3X cooling system features 3x 80mm unique blade fans, alternate spinning, 3 composite copper heat pipes direct touch GPU, 3D active fan and Screen cooling, which together provide high efficiency heat dissipation.\r\nALTERNATE SPINNING: Reduce the turbulence of adjacent fans and increase air pressure.\r\nSMOOTH AIRFLOW: GIGABYTE turns the adjacent fans in the opposite direction, so that the airflow direction between the two fans is the same, reducing the turbulence and enhancing the airflow pressure.\r\n3D ACTIVE FAN: The 3D Active Fan provides semi-passive cooling, and the fans will remain off when the GPU is in a low load or low power game.\r\nUNIQUE BLADE FAN: The airflow is spilt by the triangular fan edge, and guided smoothly through the 3D stripe curve on the fan surface.\r\nGRAPHENE NANO LUBRICANT: Graphene nano lubricant can extend the life of fan by 2.1 times, close to the life of double ball bearing, and is quieter.\r\nSCREEN COOLING: Extended heatsink design allows air flow to pass through, providing better heat dissipation.\r\nHEAT PIPES DIRECT TOUCH: The shape of the pure copper heat pipe maximizes the direct contact area with the GPU. The heat pipe also covers the VRAM through a large metal plate contact to ensure proper cooling.\r\nEXTREME DURABILITY\r\nThe graphics card uses the better power phase design to allow the MOSFET to operate at lower temperature, and over-temperature protection design and load balancing for each MOSFET, plus the Ultra Durable certified chokes and capacitors, to provide excellent performance and longer system life.\r\nFRIENDLY PCB DESIGN\r\nFully automated production process ensures top quality of the circuit boards and eliminates sharp protrusions of the solder connectors seen on the conventional PCB surface. This friendly design prevents your hands from getting cut or inadvertently damaging components when making your build.', '13850', '2024-10-08 04:50:08.827041'),
('97972e8d63', 'CVWJ-6492', 'MSI NVIDIA® GeForce RTX? 4060 Ventus 2x OC 8gb 128 bit gddr6 videocard', 'MSI_RTX_4060_Ventus_2x_OC-a_540x.webp', 'Unleash gaming brilliance with MSI RTX 4060 Ventus 2X OC. Featuring 8GB GDDR6 on a 128-bit interface, it delivers exceptional performance. The dual-fan Ventus design ensures optimal cooling for prolonged gaming sessions. Elevate your gaming experience with this powerful and efficient videocard.\r\n\r\nProduct Specifications\r\nUPC: 824142330302\r\nGPU: RTX 4060\r\nGPU MEMORY SIZE: 8\r\nGPU MEMORY TYPE: GDDR6\r\nCOOLING SYSTEM: DUAL FAN\r\nGPU BOOST CLOCK SPEED: 2490\r\nGeForce RTX™ 4060 VENTUS 2X BLACK 8G OC\r\nWITH DLSS 3\r\nGame, stream, create. The GeForce RTX™ 4060 lets you take on the latest games and apps with the ultra-efficient NVIDIA Ada Lovelace architecture. Experience immersive, AI-accelerated gaming with ray tracing and DLSS 3, and supercharge your creative process and productivity with NVIDIA Studio.\r\nBoost Clock / Memory Speed\r\n2490 MHz / 17 Gbps\r\n8GB GDDR6\r\nDisplayPort x 3 (v1.4a)\r\nHDMI™ x 1 (Supports 4K@120Hz HDR, 8K@60Hz HDR, and Variable Refresh Rate as specified in HDMI™ 2.1a)\r\nDual Fan Thermal Design\r\nTORX Fan 4.0: A masterpiece of teamwork, fan blades work in pairs to create unprecedented levels of focused air pressure.\r\nZero Frozr: The fans completely stop when temperatures are relatively low, eliminating all noise.\r\nReinforcing Backplate\r\nThe reinforcing backplate features a flow-through design that provides additional ventilation.', '20650', '2024-10-08 04:49:26.417968'),
('a419f2ef1c', 'EPNX-3728', 'ASUS Dual RX 6600 DUAL-RX6600-8G-V2 8GB 128-bit GDDR6 Videocard', 'ASUS_Dual_RX_6600_DUAL-RX6600-8G-V2_8GB_128-bit_GDDR6_Videocard-a_540x.webp', 'ASUS Dual RX 6600 DUAL-RX6600-8G-V2 8GB 128-bit GDDR6 Videocard\r\nProduct Description\r\nExperience next-level gaming with the ASUS Dual RX 6600. Unleash powerful graphics and smooth gameplay with 8GB GDDR6 memory and a 128-bit interface. Elevate your gaming rig to new heights with this cutting-edge videocard.\r\nProduct Specifications\r\nModel ASUS Dual Radeon™ RX 6600\r\nGraphic Engine AMD Radeon™ RX 6600\r\nBus Standard PCI Express 4.0\r\nOpenGL OpenGL®4.6\r\nVideo Memory 8GB GDDR6\r\nEngine Clock\r\nOC mode : up to 2491 MHz (Boost Clock)/up to 2064 MHz (Game Clock)\r\nGaming mode : up to 2491 MHz (Boost Clock)/up to 2044 MHz (Game Clock)\r\nStream Processors 1792\r\nMemory Speed 14 Gbps\r\nMemory Interface 128-bit\r\nResolution Digital Max Resolution 7680 x 4320\r\nInterface\r\nYes x 1 (Native HDMI 2.1)\r\nYes x 3 (Native DisplayPort 1.4a)\r\nHDCP Support Yes (2.3)\r\nMaximum Display Support 4\r\nNVlink/ Crossfire SupportYes\r\nAccessories\r\n1 x Collection Card\r\n1 x Speedsetup Manual\r\nSoftware ASUS GPU Tweak II & Drivers: please download all software from the support site.\r\nDimensions\r\n243 x 134 x 49 mm\r\n9.6 x 5.3 x 1.9 inches\r\nRecommended PSU 500W\r\nPower Connectors 1 x 8-pin\r\nSlot 2.5 Slot', '14250', '2024-10-08 04:49:06.735238'),
('a5931158fe', 'ELQN-5204', 'Asus ROG Azoth PBT NX Blue Mechanical Gaming Keyboard', 'AsusROGAzothPBTNXBlue-a_540x (1).webp', 'Level up your gaming with Asus ROG Azoth PBT NX. This mechanical keyboard in cool blue features tough PBT keycaps, tactile blue switches, and customizable RGB lighting. Unleash accuracy and style for an exceptional gaming journey.\r\n\r\nProduct Specifications\r\nConnectivity USB 2.0 (TypeC to TypeA)\r\nBluetooth 5.1 RF 2.4GHz\r\nLighting RGB Per keys\r\nAURA Sync Yes\r\nAnti-Ghosting N Key Rollover\r\nMacro Keys All Keys Programmable\r\nUSB Report rate (USB Report rate)1000 Hz\r\nRF 2.4G Report rate 1000 Hz\r\nUSB Pass through NA\r\nCable 2M USB type A to C braided cable\r\nOS macOS® 10.11 or later Windows® 11\r\nSoftware Armoury Crate\r\nDimensions 326 x 136 x 40 mm\r\nWeight 1186g PBT keycaps without cable\r\nColor Gunmetal', '13400', '2024-10-08 04:48:52.578899'),
('b2f9c250fd', 'XNWR-2768', 'Asus ROG Strix Flare II NX Blue Gaming Keyboard', 'Asus_ROG_Strix_Flare_II_NX_Blue-b_540x.webp', 'Unleash your gaming prowess with the Asus ROG Strix Flare II NX Blue Gaming Keyboard. Featuring responsive NX Blue switches, customizable RGB lighting, and dedicated media controls, it offers precision and style. Dominate your games with this high-performance keyboard, designed for victory. \r\n\r\nProduct Specifications:\r\nKey Switch ROG NX Red\r\nConnectivity USB 2.0 (TypeC to TypeA)\r\nSize (Full/TKL) 100%\r\nLighting ROG RGB Logo Per key RGB LEDs\r\nAURA Sync Yes\r\nAnti-Ghosting Yes\r\nMacro Keys All key programmable\r\nUSB Pass through USB 2.0\r\nCable 2M braided cable\r\nOS Windows® 10\r\nSoftware Armoury Crate\r\nDimensions Keyboard: 435mm x 165mm x 38mm Wrist rest: 435mm x 85mm x 27mm\r\nWeight 1113g\r\nColor Gunmetal\r\nContents 1 x gaming keyboard 1 x wrist rest 1 x ROG sticker 1 x quick start guide 1 x warranty booklet', '7955', '2024-10-08 04:48:04.438250'),
('bd200ef837', 'HEIY-6034', 'Ducky Shine 6 DKSH1608ST-CUSPDAAT1 Cherry MX Blue Mechanical Keyboard DUDK939 4JTP', 'Ducky_Shine_6_DKSH1608ST-CUSPDAAT1_RGB_Mechanical_Keyboard_Cherry_MX_Blue-a_540x.webp', 'Experience the pinnacle of typing with the Ducky Shine 6 Mechanical Keyboard. Featuring Cherry MX Blue switches, customizable RGB backlighting, and premium build quality, it delivers a tactile and visually stunning typing experience. Elevate your gaming and productivity with this high-performance keyboard.\r\n\r\nProduct Specifications\r\nModel Number: DKSH1608ST-CUSPDAAT1\r\nSwitch Type: Cherry MX Blue\r\nKeyboard Size: Full Size\r\nKeyboard Layout: English | QWERTY\r\nKeyboard Backlighting: RGB LED\r\nKey Rollover: Unlimited (NKRO)\r\nKeycap Plastic: PBT\r\nKeycap Color: Black\r\nKeycap Printing Method: Double Shot\r\nKeycap Printing Position: Top\r\nKeycap Printing Color: Clear (Backlit)\r\nDimensions: 450mm x 155mm x 45mm\r\nWeight: 2.42lbs\r\nMacro Keys: Yes (via Fn keys)\r\nMultimedia Keys: Yes\r\nOn-board Memory: Yes\r\nWrist Rest: No\r\nCable Type: Standard\r\nCable Length: 1.5m (Mini-USB 2.0 detachable)\r\nSwitch Mount Method Plate Mounted\r\nWIN Lock: No', '7523', '2024-10-08 04:47:50.016727'),
('cff0cb495a', 'ZOBW-2640', 'Fantech XD3 V3 Helios II PRO S 4k8k Mouse Black', 'Fantech_XD3_V3_Helios_II_PRO_S_4k8k_Mouse_Black-b_2048x2048.webp', 'Unleash precision with the Fantech XD3 V3 Helios II PRO S 4k/8k Mouse in black. Featuring high-resolution sensors for ultra-accurate tracking, customizable buttons, and an ergonomic design, it ensures peak performance for gaming and productivity. Durable and stylish, it\'s the ultimate tool for serious users.\r\n\r\nProduct Specifications\r\nConnectivity Strikespeed Wireless, BT, Wired\r\nSensor Type Optical\r\nSensor Pixart 3395 High-end Sensor\r\nAdjustable LOD Yes\r\nResolution 400-26,000 DPI\r\nIPS 650\r\nAcceleration 50G\r\nPolling Rate Up to 8K\r\nOn-Board Memory Yes\r\nAdjustable LOD Yes\r\nBack Cover Material UV Matte Finish\r\nCore Construction ABS Plastic\r\nShape Ambidextrous\r\nTotal Button 6\r\nSwitch Type & Lifetime 80 Million Clicks\r\nIllumination N/A\r\nWeight 55g Ultra-Lightweight\r\nDimension 120*64*38.3mm\r\nCable 1.8M Paracord\r\nOS Compatibility Windows and Mac OS X. USB Port Required\r\nSoftware Compatibility Windows (7 or Newer)', '4260', '2024-10-08 04:47:36.852028'),
('d57cd89073', 'ZGQW-9480', 'Fantech XD3 V3 Helios II PRO S 4k8k Mouse White', 'Fantech_XD3_V3_Helios_II_PRO_S_4k8k_Mouse_White-a_540x.webp', 'Elevate your gaming with the Fantech XD3 V3 Helios II PRO S 4k/8k Mouse in white. Featuring ultra-precise sensors, customizable buttons, and an ergonomic design, it offers superior performance and comfort. This durable, stylish mouse ensures top-tier accuracy and responsiveness for both gamers and professionals.\r\n\r\nProduct Specifications\r\nConnectivity Strikespeed Wireless, BT, Wired\r\nSensor Type Optical\r\nSensor Pixart 3395 High-end Sensor\r\nAdjustable LOD Yes\r\nResolution 400-26,000 DPI\r\nIPS 650\r\nAcceleration 50G\r\nPolling Rate Up to 8K\r\nOn-Board Memory Yes\r\nAdjustable LOD Yes\r\nBack Cover Material UV Matte Finish\r\nCore Construction ABS Plastic\r\nShape Ambidextrous\r\nTotal Button 6\r\nSwitch Type & Lifetime 80 Million Clicks\r\nIllumination N/A\r\nWeight 55g Ultra-Lightweight\r\nDimension 120*64*38.3mm\r\nCable 1.8M Paracord\r\nOS Compatibility Windows and Mac OS X. USB Port Required\r\nSoftware Compatibility Windows (7 or Newer)', '4260', '2024-10-08 04:47:24.909256'),
('d9aed17627', 'FIKD-9703', 'Rakk Dasig Illuminated Gaming Mouse', 'Rakk_Dasig_Illuminated_Gaming_Mouse-a_540x.webp', 'Elevate your gaming experience with Rakk Dasig Illuminated Gaming Mouse. Featuring vibrant RGB lighting, precise tracking, and ergonomic design, it offers superior control and style. Dominate your game with customizable buttons and dynamic lighting effects, enhancing your gameplay to the next level.\r\n\r\nProduct Specifications Dasig\r\nBrand: Rakk\r\nModel: Dasig Illuminated\r\nFeatures:\r\nAesthetic Design - RGB Sides\r\n8 Buttons\r\nBraided Cable\r\nDownloadable Software\r\nHuano Clicker Switch\r\nResolution 800 / 1200 / 1600 / 2500 / 3200 / 4800 DPI\r\nDimension: 129 * 67 * 42\r\nProduct Specifications Sari\r\nBrand: Rakk\r\nModel: Sari\r\nFeatures:\r\nRakk Keyboard Sari has 9-way color backlit and 9-LED effects\r\nTactile touch, braided cable, an inclined Keyboard Design,\r\nwith 15 enhanced multimedia function keys, and much improved ergonomics with an extended palm rest for best iCafe customer experience!\r\nDrainage holes design\r\nEffectively prevent the water damage to the keyboard\r\nProduct Specifications Dasig\r\nBrand: Rakk\r\nModel: Dasig Illuminated\r\nFeatures:\r\nAesthetic Design - RGB Sides\r\n8 Buttons\r\nBraided Cable\r\nDownloadable Software\r\nHuano Clicker Switch\r\nResolution 800 / 1200 / 1600 / 2500 / 3200 / 4800 DPI\r\nDimension: 129 * 67 * 42\r\nProduct Specifications Daguob\r\nBrand: Rakk\r\nModel: Daguob\r\nColor: Red/Blue/White/Green\r\nFeatures:\r\nRakk Daguob is one of the \"Best selling Gaming Headset for iCafe\" and also good for office uses with a very affordable price. And very convent to use specially with FPS games like Counter Strike Global, Special Force 2, Crossfire and ETC. Daguob is also compatible with android cellphone which is now mostly widely uses by many people.\r\nRakk Daguob design is very attractive as it has a led light beside the headphones with its RAKK Logo glowing\r\nRakk Daguob has a passive noise cancelation because of its over ear design that gives you an edge for gaming with a high environmental sound effects.\r\nReplaceable Earpads / Easy to replace which very convent for iCafe shop\'s that has a high volume customers that uses everyday.\r\nLight-weight and design for long hours of use\r\nDurable abs plastic shell\r\nAnti scratch and tangle proof PU leather and braided cord design\r\nStylish design Excellent build quality\r\nComfortable adjustable foam and leather cushion headband\r\nOverhear and replaceable ear cups\r\nNew sports mesh materials used in the ear cups Comfortable Fit', '445', '2024-10-08 04:47:05.208460'),
('e2195f8190', 'HKCR-2178', 'Core i7 12700 / H610 / 8GB DDR4 / 256GB SSD / PC Case M-ATX with 700W', 'Core_i7_12700_H610_8GB_DDR4_256GB_SSD_PC_Case_M-ATX_with_700W_540x.webp', 'Elevate your computing with the INTEL Core i7 12700 on H610 chipset, 8GB DDR4 RAM, and a fast 240GB SSD. Housed in a compact M-ATX case with a robust 700W power supply. Unleash performance with this sleek setup\r\n\r\nProduct Specifications\r\nIntel Core i7-12700 Alder Lake Socket LGA 1700 4.90GHz Processor\r\nMsi PRO H610M-E Socket LGA 1700 Ddr4 Motherboard\r\nTeam Elite Plus 8gb 1x8 3200Mhz Ddr4 Memory Black Gold\r\nTeam Group GX2 Solid State Drive 256gb SATA 2.5\r\nOvation Trooper Lite 1.0 Micro ATX PC Case with 700w PSU Black', '25195', '2024-10-08 04:46:53.660659'),
('e2af35d095', 'IDLC-7819', 'Core i3 12100 / H610 / 8GB DDR4 / 256GB SSD / PC Case M-ATX with 700W', 'Core_i3_12100_H610_8GB_DDR4_256GB_SSD_PC_Case_M-ATX_with_700W_540x.webp', 'Boost your computing experience with this desktop bundle featuring an Intel Core i3 12100 processor, H610 motherboard, 8GB DDR4 RAM, and a 256GB SSD for fast storage and quick access. Housed in a sleek M-ATX case with a powerful 700W PSU, it\'s perfect for daily tasks and light gaming.\r\n\r\nProduct Specifications\r\nIntel Core i3-12100 Alder Lake Socket 1700 4.30GHz Processor\r\nMsi PRO H610M-E Socket LGA 1700 Ddr4 Motherboard\r\nTeam Elite Plus 8gb 1x8 3200Mhz Ddr4 Memory Black Gold\r\nTeam Group GX2 Solid State Drive 256gb SATA 2.5\r\nOvation Trooper Lite 1.0 Micro ATX PC Case with 700w PSU Black', '14795', '2024-10-08 04:46:37.702661'),
('e769e274a3', 'AHRW-3894', 'AMD Ryzen 9 5950X /B550M /RTX 4070 /16GB 3200MHZ / 1TB M.2 NVME / 750W / 360MM AIO / ATX CASE GAMING Pre-build', 'ThumbnailGaming-GAMEO17_540x.webp', 'Experience peak performance with AMD Ryzen 9 5950X, B550M motherboard, and RTX 4070 GPU. 16GB 3200MHz RAM, 1TB M.2 NVMe storage, and a 750W supply ensure unrivaled power. Enhanced cooling with a 360mm AIO, all enclosed in an ATX gaming case for an immersive gaming setup.\r\n\r\nProduct Specifications\r\nAMD Ryzen 9 5950X Socket AM4 3.7GHz Processor\r\nMSI MAG B550M Mortar Max Wifi Socket Am4 Ddr4 Motherboard\r\nMSI RTX 4070 Ventus 2x OC 12G 12gb 192bit GDDR6x Videocard\r\nKingston Fury Beast KF432C16BBAK2/16 16gb 2x8 3200MT/s Ddr4 RGB Memory Black\r\nLexar NM610 Pro 1TB M.2 NVME Solid State Drive\r\nDarkFlash C285P ATX Tempered Glass Side Panel Gaming PC Case Black\r\nDarkflash C6MS 120mm 3in1 ARGB Aurora Spectrum Black\r\nDarkFlash Twister DX 360 V2.6 ARGB AIO CPU Liquid Cooler Black\r\nFSP HYDRO G Pro 750W 80+ Gold Fully Modular Power Supply', '102490', '2024-10-08 04:45:58.665103'),
('ec18c5a4f0', 'PQFV-7049', 'Dante Asus B550M-A | Asus RTX 4060 | Ryzen 7 5700X', 'DANTE_9bffc504-1124-44d4-a8f9-01f8c75af7d8_540x.webp', 'Elevate your setup with this powerful bundle featuring an Asus B550M-A motherboard, Ryzen 7 5700X CPU, and Asus RTX 4060 GPU. It includes 16GB of Team Elite TForce Delta DDR4 RGB memory, a 1TB Kingston NV2 PCIe 4.0 NVMe SSD, and a CoolerMaster 650W PSU. Encased in the sleek DarkFlash DS900 ATX case, it’s perfect for gaming and demanding tasks.\r\n\r\nProduct Specifications\r\nAMD Ryzen 7 5700X Socket AM4 3.4GHz Processor with AMD Wraith Stealth cooler MPK\r\n\r\n# of CPU Cores 8\r\n# of Threads 16\r\nBoost Clock Up to 4.6GHz\r\nBase Clock 3.4GHz\r\nL1 Cache 512KB\r\nL2 Cache 4MB\r\nL3 Cache 32MB\r\nDefault TDP 65W\r\nAsus Prime B550M-A Wifi II Socket Am4 Ddr4 Gaming Motherboard\r\n\r\nCPU: AMD Ryzen™ 5000 Series/ 5000 G-Series/ 4000 G-Series/ 3000 Series Desktop Processors\r\n*Refer to www.asus.com for CPU support list.\r\nChipset: B550\r\nMemory: 4 x DIMM, Max. 128GB, DDR4\r\n4866(OC)/4800(OC)/4600(OC)/4466(OC)/4400(OC)/4333(OC)/4266(OC)/4200(OC)/4133(OC)/4000(OC)/3866(OC)/3733(OC)/3600(OC)/3466(OC)/3400(OC)/3333(OC)/3200/3000/2933/2800/2666/2400/2133, Un-buffered Memory*\r\nDual Channel Memory Architecture\r\nGraphics\r\n1 x D-Sub\r\n1 x D-Sub port\r\n1 x DVI-D port\r\n1 x HDMI® port**\r\nExpansion Slots\r\nAMD Ryzen™ 5000 Series/ 3000 Series Desktop Processors: 1 x PCIe 4.0 x16 slot (supports x16 mode)\r\nAMD Ryzen™ 5000 G-Series/ 4000 G-Series Desktop Processors : 1 x PCIe 3.0 x16 slot (supports x16 mode)\r\nAMD B550 Chipset: 2 x PCIe 3.0 x1 slots\r\nStorage\r\nSupports 2 x M.2 slots and 4 x SATA 6Gb/s ports\r\nAMD Ryzen™ 5000 Series/ 3000 Series Desktop Processors\r\n2_1 slot (Key M), type 2242/2260/2280/22110 (supports PCIe 4.0 x4 & SATA modes)\r\nAMD Ryzen™ 4000 G-Series Desktop Processors\r\n2_1 slot (Key M), type 2242/2260/2280/22110 (supports PCIe 3.0 x4 & SATA modes)\r\nAMD B550 Chipset\r\n2_2 slot (Key M), type 2242/2260/2280 (supports PCIe 3.0 x4 & SATA modes)\r\n4 x SATA 6Gb/s ports\r\nSupport RAID 0, 1, 10\r\n16gb 2x8 3200mhz Ddr4 RGB Memory Black\r\n\r\nModule Type: 288 Pin Unbuffered DIMM Non ECC\r\nCapacity:  16GBx2\r\nFrequency: 3200\r\nDimensions: 49(H) x 147(L) x 7(W)mm\r\nHeat Spreader Aluminum heat spreader\r\n1TB PCIe 4.0 M.2 NVME Solid State Drive\r\n\r\nForm Factor M.2 2280\r\nInterface NVMe™ PCIe Gen 4.0 x4\r\nCapacities 1TB\r\nData Transfer1 1TB – 3,500/2,100MB/s\r\nDimensions 22mm x 80mm x 2.2mm\r\nAsus Dual Nvidia Geforce RTX 4060 OC edition DUAL-RTX4060-O8G-WHITE 8GB 128bit GDDR6 Videocard\r\n\r\nUPC: 197105274921\r\nGPU: RTX 4060\r\nGPU MEMORY SIZE: 8\r\nGPU MEMORY TYPE: GDDR6\r\nCOOLING SYSTEM: DUAL FAN\r\nGPU BOOST CLOCK SPEED: 2535\r\nModel DUAL-RTX4060-O8G\r\nGraphic Engine NVIDIA® GeForce RTX™ 4060\r\nBus Standard PCI Express 4.0\r\nOpenGL OpenGL®4.6\r\nVideo Memory 8GB GDDR6\r\nEngine Clock\r\nOC mode : 2535 MHz\r\nDefault mode : 2505 MHz (Boost)\r\nCUDA Core 3072\r\nMemory Speed 17 Gbps\r\nMemory Interface 128-bit\r\nResolution Digital Max Resolution 7680 x 4320\r\nInterface\r\nYes x 1 (Native HDMI 2.1a)\r\nYes x 3 (Native DisplayPort 1.4a)\r\nHDCP Support Yes (2.3)\r\nMaximum Display Support 4\r\nNVlink/ Crossfire Support No\r\nAccessories\r\n1 x Collection Card\r\n1 x Speedsetup Manual\r\n1 x Thank you Card\r\nSoftware ASUS GPU Tweak III & GeForce Game Ready Driver & Studio Driver: please download all software from the support site.\r\nDimensions 227.2 x 123.24 x 49.6 mm\r\nRecommended PSU 550W\r\nPower Connectors 1 x 8-pin\r\nSlot 2.5 Slot\r\nCoolerMaster MWE 650W V2-230v 80+ Bronze Power Supply\r\n\r\nWatts: 650Watts\r\nATX Version: ATX 12V V2.52\r\nPFC: Active PFC\r\nInput Voltage: V2-230v\r\nInput Current: 10-5A (650W, 550W)\r\nInput Frequency: 50-60Hz\r\nDimensions (L x W x H): 140 x 150 x 86 mm\r\nDarkFlash DS900 Aquarium ATX PC Case Black\r\n\r\nCase Size :434*218*454mm\r\nPacking Size : 495*280*515mm\r\nMaterial : 0.5 SPCC\r\nMotherboard : ATX / M-ATX / ITX\r\nHDD / SSD : 2 / 2\r\nExpansion Slots : 7 Slots\r\nVGA Length : 425mm (Max.)\r\nCPU Height : 170mm (Max.)\r\nPower Supply : Bottom, ATX', '49995', '2024-10-08 04:45:17.660308'),
('f4ce3927bf', 'EAHD-1980', 'ASROCK BUILD AMD RYZEN 5 5600G / ASROCK B450 STEEL LEGEND', 'AsrockBundleKIT.7336-a_540x.webp', 'Unlock seamless performance with the ASROCK BUILD featuring AMD Ryzen 5 5600G and ASROCK B450 STEEL LEGEND. This bundle is your gateway to powerful computing and gaming. Upgrade now for an exceptional experience!\r\n\r\nProduct Specifications\r\nAMD Ryzen 5 5600G Socket Am4 3.9GHz\r\n\r\nBrand: AMD\r\nSeries: AMD Ryzen 5 5600G\r\nItem model number: AMD Ryzen 5 5600G\r\nCores: Cores 6\r\nThreads: 12\r\n# of GPU Cores - 7\r\nBase Clock 3.9GHz\r\nMax Boost Clock Up to 4.4GHz\r\nTotal L2 Cache 3MB\r\nTotal L3 Cache 16MB\r\nUnlocked: Yes\r\nCMOS TSMC 7nm FinFET\r\nPackage: AM4\r\nAsrock B450M Steel Legend  Am4 Gaming Motherboard\r\n\r\nBrand: ASRock\r\nCPU Socket: Socket AM4\r\nRAM Memory Technology: DDR4\r\nChipset Type: AMD B450\r\nMemory Speed: 2400 MHz\r\nPlatform: Windows 10\r\nSeries: B450M STEEL LEGEND\r\nMemory Storage Capacity: 64 GB\r\nRAM Memory Maximum Size: 64 GB\r\nGraphics Card Interface: PCI-E\r\nSupported Motherboard: Micro ATX', '11795', '2024-10-08 04:45:06.633685'),
('f9c2770a32', 'YXLA-2603', 'Onikuma TZ5006 5 in 1 Combo Gaming Set - Mouse/Keyboard/Headset/Headset stand/Mousepad', 'Onikuma_TZ5006_5_in_1_Combo_Gaming_Set_-_Mouse_Keyboard_Headset_Headset_stand_Mousepad-a_540x.webp', 'Onikuma TZ5006 5-in-1 Combo Gaming Set offers the ultimate gaming experience. Precision control with the mouse and keyboard, immersive audio with the headset, organized setup with the headset stand, and smooth surface with the mousepad – all in one dynamic package for gaming enthusiasts.\r\n\r\nProduct Specifications\r\nDPI 1200/1800/2400/3600\r\nKeyboard Standard 104 Keys\r\nInterface usb\r\nKeyboard backlit RGB\r\nMechanical NO\r\nOther attributes\r\nBrand Name Onikuma/OEM\r\nType Standard\r\nSupports Human Engineering Yes\r\nMouse Connection Wired\r\nWith Multimedia Function Keys NO\r\nFeature Waterproof,RGB\r\nWrist Support NO\r\nPrivate Mold Yes\r\nProgrammable NO\r\nBrand Name ONIKUMA\r\nProduct Name: gaming keyboard and mouse combo\r\nModel: TZ5006\r\nCertification: CE RoHS FCC WEEE\r\nFunction: Noise Cancelling,for gaming,Gaming Combo Set\r\nMaterial ABS Plastic', '1050', '2024-10-08 04:42:45.331661');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_staff`
--

CREATE TABLE `rpos_staff` (
  `staff_id` int(20) NOT NULL,
  `staff_name` varchar(200) NOT NULL,
  `staff_number` varchar(200) NOT NULL,
  `staff_email` varchar(200) NOT NULL,
  `staff_password` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_staff`
--

INSERT INTO `rpos_staff` (`staff_id`, `staff_name`, `staff_number`, `staff_email`, `staff_password`, `created_at`) VALUES
(2, 'Cashier Trevor', 'QEUY-9042', 'cashier@mail.com', '903b21879b4a60fc9103c3334e4f6f62cf6c3a2d', '2022-09-04 16:11:30.581882'),
(3, 'Lian', 'NJRV-7624', 'Lian@gmail.com', 'f93a16d2c7ba3715ff55643f73863124188c4fa3', '2024-10-06 10:07:19.933975'),
(4, 'sinead', 'ANWE-4836', 'sineadlianbayer19@gmail.com', 'f93a16d2c7ba3715ff55643f73863124188c4fa3', '2024-10-26 02:26:26.977135');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rpos_admin`
--
ALTER TABLE `rpos_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `rpos_customers`
--
ALTER TABLE `rpos_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `rpos_orders`
--
ALTER TABLE `rpos_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `CustomerOrder` (`customer_id`),
  ADD KEY `ProductOrder` (`prod_id`);

--
-- Indexes for table `rpos_pass_resets`
--
ALTER TABLE `rpos_pass_resets`
  ADD PRIMARY KEY (`reset_id`);

--
-- Indexes for table `rpos_payments`
--
ALTER TABLE `rpos_payments`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `order` (`order_code`);

--
-- Indexes for table `rpos_products`
--
ALTER TABLE `rpos_products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `rpos_staff`
--
ALTER TABLE `rpos_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rpos_pass_resets`
--
ALTER TABLE `rpos_pass_resets`
  MODIFY `reset_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rpos_staff`
--
ALTER TABLE `rpos_staff`
  MODIFY `staff_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rpos_orders`
--
ALTER TABLE `rpos_orders`
  ADD CONSTRAINT `CustomerOrder` FOREIGN KEY (`customer_id`) REFERENCES `rpos_customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ProductOrder` FOREIGN KEY (`prod_id`) REFERENCES `rpos_products` (`prod_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
