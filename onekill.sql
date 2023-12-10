-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 10, 2023 lúc 04:22 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `onekill`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdon`
--

CREATE TABLE `chitietdon` (
  `idDon` int(11) NOT NULL,
  `idMonAn` int(11) NOT NULL,
  `soLuong` int(11) NOT NULL,
  `ngayLenMon` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdon`
--

INSERT INTO `chitietdon` (`idDon`, `idMonAn`, `soLuong`, `ngayLenMon`) VALUES
(1752304, 1, 1, '2023-12-11 00:00:00'),
(1752304, 11, 1, '2023-12-11 00:00:00'),
(1395820, 7, 1, '2023-12-12 00:00:00'),
(1404563, 10, 1, '2023-12-13 00:00:00'),
(1404563, 12, 1, '2023-12-13 00:00:00'),
(3146419, 2, 1, '2023-12-11 00:00:00'),
(3470123, 6, 1, '2023-12-12 00:00:00'),
(3417938, 15, 1, '2023-12-13 00:00:00'),
(336332, 7, 1, '2023-12-14 00:00:00'),
(6717016, 3, 1, '2023-12-11 00:00:00'),
(6305012, 6, 1, '2023-12-12 00:00:00'),
(6136740, 13, 1, '2023-12-13 00:00:00'),
(6791031, 4, 1, '2023-12-14 00:00:00'),
(6352874, 2, 2, '2023-12-11 00:00:00'),
(6352874, 1, 2, '2023-12-11 00:00:00'),
(6352874, 3, 2, '2023-12-11 00:00:00'),
(6352874, 4, 2, '2023-12-11 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietgiohang`
--

CREATE TABLE `chitietgiohang` (
  `idGioHang` int(11) NOT NULL,
  `idTaiKhoan` int(11) NOT NULL,
  `idMonAn` int(11) NOT NULL,
  `soLuong` int(11) NOT NULL,
  `ngayLenMon` datetime NOT NULL,
  `ngayTaoGio` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietnguyelieumonan`
--

CREATE TABLE `chitietnguyelieumonan` (
  `idNguyenLieu` int(11) NOT NULL,
  `idMonAn` int(11) NOT NULL,
  `soLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietnguyelieumonan`
--

INSERT INTO `chitietnguyelieumonan` (`idNguyenLieu`, `idMonAn`, `soLuong`) VALUES
(4, 2, 250),
(5, 2, 250),
(9, 4, 100),
(5, 4, 200),
(22, 8, 10),
(2, 8, 10),
(10, 8, 150),
(10, 7, 150),
(23, 8, 50),
(7, 6, 100),
(5, 6, 200),
(23, 6, 100),
(5, 5, 150),
(8, 5, 200),
(16, 9, 200),
(23, 9, 100),
(3, 1, 200),
(5, 1, 250),
(9, 1, 100),
(4, 20, 150),
(7, 20, 150),
(10, 20, 200),
(7, 2, 100),
(9, 3, 100),
(8, 3, 100),
(7, 5, 50),
(25, 8, 50),
(21, 10, 100),
(20, 11, 100),
(1, 12, 150),
(2, 12, 50),
(4, 12, 200),
(7, 13, 100),
(23, 13, 50),
(11, 13, 50),
(25, 13, 50),
(2, 14, 50),
(7, 14, 100),
(23, 15, 70),
(7, 15, 100),
(17, 16, 100),
(19, 17, 100),
(18, 18, 100),
(27, 19, 100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietthanhtoan`
--

CREATE TABLE `chitietthanhtoan` (
  `tenMon` text NOT NULL,
  `gia` int(11) NOT NULL,
  `soLuong` int(11) NOT NULL,
  `idThanhToan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietthucdon`
--

CREATE TABLE `chitietthucdon` (
  `idThucDon` int(11) NOT NULL,
  `idMonAn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietthucdon`
--

INSERT INTO `chitietthucdon` (`idThucDon`, `idMonAn`) VALUES
(144, 1),
(144, 2),
(144, 3),
(144, 4),
(144, 11),
(145, 5),
(145, 6),
(145, 7),
(145, 8),
(145, 19),
(146, 10),
(146, 12),
(146, 13),
(146, 14),
(146, 15),
(147, 1),
(147, 4),
(147, 5),
(147, 7),
(147, 18),
(148, 2),
(148, 6),
(148, 9),
(148, 12),
(148, 15),
(148, 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondatmon`
--

CREATE TABLE `dondatmon` (
  `idDon` int(11) NOT NULL,
  `idTaiKhoan` int(11) NOT NULL,
  `tongSoLuong` int(11) NOT NULL,
  `tongTien` int(11) DEFAULT NULL,
  `ngayLenMon` datetime DEFAULT NULL,
  `ngayDat` datetime NOT NULL,
  `trangThaiThanhToan` int(11) NOT NULL DEFAULT 0,
  `duyetDon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dondatmon`
--

INSERT INTO `dondatmon` (`idDon`, `idTaiKhoan`, `tongSoLuong`, `tongTien`, `ngayLenMon`, `ngayDat`, `trangThaiThanhToan`, `duyetDon`) VALUES
(336332, 3, 1, 15000, '2023-12-14 00:00:00', '2023-12-10 16:46:10', 0, 0),
(1395820, 1, 1, 15000, '2023-12-12 00:00:00', '2023-12-10 16:42:29', 0, 0),
(1404563, 1, 2, 35000, '2023-12-13 00:00:00', '2023-12-10 16:42:29', 0, 0),
(1752304, 1, 2, 35000, '2023-12-11 00:00:00', '2023-12-10 16:42:29', 0, 0),
(3146419, 3, 1, 35000, '2023-12-11 00:00:00', '2023-12-10 16:46:10', 0, 0),
(3417938, 3, 1, 15000, '2023-12-13 00:00:00', '2023-12-10 16:46:10', 0, 0),
(3470123, 3, 1, 15000, '2023-12-12 00:00:00', '2023-12-10 16:46:10', 0, 0),
(6136740, 6, 1, 15000, '2023-12-13 00:00:00', '2023-12-10 16:47:55', 0, 0),
(6305012, 6, 1, 15000, '2023-12-12 00:00:00', '2023-12-10 16:47:55', 0, 0),
(6352874, 6, 8, 200000, '2023-12-11 00:00:00', '2023-12-10 16:52:03', 0, 0),
(6717016, 6, 1, 15000, '2023-12-11 00:00:00', '2023-12-10 16:47:55', 0, 0),
(6791031, 6, 1, 20000, '2023-12-14 00:00:00', '2023-12-10 16:47:55', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `idGioHang` int(11) NOT NULL,
  `ngayTao` datetime NOT NULL,
  `tongTien` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`idGioHang`, `ngayTao`, `tongTien`) VALUES
(667853, '2023-12-10 16:51:34', 0),
(1425140, '2023-12-10 16:41:25', 0),
(3628902, '2023-12-10 16:45:41', 0),
(6477936, '2023-12-10 16:47:23', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoatdong`
--

CREATE TABLE `hoatdong` (
  `idHoatDong` int(11) NOT NULL,
  `thoigian` datetime NOT NULL,
  `id_taikhoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoatdong`
--

INSERT INTO `hoatdong` (`idHoatDong`, `thoigian`, `id_taikhoan`) VALUES
(257, '2023-12-08 16:48:37', 2),
(258, '2023-12-08 16:57:00', 1),
(259, '2023-12-08 21:15:15', 1),
(260, '2023-12-08 21:26:13', 2),
(261, '2023-12-08 21:32:39', 2),
(262, '2023-12-09 10:38:25', 1),
(263, '2023-12-09 10:40:37', 2),
(264, '2023-12-09 10:42:40', 2),
(265, '2023-12-09 10:44:27', 5),
(266, '2023-12-09 10:47:44', 5),
(267, '2023-12-09 10:48:39', 2),
(268, '2023-12-10 16:25:15', 1),
(269, '2023-12-10 16:44:58', 1),
(270, '2023-12-10 16:47:10', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hopthu`
--

CREATE TABLE `hopthu` (
  `idthu` int(11) NOT NULL,
  `noiDungThu` varchar(200) NOT NULL,
  `trangThaiXem` int(11) NOT NULL DEFAULT 0,
  `thoiGian` datetime NOT NULL,
  `idTaiKhoanGuiDen` int(11) NOT NULL,
  `idMonAn` int(11) DEFAULT NULL,
  `ngayLenMon` datetime DEFAULT NULL,
  `idTaiKhoanNoiDung` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaimonan`
--

CREATE TABLE `loaimonan` (
  `idLoaiMon` int(11) NOT NULL,
  `tenLoai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loaimonan`
--

INSERT INTO `loaimonan` (`idLoaiMon`, `tenLoai`) VALUES
(1, 'Món mặn'),
(2, 'Món nước'),
(3, 'Món chay'),
(4, 'Món tráng miệng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monan`
--

CREATE TABLE `monan` (
  `idMonAn` int(11) NOT NULL,
  `tenMon` varchar(100) NOT NULL,
  `gia` int(11) NOT NULL,
  `Mota` text NOT NULL,
  `hinhAnhMon` varchar(200) NOT NULL,
  `idLoaiMon` int(11) NOT NULL,
  `trangThai` int(11) NOT NULL DEFAULT 0,
  `hoatDong` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `monan`
--

INSERT INTO `monan` (`idMonAn`, `tenMon`, `gia`, `Mota`, `hinhAnhMon`, `idLoaiMon`, `trangThai`, `hoatDong`) VALUES
(1, 'Cơm tấm', 30000, 'Cơm tấm, một biểu tượng ẩm thực của Việt Nam, là một món ăn phong phú và đậm đà hương vị. Được chế biến từ gạo lứt tấm mềm mịn, cơm tấm thường kết hợp với các loại thịt như gà, heo, bò hoặc hải sản như tôm. Món ăn này còn được bổ sung bởi bánh tráng mỏng thơm ngon và rau sống tươi mát như rau xà lách, dưa chuột, và bún riêu cua. Đặc trưng của cơm tấm còn là nước mắm pha chua ngọt, vừa mặn, vừa cay, tạo nên một hương vị độc đáo và khó cưỡng.\r\n\r\nCơm tấm không chỉ là một món ăn ngon miệng mà còn là một phần không thể thiếu của văn hóa ẩm thực Việt Nam. Nó thường được thưởng thức trong các quán ăn đường phố, quán ăn gia đình và nhà hàng trên khắp đất nước. Với sự đa dạng và biến thể phong phú, cơm tấm thể hiện sự sáng tạo và tài năng nấu ăn của người Việt, đồng thời kết nối mọi người thông qua hương vị tuyệt vời và nền ẩm thực đậm đà.', 'comtam.jpg', 1, 1, 1),
(2, 'Bún giò heo', 35000, 'Bún giò heo là một món ăn đặc trưng của ẩm thực Việt Nam, nổi tiếng với hương vị độc đáo và sự phong phú trong cách kết hợp các thành phần. Món này thường bao gồm bún, một loại bún sợi mỏng và trắng, kết hợp với giò heo, một loại chả lạnh được làm từ thiết bị heo và gia vị độc đáo. Bún giò heo thường được thêm vào bát với nhiều loại rau sống như rau sống, rau sống, và gia vị khác nhau như bún riêu cua và nước mắm pha chua ngọt. Món ăn này thường được ăn kèm với nước mắm và các loại gia vị để tạo nên một hương vị phong phú và ngon miệng. Bún giò heo không chỉ là một món ăn truyền thống mà còn là một phần quan trọng của văn hóa ẩm thực Việt Nam, đặc biệt được ưa chuộng trong các bữa sáng và bữa trưa để bắt đầu một ngày mới tràn đầy năng lượng.', 'bungioheo.jpg', 2, 1, 1),
(3, 'Khổ qua xào trứng', 15000, 'Khổ qua xào trứng là món ăn rất thích hợp cho những ngày hè oi bức. Món ăn giúp giải nhiệt cơ thể hiệu quả.\r\nNgoài ra, khổ qua còn có tác dụng giải độc, tiêu diệt vi khuẩn, virus, chống lại tế bào ung thư, điều trị chứng trào ngược axit dạ dày và khó tiêu. Ăn khổ qua còn giúp bạn có làn da mềm mịn, trẻ đẹp, kết hợp với những dưỡng chất khác từ trứng, chắc chắn món ăn sẽ mang đến nhiều giá trị tích cực cho sức khỏe người dùng.', 'khoquaxaotrung.jpg', 1, 1, 1),
(4, 'Thịt kho trứng', 20000, 'Nước dùng để kho thịt heo và trứng vịt là nước dừa. Thịt heo thường là thịt ba rọi, hoặc thịt có cả nạc lẫn mỡ. Thịt được thái thành miếng vuông, to, trứng vịt được luộc, lột vỏ và bỏ chung vào kho cùng thịt. Gia vị sử dụng gồm có: tiêu, nước mắm, ớt, đường, nước màu và một số gia vị khác. Hỗn hợp thịt-trứng-nước dừa ngập vừa này được kho bằng lửa nhỏ cho đến khi thịt mềm. Món thịt kho hột vịt có thể dùng chung với cơm trắng và cải chua. Thay vì trứng vịt thì trứng gà, trứng cút cũng được dùng kho tàu.', 'thitkhotrung.jpg', 1, 1, 1),
(5, 'Canh khổ qua dồn thịt', 15000, 'Canh khổ qua nhồi thịt (hoặc canh mướp đắng nhồi nhịt) là một món ăn của người dân miền Nam Việt Nam nhưng hầu như vẫn được thưởng thức rộng rãi ở cả hai miền còn lại của nước này. Đây là một món ăn không thể thiếu trong những ngày Tết của người Nam Bộ, với ý nghĩa những điều xui xẻo, khổ cực trong năm cũ sẽ qua và những điều may mắn, tốt đẹp trong năm mới sẽ đến.\r\n\r\nMón ăn Việt Nam này cũng được ưa chuộng ở một số quốc gia châu Á khác.Tờ The New York Times cũng đã nhắc đến món ăn như một phần trong nét văn hóa trong dịp Tết Nguyên Đán của Việt Nam.', 'canhkhoquadonthit.jpg', 2, 1, 1),
(6, 'Đậu phụ dồn thịt sốt cà', 15000, 'Đậu phụ dồn thịt sốt cà là một món ăn truyền thống trong nền ẩm thực Việt Nam. Món ăn này kết hợp giữa vị ngon của đậu phụ mềm mịn và hương vị đậm đà của thịt heo.Đậu phụ dồn thịt sốt cà là một món ăn ngon và phổ biến trong nền ẩm thực Việt Nam. Món này kết hợp giữa đậu phụ mềm mịn, thịt heo và sốt cà chua thơm ngon.', 'dauphunhoinhitsotca.jpg', 1, 1, 1),
(7, 'Cá lóc kho tộ', 15000, 'Cá kho tiêu là một món ăn ngon và phổ biến trong nền ẩm thực Việt Nam. Món này kết hợp giữa cá và gia vị, nấu chín trong nồi tộ (nồi đất nung) hoặc nồi nấu, thường được chế biến với tiêu để tạo nên hương vị thơm ngon và đậm đà.', 'calockhoto.jpg', 1, 1, 1),
(8, 'Canh chua cá lóc', 20000, 'Canh chua cá lóc là một món canh truyền thống và ngon miệng trong nền ẩm thực Việt Nam. Món canh chua kết hợp giữa cá lóc và nhiều loại rau sống, nấu trong nước dùng chua ngọt, có hương thơm từ thảo quả (nguyên liệu quan trọng) và các gia vị khác.', 'canhchuacaloc.jpg', 2, 1, 1),
(9, 'Mực xào chua ngọt', 20000, 'Mực xào chua ngọt là một món ăn ngon và phổ biến trong nền ẩm thực Việt Nam. Món này kết hợp giữa mực tươi ngon và một hỗn hợp gia vị độc đáo, tạo ra hương vị chua ngọt và thơm ngon đặc trưng.\r\nNguyên liệu:\r\nMực: Chọn mực tươi ngon, thường là mực trứng hoặc mực trắng, đã làm sạch và cắt thành từng miếng vừa ăn.\r\n\r\nGia vị: Hành tím, tỏi, ớt (tùy khẩu vị cá nhân), đường, nước mắm, nước cốt dừa, dầu ăn, tiêu.\r\n\r\nRau củ sống: thơm, dưa leo hoặc các loại rau sống khác, rửa sạch và cắt thành từng khúc nhỏ.', 'mucxaochuangot.jpg', 1, 1, 1),
(10, 'Trái ổi', 5000, 'Trái ổi là một món tráng miệng tuyệt vời với sự hòa quyện của hình dáng quyến rũ và hương vị ngọt ngào. Với hình dáng tròn hoặc bầu dục đầy quyến rũ, màu sắc tươi sáng từ xanh đến vàng, trái ổi đã chinh phục trái tim của rất nhiều người yêu thực phẩm. Khi chín độ, màu da ngoài lung linh và bên trong thịt có màu sắc rực rỡ, từ đỏ, cam, đến hồng tươi sáng, khiến ta không thể không mê mệt.\r\n\r\nMùi thơm đặc trưng của trái ổi là điểm thu hút ngay từ cái nhìn đầu tiên, và không thể phủ nhận rằng nó có một hương vị ngọt ngào vô cùng lôi cuốn. Thịt trái ổi mềm mịn, ngọt ngào, và có chút độ giòn, cùng với sự sần sật của những hạt nhỏ ở giữa. Vị ngọt tự nhiên của trái ổi có thể thay đổi tùy theo mức độ chín, nhưng luôn đem lại cảm giác thú vị trên đầu lưỡi.\r\n\r\nTrái ổi không chỉ đơn thuần là một món tráng miệng ngon miệng mà còn chứa nhiều dinh dưỡng quý báu. Nó là nguồn cung cấp vitamin C, chất xơ, và khoáng chất cần thiết cho sức khỏe. Chính vì vậy, trái ổi thường xuất hiện trong nhiều món tráng miệng hấp dẫn như kem, sinh tố, nước ép, và nhiều món sáng tạo khác, để mang đến niềm vui ngon miệng và lợi ích dinh dưỡng cho mọi người.', 'oi.jpg', 4, 1, 1),
(11, 'Trái cam', 5000, 'Trái cam là một loại quả tươi mát, với vẻ ngoại hình thu hút và màu sắc tươi sáng. Vỏ ngoài của trái cam mịn màng, với màu cam hoặc vàng sáng rực, tạo nên một hình dáng hấp dẫn. Khi trái cam chín độ, màu sắc của nó trở nên nguyên thủy và quyến rũ, thúc đẩy sự ham muốn thưởng thức.\r\n\r\nHương thơm tự nhiên của trái cam là điểm nhấn đặc biệt, với mùi cam tươi mát lan tỏa và khiến người ta cảm thấy sảng khoái. Một khi bạn cắt mở trái cam, màu cam tươi sáng và hương vị ngọt ngào, chua chua dịu dịu ngay lập tức khẳng định sự ngon miệng của nó.\r\n\r\nTrái cam cũng là nguyên liệu tuyệt vời cho nhiều món tráng miệng ngon miệng. Món kem cam, ví dụ, với kem mềm mịn được làm từ nước cam tươi và đường, tạo ra một hương vị tươi mát và ngọt ngào. Món này không chỉ làm mát người trong những ngày nắng nóng mà còn mang đến cảm giác thăng hoa vị giác. Trái cam cũng thường được sử dụng để làm các loại bánh, nước ép cam tươi, và nhiều món tráng miệng khác, làm cho trái cam trở thành một nguồn cảm hứng tuyệt vời cho thế giới ẩm thực.', 'cam.jpg', 4, 1, 1),
(12, 'Bún bò', 30000, 'Món bún bò là một món ngon đậm đà và phổ biến trong ẩm thực Việt Nam. Điểm đặc trưng của món này chính là sợi bún mềm mịn, kết hợp với nước dùng thơm ngon được nấu từ xương bò và các loại gia vị độc đáo. Trên lớp bún mềm là những miếng thịt bò mỏng được nướng hoặc luộc, thường mềm, thơm và ngon, cùng với rau sống tươi mát và gia vị như hành lá, bún bò Huế thường đi kèm với chả lụa và bánh bèo, tạo nên sự phong phú và ngon miệng. Món bún bò không chỉ ngon mà còn là một phần không thể thiếu trong bản sắc ẩm thực của Việt Nam, là sự kết hợp tuyệt vời giữa hương vị truyền thống và sự tươi mát của nguyên liệu tươi ngon.', 'bunbo.jpg', 2, 1, 1),
(13, 'Đậu hũ xào rau củ', 15000, 'Món đậu hủ xào rau củ là một món ăn ngon và bổ dưỡng trong ẩm thực Á Đông. Đậu hủ, với sự kết hợp giữa bề mặt giòn và thịt mềm mịn bên trong, là nguyên liệu chính tạo nên sự phong cách độc đáo của món này. Khi xào chín cùng với các loại rau củ tươi mát như cà tím, cà chua, bông cải xanh và cà rốt, món đậu hủ xào rau củ trở nên hấp dẫn về màu sắc và hương vị.\r\n\r\nHương thơm của món ăn lan tỏa khi đậu hủ và rau củ thảy vào chảo nóng, cùng với gia vị như tỏi, hành và nước mắm. Đậu hủ thấm đều hương vị của các thành phần khác, tạo nên hương vị đa dạng và thơm ngon. Khi ăn, bạn có cảm giác thú vị của sự kết hợp giữa vị giòn của đậu hủ và vị tươi mát của rau củ, tạo nên một trải nghiệm ẩm thực đậm đà và cung cấp nhiều chất dinh dưỡng cho cơ thể.\r\n\r\nMón đậu hủ xào rau củ thường được thực hiện nhanh chóng và dễ dàng, là một lựa chọn tuyệt vời cho cả bữa ăn gia đình hoặc khi bạn muốn một món ăn ngon, nhanh chóng và bổ dưỡng.\r\n\r\n\r\n\r\n\r\n', 'dauhuxaoraucu.jpg', 3, 1, 1),
(14, 'Giá xào đậu hũ', 15000, 'Món giá xào rau củ là một món ăn ngon và bổ dưỡng trong ẩm thực Á Đông. Được làm từ giá (hoặc giá đỗ đủ), một loại rau có cành mỏng và hình dáng độc đáo, món giá xào rau củ tạo nên một sự kết hợp hấp dẫn giữa vị giòn của giá và hương vị tươi mát của rau củ.  Hương thơm tự nhiên của giá khi xào nhanh chóng lan tỏa, kết hợp với mùi thơm của tỏi, hành và gia vị, tạo nên một hương vị đa dạng và thơm ngon. Rau củ, thường là cà tím, bông cải xanh, cà rốt, và hành tím, thêm màu sắc và dinh dưỡng vào món ăn, làm cho nó trở nên hấp dẫn hơn.  Khi bạn thưởng thức món giá xào rau củ, bạn sẽ trải qua cảm giác thú vị của sự kết hợp giữa vị giòn và ngon miệng của giá, cùng với sự tươi mát và mềm mịn của rau củ. Món này thường được ăn cùng với cơm trắng, tạo nên một bữa ăn vừa ngon miệng vừa bổ dưỡng, và có thể dùng trong các bữa ăn gia đình hoặc khi bạn muốn một món ăn nhanh chóng và ngon.', 'giaxaodauhu.jpg', 3, 1, 1),
(15, 'Đậu phụ sốt cà chua', 15000, 'Món đậu hủ xào rau củ là một món ăn ngon, bổ dưỡng và rất phong cách trong ẩm thực Á Đông. Chế biến món này thường bắt đầu bằng việc cắt những miếng đậu hủ thành từng lát mỏng hoặc khoanh vuông, sau đó xào chúng trên chảo với dầu ăn và các loại gia vị thơm ngon. Đậu hủ có vị giòn bên ngoài và mềm mịn bên trong, làm cho nó trở thành lớp vỏ hoàn hảo cho những hương vị tươi mát từ rau củ.\r\n\r\nMón đậu hủ xào rau củ thường được kết hợp với các loại rau củ tươi mát như cà tím, bông cải xanh, hành tây, và cà rốt, tạo nên một mảng màu sắc đa dạng và bổ dưỡng. Hương thơm của các loại gia vị như tỏi, hành, và nước mắm tạo nên một hương vị thơm ngon độc đáo.\r\n\r\nMón đậu hủ xào rau củ không chỉ ngon mà còn là một món ăn bổ dưỡng cho sức khỏe, với sự kết hợp hoàn hảo giữa đạm từ đậu hủ và vitamin, khoáng chất từ rau củ. Món này thường được ăn với cơm trắng và có thể là một phần quan trọng của bữa ăn gia đình hoặc bữa trưa nhanh chóng và ngon miệng.', 'dauphusotca.jpg', 3, 1, 1),
(16, 'Trái chuối', 5000, 'Chuối, với hương vị ngọt ngào và mềm mịn của thịt, thường là một loại trái cây phổ biến trong nhiều món tráng miệng. Có thể dùng chuối để làm kem, chả chuối, hoặc đơn giản là ăn tươi ngon. Hương vị ngọt ngào của chuối và độ mềm mịn của nó khiến nó trở thành một lựa chọn tráng miệng hoàn hảo.', 'chuoi.jpg', 4, 1, 1),
(17, 'Trái bưởi', 5000, 'Bưởi, với vị ngọt tự nhiên và thịt mềm mịn, là một món tráng miệng ngon và độc đáo. Hương vị đặc trưng của bưởi kết hợp với màu sắc tươi sáng tạo nên một trải nghiệm thú vị cho vị giác.', 'buoi.jpg', 4, 1, 1),
(18, 'Dưa hấu', 5000, 'Dưa hấu, với thịt mềm mịn và vị ngọt mát, thường là một lựa chọn tuyệt vời trong những ngày nắng nóng. Màu sắc tươi sáng của dưa hấu và vị ngọt tự nhiên của nó tạo nên một hương vị ngon độc đáo. Mùi hương của dưa hấu thường giống như mùi nước hoa tự nhiên, khiến ta cảm thấy sảng khoái khi thưởng thức.', 'duahau.jpg', 4, 1, 1),
(19, 'Sữa chua', 5000, 'Sữa chua là thực phẩm có nguồn gốc từ các nước ở Tây Á và Trung Đông. Sữa chua được tạo ra khi sữa kết hợp với vi khuẩn, cụ thể là Lactobacillus bulgaricus và Streptococcus thermophilus, và để trong vài giờ ở nhiệt độ ấm. Vi khuẩn chuyển đổi đường trong sữa, được gọi là lactose, thành axit lactic, làm đặc sữa và tạo ra hương vị chua đặc biệt. Vậy ăn sữa chua có tác dụng gì?\r\n\r\nSữa chua là một trong những chế phẩm từ sữa phổ biến nhất trên thế giới và đã được con người tiêu thụ hàng trăm năm nay. Là loại thực phẩm bổ dưỡng, sữa chua có thể giúp tăng cường một số khía cạnh về sức khỏe của người sử dụng. Một ví dụ điển hình là sữa chua đã được chứng minh có khả năng làm giảm nguy cơ mắc các bệnh liên quan đến bệnh tim mạch chuyển hóa và loãng xương, cũng như hỗ trợ trong việc kiểm soát cân nặng.\r\n\r\nSữa chua là một sản phẩm sữa phổ biến được làm dựa trên quy trình lên men sữa của vi khuẩn. Các vi khuẩn được sử dụng để làm sữa chua được gọi là “nền sữa chua”, lên men đường lactose, loại đường tự nhiên có trong sữa. Quá trình này tạo ra axit lactic, một chất làm cho protein trong sữa đông lại, tạo cho sữa chua hương vị và kết cấu độc đáo. Sữa chua có thể được làm từ tất cả các loại sữa. Các loại sữa chua được làm từ sữa tách béo được coi là không có chất béo, trong khi những loại được làm từ sữa nguyên chất được coi là đầy đủ chất béo. Sữa chua nguyên chất không có thêm chất tạo màu là một chất lỏng màu trắng, đặc với hương vị thơm. Thật không may, hầu hết các loại sữa chua hiện nay trên thị trường đều có chứa các thành phần bổ sung, chẳng hạn như đường và hương vị nhân tạo. Những loại sữa chua này không tốt cho sức khỏe của người tiêu dùng. Mặt khác, sữa chua nguyên chất không đường mang lại nhiều lợi ích cho sức khỏe.\r\n\r\nDưới đây là lợi ích sức khỏe đã được khoa học chứng minh của sữa chua.\r\n\r\n1. Cung cấp nhiều chất dinh dưỡng quan trọng\r\nSữa chua chứa hầu hết mọi chất dinh dưỡng mà cơ thể cần để duy trì sự sống và phát triển. Sữa nói chung và các sản phẩm từ sữa nói riêng mà đặc biệt là sữa chua chứa nhiều canxi, một khoáng chất cần thiết cho sức khỏe của xương và răng miệng. Chỉ một cốc sữa chua cũng có thể cung cấp đến 49% nhu cầu canxi hàng ngày của cơ thể. Nó cũng chứa nhiều vitamin nhóm B, đặc biệt là vitamin B12 và riboflavin, cả hai đều có thể bảo vệ cơ thể chống lại bệnh tim mạch và các dị tật bẩm sinh ống thần kinh khác.\r\n\r\nMột cốc sữa chua cũng cung cấp 38% nhu cầu hàng ngày về phốt pho, 12% nhu cầu hàng ngày magiê và 18% nhu cầu hàng ngày kali. Những khoáng chất này cần thiết cho một số quá trình sinh học trong cơ thể, chẳng hạn như điều chỉnh huyết áp, sự trao đổi chất và sức khỏe của hệ xương khớp. Một chất dinh dưỡng mà sữa chua nguyên chất không chứa là vitamin D, tuy nhiên trong quá trình sản xuất sữa chua người ta thường thêm loại vitamin này vào sữa. Vitamin D thúc đẩy sức khỏe của xương và hệ thống miễn dịch, đồng thời có thể làm giảm nguy cơ mắc một số bệnh, bao gồm bệnh tim và trầm cảm.', 'suachua.jpg', 4, 1, 1),
(20, 'Bún cá', 25000, 'Sơ chế nguyên liệu\r\nCá rô phi mua về sau khi làm sạch thì bạn dùng dao lóc lấy phần thịt cá. Sau đó cắt thành từng miếng vừa ăn rồi cho vào tô ướp cùng 1 muỗng cà phê muối, 1/3 muỗng cà phê tiêu xay trong vòng 15 phút.\r\n\r\nCòn phần xương cá, bạn đem đi cho vào nồi cùng với 5 củ hành và 1 nhánh gừng đã nướng xém. Đổ 3.5 lít nước vào nồi sao cho ngập hết phần xương cá rồi bật bếp lên, tiến hành ninh xương cá trong vòng 60 phút trên lửa vừa.\r\n\r\nRau cần nước cắt bỏ đi phần rễ rồi cắt thành từng khúc dài khoảng 2 lóng tay. Kế tiếp, đem rau đi rửa trong nước muối pha loãng rồi rửa lại với nước sạch và để ráo.\r\n\r\nDọc mùng tước bỏ đi phần vỏ bên ngoài rồi cắt miếng chéo vừa ăn. Tiếp theo, cho dọc mùng vào tô cùng với một ít muối, bóp nhẹ rồi rửa sạch lại với nước.\r\n\r\nThì là và hành lá rửa sạch rồi lần lượt cắt nhỏ. Đối với phần củ của hành lá thì bạn tước mỏng ra nhé!\r\n\r\nHành tím bóc bỏ vỏ rồi cắt thành lát mỏng. Cà chua rửa sạch rồi cắt múi cau.\r\n\r\nNghệ gọt bỏ vỏ, rửa sơ qua với nước rồi cho vào cối giã nát. Sau đó, bạn cho vào cối khoảng 100ml nước rồi cho tất cả hỗn hợp trong cối qua rây lọc, lọc lấy nước. Sau cùng, bạn vắt 1/4 quả chanh vào phần nước nghệ đã lọc được nhé!', 'bunca.jpg', 2, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguyenlieu`
--

CREATE TABLE `nguyenlieu` (
  `idNguyenLieu` int(11) NOT NULL,
  `tenNguyenLieu` varchar(100) NOT NULL,
  `hinhAnh` varchar(200) NOT NULL,
  `ngayTao` datetime NOT NULL,
  `trangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nguyenlieu`
--

INSERT INTO `nguyenlieu` (`idNguyenLieu`, `tenNguyenLieu`, `hinhAnh`, `ngayTao`, `trangThai`) VALUES
(1, 'Thịt bò', 'thitbo.jpg', '2023-10-22 03:17:32', 1),
(2, 'Giá', 'gia.jpg', '2023-10-22 03:17:49', 1),
(3, 'Cơm', 'com.jpg', '2023-10-22 04:12:23', 1),
(4, 'Bún', 'bun.jpg', '2023-10-22 04:12:23', 1),
(5, 'Thịt heo', 'thitheo.jpg', '2023-10-22 04:29:22', 1),
(6, 'Thịt gà', 'thitga.jpg', '2023-10-22 04:29:22', 1),
(7, 'Đậu phụ', 'dauphu.jpg', '2023-11-02 01:00:27', 1),
(8, 'Mướp đắng', 'muopdang.jpg', '2023-11-02 01:00:27', 1),
(9, 'Trứng', 'trung.jpg', '2023-11-02 01:00:27', 1),
(10, 'Cá lóc', 'caloc.jpg', '2023-11-02 01:00:27', 1),
(11, 'Rau cải', 'raucai.jpg', '2023-11-02 01:00:27', 1),
(12, 'Rau mồng tơi', 'raumongtoi.jpg', '2023-11-02 01:00:27', 1),
(13, 'Bí Đao', 'bidao.jpg', '2023-11-02 01:06:41', 1),
(14, 'Bí Đỏ', 'bido.jpg', '2023-11-02 01:06:41', 1),
(15, 'Tôm', 'tom.jpg', '2023-11-02 01:08:28', 1),
(16, 'Mực', 'muc.jpg', '2023-11-02 01:08:28', 1),
(17, 'Chuối', 'chuoi.jpg', '2023-11-02 01:11:21', 1),
(18, 'Dưa hấu', 'duahau.jpg', '2023-11-02 01:11:21', 1),
(19, 'Bưởi', 'buoi.jpg', '2023-11-02 01:11:21', 1),
(20, 'Cam', 'cam.jpg', '2023-11-02 01:11:21', 1),
(21, 'Ổi', 'oi.jpg', '2023-11-02 01:11:21', 1),
(22, 'Bạc hà', 'bacha.jpg', '2023-11-02 02:33:07', 1),
(23, 'Cà chua', 'cachua.jpg', '2023-11-02 02:38:06', 1),
(24, 'Dưa chuột', 'duachuot.jpg', '2023-11-02 02:40:11', 1),
(25, 'Thơm', 'thom.jpg', '2023-11-02 02:47:33', 1),
(27, 'Sữa chua', 'suachua.jpg', '2023-11-16 07:53:30', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanhoi`
--

CREATE TABLE `phanhoi` (
  `idPhanHoi` int(11) NOT NULL,
  `idTaiKhoan` int(11) NOT NULL,
  `idMonAn` int(11) NOT NULL,
  `noiDungPhanHoi` text DEFAULT NULL,
  `danhGia` int(11) DEFAULT NULL,
  `ngayDanhGia` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `idRole` int(11) NOT NULL,
  `tenRole` varchar(50) NOT NULL,
  `ngayTao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`idRole`, `tenRole`, `ngayTao`) VALUES
(1, 'Quản lý bếp', '2023-10-09 12:04:09'),
(2, 'Nhân viên bếp', '2023-10-09 12:04:09'),
(3, 'Nhân viên phục vụ', '2023-10-09 12:06:35'),
(4, 'Nhân viên công ty', '2023-10-09 12:06:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `idTaiKhoan` int(11) NOT NULL,
  `tenDangNhap` varchar(30) NOT NULL,
  `matKhau` varchar(32) NOT NULL,
  `maNhanVien` varchar(50) NOT NULL,
  `hoTen` varchar(50) NOT NULL,
  `soDienThoai` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `hinhAnh` varchar(100) NOT NULL DEFAULT 'user.jpg',
  `ngayTao` datetime NOT NULL,
  `Role` int(11) NOT NULL,
  `trangThai` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`idTaiKhoan`, `tenDangNhap`, `matKhau`, `maNhanVien`, `hoTen`, `soDienThoai`, `email`, `hinhAnh`, `ngayTao`, `Role`, `trangThai`) VALUES
(1, '20061511', '123456', '20061511', 'Nguyễn Hồ Minh Huân ', '0362449211', 'minhhuan190102@gmail.com', 'user.jpg', '2023-10-10 10:19:13', 4, 1),
(2, '20064271', '123456', '20064271', 'Nguyễn Tiến Thành', '0123456789', 'ntthanh12a1@gmail.com', 'user.jpg', '2023-10-10 10:22:17', 2, 1),
(3, '20039691', '123456', '20039691', 'Bùi Thùy Lam ', '0379302133', 'lam0379302133@gmail.com', 'user.jpg', '2023-10-10 11:27:21', 4, 1),
(4, '20013391', '123456', '20013391', 'Lường Anh Đức ', '01111111111', 'luonganhduc@gmail.com', 'user.jpg', '2023-11-27 03:05:02', 3, 1),
(5, '20040441', '123456', '20040441', 'Nguyễn Xuân Hậu', '0948620100', 'xuanhauk16@gmail.com', 'admin.png', '2023-12-08 03:07:21', 1, 1),
(6, '20005661', '123456', '20005661', 'Phạm Vĩnh Phúc', '0122222222', 'phamvinhphuc@gmail.com', 'user.jpg', '2023-12-08 10:41:27', 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhtoan`
--

CREATE TABLE `thanhtoan` (
  `idThanhToan` int(11) NOT NULL,
  `ngayThanhToan` datetime NOT NULL,
  `soTien` int(11) NOT NULL,
  `idTaiKhoan` int(11) NOT NULL,
  `hinhThucThanhToan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongbao`
--

CREATE TABLE `thongbao` (
  `idThongBao` int(11) NOT NULL,
  `noiDung` text NOT NULL,
  `trangThaiXem` int(11) NOT NULL DEFAULT 0,
  `thoiGian` datetime DEFAULT NULL,
  `idTaiKhoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thongbao`
--

INSERT INTO `thongbao` (`idThongBao`, `noiDung`, `trangThaiXem`, `thoiGian`, `idTaiKhoan`) VALUES
(84, 'Bạn đã đặt món ăn', 0, '2023-12-10 16:42:30', 1),
(85, 'Bạn đã đặt món ăn', 0, '2023-12-10 16:46:11', 3),
(86, 'Bạn đã đặt món ăn', 0, '2023-12-10 16:47:56', 6),
(87, 'Bạn đã đặt món ăn', 0, '2023-12-10 16:52:04', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thucdon`
--

CREATE TABLE `thucdon` (
  `idThucDon` int(11) NOT NULL,
  `ngayTao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thucdon`
--

INSERT INTO `thucdon` (`idThucDon`, `ngayTao`) VALUES
(144, '2023-12-11 00:00:00'),
(145, '2023-12-12 00:00:00'),
(146, '2023-12-13 00:00:00'),
(147, '2023-12-14 00:00:00'),
(148, '2023-12-15 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `traloiphanhoi`
--

CREATE TABLE `traloiphanhoi` (
  `idTraLoi` int(11) NOT NULL,
  `idTaiKhoan` int(11) NOT NULL,
  `noiDung` text NOT NULL,
  `idPhanHoi` int(11) NOT NULL,
  `ngayTraLoi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdon`
--
ALTER TABLE `chitietdon`
  ADD KEY `chitietdon_ibfk_1` (`idMonAn`),
  ADD KEY `idDon` (`idDon`);

--
-- Chỉ mục cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD KEY `idGioHang` (`idGioHang`),
  ADD KEY `idTaiKhoan` (`idTaiKhoan`),
  ADD KEY `chitietgiohang_ibfk_2` (`idMonAn`);

--
-- Chỉ mục cho bảng `chitietnguyelieumonan`
--
ALTER TABLE `chitietnguyelieumonan`
  ADD KEY `idMonAn` (`idMonAn`),
  ADD KEY `idNguyenLieu` (`idNguyenLieu`);

--
-- Chỉ mục cho bảng `chitietthanhtoan`
--
ALTER TABLE `chitietthanhtoan`
  ADD KEY `chitietthanhtoan_ibfk_1` (`idThanhToan`);

--
-- Chỉ mục cho bảng `chitietthucdon`
--
ALTER TABLE `chitietthucdon`
  ADD KEY `idMonAn` (`idMonAn`),
  ADD KEY `idThucDon` (`idThucDon`);

--
-- Chỉ mục cho bảng `dondatmon`
--
ALTER TABLE `dondatmon`
  ADD PRIMARY KEY (`idDon`),
  ADD KEY `id_taikhoan` (`idTaiKhoan`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`idGioHang`);

--
-- Chỉ mục cho bảng `hoatdong`
--
ALTER TABLE `hoatdong`
  ADD PRIMARY KEY (`idHoatDong`),
  ADD KEY `hoatdong_ibfk_1` (`id_taikhoan`);

--
-- Chỉ mục cho bảng `hopthu`
--
ALTER TABLE `hopthu`
  ADD PRIMARY KEY (`idthu`),
  ADD KEY `idTaiKhoan` (`idTaiKhoanGuiDen`),
  ADD KEY `idTaiKhoan_2` (`idTaiKhoanNoiDung`);

--
-- Chỉ mục cho bảng `loaimonan`
--
ALTER TABLE `loaimonan`
  ADD PRIMARY KEY (`idLoaiMon`);

--
-- Chỉ mục cho bảng `monan`
--
ALTER TABLE `monan`
  ADD PRIMARY KEY (`idMonAn`),
  ADD KEY `idLoaiMon` (`idLoaiMon`);

--
-- Chỉ mục cho bảng `nguyenlieu`
--
ALTER TABLE `nguyenlieu`
  ADD PRIMARY KEY (`idNguyenLieu`);

--
-- Chỉ mục cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD PRIMARY KEY (`idPhanHoi`),
  ADD KEY `idTaiKhoan` (`idTaiKhoan`),
  ADD KEY `idMonAn` (`idMonAn`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`idRole`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`idTaiKhoan`),
  ADD KEY `taikhoan_ibfk_1` (`Role`);

--
-- Chỉ mục cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD PRIMARY KEY (`idThanhToan`),
  ADD KEY `thanhtoan_ibfk_1` (`idTaiKhoan`);

--
-- Chỉ mục cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`idThongBao`),
  ADD KEY `idTaiKhoan` (`idTaiKhoan`);

--
-- Chỉ mục cho bảng `thucdon`
--
ALTER TABLE `thucdon`
  ADD PRIMARY KEY (`idThucDon`);

--
-- Chỉ mục cho bảng `traloiphanhoi`
--
ALTER TABLE `traloiphanhoi`
  ADD PRIMARY KEY (`idTraLoi`),
  ADD KEY `idTaiKhoan` (`idTaiKhoan`),
  ADD KEY `idPhanHoi` (`idPhanHoi`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `idGioHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6477937;

--
-- AUTO_INCREMENT cho bảng `hoatdong`
--
ALTER TABLE `hoatdong`
  MODIFY `idHoatDong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT cho bảng `hopthu`
--
ALTER TABLE `hopthu`
  MODIFY `idthu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `loaimonan`
--
ALTER TABLE `loaimonan`
  MODIFY `idLoaiMon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `monan`
--
ALTER TABLE `monan`
  MODIFY `idMonAn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT cho bảng `nguyenlieu`
--
ALTER TABLE `nguyenlieu`
  MODIFY `idNguyenLieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  MODIFY `idPhanHoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `idRole` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `idTaiKhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `idThongBao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `thucdon`
--
ALTER TABLE `thucdon`
  MODIFY `idThucDon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT cho bảng `traloiphanhoi`
--
ALTER TABLE `traloiphanhoi`
  MODIFY `idTraLoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdon`
--
ALTER TABLE `chitietdon`
  ADD CONSTRAINT `chitietdon_ibfk_1` FOREIGN KEY (`idDon`) REFERENCES `dondatmon` (`idDon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietdon_ibfk_2` FOREIGN KEY (`idMonAn`) REFERENCES `monan` (`idMonAn`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD CONSTRAINT `chitietgiohang_ibfk_1` FOREIGN KEY (`idGioHang`) REFERENCES `giohang` (`idGioHang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietgiohang_ibfk_2` FOREIGN KEY (`idMonAn`) REFERENCES `monan` (`idMonAn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietgiohang_ibfk_3` FOREIGN KEY (`idTaiKhoan`) REFERENCES `taikhoan` (`idTaiKhoan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietnguyelieumonan`
--
ALTER TABLE `chitietnguyelieumonan`
  ADD CONSTRAINT `chitietnguyelieumonan_ibfk_1` FOREIGN KEY (`idMonAn`) REFERENCES `monan` (`idMonAn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietnguyelieumonan_ibfk_2` FOREIGN KEY (`idNguyenLieu`) REFERENCES `nguyenlieu` (`idNguyenLieu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietthanhtoan`
--
ALTER TABLE `chitietthanhtoan`
  ADD CONSTRAINT `chitietthanhtoan_ibfk_1` FOREIGN KEY (`idThanhToan`) REFERENCES `thanhtoan` (`idThanhToan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietthucdon`
--
ALTER TABLE `chitietthucdon`
  ADD CONSTRAINT `chitietthucdon_ibfk_1` FOREIGN KEY (`idMonAn`) REFERENCES `monan` (`idMonAn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietthucdon_ibfk_2` FOREIGN KEY (`idThucDon`) REFERENCES `thucdon` (`idThucDon`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `dondatmon`
--
ALTER TABLE `dondatmon`
  ADD CONSTRAINT `dondatmon_ibfk_1` FOREIGN KEY (`idTaiKhoan`) REFERENCES `taikhoan` (`idTaiKhoan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoatdong`
--
ALTER TABLE `hoatdong`
  ADD CONSTRAINT `hoatdong_ibfk_1` FOREIGN KEY (`id_taikhoan`) REFERENCES `taikhoan` (`idTaiKhoan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hopthu`
--
ALTER TABLE `hopthu`
  ADD CONSTRAINT `hopthu_ibfk_1` FOREIGN KEY (`idTaiKhoanGuiDen`) REFERENCES `taikhoan` (`idTaiKhoan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hopthu_ibfk_2` FOREIGN KEY (`idTaiKhoanNoiDung`) REFERENCES `taikhoan` (`idTaiKhoan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `monan`
--
ALTER TABLE `monan`
  ADD CONSTRAINT `monan_ibfk_1` FOREIGN KEY (`idLoaiMon`) REFERENCES `loaimonan` (`idLoaiMon`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD CONSTRAINT `phanhoi_ibfk_1` FOREIGN KEY (`idMonAn`) REFERENCES `monan` (`idMonAn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `phanhoi_ibfk_2` FOREIGN KEY (`idTaiKhoan`) REFERENCES `taikhoan` (`idTaiKhoan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`Role`) REFERENCES `role` (`idRole`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD CONSTRAINT `thanhtoan_ibfk_1` FOREIGN KEY (`idTaiKhoan`) REFERENCES `taikhoan` (`idTaiKhoan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD CONSTRAINT `thongbao_ibfk_1` FOREIGN KEY (`idTaiKhoan`) REFERENCES `taikhoan` (`idTaiKhoan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `traloiphanhoi`
--
ALTER TABLE `traloiphanhoi`
  ADD CONSTRAINT `traloiphanhoi_ibfk_1` FOREIGN KEY (`idTaiKhoan`) REFERENCES `taikhoan` (`idTaiKhoan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `traloiphanhoi_ibfk_2` FOREIGN KEY (`idPhanHoi`) REFERENCES `phanhoi` (`idPhanHoi`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
