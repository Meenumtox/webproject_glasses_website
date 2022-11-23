-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2022 at 02:53 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proj_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cus_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cus_id`, `username`, `fname`, `lname`, `email`, `password`, `address`, `phone`) VALUES
(3, 'Bank', 'Suphachai', 'Suwannasing', 's6304062616269@email.kmutnb.ac.th', '1111', '34/44 Ladprakao 68 Anusaowaree Bangkhen', '0871069669'),
(4, 'NasaXD', 'pakawit', 'chanchon', 'Nasaxd@gmail.com', '1111', '111/212 Carlifonia U.S.A', '0981234567'),
(6, 'AAAA', 'ดี', 'สวยงาม', 'qqgot@email.com', '12345', 'กรุงเทพ', '0800000000'),
(7, 'non', 'Anapat', 'Munkarnna', 'anapat.mun@gmail.com', '1234', '    ใจ        ', '0841703946');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PRODUCT_ID` int(5) NOT NULL,
  `BRAND` char(20) NOT NULL,
  `PRODUCT_NAME` char(15) NOT NULL,
  `PRODUCT_PRICE` float NOT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(100) NOT NULL,
  `PRODUCT_SELL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_ID`, `BRAND`, `PRODUCT_NAME`, `PRODUCT_PRICE`, `description`, `photo`, `PRODUCT_SELL`) VALUES
(1, 'Ophtus', 'Nighthawk', 3690, 'CUTTING-EDGE EYEWEAR FOR HARDCORE, This groundbreaking hybird of form and function is designed specifically for gamers who seek to enhance their gaming performance. The almost weightless frame and 5-layer coating lens allow you to ceaselessly conquer your even most unimaginable missions. ', 'product-images/nighthawk.png', 0),
(2, 'Ophtus', 'Alpha', 2290, 'THE BEGINNING OF A CHANGE, A tenet of adaptability in design creates epic evolution.\nIts well-developed blueprint allows Ophtus Alpha to transform Itself in countless possible ways. ', 'product-images/Alpha.png', 0),
(3, 'Ophtus', 'Hover', 1990, 'วัสดุกรอบแว่น STAINLESS STEEL, น้ำหนักไม่รวมเลนส์ 15 GRAMS, การใช้งานกับหูฟัง GOOD, ข้อต่อ SCREW ', 'product-images/hover.png', 0),
(4, 'Ophtus', 'Zero', 2290, 'A BASIC GAMING NECESSITY, Unparalleled design, ultra-light material, and RetinaX Amber Lens technology makes Ophtus Zero a powerful optical shield and augmentation for all gamers. Experiencing the gaming world with exceptional comfort and enhancement has now been brought to reality.', 'product-images/zero.png', 0),
(5, 'Ophtus', 'Spitfire', 3990, 'วัสดุกรอบแว่น EXALTED STAINLESS STEEL, น้ำหนักไม่รวมเลนส์ 11 GRAMS, การใช้งานกับหูฟัง BEST, ข้อต่อ SCREWLESS ', 'product-images/spitfire.png', 0),
(6, 'Ophtus', 'Phantom', 3990, 'วัสดุกรอบแว่น EXALTED STAINLESS STEEL, น้ำหนักไม่รวมเลนส์ 9 GRAMS, การใช้งานกับหูฟัง BEST, ข้อต่อ SCREWLESS', 'product-images/phantom.png', 0),
(7, 'Ophtus', 'Falcon', 3990, 'วัสดุกรอบแว่น EXALTED STAINLESS STEEL, น้ำหนักไม่รวมเลนส์ 9 GRAMS, การใช้งานกับหูฟัง BEST, อต่อ SCREWLESS', 'product-images/falcon.png', 0),
(8, 'Ophtus', 'Scout', 3990, ' วัสดุกรอบแว่น EXALTED STAINLESS STEEL, น้ำหนักไม่รวมเลนส์ 9 GRAMS, การใช้งานกับหูฟัง BEST, ข้อต่อ SCREWLESS', 'product-images/scout.png', 0),
(9, 'Ophtus', 'Raven', 2290, 'วัสดุกรอบแว่น NOVA ULTEM, น้ำหนักไม่รวมเลนส์ 9 GRAMS, การใช้งานกับหูฟัง BEST, ข้อต่อ SCREW', 'product-images/raven.png', 0),
(10, 'Ophtus', 'Limitless', 1990, 'วัสดุกรอบแว่น STAINLESS STEEL, น้ำหนักไม่รวมเลนส์ 12 GRAMS, การใช้งานกับหูฟัง GOOD, ข้อต่อ SCREW', 'product-images/limitless.png', 0),
(11, 'Ophtus', 'Classic', 1790, 'วัสดุกรอบแว่น NOVA ULTEM,  น้ำหนักไม่รวมเลนส์ 10 GRAMS,  การใช้งานกับหูฟัง GOOD, ข้อต่อ SCREW', 'product-images/classic.png', 0),
(12, 'Ophtus', 'Hex', 1990, 'วัสดุกรอบแว่น STAINLESS STEEL, น้ำหนักไม่รวมเลนส์ 8 GRAMS, การใช้งานกับหูฟัง GOOD, ข้อต่อ SCREW  ', 'product-images/hex.png', 0),
(13, 'Ophtus', 'Infinite', 1790, 'วัสดุกรอบแว่น NOVA ULTEM, น้ำหนักไม่รวมเลนส์ 10 GRAMS, การใช้งานกับหูฟัง GOOD, ข้อต่อ SCREW', 'product-images/infinite.png', 0),
(14, 'Ophtus', 'Fuse', 2490, 'วัสดุกรอบแว่น ACETATE & STAINLESS STEEL, น้ำหนักไม่รวมเลนส์ 23 GRAMS, การใช้งานกับหูฟัง GOOD, ข้อต่อ SCREW', 'product-images/fuse.png', 0),
(15, 'Ophtus', 'Kirov', 3990, 'วัสดุกรอบแว่น EXALTED STAINLESS STEEL, น้ำหนักไม่รวมเลนส์ 9 GRAMS, การใช้งานกับหูฟัง BEST, ข้อต่อ SCREWLESS', 'product-images/Kirov.png', 0),
(16, 'Converse', 'SCO145', 1500, 'แว่นกันแดด CONVERSE มีดีไซน์สวยงามทันสมัยและโดดเด่นไม่เหมือนใคร, ตัวกรอบผลิตโดยใช้วัสดุคุณภาพสูง กระชับแนบกับรูปหน้าได้พอดี และทนทานต่อทุกสภาวะแวดล้อม, ตัวเลนส์มีประสิทธิภาพในการปกป้องดวงตาจากรังสี UV ช่วยให้คุณถนอมดวงตาของคุณให้ปลอดภัยจากแสงแดด', 'product-images/sco145.png', 0),
(17, 'Converse', 'SCO253', 1500, 'แว่นกันแดด CONVERSE มีดีไซน์สวยงามทันสมัยและโดดเด่นไม่เหมือนใคร, ตัวกรอบผลิตโดยใช้วัสดุคุณภาพสูง กระชับแนบกับรูปหน้าได้พอดี และทนทานต่อทุกสภาวะแวดล้อม, ตัวเลนส์มีประสิทธิภาพในการปกป้องดวงตาจากรังสี UV ช่วยให้คุณถนอมดวงตาของคุณให้ปลอดภัยจากแสงแดด', 'product-images/sco253.png', 0),
(18, 'Converse', 'SCO054', 1500, 'แว่นกันแดด CONVERSE มีดีไซน์สวยงามทันสมัยและโดดเด่นไม่เหมือนใคร, ตัวกรอบผลิตโดยใช้วัสดุคุณภาพสูง กระชับแนบกับรูปหน้าได้พอดี และทนทานต่อทุกสภาวะแวดล้อม, ตัวเลนส์มีประสิทธิภาพในการปกป้องดวงตาจากรังสี UV ช่วยให้คุณถนอมดวงตาของคุณให้ปลอดภัยจากแสงแดด', 'product-images/sco054.png', 0),
(19, 'Converse', 'VCO064', 1700, 'กรอบแว่นสายตา CONVERSE มีดีไซน์สวยงามทันสมัยและโดดเด่นไม่เหมือนใคร, ตัวกรอบแว่นเลือกสรรใช้วัสดุที่มีความแข็งแรง และทนทานต่อการใช้งาน, ตัวแป้นจมูกออกแบบได้อย่างกระชับรับกับจมูกไม่เลื่อนหรือหลุดง่าย', 'product-images/vco064.png', 0),
(20, 'Converse', 'SCO054_V2', 1550, 'แว่นกันแดด CONVERSE มีดีไซน์สวยงามทันสมัยและโดดเด่นไม่เหมือนใคร, ตัวกรอบผลิตโดยใช้วัสดุคุณภาพสูง กระชับแนบกับรูปหน้าได้พอดี และทนทานต่อทุกสภาวะแวดล้อม, ตัวเลนส์มีประสิทธิภาพในการปกป้องดวงตาจากรังสี UV ช่วยให้คุณถนอมดวงตาของคุณให้ปลอดภัยจากแสงแดด', 'product-images/sco054v2.png', 0),
(21, 'Converse', 'P001', 1600, 'กรอบแว่นสายตา CONVERSE มีดีไซน์สวยงามทันสมัยและโดดเด่นไม่เหมือนใคร, ตัวกรอบแว่นเลือกสรรใช้วัสดุที่มีความแข็งแรง และทนทานต่อการใช้งาน, ตัวแป้นจมูกออกแบบได้อย่างกระชับรับกับจมูกไม่เลื่อนหรือหลุดง่าย', 'product-images/p001.png', 0),
(22, 'Adidas', 'OR0008-H', 3400, 'แว่นกันแดดจาก ADIDAS ทรงรี ช่วยปกป้องสายตาจากแสงแดดได้อย่างดีพร้อมดีไซน์ที่โดดเด่นเหนือใคร แข็งแรง ทนทาน สวยหรู น้ำหนักเบา การันตีคุณภาพ', 'product-images/or0008-h.png', 0),
(23, 'Adidas', 'AOR5005-F067', 4114, 'กรอบแว่น ADIDAS ทรงเหลี่ยม สีแดง, เหมาะสำหรับคนรูปหน้ากลม, กรอบแว่นตาจาก ADIDAS ทรงเหลี่ยม ดีไซน์รูปทรงของแว่นตาโดดเด่นเหนือใคร แข็งแรง ทนทาน สวยหรู น้ำหนักเบา การันตีคุณภาพ', 'product-images/aor5005-f067.png', 0),
(24, 'Playboy', 'PB-8170S-C1B', 990, 'แว่นกันแดด PLAYBOY กรอบแว่นตาดีไซน์เรียบง่ายแต่มีสไตล์ สร้างภาพลักษณ์ที่ดีให้ผู้สวมใส่, ตัวกรอบแว่นเป็นโลหะคุณภาพดี มีความแข็งแรง และทนทานต่อการใช้งาน, ตัวแป้นจมูกออกแบบได้อย่างกระชับรับกับจมูกไม่เลื่อนหรือหลุดง่าย, ตัวเลนส์มีประสิทธิภาพในการปกป้องดวงตาจากรังสี UV ที่มีอันตราย ใส่สบายตา', 'product-images/pb-8170s-c1b.png', 0),
(25, 'Playboy', ' PB-35509-C4', 910, 'กรอบแว่นสายตา PLAYBOY กรอบแว่นตาที่ออกแบบมาทำให้คุณดูดีมีสไตล์ เพื่อให้คุณมีความมั่นใจและดูดีทุกวัน รูปทรงโดดเด่นโดนใจเหมาะกับทุกไลฟ์สไตล์การแต่งตัว, ตัวกรอบแว่นทำจากวัสดุคุณภาพดี มีความแข็งแรง น้ำหนักเบา และทนทานต่อการใช้งาน, ตัวแป้นจมูกออกแบบได้อย่างกระชับรับกับจมูกไม่เลื่อนหรือหลุดง่าย, สามารถปรับแต่งทรงได้', 'product-images/pb-35509-c4.png', 0),
(26, 'Playboy', 'PB-36155-C4', 1365, 'กรอบแว่นสายตา PLAYBOY เป็นผู้นำด้านงานดีไซน์ ออกแบบนำแฟชั่นอยู่เสมอ สามารถสวมใส่เข้าได้กับการแต่งตัวได้ทุกสไตล์, ตัวกรอบแว่นเลือกสรรใช้วัสดุที่มีความแข็งแรง และทนทานต่อการใช้งาน, ตัวแป้นจมูกออกแบบได้อย่างกระชับรับกับจมูกไม่เลื่อนหรือหลุดง่าย, สามารถปรับแต่งทรงได้', 'product-images/pb-36155-c4.png', 0),
(27, 'Playboy', 'PB-35511-C1', 910, 'กรอบแว่นสายตา PLAYBOY กรอบแว่นตาที่ออกแบบมาทำให้คุณดูดีมีสไตล์ เพื่อให้คุณมีความมั่นใจและดูดีทุกวัน รูปทรงโดดเด่นโดนใจเหมาะกับทุกไลฟ์สไตล์การแต่งตัว, ตัวกรอบแว่นทำจากวัสดุคุณภาพดี มีความแข็งแรง น้ำหนักเบา และทนทานต่อการใช้งาน, ตัวแป้นจมูกออกแบบได้อย่างกระชับรับกับจมูกไม่เลื่อนหรือหลุดง่าย, สามารถปรับแต่งทรงได้', 'product-images/pb-35511-c1.png', 0),
(28, 'Playboy', 'PB-37589-C2', 2380, 'กรอบแว่นสายตา PLAYBOY กรอบแว่นตาที่ออกแบบมาทำให้คุณดูดีมีสไตล์ เพื่อให้คุณมีความมั่นใจและดูดีทุกวัน รูปทรงโดดเด่นโดนใจเหมาะกับทุกไลฟ์สไตล์การแต่งตัว, ตัวกรอบแว่นทำจากวัสดุคุณภาพดี มีความแข็งแรง น้ำหนักเบา และทนทานต่อการใช้งาน, ตัวแป้นจมูกออกแบบได้อย่างกระชับรับกับจมูกไม่เลื่อนหรือหลุดง่าย, สามารถปรับแต่งทรงได้', 'product-images/pb-37589-c2.png', 0),
(29, 'Playboy', 'PB-35517-C1', 2380, 'กรอบแว่นตา PLAYBOY กรอบแว่นตาที่ออกแบบมาทำให้คุณดูดีมีสไตล์ เพื่อให้คุณมีความมั่นใจและดูดีทุกวัน รูปทรงโดดเด่นโดนใจเหมาะกับทุกไลฟ์สไตล์การแต่งตัว, ตัวกรอบแว่นเลือกสรรใช้วัสดุที่มีความแข็งแรง และทนทานต่อการใช้งาน, ตัวแป้นจมูกออกแบบได้อย่างกระชับรับกับจมูกไม่เลื่อนหรือหลุดง่าย', 'product-images/pb-35517-c1.png', 0),
(30, 'PUMA', 'PE0042S', 6800, 'แว่นตากันแดด PUMA ดีไซน์ออกแบบสวยคลาสสิค โดดเด่นและมีสไตล์, ตัวกรอบเลือกสรรใช้วัสดุที่มีความแข็งแรง และทนทานต่อการใช้งาน, ตัวเลนส์มีประสิทธิภาพในการปกป้องดวงตาจากรังสี UV ที่มีอันตราย ใส่สบายตา', 'product-images/pe0042s.png', 0),
(31, 'PUMA', 'PE0122S', 7500, 'แว่นกันแดด PUMA เป็นการผสมผสานเทคโนโลยีและสีซึ่งทำให้ผลิตภัณฑ์มีความโดดเด่นและใช้งานได้สำหรับความต้องการ, ตัวกรอบเลือกสรรใช้วัสดุที่มีความแข็งแรง ทนทานดีไซด์ทันสมัย, ตัวเลนส์มีประสิทธิภาพในการปกป้องดวงตาจากรังสี UV ที่มีอันตราย ใส่สบายตา', 'product-images/pe0122s.png', 0),
(32, 'PUMA', 'PE0129O', 7500, 'แว่นสายตา PUMA แว่นตาที่ออกแบบมาทำให้คุณดูดีมีสไตล์ เพื่อให้คุณมีความมั่นใจและดูดีทุกวัน รูปทรงโดดเด่นโดนใจเหมาะกับทุกไลฟ์สไตล์การแต่งตัว, ตัวกรอบแว่นทำจากวัสดุคุณภาพดี มีความแข็งแรง น้ำหนักเบา และทนทานต่อการใช้งาน, ตัวแป้นจมูกออกแบบได้อย่างกระชับรับกับจมูกไม่เลื่อนหรือหลุดง่าย', 'product-images/pe0129o.png', 0),
(33, 'PUMA', 'PE0147O', 7800, 'แว่นสายตา PUMA แว่นตาที่ดีไซน์สวย ทันสมัย\nตัวกรอบแว่นทำจากวัสดุคุณภาพดี มีความแข็งแรง น้ำหนักเบา และทนทานต่อการใช้งาน, ตัวแป้นจมูกออกแบบได้อย่างกระชับรับกับจมูกไม่เลื่อนหรือหลุดง่าย, สามารถปรับแต่งทรงได้', 'product-images/pe0147o.png', 0),
(34, 'Coach', 'HC5143BD', 9800, 'กรอบแว่นสายตา COACH ดีไซน์เรียบแต่หรูดูเก๋ มีความเป็นเอกลักษณ์ในแบบของ COACH, ตัวกรอบแว่นทำจากวัสดุคุณภาพดี มีความแข็งแรง น้ำหนักเบา และทนทานต่อการใช้งาน, ตัวแป้นจมูกออกแบบได้อย่างกระชับรับกับจมูกไม่เลื่อนหรือหลุดง่าย, สามารถปรับแต่งทรงได้', 'product-images/hc5143bd.png', 0),
(35, 'Coach', 'HC6196U', 9800, 'กรอบแว่นสายตา COACH ดีไซน์เรียบแต่หรูดูเก๋ มีความเป็นเอกลักษณ์ในแบบของ COACH, ตัวกรอบแว่นทำจากวัสดุคุณภาพดี มีความแข็งแรง น้ำหนักเบา และทนทานต่อการใช้งาน, ตัวแป้นจมูกออกแบบได้อย่างกระชับรับกับจมูกไม่เลื่อนหรือหลุดง่าย, สามารถปรับแต่งทรงได้', 'product-images/hc6196u.png', 0),
(36, 'Coach', 'HC5142BD', 9800, 'กรอบแว่นสายตา COACH ดีไซน์เรียบแต่หรูดูเก๋ มีความเป็นเอกลักษณ์ในแบบของ COACH, ตัวกรอบแว่นทำจากวัสดุคุณภาพดี มีความแข็งแรง น้ำหนักเบา และทนทานต่อการใช้งาน, ตัวแป้นจมูกออกแบบได้อย่างกระชับรับกับจมูกไม่เลื่อนหรือหลุดง่าย, สามารถปรับแต่งทรงได้', 'product-images/hc5142bd.png', 0),
(37, 'Coach', 'HC6132', 3430, 'กรอบแว่นสายตา COACH ดีไซน์เรียบแต่หรูดูเก๋ มีความเป็นเอกลักษณ์ในแบบของ COACH, ตัวกรอบแว่นทำจากวัสดุคุณภาพดี มีความแข็งแรง น้ำหนักเบา และทนทานต่อการใช้งาน, ตัวแป้นจมูกออกแบบได้อย่างกระชับรับกับจมูกไม่เลื่อนหรือหลุดง่าย, สามารถปรับแต่งทรงได้', 'product-images/hc6132.png', 0),
(38, 'Coach', 'HC6186F', 5000, 'กรอบแว่นสายตา COACH ดีไซน์เรียบแต่หรูดูเก๋ มีความเป็นเอกลักษณ์ในแบบของ COACH, ตัวกรอบแว่นทำจากวัสดุคุณภาพดี มีความแข็งแรง น้ำหนักเบา และทนทานต่อการใช้งาน, ตัวแป้นจมูกออกแบบได้อย่างกระชับรับกับจมูกไม่เลื่อนหรือหลุดง่าย, สามารถปรับแต่งทรงได้', 'product-images/hc6186f.png', 0),
(39, 'Coach', 'HC6199', 3430, 'กรอบแว่นสายตา COACH ดีไซน์เรียบแต่หรูดูเก๋ มีความเป็นเอกลักษณ์ในแบบของ COACH, ตัวกรอบแว่นทำจากวัสดุคุณภาพดี มีความแข็งแรง น้ำหนักเบา และทนทานต่อการใช้งาน, ตัวแป้นจมูกออกแบบได้อย่างกระชับรับกับจมูกไม่เลื่อนหรือหลุดง่าย, สามารถปรับแต่งทรงได้', 'product-images/hc6199.png', 0),
(40, 'Coach', 'HC6144', 3430, 'กรอบแว่นสายตา COACH ดีไซน์เรียบแต่หรูดูเก๋ มีความเป็นเอกลักษณ์ในแบบของ COACH, ตัวกรอบแว่นทำจากวัสดุคุณภาพดี มีความแข็งแรง น้ำหนักเบา และทนทานต่อการใช้งาน, ตัวแป้นจมูกออกแบบได้อย่างกระชับรับกับจมูกไม่เลื่อนหรือหลุดง่าย, สามารถปรับแต่งทรงได้', 'product-images/hc6144.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `t_id` int(5) NOT NULL,
  `orderlist` text DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `updated_at` text DEFAULT NULL,
  `cus_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`t_id`, `orderlist`, `amount`, `updated_at`, `cus_id`) VALUES
(7, '[{\"PRODUCT_NAME\":\"Nighthawk\",\"PRODUCT_ID\":\"1\",\"quantity\":2,\"PRODUCT_PRICE\":\"3690\",\"photo\":\"product-images/nighthawk.png\"},{\"PRODUCT_NAME\":\"Alpha\",\"PRODUCT_ID\":\"2\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"2290\",\"photo\":\"product-images/Alpha.png\"}]', 9670, '2022-11-21-12:35:51', 4),
(9, '[{\"PRODUCT_NAME\":\"Nighthawk\",\"PRODUCT_ID\":\"1\",\"quantity\":2,\"PRODUCT_PRICE\":\"3690\",\"photo\":\"product-images/nighthawk.png\"},{\"PRODUCT_NAME\":\"Alpha\",\"PRODUCT_ID\":\"2\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"2290\",\"photo\":\"product-images/Alpha.png\"}]', 9670, '2022-11-21-12:38:57', 4),
(16, '[{\"PRODUCT_NAME\":\"Hover\",\"PRODUCT_ID\":\"3\",\"quantity\":\"100\",\"PRODUCT_PRICE\":\"1990\",\"photo\":\"product-images/hover.png\"},{\"PRODUCT_NAME\":\"Zero\",\"PRODUCT_ID\":\"4\",\"quantity\":\"100\",\"PRODUCT_PRICE\":\"2290\",\"photo\":\"product-images/zero.png\"}]', 428000, '2022-11-21-12:53:00', 3),
(18, '[{\"PRODUCT_NAME\":\"Hover\",\"PRODUCT_ID\":\"3\",\"quantity\":\"100\",\"PRODUCT_PRICE\":\"1990\",\"photo\":\"product-images/hover.png\"},{\"PRODUCT_NAME\":\"Zero\",\"PRODUCT_ID\":\"4\",\"quantity\":\"100\",\"PRODUCT_PRICE\":\"2290\",\"photo\":\"product-images/zero.png\"}]', 428000, '2022-11-21-12:55:40', 3),
(19, '{\"1\":{\"PRODUCT_NAME\":\"Nighthawk\",\"PRODUCT_ID\":\"1\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"3690\",\"photo\":\"product-images/nighthawk.png\"}}', 3690, '2022-11-21-01:21:16', 3),
(20, '{\"1\":{\"PRODUCT_NAME\":\"Nighthawk\",\"PRODUCT_ID\":\"1\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"3690\",\"photo\":\"product-images/nighthawk.png\"}}', 3690, '2022-11-21-01:21:20', 3),
(21, '{\"1\":{\"PRODUCT_NAME\":\"Nighthawk\",\"PRODUCT_ID\":\"1\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"3690\",\"photo\":\"product-images/nighthawk.png\"}}', 3690, '2022-11-21-01:22:24', 3),
(22, '{\"1\":{\"PRODUCT_NAME\":\"Nighthawk\",\"PRODUCT_ID\":\"1\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"3690\",\"photo\":\"product-images/nighthawk.png\"}}', 3690, '2022-11-21-01:23:18', 3),
(23, '{\"1\":{\"PRODUCT_NAME\":\"Nighthawk\",\"PRODUCT_ID\":\"1\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"3690\",\"photo\":\"product-images/nighthawk.png\"}}', 3690, '2022-11-21-01:24:08', 3),
(24, '{\"8\":{\"PRODUCT_NAME\":\"Scout\",\"PRODUCT_ID\":\"8\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"3990\",\"photo\":\"product-images/scout.png\"}}', 3990, '2022-11-21-01:26:13', 3),
(25, '{\"3\":{\"PRODUCT_NAME\":\"Hover\",\"PRODUCT_ID\":\"3\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"1990\",\"photo\":\"product-images/hover.png\"}}', 1990, '2022-11-21-01:27:26', 3),
(26, '{\"1\":{\"PRODUCT_NAME\":\"Nighthawk\",\"PRODUCT_ID\":\"1\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"3690\",\"photo\":\"product-images/nighthawk.png\"}}', 3690, '2022-11-21-01:28:13', 3),
(28, '{\"2\":{\"PRODUCT_NAME\":\"Alpha\",\"PRODUCT_ID\":\"2\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"2290\",\"photo\":\"product-images/Alpha.png\"}}', 2290, '2022-11-21-01:31:55', 3),
(29, '{\"2\":{\"PRODUCT_NAME\":\"Alpha\",\"PRODUCT_ID\":\"2\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"2290\",\"photo\":\"product-images/Alpha.png\"}}', 2290, '2022-11-21-01:35:12', 3),
(30, '{\"1\":{\"PRODUCT_NAME\":\"Nighthawk\",\"PRODUCT_ID\":\"1\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"3690\",\"photo\":\"product-images/nighthawk.png\"}}', 3690, '2022-11-21-01:39:51', 3),
(31, '{\"1\":{\"PRODUCT_NAME\":\"Nighthawk\",\"PRODUCT_ID\":\"1\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"3690\",\"photo\":\"product-images/nighthawk.png\"}}', 3690, '2022-11-21-01:41:25', 3),
(32, '{\"1\":{\"PRODUCT_NAME\":\"Nighthawk\",\"PRODUCT_ID\":\"1\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"3690\",\"photo\":\"product-images/nighthawk.png\"}}', 3690, '2022-11-21-01:42:43', 3),
(33, '{\"3\":{\"PRODUCT_NAME\":\"Hover\",\"PRODUCT_ID\":\"3\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"1990\",\"photo\":\"product-images/hover.png\"}}', 1990, '2022-11-21-01:43:18', 3),
(34, '{\"1\":{\"PRODUCT_NAME\":\"Nighthawk\",\"PRODUCT_ID\":\"1\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"3690\",\"photo\":\"product-images/nighthawk.png\"}}', 3690, '2022-11-21-03:51:39', 4),
(35, '{\"1\":{\"PRODUCT_NAME\":\"Nighthawk\",\"PRODUCT_ID\":\"1\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"3690\",\"photo\":\"product-images/nighthawk.png\"}}', 3690, '2022-11-21-03:57:15', 4),
(36, '[{\"PRODUCT_NAME\":\"Nighthawk\",\"PRODUCT_ID\":\"1\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"3690\",\"photo\":\"product-images/nighthawk.png\"},{\"PRODUCT_NAME\":\"Alpha\",\"PRODUCT_ID\":\"2\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"2290\",\"photo\":\"product-images/Alpha.png\"},{\"PRODUCT_NAME\":\"Hover\",\"PRODUCT_ID\":\"3\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"1990\",\"photo\":\"product-images/hover.png\"}]', 7970, '2022-11-22-09:02:57', 4),
(37, '[{\"PRODUCT_NAME\":\"Nighthawk\",\"PRODUCT_ID\":\"1\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"3690\",\"photo\":\"product-images/nighthawk.png\"},{\"PRODUCT_NAME\":\"Alpha\",\"PRODUCT_ID\":\"2\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"2290\",\"photo\":\"product-images/Alpha.png\"},{\"PRODUCT_NAME\":\"Hover\",\"PRODUCT_ID\":\"3\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"1990\",\"photo\":\"product-images/hover.png\"},{\"PRODUCT_NAME\":\"Zero\",\"PRODUCT_ID\":\"4\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"2290\",\"photo\":\"product-images/zero.png\"},{\"PRODUCT_NAME\":\"Spitfire\",\"PRODUCT_ID\":\"5\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"3990\",\"photo\":\"product-images/spitfire.png\"},{\"PRODUCT_NAME\":\"Phantom\",\"PRODUCT_ID\":\"6\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"3990\",\"photo\":\"product-images/phantom.png\"},{\"PRODUCT_NAME\":\"Falcon\",\"PRODUCT_ID\":\"7\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"3990\",\"photo\":\"product-images/falcon.png\"},{\"PRODUCT_NAME\":\"Scout\",\"PRODUCT_ID\":\"8\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"3990\",\"photo\":\"product-images/scout.png\"},{\"PRODUCT_NAME\":\"Raven\",\"PRODUCT_ID\":\"9\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"2290\",\"photo\":\"product-images/raven.png\"},{\"PRODUCT_NAME\":\"Limitless\",\"PRODUCT_ID\":\"10\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"1990\",\"photo\":\"product-images/limitless.png\"},{\"PRODUCT_NAME\":\"Classic\",\"PRODUCT_ID\":\"11\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"1790\",\"photo\":\"product-images/classic.png\"},{\"PRODUCT_NAME\":\"Hex\",\"PRODUCT_ID\":\"12\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"1990\",\"photo\":\"product-images/hex.png\"},{\"PRODUCT_NAME\":\"Infinite\",\"PRODUCT_ID\":\"13\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"1790\",\"photo\":\"product-images/infinite.png\"},{\"PRODUCT_NAME\":\"Fuse\",\"PRODUCT_ID\":\"14\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"2490\",\"photo\":\"product-images/fuse.png\"},{\"PRODUCT_NAME\":\"Kirov\",\"PRODUCT_ID\":\"15\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"3990\",\"photo\":\"product-images/Kirov.png\"}]', 42550, '2022-11-22-09:03:29', 4),
(38, '[{\"PRODUCT_NAME\":\"Zero\",\"PRODUCT_ID\":\"4\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"2290\",\"photo\":\"product-images/zero.png\"},{\"PRODUCT_NAME\":\"Nighthawk\",\"PRODUCT_ID\":\"1\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"3690\",\"photo\":\"product-images/nighthawk.png\"}]', 5980, '2022-11-22-09:41:02', 4),
(39, '[{\"PRODUCT_NAME\":\"Nighthawk\",\"PRODUCT_ID\":\"1\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"3690\",\"photo\":\"product-images/nighthawk.png\"},{\"PRODUCT_NAME\":\"Alpha\",\"PRODUCT_ID\":\"2\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"2290\",\"photo\":\"product-images/Alpha.png\"},{\"PRODUCT_NAME\":\"Hover\",\"PRODUCT_ID\":\"3\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"1990\",\"photo\":\"product-images/hover.png\"},{\"PRODUCT_NAME\":\"Zero\",\"PRODUCT_ID\":\"4\",\"quantity\":\"1\",\"PRODUCT_PRICE\":\"2290\",\"photo\":\"product-images/zero.png\"}]', 10260, '2022-11-22-10:48:00', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PRODUCT_ID`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `PRODUCT_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `t_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
