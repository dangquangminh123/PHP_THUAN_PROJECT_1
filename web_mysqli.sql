-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 27, 2023 lúc 10:30 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_mysqli`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'webmysqli', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `tomtat` mediumtext NOT NULL,
  `noidung` longtext NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id`, `tenbaiviet`, `tomtat`, `noidung`, `id_danhmuc`, `tinhtrang`, `hinhanh`) VALUES
(1, 'Tin về moon knight revoltech', '<p>Kaiyodo Revoltech Amazing Yamaguchi Moon Knight....</p>\r\n\r\n<p><img alt=\"\" src=\"https://pbs.twimg.com/media/FouvAzkWAAIfANH.jpg:large\" style=\"height:250px; width:250px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>From the pages of Marvel Comics, the dark vigilante Moon Kights joins the Amazing Yamaguchi line of figures! The Moon Knight action figure features premium articulation that is now a standard in this line. He is loaded with multiple interchangeable accessories to give you display options with maximum posability.</p>\r\n\r\n<p><img alt=\"\" src=\"https://sevenfiguarts.com.pe/wp-content/uploads/2023/05/Amazing-Yamaguchi-Moon-Knight-PERU-2.jpg\" style=\"height:300px; width:300px\" /></p>\r\n', 5, 1, '1685158154_newsmoonknight.jpg'),
(2, 'Tin tức SHFIGUARTS NO WAY HOME', '<p>Bandai Tamashii Nations has opened up pre-orders for an Spider-Man Integrated Suit S.H.Figuarts action figure based on the final battle in&nbsp;<a href=\"https://comicbook.com/marvel/news/spider-man-no-way-home-new-post-credit-scene-peter-parker-plot-hole/\" target=\"_blank\">Spider-Man: No Way Home</a>, and it is impressive. The figure stands at 5 3/4-inches tall, with a highly detailed sculpt and loads of accessories &ndash; including swappable heads and web effects. It also rounds out their collection of Spider-Man figures from the film (as portrayed by&nbsp;<a href=\"https://comicbook.com/category/tom-holland/\">Tom Holland</a>, Tobey Maguire, and Andrew Garfield), so fans can recreate the scene pictured above.&nbsp;</p>\r\n\r\n<p>The&nbsp;<a href=\"https://comicbook.com/category/spider-man-no-way-home/\">Spider-Man: No Way Home</a>&nbsp;Integrated Suit Final Battle Edition S.H.Figuarts action figure is available to&nbsp;<a href=\"https://www.entertainmentearth.com/product/blfbas64164?id=CO-408272913\" target=\"_blank\">pre-order here at Entertainment Earth</a>&nbsp;for $99.99 with free US shipping using the code FALLFREE22. Previously released S.H. Figuarts Spider-Man figures in the collection can also be&nbsp;<a href=\"https://www.entertainmentearth.com/s/shfiguarts/o?query1=S.H.Figuarts&amp;collection=shfiguarts&amp;landingpageid=5746&amp;selectedfacets=__Theme=Spider-Man&amp;sort=bestsellers&amp;id=CO-408272913\" target=\"_blank\">pre-ordered here at Entertainment Earth</a>. From the official description:</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0643/8672/8148/products/8d9bd035-e8bf-4662-b412-ebd2638b48a0.jpg?v=1665145766&amp;width=360\" style=\"height:325px; width:360px\" /></p>\r\n', '<p>Preview photos&nbsp;<a href=\"https://www.instagram.com/p/Cf_bCvRJCTa/?hl=en\">have been shared</a>&nbsp;by&nbsp;<strong>Tamashii Nations</strong>&nbsp;showing all three of the Spider-Men from&nbsp;<strong>Spider-Man: No Way Home</strong>. The figures are on display at the Tamashii Nations Tokyo Store in&nbsp;Akihabara, Japan. The S.H. Figuarts include the Tom Holland, Andrew Garfield, and Tony Maguire versions of Spider-Man. You can see the new photos after the jump.</p>\r\n\r\n<p><img alt=\"\" src=\"https://sportshub.cbsistatic.com/i/2022/10/05/99f62f27-c10b-42ba-88ed-18fb64714b9d/spider-man-no-way-home-integrated-suit-figuarts-copy.jpg?auto=webp&amp;width=1200&amp;height=900&amp;crop=1.333:1,smart\" style=\"height:300px; width:400px\" /></p>\r\n', 4, 1, '1685158555_nowayhome.jpg'),
(4, 'Tin tức mafex night wings', '<p>2023/05/10 &mdash; th&ocirc;ng tin dự &aacute;n 1/6 [kế hoạch 1/6] &mdash; dự &aacute;n 1/6<br />\r\nCửa h&agrave;ng ch&iacute;nh thức đồ chơi Medicom ở Shibuya, Tokyo<br />\r\nMẫu MAFEX &quot;kế hoạch 1/6&quot; dự kiến ​​về cửa h&agrave;ng v&agrave;o th&aacute;ng 5<br />\r\nCh&uacute;ng t&ocirc;i l&agrave; những người đầu ti&ecirc;n triển l&atilde;m.<br />\r\nCh&uacute;ng t&ocirc;i cũng đang nhận đặt trước tại cửa h&agrave;ng!!</p>\r\n\r\n<p><img alt=\"\" src=\"https://preview.redd.it/pgmw9pit6ad81.jpg?width=1080&amp;crop=smart&amp;auto=webp&amp;v=enabled&amp;p=e&amp;s=d94f3b59617eb3980c2a5ed3a1373cc7b4a1160a\" style=\"height:428px; width:300px\" /></p>\r\n', '<p>New Look at Mafex Nightwing</p>\r\n\r\n<p><img alt=\"\" src=\"https://preview.redd.it/new-look-at-mafex-nightwing-v0-zehr9x08z3d91.jpg?width=1080&amp;crop=smart&amp;auto=webp&amp;v=enabled&amp;p=e&amp;s=0872b2a96e80b73e27dfe0d3ad1ad9db0e3cb8bd\" style=\"height:315px; width:450px\" /></p>\r\n', 2, 1, '1685158830_nightwingnews.jpg'),
(5, 'Tin tức revoltech flash', '<p><strong>Kaiyodo</strong>&nbsp;has released a preview images showing off their upcoming&nbsp;<strong>DC Amazing Yamaguchi Revoltech Flash</strong>&nbsp;And&nbsp;<strong>Reverse Flash</strong>. Look for more details to come soon.</p>\r\n\r\n<p><img alt=\"\" src=\"https://pbs.twimg.com/media/FoxZ0juakAAl6Qh?format=jpg&amp;name=small\" style=\"height:188px; width:250px\" /></p>\r\n', '<p>New photos have been released by&nbsp;<strong>Kaiyodo</strong>&nbsp;for the upcoming&nbsp;<strong>DC Comics &ndash; The Flash and Reverse Flash Amazing Yamaguchi Revoltech Figures</strong>. The 6&Prime; scale figures are due for release in October. Pre-orders are expected to go live soon.&nbsp;<strong>The Flash</strong>&nbsp;includes five interchangeable faces, multiple interchangeable hands, a swap out tornado arm, and a large assortment of lightning effects.&nbsp;<strong>Reverse Flash</strong>&nbsp;includes four interchangeable face, multiple interchangeable hands, a staff, and multiple lightning effects pieces. Both figures will include display stands as well.</p>\r\n\r\n<p>The figures will be priced at 10,000 each (about $73 USD) in Japan. You can see the new photos below.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.toyark.com/wp-content/uploads/2023/03/z-Revoltech-DC-Flash-and-Reverse-Flash.jpg\" style=\"height:169px; width:300px\" /></p>\r\n', 5, 1, '1685159077_revoltechflash.jpg'),
(6, 'Tin tức green goblin', '<p><strong>Tamashii Nations</strong>&nbsp;has released images from one of their overseas events giving us our first look at their&nbsp;<strong>Spider-Man: No Way Home S.H. Figuarts Green Goblin</strong>&nbsp;figure which will include his Glider. When more details become available we will be sure to update you.</p>\r\n\r\n<p><img alt=\"\" src=\"https://static.wixstatic.com/media/adc447_8ba0f4e2abf14c44bf8df7f71b979525~mv2.jpg/v1/fill/w_1000,h_575,al_c,q_85,usm_0.66_1.00_0.01/adc447_8ba0f4e2abf14c44bf8df7f71b979525~mv2.jpg\" style=\"height:144px; width:250px\" /></p>\r\n', '<p>At the&nbsp;<strong>Tamashii Nations Store</strong>&nbsp;in Tokyo Akihabara, there is a new&nbsp;<strong>S.H.Figuarts 15th Anniversary Gallery</strong>. The gallery takes a look at the history of the S.H. Figuarts action figure line. But, they will also be revealing some upcoming figures as well. The&nbsp;<a href=\"https://www.instagram.com/p/CoL1aPHPPBq/?hl=en\">first reveal</a>&nbsp;is a&nbsp;<strong>S.H. Figuarts Green Goblin</strong>&nbsp;from&nbsp;<strong>Spider-Man: No Way Home</strong>. The figure will have metallic green armor, and will include the glider.</p>\r\n\r\n<p>Pricing, pre-order date, and release window were not revealed at this time. We&rsquo;ll update with more photos and details as they become available. For now, you can see the new images below.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.toyark.com/wp-content/uploads/2023/02/SH-Figuarts-Green-Goblin-2.jpg\" style=\"height:260px; width:260px\" /></p>\r\n', 4, 1, '1685173386_newsgreengoblin.jpg'),
(7, 'Tin tức STORMS mafex', '<p>PUBG MOBILE, một trong những tr&ograve; chơi di động phổ biến nhất tr&ecirc;n thế giới v&agrave;<br />\r\nSự kiện hợp t&aacute;c BE@RBRICK từ ng&agrave;y 14 th&aacute;ng 4 (thứ S&aacute;u) đến ng&agrave;y 15 th&aacute;ng 5 (thứ Ba) năm 2023<br />\r\nN&oacute; đang xảy ra trong c&ugrave;ng một tr&ograve; chơi.<br />\r\nĐể kỷ niệm sự hợp t&aacute;c, từ ng&agrave;y 20 th&aacute;ng 4 (thứ Năm) đến ng&agrave;y 3 th&aacute;ng 5 (thứ Tư), phi&ecirc;n bản giới hạn &quot;PUBG MOBILE&quot;<br />\r\n<img alt=\"\" src=\"http://medicomtoy.co.jp/WI/upimage/0024_220224_gajw02_h.jpg\" style=\"height:364px; width:250px\" /></p>\r\n', '<p><br />\r\n-Both the best form and outstanding movable area! The strongest action figure ever!<br />\r\n<br />\r\n--[STORM] from [X-MEN] is now available on MAFEX!<br />\r\n--Three types of head parts are included!<br />\r\n-Comes with a cloth cloak!<br />\r\n-Various actions can be reproduced by attaching effect parts!<br />\r\n--Movable figure stand included!</p>\r\n\r\n<p><img alt=\"\" src=\"http://medicomtoy.co.jp/WI/upimage/0025_220224_jpxbxq_h.jpg\" style=\"height:364px; width:250px\" /></p>\r\n', 2, 1, '1685173839_newsstorms.jpg'),
(8, 'Tin tức mafex cyborgs zack snyder', '<p>It&rsquo;s time to refresh our review of Ray Fisher&rsquo;s Cyborg from&nbsp;<a href=\"http://www.medicomtoy.co.jp/\">Medicom</a>&lsquo;s Mafex collection. To compliment your enjoyment of&nbsp;<strong><em>Zack Snyder&rsquo;s Justice League</em></strong>&nbsp;and embrace a little BorgLife! Enjoy!</p>\r\n\r\n<p>Cyborg is the latest member from the<a href=\"https://thefutureoftheforce.com/2021/03/18/review-zack-snyders-justice-league/\">&nbsp;<em>Justice League</em></a>&nbsp;to be released by MAFEX and it&rsquo;s a beauty!&nbsp;I think it&rsquo;s clear now that MAFEX is the superior manufacturer when it comes to six-inch scale Superheroes. Whether it&rsquo;s DC or Marvel (just look at the images of their Iron Spider and Black Panther from&nbsp;<em>Infinity War</em>, they just beat&nbsp;<strong>S.H. Figuarts</strong>&nbsp;on every single level). They are top-quality figures!</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.medicomtoy.tv/blog/wp-content/uploads/2023/05/3.jpg\" style=\"height:240px; width:260px\" /></p>\r\n', '<p>【Project 1/6】MAFEX samples to be released in June, fastest display!! Vol.1</p>\r\n\r\n<p>MAFEX samples, scheduled to arrive in late June, are being displayed at<br />\r\nthe official Medicom Toy store &ldquo;Project 1/6&rdquo; in Shibuya, Tokyo, ahead of anywhere else.<br />\r\nIt is available for reservation in stores!</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.medicomtoy.tv/blog/wp-content/uploads/2023/05/5.jpg\" style=\"height:203px; width:270px\" /></p>\r\n', 2, 1, '1685174054_cyborgsnews.jpg'),
(9, 'Tin tức magneto 179', '<p>Cửa h&agrave;ng ch&iacute;nh thức đồ chơi Medicom ở Shibuya, Tokyo<br />\r\nMẫu MAFEX &quot;kế hoạch 1/6&quot; dự kiến ​​về cửa h&agrave;ng v&agrave;o th&aacute;ng 5<br />\r\nCh&uacute;ng t&ocirc;i l&agrave; những người đầu ti&ecirc;n triển l&atilde;m.<br />\r\nCh&uacute;ng t&ocirc;i cũng đang nhận đặt chỗ tại cửa h&agrave;ng! !</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.medicomtoy.tv/blog/wp-content/uploads/2023/05/MAFEX-MAGNETO-ORIGINAL-COMIC-Ver.jpg\" style=\"height:203px; width:270px\" /></p>\r\n', '<p>MAFEX samples, scheduled to arrive in late May, are being displayed at<br />\r\nthe official Medicom Toy store &ldquo;Project 1/6&rdquo; in Shibuya, Tokyo, ahead of anywhere else.<br />\r\nIt is available for reservation in stores!</p>\r\n\r\n<p><strong>MAFEX MAGNETO (ORIGINAL COMIC Ver.)</strong><br />\r\nSuggested retail price : 9,680 Yen (tax included)</p>\r\n\r\n<p>Please take this opportunity to take a look.<br />\r\nWe look forward to your visit.</p>\r\n\r\n<p>Contact information／Project 1/6<br />\r\n1/F Mani Bld., 37-10 Udagawa-cho, Shibuya-ku, Tokyo 150-0042</p>\r\n\r\n<p><img alt=\"\" src=\"https://pbs.twimg.com/media/Fwa1GHhaUAERoJ-?format=jpg&amp;name=900x900\" style=\"height:346px; width:260px\" /></p>\r\n', 2, 1, '1685174616_magnetonews.jpg'),
(10, 'tin tức CYCLOPS 173', '<p>[SOLAMACHI của ng&agrave;y h&ocirc;m nay]<br />\r\n&quot;MAFEX CYCLOPS (Phi&ecirc;n bản ph&ugrave; hợp với biến thể truyện tranh)&quot; hiện đ&atilde; c&oacute;! Trong một thế giới tồn tại những dị nh&acirc;n c&oacute; khả năng đặc biệt, khả năng của Cyclops l&agrave; một tia laser si&ecirc;u n&oacute;ng ph&aacute;t ra từ mắt anh ta! Tuy nhi&ecirc;n, v&igrave; n&oacute; lu&ocirc;n được ph&aacute;t ra n&ecirc;n t&ocirc;i thường đeo k&iacute;nh r&acirc;m đặc biệt v&agrave; sống.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.ecommercedns.uk/files/6/227646/0/17317460/cyclops-2-web.jpg\" style=\"height:332px; width:280px\" /></p>\r\n', '<p>Cyclops in his Comic Variant Suit joins the other MAFEX &quot;X-Men&quot; action figures!&nbsp;</p>\r\n\r\n<p>He boasts a semi-metallic and familiar look for the fans while maintaining all of the poseability that you expect from Medicom.&nbsp;</p>\r\n\r\n<p>He comes with three interchangeable heads, wrists, and even an optic blast effect part for maximum action.&nbsp;</p>\r\n\r\n<p>Order him for your collection today!</p>\r\n\r\n<p>Suitability</p>\r\n\r\n<p>For ages 18+ years</p>\r\n\r\n<p>Warning Attention! Not suitable for children under 3 years &nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://pbs.twimg.com/media/E65OqP0WQAQ4E-9.jpg\" style=\"height:360px; width:270px\" /></p>\r\n', 2, 1, '1685174881_cyclops_173.jpg'),
(11, 'Tin tức mafex steels', '<p>Cửa h&agrave;ng ch&iacute;nh thức đồ chơi Medicom ở Shibuya, Tokyo<br />\r\nMẫu MAFEX &quot;kế hoạch 1/6&quot; dự kiến ​​về cửa h&agrave;ng v&agrave;o th&aacute;ng 5<br />\r\nCh&uacute;ng t&ocirc;i l&agrave; những người đầu ti&ecirc;n triển l&atilde;m.<br />\r\nCh&uacute;ng t&ocirc;i cũng đang nhận đặt chỗ tại cửa h&agrave;ng! !</p>\r\n\r\n<p><img alt=\"\" src=\"https://i.toynewsi.com/g/generated/ToyNew/Medicom/MAFEX/In.Hand/Steel/Steel.0__scaled_800.jpg\" style=\"height:318px; width:260px\" /></p>\r\n', '<p>Shown below via&nbsp;<strong><a href=\"https://www.instagram.com/p/Cstj86WO6z0/?igshid=MzRlODBiNWFlZA%3D%3D\">robdtoys</a></strong>&nbsp;is an in-hand look at the new&nbsp;<strong>The Return of Superman MAFEX Steel Figure</strong>&nbsp;from&nbsp;<strong>Medicom</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://pbs.twimg.com/media/FwVrU1KWwAMnpz7?format=jpg&amp;name=small\" style=\"height:216px; width:260px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://www.medicomtoy.tv/blog/wp-content/uploads/2023/05/STEEL6.jpeg\" style=\"height:319px; width:270px\" /></p>\r\n', 2, 1, '1685175066_STEEL3.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_date` varchar(50) NOT NULL,
  `cart_payment` varchar(11) NOT NULL,
  `cart_shipping` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `cart_date`, `cart_payment`, `cart_shipping`) VALUES
(39, 11, '1048', 1, '2022-02-06 11:53:02', 'tienmat', 2),
(40, 11, '6315', 1, '2022-02-06 11:53:14', 'chuyenkhoan', 2),
(41, 11, '4559', 1, '2022-02-06 11:53:35', 'paypal', 2),
(42, 11, '9554', 1, '2022-02-06 11:54:52', 'momo', 2),
(43, 11, '2844', 1, '2022-02-06 11:55:05', 'vnpay', 2),
(44, 11, '9487', 1, '2022-02-06 12:47:17', 'tienmat', 2),
(45, 11, '3066', 1, '2022-02-06 12:47:20', 'chuyenkhoan', 2),
(46, 11, '6962', 1, '2022-02-06 12:47:46', 'paypal', 2),
(47, 11, '6140', 1, '2022-02-06 12:48:05', 'vnpay', 2),
(48, 11, '3872', 1, '2022-02-06 12:50:35', 'momo', 2),
(49, 11, '1161', 1, '2022-02-16 16:48:43', 'momo', 2),
(50, 11, '1323', 1, '2022-02-18 14:08:51', 'vnpay', 2),
(51, 1, '9603', 1, '2023-05-25 23:27:48', 'vnpay', 1),
(52, 1, '4945', 1, '2023-05-25 23:28:41', 'vnpay', 1),
(53, 13, '2075', 1, '2023-05-25 23:35:34', 'vnpay', 4),
(54, 13, '3268', 1, '2023-05-25 23:40:04', 'vnpay', 4),
(56, 13, '4085', 1, '2023-05-25 23:43:06', 'tienmat', 4),
(57, 13, '4859', 1, '2023-05-25 23:50:01', 'tienmat', 4),
(58, 13, '9416', 1, '2023-05-26 14:15:33', 'paypal', 4),
(59, 13, '3699', 1, '2023-05-26 14:22:44', 'paypal', 4),
(60, 13, '1627', 1, '2023-05-26 14:27:08', 'paypal', 4),
(61, 13, '971', 1, '2023-05-26 17:10:45', 'momo', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(54, '1048', 12, 1),
(55, '6315', 12, 1),
(56, '4559', 12, 1),
(57, '9554', 12, 1),
(58, '2844', 12, 1),
(59, '9487', 12, 1),
(60, '3066', 12, 1),
(61, '6962', 12, 1),
(62, '6140', 12, 1),
(63, '3872', 12, 1),
(64, '1161', 7, 1),
(65, '1323', 8, 2),
(66, '1323', 6, 3),
(67, '1323', 11, 2),
(68, '9603', 12, 1),
(69, '4945', 12, 1),
(70, '2075', 12, 1),
(71, '2075', 11, 1),
(72, '3268', 12, 1),
(73, '3268', 11, 1),
(74, '9907', 12, 1),
(75, '9907', 11, 1),
(76, '4085', 12, 1),
(77, '4085', 11, 1),
(78, '4859', 12, 1),
(79, '4859', 11, 1),
(80, '9416', 11, 1),
(81, '3699', 11, 1),
(82, '1627', 11, 2),
(83, '971', 12, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(1, 'Hiếu Trương', 'truongngoctanhieu2018@gmail.com', 'Dương Quãng Hàm 12 ', '21232f297a57a5a743894a0e4a801fc3', '0932023992 '),
(8, 'Hiếu Trương', 'maxime80@example.net', 'Dương Quãng Hàm 12  giao hang', '25f9e794323b453885f5181f1b624d0b', '0932023992'),
(9, 'Hiếu Trương', 'truongngoctanhieu2018@gmail.com', 'Dương Quãng Hàm 12  giao hang', '25f9e794323b453885f5181f1b624d0b', '0932023992'),
(10, 'Hiếu Trương', 'truongngoctanhieu2018@gmail.com', 'Dương Quãng Hàm 12  giao hang', '25f9e794323b453885f5181f1b624d0b', '0932023992'),
(11, 'Hiếu Trương 123', 'truongngoctanhieu2018@gmail.com', 'Dương Quãng Hàm 12  giao hang', 'e10adc3949ba59abbe56e057f20f883e', '0932023992'),
(12, 'Hiếu Trương 123', 'truongngoctanhieu2018@gmail.com', 'Dương Quãng Hàm 12  giao hang', 'e10adc3949ba59abbe56e057f20f883e', '0932023992'),
(13, 'Đặng quang tâm', 'dangquangtamdn46@gmail.com', '93 thế lữ ', 'ee11cbb19052e40b07aac0ca060c23ee', '0482939320');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(1, 'REVOLTECH', 1),
(2, 'MEDICOMTOYS', 3),
(4, 'SHFIGUARTS', 4),
(5, 'Phụ kiện Hero', 5),
(6, 'Ốp lưng Hero', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmucbaiviet`
--

CREATE TABLE `tbl_danhmucbaiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tendanhmuc_baiviet` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmucbaiviet`
--

INSERT INTO `tbl_danhmucbaiviet` (`id_baiviet`, `tendanhmuc_baiviet`, `thutu`) VALUES
(2, 'tin tức medicomstoys', 2),
(4, 'tin tức S.H.FIGUARTS', 2),
(5, 'tin tức revoltech', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id` int(11) NOT NULL,
  `thongtinlienhe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id`, `thongtinlienhe`) VALUES
(1, '<ol>\r\n	<li>\r\n	<h3>Số điện thoại :<strong> </strong>0932023992 Anh hiếu</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Zalo : 0932023992 HieuTanTutorial</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Fb :<a href=\"http://facebook.com/hieutan94\"> facebook.com/hieutan94</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3>Instagram : <a href=\"http://instagram.com/hieutan94\">/hieutan94</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3>Youtube : <a href=\"https://www.youtube.com/channel/UCnfVQy051QFO-Ns8El1zL4w\" target=\"_blank\">youtube.com/HieuTutorialwithliveproject</a></h3>\r\n	</li>\r\n</ol>\r\n\r\n<h3><strong>Chuy&ecirc;n cung cấp c&aacute;c kh&oacute;a học online miễn ph&iacute; tr&ecirc;n youtube,nhằm gi&uacute;p cho c&aacute;c bạn hiểu 1 phần n&agrave;o đ&oacute; về lập tr&igrave;nh n&oacute;i chung v&agrave; lập tr&igrave;nh web n&oacute;i ri&ecirc;ng ,cảm ơn c&aacute;c bạn đ&atilde; ủng hộ v&agrave; donate momo cho m&igrave;nh. &lt;3 &lt;3 &lt;3 &lt;3 &lt;3&nbsp;😘 😗 😙 😚 😋 😛 😝 😜</strong>💁&zwj;♀️ 💁 💁&zwj;♂️ 🙅&zwj;♀️ 🙅 🙅&zwj;♂️ 🙆&zwj;♀️ 🙆</h3>\r\n\r\n<p><img alt=\"\" src=\"https://s3.amazonaws.com/websitebeaver/blog/php-pdo-vs-mysqli/main.jpg\" style=\"height:204px; width:400px\" /><img alt=\"Hình ảnh sinh hoạt công ty,hình ảnh đồ án khóa mấy,khoa nào\" src=\"https://i1.rgstatic.net/publication/333455314_PHP_MySQLI_PDO_x_MySQLi/links/5ceea072299bf1fb18492649/largepreview.png\" style=\"height:225px; width:400px\" /><img alt=\"\" src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8ipuq-Ye7bK36QKeYFtKsNRVhAt4DYyZtLyu3GzUizyCjNHaTrlwrmBesTZVKYzo8Tmw&amp;usqp=CAU\" style=\"height:363px; width:400px\" /></p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3>&nbsp;</h3>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_momo`
--

CREATE TABLE `tbl_momo` (
  `id_momo` int(11) NOT NULL,
  `partner_code` varchar(50) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `order_info` varchar(50) NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `trans_id` varchar(50) NOT NULL,
  `pay_type` varchar(50) NOT NULL,
  `code_cart` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_momo`
--

INSERT INTO `tbl_momo` (`id_momo`, `partner_code`, `order_id`, `amount`, `order_info`, `order_type`, `trans_id`, `pay_type`, `code_cart`) VALUES
(3, 'MOMOBKUN20180529', '1644123235', '250000', 'Thanh toán qua ATM', 'momo_wallet', '2642535948', 'napas', '9554'),
(4, 'MOMOBKUN20180529', '1644126570', '250000', 'Thanh toán qua ATM', 'momo_wallet', '2642536202', 'napas', '3872'),
(5, 'MOMOBKUN20180529', '1645004827', '350000', 'Thanh toán qua ATM', 'momo_wallet', '2644029861', 'napas', '1161'),
(6, 'MOMOBKUN20180529', '1685095546', '250000', 'Thanh toán qua ATM', 'momo_wallet', '3014969734', 'napas', '971');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_onepay`
--

CREATE TABLE `tbl_onepay` (
  `id_onepay` int(11) NOT NULL,
  `vpc_AccessCode` varchar(50) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `vpc_Amount` varchar(50) NOT NULL,
  `vpc_OrderInfo` varchar(50) NOT NULL,
  `vpc_Command` varchar(150) NOT NULL,
  `vpc_Locale` varchar(60) NOT NULL,
  `vpc_Version` int(11) NOT NULL,
  `vpc_Currency` varchar(30) NOT NULL,
  `code_cart` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(6, 'MAFEX NIGHTWING', '001', '1900000', 2, '1685155943_nightwing.jpg', '<p>-Chiều cao tổng thể khoảng 155mm<br />\r\n&quot;NIGHTWING&quot; xuất hiện từ &quot;BATMAN: HUSH&quot;!<br />\r\n- Đi k&egrave;m với 2 loại đầu!<br />\r\nĐược trang bị d&ugrave;i cui ở mặt sau<br />\r\n-C&aacute;c bộ phận cổ tay bao gồm<br />\r\n&quot;C&aacute;c h&agrave;nh động kh&aacute;c nhau c&oacute; thể được sao ch&eacute;p!&quot;<br />\r\n- Đi k&egrave;m với một ch&acirc;n đế c&oacute; thể di chuyển được!</p>\r\n\r\n<p><img alt=\"\" src=\"http://medicomtoy.co.jp/WI/upimage/0007_220124_m1x06s_h.jpg\" style=\"height:349px; width:240px\" /></p>\r\n', '<p>NIGHTWING phi&ecirc;n bản hush</p>\r\n\r\n<p><img alt=\"\" src=\"http://medicomtoy.co.jp/WI/upimage/0003_220124_k96scr_h.jpg\" style=\"height:240px; width:165px\" /></p>\r\n', 1, 2),
(7, 'SHF  Spider-Man [Integrated Suit]', '002', '1950000', 4, '1685155608_8150Ok9uFTL._AC_SL1500_.jpg', '<p>It&#39;s the Spider-Man [Integrated Suit] Final Battle Edition - as portrayed by Tom Holland! Featuring faithful sculpting, fine detail, and battle damage, it is the ultimate portrayal of this final form of the webslinger!</p>\r\n\r\n<p><img src=\"https://m.media-amazon.com/images/I/81E47eg+y5L._AC_SL1500_.jpg\" style=\"height:350px; width:250px\" /></p>\r\n', '<p>[Set Contents] Main Body, Six pairs of optional hands, Two optional heads, Optional eye parts, Eye changing tool, Unmasked part, Web (large), Web (long) x2, Web (small) x2, Box</p>\r\n\r\n<p><img alt=\"\" src=\"https://m.media-amazon.com/images/I/81LmqzV6q9L._AC_SL1500_.jpg\" style=\"height:367px; width:550px\" /></p>\r\n', 1, 4),
(8, 'SHF The Amazing Spider-Man', '003', '2190000', 3, '1685155450_81xJtvs9ffL._AC_SL1500_.jpg', '<p>Faithfully replicates his Spider-suit&#39;s fine detail, with translucent parts used for the eyes to bring the figure to life for dynamic action scenes</p>\r\n\r\n<p><img alt=\"\" src=\"https://m.media-amazon.com/images/I/81l+7Pdpl-L._AC_SY879_.jpg\" style=\"height:280px; width:200px\" /></p>\r\n', '<p>Re-create the drama of The Amazing Spider-Man2 on your desktop or display shelf!</p>\r\n\r\n<p>Set Contents] Main Body, Five pairs of optional hands, Web (Large), Web (Long) x2, Web (Small) x2</p>\r\n\r\n<p><img alt=\"\" src=\"https://m.media-amazon.com/images/I/81UGNrbwgTL._AC_SL1500_.jpg\" style=\"height:350px; width:250px\" /></p>\r\n', 1, 4),
(9, 'SHF neighborhood spider-man', '004', '2200000', 3, '1685155283_61l60LHdhHL._AC_SL1500_.jpg', '<p>Peter 2, making a surprise comeback after 20 years in &quot;Spider-Man: No Way Home,&quot; joins S.H.Figuarts!</p>\r\n\r\n<p><img alt=\"\" src=\"https://m.media-amazon.com/images/I/61wTxozVt2L._AC_SL1498_.jpg\" style=\"height:335px; width:240px\" /></p>\r\n', '<p>The Friendly Neighborhood Spider-Man edition features a faithfully accurate facial sculpt</p>\r\n\r\n<p><img alt=\"\" src=\"https://m.media-amazon.com/images/I/61uXpfzs4FL._AC_SL1498_.jpg\" style=\"height:179px; width:250px\" /></p>\r\n', 1, 4),
(10, 'Nhẫn wonder woman', '005', '99000', 2, '1685155064_s-l500.jpg', '<p>A brand-new, unused, and unworn item that is not in original retail packaging or may be missing original retail packaging materials</p>\r\n', '<p>A brand-new, unused, and unworn item that is not in original retail packaging or may be missing original retail packaging materials</p>\r\n', 1, 5),
(11, 'Tai nghe superman', '001', '450000', 3, '1685154908_superman_headphone.jpg', '<p>mpedance: 32 ohms at 1 kHz<br />\r\nFrequency Response: 20-20,000 Hz<br />\r\nSensitivity: 100 dB 3 dB<br />\r\nCable Jack: 3.5 mm<br />\r\nCable Length: Approx. 120c</p>\r\n', '<p>mpedance: 32 ohms at 1 kHz<br />\r\nFrequency Response: 20-20,000 Hz<br />\r\nSensitivity: 100 dB 3 dB<br />\r\nCable Jack: 3.5 mm<br />\r\nCable Length: Approx. 120cm</p>\r\n', 1, 5),
(12, 'ốp lung CAPTAIN ', '001', '50000', 3, '1685154686_99b6e898e08412da4b95-600x600.jpg', '<ul>\r\n	<li>C&aacute;c t&iacute;nh năng:</li>\r\n	<li>100% Nguy&ecirc;n Bản mới chất lượng cao.</li>\r\n	<li>Thiết kế s&aacute;ng tạo để bảo vệ ho&agrave;n hảo m&aacute;y ảnh của điện thoại.</li>\r\n	<li>Vỏ bảo vệ chất lượng cao, thời trang v&agrave; chất lượng cao.</li>\r\n	<li>Bảo vệ điện thoại chống m&agrave;i m&ograve;n v&agrave; che c&aacute;c vết trầy xước, bụi, dấu v&acirc;n tay</li>\r\n	<li>Dễ d&agrave;ng c&agrave;i đặt v&agrave; gỡ bỏ</li>\r\n	<li>Cho ph&eacute;p truy cập v&agrave;o tất cả c&aacute;c cổng, cảm biến v&agrave; đầu v&agrave;o</li>\r\n	<li>Ho&agrave;n hảo để sử dụng trong mọi hoạt động ngo&agrave;i trời hoặc du lịch để bảo vệ điện thoại của bạn</li>\r\n	<li>Dễ d&agrave;ng c&agrave;i đặt</li>\r\n	<li>Ho&agrave;n to&agrave;n ph&ugrave; hợp cho điện thoại của bạn.</li>\r\n</ul>\r\n', '<p><strong>M&ocirc; tả sản phẩm:</strong><br />\r\n100% mới v&agrave; chưa sử dụng<br />\r\nThiết kế cạnh vu&ocirc;ng cổ điển như Iphone 12 trong tương lai.<br />\r\nDễ th&aacute;o lắp.<br />\r\nCấp thực phẩm silicon, an to&agrave;n v&agrave; cảm gi&aacute;c tay tốt nhất.<br />\r\nThiết kế thời trang gi&uacute;p điện thoại của bạn trở n&ecirc;n độc đ&aacute;o.<br />\r\nĐược l&agrave;m bằng vật liệu chống sốc v&agrave; chống trầy xước.<br />\r\nD&acirc;y buộc miễn ph&iacute; để bảo vệ chống lại những giọt v&ocirc; t&igrave;nh.<br />\r\nTất cả c&aacute;c n&uacute;t chức năng hoạt động ngay khi điện thoại của bạn trong trường hợp n&agrave;y.<br />\r\n<br />\r\n<strong>T&iacute;nh năng:</strong><br />\r\nChất liệu: được l&agrave;m bằng Silicone lỏng mềm chất lượng cao.<br />\r\n<br />\r\n<strong>Nội dung đ&oacute;ng g&oacute;i:</strong><br />\r\n1 x Ốp silicon họa tiết viền<br />\r\n&nbsp;</p>\r\n\r\n<p><img src=\"https://my-live-05.slatic.net/p/78a3b632eb7f92e8b80bd063124e464f.jpg_2200x2200q80.jpg_.webp\" style=\"height:600px; width:600px\" /><br />\r\n<br />\r\n<br />\r\n<br />\r\n&nbsp;</p>\r\n', 1, 6),
(13, 'REVOLTECH Moon Knight', '0019', '2050000', 2, '1685157753_moonknight.jpg', '<p>A preview image has been shared by&nbsp;<strong>Kaiyodo</strong>&nbsp;on&nbsp;<a href=\"https://twitter.com/kaiyodo_PR/status/1620256144857141248\">Twitter</a>&nbsp;for their next Marvel Comics action figure. An&nbsp;<strong>Amazing Yamaguchi Revoltech Moon Knight</strong>&nbsp;figure is in the works, and will be officially unveiled during Wonder Fest Winter 2023. The event takes place February 12th just outside of Tokyo, Japan. We&rsquo;ll update when more info is released. you can click the banner image of this story for the full image.</p>\r\n\r\n<p><img alt=\"\" src=\"https://japanworld.it/91566-large_default/kaiyodo-amazing-yamaguchi-revoltech-no-031-moon-knight.jpg\" style=\"height:300px; width:300px\" /></p>\r\n', '<h2>2 Alternate face plates</h2>\r\n\r\n<p>10 Alternate hands</p>\r\n\r\n<p>Baton (long)</p>\r\n\r\n<p>2 Batons (short)</p>\r\n\r\n<p>2 Baton attachments</p>\r\n\r\n<p>2 Crescent darts</p>\r\n\r\n<p><img alt=\"\" src=\"https://bbts1.azureedge.net/images/p/full/2023/04/02b288e7-daba-4918-8f8e-7f6db6cb5410.jpg\" style=\"height:300px; width:300px\" /></p>\r\n', 1, 1),
(14, 'MAFEX MERA', '015', '1750000', 2, '1685159896_61BCwjbUE-L.jpg', '<p>-Tổng chiều cao khoảng 160mm<br />\r\n-Từ bộ phim [AQUAMAN], [MERA] xuất hiện!<br />\r\n-Bao gồm đầu thay thế!<br />\r\n-Bằng c&aacute;c bộ phận chung chuy&ecirc;n dụng,<br />\r\n&quot;C&oacute; thể c&oacute; những tư thế độc đ&aacute;o!&quot;<br />\r\n-Bằng c&aacute;ch gắn c&aacute;c bộ phận hiệu ứng<br />\r\nMột cảnh h&agrave;nh động thực tế c&oacute; thể được t&aacute;i tạo!<br />\r\n- Đi k&egrave;m với một ch&acirc;n đế c&oacute; thể di chuyển được!</p>\r\n\r\n<p><img alt=\"\" src=\"http://medicomtoy.co.jp/WI/upimage/0203_191024_4aowkf_h.jpg\" style=\"height:364px; width:250px\" /></p>\r\n', '<p>Đ&aacute;nh gi&aacute; của người mua<br />\r\nMedicom Toy giới thiệu loạt nh&acirc;n vật h&agrave;nh động mạnh nhất &quot;MAFEX&quot;. C&aacute;c bộ phận khớp nối chuy&ecirc;n dụng được lắp tr&ecirc;n cơ thể với tổng chiều cao khoảng 16 cm, gi&uacute;p bạn dễ d&agrave;ng trưng b&agrave;y v&agrave; tạo d&aacute;ng t&aacute;o bạo! Từ bộ phim &quot;Aquaman&quot; ra mắt năm 2018, c&ocirc;ng ch&uacute;a Mera do Amber Heard thủ vai đ&atilde; xuất hiện. T&aacute;i tạo ho&agrave;n to&agrave;n h&igrave;nh ảnh trong vở kịch, chẳng hạn như một bộ đồ đặc trưng với thiết kế giống như vảy. C&aacute;c phụ kiện bao gồm c&aacute;c bộ phận hiệu ứng, một h&igrave;nh trụ che giấu vị tr&iacute; của &quot;C&acirc;y đinh ba&quot; v&agrave; một gi&aacute; đỡ h&igrave;nh c&oacute; thể di chuyển, cho ph&eacute;p tạo ra nhiều tư thế kh&aacute;c nhau.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.frc-watashi.info/wp-content/uploads/2021/04/IMG_4998-1.jpg\" style=\"height:167px; width:250px\" /></p>\r\n', 1, 2),
(15, 'SHFIGUARTS GREEN GOBLIN', '847', '2950000', 2, '1685160212_goblin.jpg', '<p><strong>Japanese Edition, Brand New Figure</strong></p>\r\n\r\n<p>The Green Goblin is back and more menacing than ever! From the highly anticipated film &quot;Spider-Man No Way Home,&quot; comes this limited edition S.H.Figuarts figure of the iconic villain. The Green Goblin is expertly crafted with intricate details, from his signature purple and green suit to his menacing glider. The figure also features multiple points of articulation, allowing for dynamic and thrilling poses. This limited edition figure is a must-have for any Spider-Man fan and a true collector&#39;s item.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.pixelatoy.com/155870-medium_default/green-goblin-sh-figuarts-spider-man-no-way-home.jpg\" style=\"height:300px; width:300px\" /></p>\r\n', '<p>Spider-Man: No Way Home Green Goblin S.H.Figuarts Action Figure:<br />\r\nGreen Goblin will wreak havoc on your collection!</p>\r\n\r\n<p>Straight out of 2021&#39;s&nbsp;<em>Spider-Man: No Way Home.</em></p>\r\n\r\n<p>Features an optional head and 3 pairs of additional hands.</p>\r\n\r\n<p>Includes a detachable hood, removable sunglasses, a long arm blade, a pumpkin bomb, and his glider!</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.millenniumshopone.it/wp-content/uploads/2023/05/x_btn65497-7_h.jpg\" style=\"height:420px; width:300px\" /></p>\r\n', 1, 4),
(16, 'MAFEX HUNTRESS 170', '170', '1890000', 2, '1685171714_images.jpg', '<p>The MAFEX figure line continues with the Batman: HUSH comic series, this time featuring Huntress! Measuring around 8&quot; tall, this articulated figure comes with a fabric cape, 2 different facial expressions, and a figure stand.</p>\r\n\r\n<p><img alt=\"\" src=\"https://img.mandarake.co.jp/shopimg/00/00/387/921/0000387921_2.jpg\" style=\"height:284px; width:250px\" /></p>\r\n', '<p>The MAFEX figure line continues with the Batman: HUSH comic series, this time featuring Huntress! Measuring around 8 inches tall, this articulated Huntress action figure comes with a fabric cape, 2 different facial expressions, and a figure stand</p>\r\n\r\n<p><img alt=\"\" src=\"http://medicomtoy.co.jp/WI/upimage/0001_211013_stz24r_h.jpg\" style=\"height:364px; width:250px\" /></p>\r\n', 1, 2),
(17, 'MAFEX STORM', '177', '1750000', 2, '1685171948_medmafex-177_0.jpg', '<p>This item is limited to 12 per household.<br />\r\n(C)2022 MARVEL<br />\r\nHeight: approx 150mm.<br />\r\nBoth the best form and outstanding movable area! The strongest action figure ever!</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.1999.co.jp/itbig86/10862019p.jpg\" style=\"height:306px; width:260px\" /></p>\r\n', '<p>Storm, as she appeared in the X-Men comics, leaps into Medicom&#39;s MAFEX action figure lineup! She stands about 6 inches tall and includes 3 different head sculpts and translucent effects parts.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://i.ebayimg.com/images/g/jLgAAOSwDEtkUiuy/s-l1600.jpg\" style=\"height:340px; width:300px\" /></p>\r\n', 1, 2),
(18, 'MAFEX MAGNETO ORIGINAL COMICS', '179', '1690000', 2, '1685172554_magneto.jpg', '<p>The COMIC version of [MAGNETO] is now available in MAFEX from [X-MEN] as a new model!<br />\r\nthree types of head parts are included!<br />\r\nComes with effect parts that can reproduce the battle scene!<br />\r\n-Helmet parts included!<br />\r\nMovable figure stand included!<br />\r\nPrototype production: PERFECT-STUDIO</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.1999.co.jp/itbig87/10870867p.jpg\" style=\"height:338px; width:300px\" /></p>\r\n', '<p>Magneto once again joins Medicom&#39;s MAFEX action figure lineup, this time sporting his original comic book look! Magneto is depicted with his short white hair and a stern expression on his face. The figure comes with a variety of effect pieces and accessories to show off Magneto&#39;s immense power.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.1999.co.jp/itbig87/10870867a10_m.jpg\" style=\"height:320px; width:288px\" /></p>\r\n', 1, 2),
(19, 'MAFEX CYCLOPS Comic Variant', '173', '1700000', 2, '1685172857_cyclops.jpg', '<p>Cyclops, in his comic variant blue and white costume, from Marvel&#39;s &quot;X-Men&quot; comics leaps into Medicom&#39;s MAFEX action figure lineup! This Cyclops X-Men action figure is about 16cm tall, and insanely poseable.</p>\r\n\r\n<p><img alt=\"\" src=\"https://media.karousell.com/media/photos/products/2023/5/16/medicom_toy_marvel_mafex_no173_1684220457_8df6b26d_progressive\" style=\"height:350px; width:350px\" /></p>\r\n', '<p>It combines the best form and outstanding movable area. The strongest action figure</p>\r\n\r\n<p>Comes with 3 types of heads. Optic-blast effect parts included. Comes with various wrist parts to recreate a variety of actions. Movable figure stand included</p>\r\n\r\n<p>Total Height: Approx. 6.3 inches (160 mm). Sculptor: PERFECT-STUDIO</p>\r\n\r\n<p>(C) 2021 Marvel</p>\r\n\r\n<p><img alt=\"\" src=\"http://medicomtoy.co.jp/WI/upimage/0008_211213_3h7vr4_h.jpg\" style=\"height:436px; width:300px\" /></p>\r\n', 1, 2),
(20, 'REVOLTECH The Flash', 'NR010 ', '2190000', 2, '1685175588_theflash.jpg', '<p>From the pages of DC Comics, the Scarlet Speedster, The Flash joins the Amazing Yamaguchi line of figures!</p>\r\n\r\n<p>The Flash features premium articulation that is now a standard in this line. He is loaded with multiple interchangeable accessories to give you maximum posability and display options.</p>\r\n\r\n<p><img alt=\"\" src=\"https://resize.cdn.otakumode.com/ex/1200.1200/shop/product/5d88a62a59b54dcd82a456e02d3dba19.jpg\" style=\"height:260px; width:260px\" /></p>\r\n', '<p>6.9 inches (17cm)</p>\r\n\r\n<p>Made of plastic</p>\r\n\r\n<p>Based on the DC Comics character</p>\r\n\r\n<p>Part of the Amazing Yamaguchi line</p>\r\n\r\n<p>Interchangeable parts</p>\r\n\r\n<p>Highly articulated</p>\r\n\r\n<p><img alt=\"\" src=\"https://s3.amazonaws.com/tf.images/reduced-image_22818_13_1679632123.png\" style=\"height:234px; width:250px\" /></p>\r\n', 1, 1),
(21, 'REVOLTECH reverse FLASH', 'NR009', '2190000', 2, '1685175758_reverseflash.jpg', '<p>From the pages of DC Comics, the evil Reverse Flash joins the Amazing Yamaguchi line of figures!</p>\r\n\r\n<p>The&nbsp;Reverse Flash features premium articulation that is now a standard in this line. He is loaded with multiple interchangeable accessories to give you maximum posability and display options.</p>\r\n\r\n<p><img alt=\"\" src=\"https://s3.amazonaws.com/tf.images/reduced-image_22827_7_1679888183.png\" style=\"height:201px; width:260px\" /></p>\r\n', '<p>New photos have been released by&nbsp;<strong>Kaiyodo</strong>&nbsp;for the upcoming&nbsp;<strong>DC Comics &ndash; The Flash and Reverse Flash Amazing Yamaguchi Revoltech Figures</strong>. The 6&Prime; scale figures are due for release in October. Pre-orders are expected to go live soon.&nbsp;<strong>The Flash</strong>&nbsp;includes five interchangeable faces, multiple interchangeable hands, a swap out tornado arm, and a large assortment of lightning effects.&nbsp;<strong>Reverse Flash</strong>&nbsp;includes four interchangeable face, multiple interchangeable hands, a staff, and multiple lightning effects pieces. Both figures will include display stands as well.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.thechosenprime.com/cdn-cgi/image/quality%3D100/assets/images/other/revoltech/ay%20reverse%20flash/kraydc-reverse-flash-12.jpg\" style=\"height:260px; width:260px\" /></p>\r\n', 1, 1),
(22, 'MAFEX STEEL ', '181', '1600000', 2, '1685175981_steelmafex.jpg', '<p>Dự kiến ​​ph&aacute;t h&agrave;nh v&agrave;o th&aacute;ng 5 năm 2023<br />\r\nMafex số 181<br />\r\nTH&Eacute;P MAFEX (SI&Ecirc;U NH&Acirc;N TRỞ LẠI)</p>\r\n\r\n<p>Gi&aacute; b&aacute;n lẻ tham khảo &yen;9,680 (đ&atilde; bao gồm thuế)</p>\r\n\r\n<p>Sản xuất nguy&ecirc;n mẫu PERFECT-STUDIO</p>\r\n\r\n<p><img alt=\"\" src=\"https://preview.redd.it/o5jefqppobs81.jpg?width=640&amp;crop=smart&amp;auto=webp&amp;s=a25f40efc32825a55cd17bea2cc52841579a25f4\" style=\"height:333px; width:250px\" /><img alt=\"\" src=\"http://medicomtoy.co.jp/WI/upimage/0018_220424_zvdzuk_h.jpg\" style=\"height:378px; width:260px\" /></p>\r\n', '<p>Based on the Return of Superman storyline, the MAFEX Steel is a highly detailed figure. Steel features a high level of articulation for acting out all of your favorite scenes, along with a fabric cape and hammer.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0555/7708/3974/products/medicom-toy-mafex-no-181-the-return-of-superman-steel-action-figure-29737168732230.jpg?v=1677014472&amp;width=1024\" style=\"height:294px; width:260px\" /><img alt=\"\" src=\"http://medicomtoy.co.jp/WI/upimage/0012_220424_u04a3y_h.jpg\" style=\"height:378px; width:260px\" /></p>\r\n', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `id_shipping` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  `id_dangky` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`id_shipping`, `name`, `phone`, `address`, `note`, `id_dangky`) VALUES
(1, 'Đặng quang minh', '0932023992', '34 đường B khu adc phú thạnh tân phú', 'gửi hàng', 1),
(2, 'Hiếu Programming Đẹp Giai', '0932023992', 'Số 1 Lê Duẩn, Bến Nghé, Quận 1, Hiệp Thành,Quận 12', 'Giao nhanh nhé', 11),
(3, 'Hiếu Programming Đẹp Giai', '0932023992', 'Số 1 Lê Duẩn, Bến Nghé, Quận 1, Hiệp Thành,Quận 12', 'dasdsa', 0),
(4, 'đặng quang tâm', '0959239820321', '93 thế lữ ', 'thằn tẹc lần đầu mua hàng', 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int(11) NOT NULL,
  `ngaydat` varchar(30) NOT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` varchar(100) NOT NULL,
  `soluongban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_thongke`
--

INSERT INTO `tbl_thongke` (`id`, `ngaydat`, `donhang`, `doanhthu`, `soluongban`) VALUES
(1, '2021-10-23', 50, '15500000', 25),
(2, '2021-10-22', 55, '25500000', 25),
(3, '2021-10-21', 50, '15600000', 30),
(4, '2021-10-24', 10, '36500000', 30),
(5, '2021-10-25', 2, '5600000', 10),
(6, '2021-10-26', 8, '6500000', 9),
(7, '2021-10-28', 2, '600000', 10),
(8, '2021-10-29', 8, '500000', 9),
(9, '2021-10-31', 8, '500000', 9),
(10, '2021-10-01', 8, '500000', 9),
(11, '2021-08-01', 8, '700000', 9),
(12, '2021-10-03', 8, '700000', 9),
(14, '2021-10-30', 3, '1500000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_vnpay`
--

CREATE TABLE `tbl_vnpay` (
  `id_vnpay` int(11) NOT NULL,
  `vnp_amount` varchar(50) NOT NULL,
  `vnp_bankCode` varchar(50) NOT NULL,
  `vnp_banktranno` varchar(50) NOT NULL,
  `vnp_cardtype` varchar(50) NOT NULL,
  `vnp_orderinfo` varchar(100) NOT NULL,
  `vnp_paydate` varchar(50) NOT NULL,
  `vnp_tmncode` varchar(50) NOT NULL,
  `vnp_transactionno` varchar(50) NOT NULL,
  `code_cart` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_vnpay`
--

INSERT INTO `tbl_vnpay` (`id_vnpay`, `vnp_amount`, `vnp_bankCode`, `vnp_banktranno`, `vnp_cardtype`, `vnp_orderinfo`, `vnp_paydate`, `vnp_tmncode`, `vnp_transactionno`, `code_cart`) VALUES
(4, '25000000', 'NCB', '20220206115602', 'ATM', 'Thanh toán đơn hàng đặt tại web', '20220206115533', 'UD2KZW06', '13682669', '2844'),
(5, '25000000', 'NCB', '20220206124857', 'ATM', 'Thanh toán đơn hàng đặt tại web', '20220206124854', 'UD2KZW06', '13682671', '6140');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Chỉ mục cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_momo`
--
ALTER TABLE `tbl_momo`
  ADD PRIMARY KEY (`id_momo`);

--
-- Chỉ mục cho bảng `tbl_onepay`
--
ALTER TABLE `tbl_onepay`
  ADD PRIMARY KEY (`id_onepay`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`id_shipping`);

--
-- Chỉ mục cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_vnpay`
--
ALTER TABLE `tbl_vnpay`
  ADD PRIMARY KEY (`id_vnpay`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_momo`
--
ALTER TABLE `tbl_momo`
  MODIFY `id_momo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_onepay`
--
ALTER TABLE `tbl_onepay`
  MODIFY `id_onepay` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `id_shipping` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_vnpay`
--
ALTER TABLE `tbl_vnpay`
  MODIFY `id_vnpay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
