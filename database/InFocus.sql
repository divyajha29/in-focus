-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2021 at 04:08 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstName` varchar(125) NOT NULL,
  `lastName` varchar(125) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `confirmCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `type`, `confirmCode`) VALUES
(7, 'bharath', 'hj', 'bharath@gmail.com', '8095635573', 'Banglore', '$5$rounds=535000$WOAOMdgoK2JpZLY5$RFH9BZQCB3NEvG4R/FofxxJL/PUaeZm7T6G9P3PRg05', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `ofname` text NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `oplace` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dstatus` varchar(10) NOT NULL DEFAULT 'no',
  `odate` timestamp NOT NULL DEFAULT current_timestamp(),
  `ddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `ofname`, `pid`, `quantity`, `oplace`, `mobile`, `dstatus`, `odate`, `ddate`) VALUES
(14, 17, 'Bharath H J', 9, 1, 'Hassan', '6362780000', 'no', '2021-10-15 12:51:19', '2021-10-22'),
(17, 17, 'Manvith J Y', 19, 1, 'Shivamogga', '9876543210', 'no', '2021-10-16 00:51:13', '2021-10-23'),
(18, 17, 'Abhi', 9, 1, 'Mysore', '9449089760', 'no', '2021-10-16 04:29:08', '2021-10-23');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pName` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `available` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `pCode` varchar(20) NOT NULL,
  `picture` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pName`, `price`, `description`, `available`, `category`, `item`, `pCode`, `picture`, `date`) VALUES
(1, 'Nikon D-6', 500000, 'Includes Nikon 64GB XQD Memory Card & XQD card reader*Price quoted is MRP inclusive of all taxes for one unit of the product.\r\nUp to 20 fps + Animal Detection AF\r\nLow-light performance up to EV -6.5 + ISO 102 400\r\nDual pixel CMOS AF\r\n0.78 type, 2.36 million-dot OLED EVF', 4, 'camera', 'Camera', 'c001', 'img1.png', '2018-09-20 07:10:40'),
(2, 'Canon RF16mm f/2.8 STM', 26995, 'Capitalising on the RF mount on EOS R system, the RF16mm f/2.8 STM provides an ultra-wide-angle focal length with a large aperture in a lightweight and compact design that delivers outstanding image quality throughout the image periphery.\r\nLarge Aperture of f/2.8\r\nLightweight & Compact\r\n0.26x Magnification', 3, 'lens', 'Lens', 'l001', 'img1.png', '2018-09-20 07:40:28'),
(3, 'Tripod Grip HG-100TBR', 7000, 'The Canon Tripod Grip HG-100TBR offers easy grip for shooting in one hand, allowing more freedom of creative expression. Able to transform into a table-top tripod to hold you camera in place for self-recording or self-portraits. The accompanied detachable wireless remote control BR-E1 allows users to operate the camera\'s zoom, AF and shutter from a distance.\r\n\r\nComes with Bluetooth remote controller BR-E1\r\nSuitable for Selfie / Self-recording\r\nSupports vertical recording\r\nIncludes attachment with accessory shoe mount for external microphone', 8, 'acc', 'Accessories', 'a001', 'img1.png', '2018-09-20 08:33:57'),
(4, 'AF-S FISHEYE NIKKOR 8-15MM F/3.5-4.5E ED', 89950, 'Satisfy your creative needs and pursue new perspectives with the AF-S Fisheye NIKKOR 8-15mm f/3.5-4.5E ED, NIKKOR’s first ever fisheye zoom lens. With the ability to achieve a circular fisheye and full-frame fisheye effect, the AF-S Fisheye NIKKOR 8-15mm f/3.5-4.5E ED brings together incredible optical performance with an unobstructed angle of view, all with minimal distortion across the entire frame. See more of the world with the AF-S Fisheye NIKKOR 8-15mm f/3.5-4.5E ED.\r\n\r\nFocal length : 8 – 15 mm\r\nMinimum aperture : f/ 22 to 29\r\nFocal length scale : Graduated in millimeters (8, 10, 12, 14, 15) with DX mark at approximately 11 mm', 9, 'ulens', 'UsedLens', 'ul001', 'img8.png', '2018-09-20 08:35:44'),
(5, 'NIKON D3500', 53950, 'Offer Price: Rs. 44 950.00 (with D-ZOOM KIT: AF-P DX NIKKOR 18-55mm f/3.5-5.6G VR + AF-P DX NIKKOR 70-300mm f/4.5-6.3G ED VR)# Rs. 36 250.00*/Offer Price: Rs. 35 450.00 (with AF-P 18-55mm VR Kit Lens) Rs. 31 250.00*/Offer Price: Rs. 30 450.00 (Body only) *Price quoted is MRP inclusive of all taxes for one unit of the product. DX D-SLR Kit + Lens Combo Offer!! #Offer lens included in D-ZOOM kit retail pack, no additional lens offer applicable. D-ZOOM kit is available in black color only.\r\n\r\nEye Detection AF (One-Shot ? Servo AF – Live View)\r\n5 481 selectable focus positions (Live View)\r\nFace detection (Optical Viewfinder & Live View)\r\n4K Video (Uncropped/Cropped)', 10, 'camera', 'Camera', 'c002', 'img2.png', '2018-09-20 08:40:06'),
(6, 'Nikon D7500', 94950, 'Offer Price: Rs. 87 950.00 (with AF-S NIKKOR 18-140mm VR lens) Rs. 77 950.00*/Offer Price: Rs. 69 950.00 (Body only) *Price quoted is MRP inclusive of all taxes for one unit of the product. DX D-SLR Kit + Lens Combo Offer!!\r\n\r\n5 axis image stabilization during movie shooting\r\n0.39 type, 2.36 million-dot OLED EVF\r\nLow-light performance up to EV -6.5 + ISO 102 400\r\nApprox. 10.1MP full-frame CMOS sensor + 4K video', 12, 'camera', 'Camera', 'c003', 'img3.png', '2018-09-20 08:41:18'),
(7, 'Canon EOS R6', 215995, 'Conquer the darkness with the EOS R6. This full-frame mirrorless camera based on the revolutionary RF mount comes with powerful In-Body Image Stabilization up to 8 stops, ISO range up to 102 400 and low luminance AF sensitivity of up to EV -6.5 – all designed to give you optimum performance for low-light photography.\r\n\r\nApprox. 20.1MP full-frame CMOS sensor + 4K video\r\nUp to 8-stop In-Body Image Stabilizer X Optical Image Stabilizer\r\nLow-light performance up to EV -6.5 + ISO 102 400\r\nUp to 20 fps + Animal Detection AF', 10, 'camera', 'Camera', 'c004', 'img4.png', '2018-09-20 08:42:11'),
(8, 'Canon EOS M50 Kit ', 54995, 'A stylish mirrorless camera equipped with a high-resolution electronic viewfinder, large grip, and Vari-angle touchscreen LCD monitor on a compact body. Capable of continuous shooting at 10 fps (One-Shot AF), and has an expanded ISO of 51 200. Also supports 4K movie shooting1 and 4K time lapse movies. The 24.1megapixel APS-C size image sensor offers powerful depictive performance for beautiful, high-resolution photos and video. Comes with a Silent scene mode for shooting with no shutter sound.\r\n\r\n24.1megapixel APS-C CMOS Sensor (featuring an improved Dual Pixel CMOS AF)\r\nDIGIC 8 image processor, supporting ISO 100 – 25 600 (expandable to 51 200)\r\n0.39 type, 2.36 million-dot OLED EVF\r\nMovie shooting in 4K 23.98p / 25p\r\n', 20, 'camera', 'Camera', 'c005', 'img5.png', '2018-09-20 08:45:39'),
(9, 'Canon EOS 90D', 109495, 'Designed for those looking to hone their craft further, EOS 90D have 45 cross-type AF points in its 100% coverage optical viewfinder and can shoot up to 10fps even in tracking--capturing those deciding moments whether for sports or wildlife photography. The 5 481 selectable focus positions and Eye Detection AF provides more creative freedom in composition while using Live View, ensuring every image is tack sharp. EOS 90D can shoot 4K videos in uncropped or cropped mode, providing users with the ability to get the full angle-of-view or to reach further with their lens. Operability of EOS 90D is taken up a notch with its moisture and dust resistance, a new multi-controller and an enhanced shutter button that reduces fatigue during continous shooting.\r\n\r\n32.5megapixel APS-C CMOS Sensor + DIGIC 8\r\n4K Video (Uncropped/Cropped)\r\nDual pixel CMOS AF\r\nUp to 20 fps + Animal Detection AF', 20, 'camera', 'Camera', 'c006', 'img6.png', '2018-09-20 08:57:07'),
(10, 'Canon EOS 800D', 60495, 'Experience the fast focusing speed of EOS 800D, which also features an intuitive, easy-to-use UI that guides you to shoot aesthetically-appealing images. The DIGIC 7 image processor and 24.2megapixel APS-C sensor combine to produce images more accurate and detailed than ever, great for preserving memories of holidays, special occasions and time spent with loved ones.\r\n\r\nWith the Dual Pixel CMOS AF system, focus can be established in as fast as 0.03s during still photography in Live View mode-- together with design features such as the Vari-angle touch-screen LCD, allows more freedom when shooting, making it much easier to shoot almost anything from self-portraits to professional-looking movies in Full HD 50p / 60p.\r\n\r\n24.2megapixel\r\nDual pxel CMOS AF\r\n45 point All Cross-type AF\r\nWi-Fi / NFC and Bluetooth low energy technology supported', 5, 'camera', 'Camera', 'c007', 'img7.png', '2018-09-20 08:58:38'),
(12, 'Nikon D5600', 66750, 'Bring your creativity to life with the new D5600. It features 24.2 effective megapixels, an EXPEED 4 image-processing engine, and an ISO range of 100-25600 that captures beautiful and vibrant imagery, Full HD videos and time-lapse movies even in low light situations. Inspiration also comes easy when you discover new perspectives with the vari-angle LCD monitor and intuitive touch interface. With Bluetooth® and the Nikon SnapBridge app*1 for automatic transfer of images to your compatible smart devices*2, the D5600 is perfect for the connected world.', 10, 'camera', 'Camera', 'c008', 'img8.png', '2018-09-20 09:02:04'),
(13, 'Speedlite 470EX-AI', 28995, 'The world\'s first AI. (Auto Intelligent) Bounce Flash*, the 470EX-AI is capable of automatically selecting the optimum flash bounce angle in AI. Bounce Full Auto Mode whereas the AI. Bounce Semi Auto mode automatically retain a user-defined bounce angle whenever the camera changes orientation. The large LCD screen and selection dial enables easy viewing and adjustment. With a high degree of lighting, 470EX-AI is capable of covering a wide range of subjects and distances.\r\n\r\nGuide Number: 47\r\nAutomatic Flash Distribution with AI. (Auto Intelligent) Bounce Technology\r\nSupports wireless communication via optical transmission for multiple flash photography\r\n', 10, 'acc', 'Accessories', 'a002', 'img2.png', '2018-09-21 10:39:32'),
(14, 'AF-P DX NIKKOR 10-20MM F/4.5-5.6G VR', 20950, 'Expand your horizons with the DX-format ultra-wide-angle AF-P DX NIKKOR 10-20mm f/4.5-5.6G VR. Covering a focal length range of 10-20mm*1, the AF-P DX NIKKOR 10-20mm f/4.5-5.6G VR will surprise and delight you with its ability to capture sweeping landscapes and stunning architecture. Created with a compact and portable frame, this lens comes with a suite of innovative NIKKOR technologies, such as the Vibration Reduction system and a quieter autofocus drive for an enhanced performance. Experience true optical brilliance shot after shot with the light and manoeuvrable AF-P DX NIKKOR 10-20mm f/4.5-5.6G VR.\r\n\r\nFocal length : 10 – 20mm/li>\r\nMinimum aperture : f/ 22 to 29 The minimum aperture displayed may vary depending on the size of the exposure increment selected with the camera.\r\nFocal length scale : Graduated in millimeters (10, 12, 14, 16, 20)\r\n', 20, 'ulens', 'UsedLens', 'ul002', 'img10.png', '2018-10-01 03:47:08'),
(15, 'AF-S NIKKOR 500MM F/5.6E PF ED VR', 200950, 'Take your super-telephoto shooting experience to the next level with the high-performance AF-S NIKKOR 500mm f/5.6E PF ED VR, that is primed to deliver superior optical precision. Whether you’re into sports or wildlife photography, this remarkably compact and lightweight FX-format lens will deliver high-level precision and accuracy by incorporating the latest in NIKKOR technology, including Phase Fresnel lens design, Extra-low Dispersion (ED) glass elements, and Nano Crystal Coat. For the ultimate agility, the AF-S NIKKOR 500mm f/5.6E PF ED VR also features an electromagnetic aperture mechanism that allows for stable exposure control, and a fluorine coat that effectively repels dust, water, grease and dirt as well as an improved effective Vibration Reduction (VR) with Sport Mode. Superior mobile handheld shooting is now in the palm of your hands.\r\n\r\nMinimum focus distance : 3.0 m ( 9.8 ft) from focal plane\r\nDiaphragm : Automatic electronic aperture control\r\nFocusing : Manual, Manual/Auto, Auto/Manual Nikon Internal Focusing (IF) System with autofocus controlled by Silent Wave Motor and separate focus ring for manual focus', 20, 'ulens', 'UsedLens', 'ul003', 'img12.png', '2018-10-01 03:48:09'),
(16, 'AF-P NIKKOR 70-300MM F/4.5-5.6E ED VR', 20450, 'Introducing the AF-P NIKKOR 70-300mm f/4.5-5.6E ED VR that is set to broaden the reach of your telephoto abilities. With a focal length range of 70 to 300 mm, this new FX-format compatible telephoto zoom lens is perfect for when you need to get up close with the action on the field or other distant subjects. It also boasts the agility to match its superior optical performance, so you can confidently capture fast-paced movement every time. Swiftly record crystal-clear images by making full use of its upgraded features such as a quiet, high-speed and highly accurate autofocus (AF) drive; effective Vibration Reduction (VR) function that delivers an effect equivalent to a shutter speed 4.5 stops faster1; and chromatic aberration that is effectively corrected with an Extra-Low Dispersion (ED) glass element. Bring your ambitions further with the revolutionary AF-P NIKKOR 70-300mm f/4.5-5.6E ED VR that effortlessly expands your photography range.\r\n\r\nMinimum aperture : f/ 32 to 40\r\nMaximum aperture : f/ 4.5 to 5.6\r\nFormat : FX/35mm\r\n', 15, 'ulens', 'UsedLens', 'ul004', 'img17.png', '2018-10-01 03:49:08'),
(17, 'Canon RF100-400mm f/5.6-8 IS USM', 58995, 'This super-telephoto zoom lens for the RF mount delivers outstanding image quality, with a long reach of 400mm in a small and light design. Image stabilisation of up to 6 shutter stops with compatible cameras gives you more freedom in your photography.\r\n\r\nImage Stabilisation of up to 6 stops\r\n0.41x Magnification\r\nCompatible with Extender RF1.4x & RF2x -- reach up to 800mm', 10, 'lens', 'Lens', 'l002', 'img2.png', '2018-10-01 03:51:52'),
(18, 'Canon RF14-35mm f/4L IS USM', 58995, 'Apart from being capable of ultra-wide at 14mm, RF14-35mm f/4L IS USM can achieve up to 0.38x magnification. The sleek and compact RF14-35mm f/4L IS USM packs up to 7 shutter speed stops of image stabilisation* for that amazing low-light capability. *when paired with compatible cameras such as EOS R5 and EOS R6\r\n\r\nUltra-wide focal length of 14mm\r\n0.38x Magnification\r\nUp to 7 stops image stabilisation', 20, 'lens', 'Lens', 'l003', 'img4.png', '2018-10-01 03:52:43'),
(19, 'Canon EF70-200mm f/4L USM', 50995, 'With a low weight of 705g, this light and compact telephoto zoom lens is easy to carry around. It corrects for secondary spectrum with its one fluorite lens element and two UD lens elements, offering excellent imaging performance throughout the range of the zoom. With a closest focusing distance of 1.2m, close-up photography at a magnification of 0.21x is possible. And if used along with the EF17-40m f/4L USM, you will be able to enjoy photography with a much higher efficiency than having to carry a dozen lenses around.\r\n\r\nFilter size: 67mm\r\nMaximum aperture: f/4\r\nWith ring USM motor', 20, 'lens', 'Lens', 'l004', 'img5.png', '2018-10-01 03:53:37'),
(20, 'Multi-Function Shoe Adapter AD-E1', 5995, 'The AD-E1 is designed to allow existing Speedlites that have dust- and drip-resistance features to be used with cameras that have the new Multi-Function Shoe. Sturdy design build for the attachment of large accessories.\r\nRetains Compatibility with Existing Accessories\r\nDust & Drip-resistance Design\r\nSturdy Build', 23, 'acc', 'Accessories', 'a003', 'img4.png', '2018-10-01 03:56:41'),
(21, 'Battery Charger LC-E17E', 2770, 'A dedicated battery charger for LP-E17 with an input voltage of 100V AC – 240V AC.\r\n\r\nFor use with the EOS 760D, EOS 750D\r\nAccessories subject to availability.', 12, 'acc', 'Accessories', 'a004', 'img3.png', '2018-10-01 03:57:24');

-- --------------------------------------------------------

--
-- Table structure for table `product_level`
--

CREATE TABLE `product_level` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `canon` varchar(10) NOT NULL DEFAULT 'no',
  `nikon` varchar(10) NOT NULL DEFAULT 'no',
  `dslr` varchar(10) NOT NULL DEFAULT 'no',
  `design` varchar(10) NOT NULL DEFAULT 'no',
  `normal` varchar(10) NOT NULL DEFAULT 'no',
  `telephoto` varchar(10) NOT NULL DEFAULT 'no',
  `hook` varchar(10) NOT NULL DEFAULT 'no',
  `color` varchar(10) NOT NULL DEFAULT 'no',
  `stand` varchar(10) NOT NULL DEFAULT 'no',
  `adapter` varchar(10) NOT NULL DEFAULT 'no',
  `speedlite` varchar(10) NOT NULL DEFAULT 'no'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_level`
--

INSERT INTO `product_level` (`id`, `product_id`, `canon`, `nikon`, `dslr`, `design`, `normal`, `telephoto`, `hook`, `color`, `stand`, `adapter`, `speedlite`) VALUES
(1, 1, 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(2, 2, 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(3, 3, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'yes'),
(4, 4, 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no'),
(5, 5, 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(6, 6, 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(7, 7, 'yes', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(8, 8, 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(9, 9, 'yes', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(10, 10, 'yes', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(14, 14, 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no'),
(12, 12, 'yes', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(13, 13, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'yes'),
(15, 15, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 'no', 'no'),
(16, 16, 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no'),
(17, 17, 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(18, 18, 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(19, 19, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(20, 20, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'yes', 'no'),
(21, 21, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'yes', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `product_view`
--

CREATE TABLE `product_view` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_view`
--

INSERT INTO `product_view` (`id`, `user_id`, `product_id`, `date`) VALUES
(1, 9, 9, '2018-09-22 02:19:30'),
(2, 9, 7, '2018-09-27 02:47:43'),
(3, 9, 12, '2018-09-22 03:20:59'),
(4, 9, 10, '2018-09-29 03:07:11'),
(5, 9, 5, '2018-09-22 03:19:19'),
(6, 9, 8, '2018-09-21 15:57:50'),
(7, 9, 6, '2018-09-22 02:12:54'),
(8, 9, 1, '2018-09-22 03:03:36'),
(9, 17, 8, '2021-10-15 12:05:02'),
(10, 17, 9, '2021-10-16 04:28:17'),
(11, 17, 7, '2021-10-15 13:00:44'),
(12, 17, 12, '2021-10-16 02:12:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `reg_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `online` varchar(1) NOT NULL DEFAULT '0',
  `activation` varchar(3) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `mobile`, `reg_time`, `online`, `activation`) VALUES
(16, 'ayush', 'ayushdravid@gmail.com', 'Ayush', '$5$rounds=535000$vqyA0XVQ1.2ZT7WE$.xdjL83Kzf1LcEZKj/cQytNiBK49c65xgzut2crdb3C', '32145678999', '2021-10-14 09:07:04', '1', 'yes'),
(17, 'bharath', 'bharath1@gmail.com', 'bharath1@gmail.com', '$5$rounds=535000$WiuXADtbcEqSgdFC$1ciKVO2gF3GMR4OiMwspElTvI2iH7.6P9xQ5FjA9tq0', '+919876543210', '2021-10-15 07:06:24', '1', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_level`
--
ALTER TABLE `product_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_view`
--
ALTER TABLE `product_view`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_level`
--
ALTER TABLE `product_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_view`
--
ALTER TABLE `product_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
