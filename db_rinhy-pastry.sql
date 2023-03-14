-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 14, 2023 lúc 08:13 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `rinhy-pastry`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `descr` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `thumbnail`, `descr`, `createdAt`, `updatedAt`) VALUES
(1, 'Bánh Macaron', 'images/products/macaron-main.png', 'Macaron hay bánh macaroon Pháp là một loại bánh ngọt dựa trên bánh trứng đường. Macaron được làm từ lòng trắng trứng, đường bột, đường hạt, bột hạnh nhân, và màu thực phẩm. Theo truyền thống, macaron được tổ chức đã được giới thiệu ở Pháp bởi đầu bếp người Ý của nữ hoàng Catherine De Medici trong thời Phục hưng', '2022-12-04 21:18:40', '2022-12-04 21:18:40'),
(2, 'Bánh Tiramisu', 'images/products/tiramisu-main.jpg', 'Tiramisu là một loại bánh ngọt tráng miệng vị cà phê của nước Ý, gồm các lớp bánh quy Savoiardi, nhúng cà phê xen kẽ với hỗn hợp trứng, đường, phô mai mascarpone đánh bông, thêm một ít bột cacao. Công thức bánh này được biến tấu thành nhiều món bánh và món tráng miệng khác nhau.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Bánh Donut', 'images/products/donut-main.jpg', 'Bánh vòng là một loại bánh ngọt rán hoặc nướng để ăn tráng miệng hay ăn vặt. Đây là loại bánh rất nổi tiếng và phổ biến ở nhiều nước phương Tây, có thể được mua trong cửa hàng hoặc tự làm ở nhà. Thường bánh có dạng hình vòng nhồi nhân bên trong hoặc không nhồi nhân bên trong', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Bánh Crepes', 'images/products/crepes-main.jpg', 'Bánh crepe là một loại bánh rất mỏng được làm trên chảo và có nguồn gốc từ nước Pháp thơ mộng. Từ lâu nó đã trở thành món ăn truyền thống và rất phổ biến ở các nước châu Âu.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Bánh Pancake', 'images/products/pancake-main.png', 'Bánh Pancake còn được biết đến với tên gọi quen thuộc là bánh kếp – một món bánh khá phổ biến ở nhiều quốc gia trên thế giới. Nhờ hương vị thơm ngon mới lạ, nhiều dưỡng chất mà chỉ trong vài năm trở lại đây, khi du nhập vào Việt Nam thì bánh pancake đã được rất nhiều người ưa chuộng.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `detail` text NOT NULL,
  `descr` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `views` int(11) DEFAULT NULL,
  `isHot` tinyint(1) DEFAULT NULL COMMENT '0: none\r\n1: Hot',
  `cateId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `thumbnail`, `quantity`, `rating`, `detail`, `descr`, `createdAt`, `updatedAt`, `views`, `isHot`, `cateId`) VALUES
(1, 'Macaron Chanh Bạc Hà', 28000, 'images/products/macaron-chanh-bac-ha.png', 22, NULL, 'Macaron hay bánh macaroon Pháp là một loại bánh ngọt dựa trên bánh trứng đường. Macaron được làm từ lòng trắng trứng, đường bột, đường hạt, bột hạnh nhân, và màu thực phẩm. Theo truyền thống, macaron được tổ chức đã được giới thiệu ở Pháp bởi đầu bếp người Ý của nữ hoàng Catherine De Medici trong thời Phục hưng', 'Hãy làm bừng sáng một ngày của bạn với những chiếc bánh Macarons chanh bạc hà thơm ngon này được trang trí thêm với ít cùi vỏ chanh thái nhỏ. Đây là loại nhân tuyệt vời, tan chảy trong miệng với vị ngọt, chua và cay nhẹ. Tôi cá rằng bạn từng thử vị bánh này tại Rinhy Pastry rồi sẽ cảm nhận được hương vị tươi mát thần thánh và một chút ngậy ngậy trong miệng của bạn, phải không? Được rồi, vậy hãy bắt tay tiếp tục tập trung vào công việc sau khi thưởng thức những chiếc bánh macaron chanh và bạc hà đẹp mắt, đầy năng lượng này nào.', '2022-12-04 22:39:01', '2022-12-04 22:39:01', NULL, 0, 1),
(2, 'Bánh Tiramisu phô mai', 33000, 'images/products/tiramisu-pho-mai.png', 12, NULL, 'Tiramisu là một loại bánh ngọt tráng miệng vị cà phê của nước Ý, gồm các lớp bánh quy Savoiardi, nhúng cà phê xen kẽ với hỗn hợp trứng, đường, phô mai mascarpone đánh bông, thêm một ít bột cacao. Công thức bánh này được biến tấu thành nhiều món bánh và món tráng miệng khác nhau.', 'Tiramisu là một loại bánh ngọt tráng miệng vị cà phê của nước Ý, gồm các lớp bánh quy Savoiardi, nhúng cà phê xen kẽ với hỗn hợp trứng, đường, phô mai mascarpone đánh bông, thêm một ít bột cacao. Công thức bánh này được biến tấu thành nhiều món bánh và món tráng miệng khác nhau.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 100, 1, 2),
(3, 'Bánh Crepes Cam', 31000, 'images/products/crepes-cam.png', 12, NULL, 'Bánh crepe là một loại bánh rất mỏng được làm trên chảo và có nguồn gốc từ nước Pháp thơ mộng. Từ lâu nó đã trở thành món ăn truyền thống và rất phổ biến ở các nước châu Âu.', 'Bánh crepe là một loại bánh rất mỏng được làm trên chảo và có nguồn gốc từ nước Pháp thơ mộng. Từ lâu nó đã trở thành món ăn truyền thống và rất phổ biến ở các nước châu Âu.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 4),
(4, 'Bánh Crepes Chanh', 31000, 'images/products/crepes-chanh.png', 12, NULL, 'Bánh crepe là một loại bánh rất mỏng được làm trên chảo và có nguồn gốc từ nước Pháp thơ mộng. Từ lâu nó đã trở thành món ăn truyền thống và rất phổ biến ở các nước châu Âu.', 'Bánh crepe là một loại bánh rất mỏng được làm trên chảo và có nguồn gốc từ nước Pháp thơ mộng. Từ lâu nó đã trở thành món ăn truyền thống và rất phổ biến ở các nước châu Âu.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 100, 1, 4),
(5, 'Bánh Crepes Dâu Tây', 31000, 'images/products/crepes-dau-tay.png', 12, NULL, 'Bánh crepe là một loại bánh rất mỏng được làm trên chảo và có nguồn gốc từ nước Pháp thơ mộng. Từ lâu nó đã trở thành món ăn truyền thống và rất phổ biến ở các nước châu Âu.', 'Bánh crepe là một loại bánh rất mỏng được làm trên chảo và có nguồn gốc từ nước Pháp thơ mộng. Từ lâu nó đã trở thành món ăn truyền thống và rất phổ biến ở các nước châu Âu.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 4),
(6, 'Bánh Crepes matcha', 27000, 'images/products/crepes-matcha.png', 12, NULL, 'Bánh crepe là một loại bánh rất mỏng được làm trên chảo và có nguồn gốc từ nước Pháp thơ mộng. Từ lâu nó đã trở thành món ăn truyền thống và rất phổ biến ở các nước châu Âu.', 'Bánh crepe là một loại bánh rất mỏng được làm trên chảo và có nguồn gốc từ nước Pháp thơ mộng. Từ lâu nó đã trở thành món ăn truyền thống và rất phổ biến ở các nước châu Âu.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 90, 0, 4),
(7, 'Bánh Crepes socola', 27000, 'images/products/crepes-socola.png', 12, NULL, 'Bánh crepe là một loại bánh rất mỏng được làm trên chảo và có nguồn gốc từ nước Pháp thơ mộng. Từ lâu nó đã trở thành món ăn truyền thống và rất phổ biến ở các nước châu Âu', 'Bánh crepe là một loại bánh rất mỏng được làm trên chảo và có nguồn gốc từ nước Pháp thơ mộng. Từ lâu nó đã trở thành món ăn truyền thống và rất phổ biến ở các nước châu Âu.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 4),
(8, 'Bánh Donut cam', 40000, 'images/products/donut-cam.png', 10, NULL, 'Bánh vòng là một loại bánh ngọt rán hoặc nướng để ăn tráng miệng hay ăn vặt. Đây là loại bánh rất nổi tiếng và phổ biến ở nhiều nước phương Tây, có thể được mua trong cửa hàng hoặc tự làm ở nhà. Thường bánh có dạng hình vòng nhồi nhân bên trong hoặc không nhồi nhân bên trong', 'Bánh vòng là một loại bánh ngọt rán hoặc nướng để ăn tráng miệng hay ăn vặt. Đây là loại bánh rất nổi tiếng và phổ biến ở nhiều nước phương Tây, có thể được mua trong cửa hàng hoặc tự làm ở nhà. Thường bánh có dạng hình vòng nhồi nhân bên trong hoặc không nhồi nhân bên trong', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 99, 0, 3),
(9, 'Bánh Donut mâm xôi', 35000, 'images/products/donut-mam-xoi.png', 10, NULL, 'Bánh vòng là một loại bánh ngọt rán hoặc nướng để ăn tráng miệng hay ăn vặt. Đây là loại bánh rất nổi tiếng và phổ biến ở nhiều nước phương Tây, có thể được mua trong cửa hàng hoặc tự làm ở nhà. Thường bánh có dạng hình vòng nhồi nhân bên trong hoặc không nhồi nhân bên trong', 'Bánh vòng là một loại bánh ngọt rán hoặc nướng để ăn tráng miệng hay ăn vặt. Đây là loại bánh rất nổi tiếng và phổ biến ở nhiều nước phương Tây, có thể được mua trong cửa hàng hoặc tự làm ở nhà. Thường bánh có dạng hình vòng nhồi nhân bên trong hoặc không nhồi nhân bên trong', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 99, 1, 3),
(10, 'Bánh Donut phủ dừa', 37000, 'images/products/donut-phu-dua.png', 10, NULL, 'Bánh vòng là một loại bánh ngọt rán hoặc nướng để ăn tráng miệng hay ăn vặt. Đây là loại bánh rất nổi tiếng và phổ biến ở nhiều nước phương Tây, có thể được mua trong cửa hàng hoặc tự làm ở nhà. Thường bánh có dạng hình vòng nhồi nhân bên trong hoặc không nhồi nhân bên trong', 'Bánh vòng là một loại bánh ngọt rán hoặc nướng để ăn tráng miệng hay ăn vặt. Đây là loại bánh rất nổi tiếng và phổ biến ở nhiều nước phương Tây, có thể được mua trong cửa hàng hoặc tự làm ở nhà. Thường bánh có dạng hình vòng nhồi nhân bên trong hoặc không nhồi nhân bên trong', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 57, 1, 3),
(11, 'Bánh Donut phủ socola', 37000, 'images/products/donut-phu-socola.png', 10, NULL, 'Bánh vòng là một loại bánh ngọt rán hoặc nướng để ăn tráng miệng hay ăn vặt. Đây là loại bánh rất nổi tiếng và phổ biến ở nhiều nước phương Tây, có thể được mua trong cửa hàng hoặc tự làm ở nhà. Thường bánh có dạng hình vòng nhồi nhân bên trong hoặc không nhồi nhân bên trong', 'Bánh vòng là một loại bánh ngọt rán hoặc nướng để ăn tráng miệng hay ăn vặt. Đây là loại bánh rất nổi tiếng và phổ biến ở nhiều nước phương Tây, có thể được mua trong cửa hàng hoặc tự làm ở nhà. Thường bánh có dạng hình vòng nhồi nhân bên trong hoặc không nhồi nhân bên trong', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 77, 0, 3),
(12, 'Bánh Donut việt quất', 42000, 'images/products/donut-viet-quat.png', 5, NULL, 'Bánh vòng là một loại bánh ngọt rán hoặc nướng để ăn tráng miệng hay ăn vặt. Đây là loại bánh rất nổi tiếng và phổ biến ở nhiều nước phương Tây, có thể được mua trong cửa hàng hoặc tự làm ở nhà. Thường bánh có dạng hình vòng nhồi nhân bên trong hoặc không nhồi nhân bên trong', 'Bánh vòng là một loại bánh ngọt rán hoặc nướng để ăn tráng miệng hay ăn vặt. Đây là loại bánh rất nổi tiếng và phổ biến ở nhiều nước phương Tây, có thể được mua trong cửa hàng hoặc tự làm ở nhà. Thường bánh có dạng hình vòng nhồi nhân bên trong hoặc không nhồi nhân bên trong', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 155, 1, 3),
(13, 'Bánh Macaron Cam', 37000, 'images/products/macaron-cam.png', 10, NULL, 'Macaron hay bánh macaroon Pháp là một loại bánh ngọt dựa trên bánh trứng đường. Macaron được làm từ lòng trắng trứng, đường bột, đường hạt, bột hạnh nhân, và màu thực phẩm. Theo truyền thống, macaron được tổ chức đã được giới thiệu ở Pháp bởi đầu bếp người Ý của nữ hoàng Catherine De Medici trong thời Phục hưng', 'Macaron hay bánh macaroon Pháp là một loại bánh ngọt dựa trên bánh trứng đường. Macaron được làm từ lòng trắng trứng, đường bột, đường hạt, bột hạnh nhân, và màu thực phẩm. Theo truyền thống, macaron được tổ chức đã được giới thiệu ở Pháp bởi đầu bếp người Ý của nữ hoàng Catherine De Medici trong thời Phục hưng', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 88, 0, 1),
(14, 'Bánh Macaron caramel', 2500, 'images/products/macaron-caramel.png', 10, NULL, 'Macaron hay bánh macaroon Pháp là một loại bánh ngọt dựa trên bánh trứng đường. Macaron được làm từ lòng trắng trứng, đường bột, đường hạt, bột hạnh nhân, và màu thực phẩm. Theo truyền thống, macaron được tổ chức đã được giới thiệu ở Pháp bởi đầu bếp người Ý của nữ hoàng Catherine De Medici trong thời Phục hưng', 'Macaron hay bánh macaroon Pháp là một loại bánh ngọt dựa trên bánh trứng đường. Macaron được làm từ lòng trắng trứng, đường bột, đường hạt, bột hạnh nhân, và màu thực phẩm. Theo truyền thống, macaron được tổ chức đã được giới thiệu ở Pháp bởi đầu bếp người Ý của nữ hoàng Catherine De Medici trong thời Phục hưng', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 88, 0, 1),
(15, 'Bánh Macaron chanh', 2500, 'images/products/macaron-chanh.png', 10, NULL, 'Macaron hay bánh macaroon Pháp là một loại bánh ngọt dựa trên bánh trứng đường. Macaron được làm từ lòng trắng trứng, đường bột, đường hạt, bột hạnh nhân, và màu thực phẩm. Theo truyền thống, macaron được tổ chức đã được giới thiệu ở Pháp bởi đầu bếp người Ý của nữ hoàng Catherine De Medici trong thời Phục hưng', 'Macaron hay bánh macaroon Pháp là một loại bánh ngọt dựa trên bánh trứng đường. Macaron được làm từ lòng trắng trứng, đường bột, đường hạt, bột hạnh nhân, và màu thực phẩm. Theo truyền thống, macaron được tổ chức đã được giới thiệu ở Pháp bởi đầu bếp người Ý của nữ hoàng Catherine De Medici trong thời Phục hưng', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 1),
(16, 'Bánh Macaron chanh leo', 25000, 'images/products/macaron-chanh-leo.png', 10, NULL, 'Macaron hay bánh macaroon Pháp là một loại bánh ngọt dựa trên bánh trứng đường. Macaron được làm từ lòng trắng trứng, đường bột, đường hạt, bột hạnh nhân, và màu thực phẩm. Theo truyền thống, macaron được tổ chức đã được giới thiệu ở Pháp bởi đầu bếp người Ý của nữ hoàng Catherine De Medici trong thời Phục hưng', 'Macaron hay bánh macaroon Pháp là một loại bánh ngọt dựa trên bánh trứng đường. Macaron được làm từ lòng trắng trứng, đường bột, đường hạt, bột hạnh nhân, và màu thực phẩm. Theo truyền thống, macaron được tổ chức đã được giới thiệu ở Pháp bởi đầu bếp người Ý của nữ hoàng Catherine De Medici trong thời Phục hưng', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 173, 1, 1),
(17, 'Bánh Macaron dâu tây', 39000, 'images/products/macaron-dau-tay.png', 10, NULL, 'Macaron hay bánh macaroon Pháp là một loại bánh ngọt dựa trên bánh trứng đường. Macaron được làm từ lòng trắng trứng, đường bột, đường hạt, bột hạnh nhân, và màu thực phẩm. Theo truyền thống, macaron được tổ chức đã được giới thiệu ở Pháp bởi đầu bếp người Ý của nữ hoàng Catherine De Medici trong thời Phục hưng', 'Macaron hay bánh macaroon Pháp là một loại bánh ngọt dựa trên bánh trứng đường. Macaron được làm từ lòng trắng trứng, đường bột, đường hạt, bột hạnh nhân, và màu thực phẩm. Theo truyền thống, macaron được tổ chức đã được giới thiệu ở Pháp bởi đầu bếp người Ý của nữ hoàng Catherine De Medici trong thời Phục hưng', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 99, 0, 1),
(18, 'Bánh Macaron mâm xôi', 39000, 'images/products/macaron-mam-xoi.png', 10, NULL, 'Macaron hay bánh macaroon Pháp là một loại bánh ngọt dựa trên bánh trứng đường. Macaron được làm từ lòng trắng trứng, đường bột, đường hạt, bột hạnh nhân, và màu thực phẩm. Theo truyền thống, macaron được tổ chức đã được giới thiệu ở Pháp bởi đầu bếp người Ý của nữ hoàng Catherine De Medici trong thời Phục hưng', 'Macaron hay bánh macaroon Pháp là một loại bánh ngọt dựa trên bánh trứng đường. Macaron được làm từ lòng trắng trứng, đường bột, đường hạt, bột hạnh nhân, và màu thực phẩm. Theo truyền thống, macaron được tổ chức đã được giới thiệu ở Pháp bởi đầu bếp người Ý của nữ hoàng Catherine De Medici trong thời Phục hưng', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 1),
(19, 'Bánh Macaron vani', 22000, 'images/products/macaron-vani.png', 20, NULL, 'Macaron hay bánh macaroon Pháp là một loại bánh ngọt dựa trên bánh trứng đường. Macaron được làm từ lòng trắng trứng, đường bột, đường hạt, bột hạnh nhân, và màu thực phẩm. Theo truyền thống, macaron được tổ chức đã được giới thiệu ở Pháp bởi đầu bếp người Ý của nữ hoàng Catherine De Medici trong thời Phục hưng', 'Macaron hay bánh macaroon Pháp là một loại bánh ngọt dựa trên bánh trứng đường. Macaron được làm từ lòng trắng trứng, đường bột, đường hạt, bột hạnh nhân, và màu thực phẩm. Theo truyền thống, macaron được tổ chức đã được giới thiệu ở Pháp bởi đầu bếp người Ý của nữ hoàng Catherine De Medici trong thời Phục hưng', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 77, 0, 1),
(20, 'Bánh Pancake dâu', 42000, 'images/products/pancake-dau.png', 20, NULL, 'Bánh Pancake còn được biết đến với tên gọi quen thuộc là bánh kếp – một món bánh khá phổ biến ở nhiều quốc gia trên thế giới. Nhờ hương vị thơm ngon mới lạ, nhiều dưỡng chất mà chỉ trong vài năm trở lại đây, khi du nhập vào Việt Nam thì bánh pancake đã được rất nhiều người ưa chuộng.', 'Bánh Pancake còn được biết đến với tên gọi quen thuộc là bánh kếp – một món bánh khá phổ biến ở nhiều quốc gia trên thế giới. Nhờ hương vị thơm ngon mới lạ, nhiều dưỡng chất mà chỉ trong vài năm trở lại đây, khi du nhập vào Việt Nam thì bánh pancake đã được rất nhiều người ưa chuộng.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 77, 0, 5),
(21, 'Bánh Pancake matcha', 42000, 'images/products/pancake-matcha.png', 20, NULL, 'Bánh Pancake còn được biết đến với tên gọi quen thuộc là bánh kếp – một món bánh khá phổ biến ở nhiều quốc gia trên thế giới. Nhờ hương vị thơm ngon mới lạ, nhiều dưỡng chất mà chỉ trong vài năm trở lại đây, khi du nhập vào Việt Nam thì bánh pancake đã được rất nhiều người ưa chuộng.', 'Bánh Pancake còn được biết đến với tên gọi quen thuộc là bánh kếp – một món bánh khá phổ biến ở nhiều quốc gia trên thế giới. Nhờ hương vị thơm ngon mới lạ, nhiều dưỡng chất mà chỉ trong vài năm trở lại đây, khi du nhập vào Việt Nam thì bánh pancake đã được rất nhiều người ưa chuộng.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 5),
(22, 'Bánh Pancake socola', 42000, 'images/products/pancake-socola.png', 20, NULL, 'Bánh Pancake còn được biết đến với tên gọi quen thuộc là bánh kếp – một món bánh khá phổ biến ở nhiều quốc gia trên thế giới. Nhờ hương vị thơm ngon mới lạ, nhiều dưỡng chất mà chỉ trong vài năm trở lại đây, khi du nhập vào Việt Nam thì bánh pancake đã được rất nhiều người ưa chuộng.', 'Bánh Pancake còn được biết đến với tên gọi quen thuộc là bánh kếp – một món bánh khá phổ biến ở nhiều quốc gia trên thế giới. Nhờ hương vị thơm ngon mới lạ, nhiều dưỡng chất mà chỉ trong vài năm trở lại đây, khi du nhập vào Việt Nam thì bánh pancake đã được rất nhiều người ưa chuộng.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 5),
(23, 'Bánh Pancake việt quất', 38000, 'images/products/pancake-viet-quat.png', 20, NULL, 'Bánh Pancake còn được biết đến với tên gọi quen thuộc là bánh kếp – một món bánh khá phổ biến ở nhiều quốc gia trên thế giới. Nhờ hương vị thơm ngon mới lạ, nhiều dưỡng chất mà chỉ trong vài năm trở lại đây, khi du nhập vào Việt Nam thì bánh pancake đã được rất nhiều người ưa chuộng.', 'Bánh Pancake còn được biết đến với tên gọi quen thuộc là bánh kếp – một món bánh khá phổ biến ở nhiều quốc gia trên thế giới. Nhờ hương vị thơm ngon mới lạ, nhiều dưỡng chất mà chỉ trong vài năm trở lại đây, khi du nhập vào Việt Nam thì bánh pancake đã được rất nhiều người ưa chuộng.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 111, 1, 5),
(24, 'Bánh Tiramisu Chanh', 38000, 'images/products/tiramisu-chanh.png', 11, NULL, 'Tiramisu là một loại bánh ngọt tráng miệng vị cà phê của nước Ý, gồm các lớp bánh quy Savoiardi, nhúng cà phê xen kẽ với hỗn hợp trứng, đường, phô mai mascarpone đánh bông, thêm một ít bột cacao. Công thức bánh này được biến tấu thành nhiều món bánh và món tráng miệng khác nhau.', 'Tiramisu là một loại bánh ngọt tráng miệng vị cà phê của nước Ý, gồm các lớp bánh quy Savoiardi, nhúng cà phê xen kẽ với hỗn hợp trứng, đường, phô mai mascarpone đánh bông, thêm một ít bột cacao. Công thức bánh này được biến tấu thành nhiều món bánh và món tráng miệng khác nhau.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 112, 1, 2),
(25, 'Bánh Tiramisu mâm xôi', 38000, 'images/products/tiramisu-mam-xoi.png', 11, NULL, 'Tiramisu là một loại bánh ngọt tráng miệng vị cà phê của nước Ý, gồm các lớp bánh quy Savoiardi, nhúng cà phê xen kẽ với hỗn hợp trứng, đường, phô mai mascarpone đánh bông, thêm một ít bột cacao. Công thức bánh này được biến tấu thành nhiều món bánh và món tráng miệng khác nhau.', 'Tiramisu là một loại bánh ngọt tráng miệng vị cà phê của nước Ý, gồm các lớp bánh quy Savoiardi, nhúng cà phê xen kẽ với hỗn hợp trứng, đường, phô mai mascarpone đánh bông, thêm một ít bột cacao. Công thức bánh này được biến tấu thành nhiều món bánh và món tráng miệng khác nhau.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 147, 1, 2),
(26, 'Bánh Tiramisu phô mai', 38000, 'images/products/tiramisu-pho-mai.png', 11, NULL, 'Tiramisu là một loại bánh ngọt tráng miệng vị cà phê của nước Ý, gồm các lớp bánh quy Savoiardi, nhúng cà phê xen kẽ với hỗn hợp trứng, đường, phô mai mascarpone đánh bông, thêm một ít bột cacao. Công thức bánh này được biến tấu thành nhiều món bánh và món tráng miệng khác nhau.', 'Tiramisu là một loại bánh ngọt tráng miệng vị cà phê của nước Ý, gồm các lớp bánh quy Savoiardi, nhúng cà phê xen kẽ với hỗn hợp trứng, đường, phô mai mascarpone đánh bông, thêm một ít bột cacao. Công thức bánh này được biến tấu thành nhiều món bánh và món tráng miệng khác nhau.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 2),
(27, 'Bánh Tiramisu truyền thống', 30000, 'images/products/tiramisu-truyen-thong.png', 11, NULL, 'Tiramisu là một loại bánh ngọt tráng miệng vị cà phê của nước Ý, gồm các lớp bánh quy Savoiardi, nhúng cà phê xen kẽ với hỗn hợp trứng, đường, phô mai mascarpone đánh bông, thêm một ít bột cacao. Công thức bánh này được biến tấu thành nhiều món bánh và món tráng miệng khác nhau.', 'Tiramisu là một loại bánh ngọt tráng miệng vị cà phê của nước Ý, gồm các lớp bánh quy Savoiardi, nhúng cà phê xen kẽ với hỗn hợp trứng, đường, phô mai mascarpone đánh bông, thêm một ít bột cacao. Công thức bánh này được biến tấu thành nhiều món bánh và món tráng miệng khác nhau.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 2),
(28, 'Bánh Tiramisu dâu tây', 30000, 'images/products/tiramisu-dau-tay.png', 11, NULL, 'Tiramisu là một loại bánh ngọt tráng miệng vị cà phê của nước Ý, gồm các lớp bánh quy Savoiardi, nhúng cà phê xen kẽ với hỗn hợp trứng, đường, phô mai mascarpone đánh bông, thêm một ít bột cacao. Công thức bánh này được biến tấu thành nhiều món bánh và món tráng miệng khác nhau.', 'Tiramisu là một loại bánh ngọt tráng miệng vị cà phê của nước Ý, gồm các lớp bánh quy Savoiardi, nhúng cà phê xen kẽ với hỗn hợp trứng, đường, phô mai mascarpone đánh bông, thêm một ít bột cacao. Công thức bánh này được biến tấu thành nhiều món bánh và món tráng miệng khác nhau.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 92, 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(150) NOT NULL,
  `username` varchar(500) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `role` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`, `address`, `phone`, `role`) VALUES
(5, '123@gmail.com', '123', '123', NULL, NULL, 0),
(6, 'abc@gmail.com', '$2b$10$EwkcKx7.CB6wLGu1Qv1pSeMJGSh/Cc51WFFaumCPZnkBWr0xA1pm.', NULL, NULL, NULL, 0),
(7, 'thuynnt262@gmail.com', '$2b$10$/92o1wnjjnP2LF7gkQ.cmObHPN2g7XnCjEUDDyApLBeuw6OjcBQaS', 'admin123', NULL, NULL, 1),
(8, 'nntt2622@gmail.com', '$2b$10$wH5.tdKyI.uBn78XADxgyukVVhrFh9kWu1gabPQ5EtpcVmZUZ7jta', NULL, NULL, NULL, 0),
(9, 'abc@gmail.com', '$2b$10$J6gISQc0K0kBSitNq3wlje0naA5SRR4Dej5dmGb/Ec.LEMPkbt0I6', NULL, NULL, NULL, 0),
(10, 'abc@gmail.com', '$2b$10$ZvIRag5wFQn8t..EzhRfF.7VpwtF3z2/jfgXHJQqkCQYNb9evTH7q', NULL, NULL, NULL, 0),
(11, 'abc@gmail.com', '$2b$10$Fe9.uxanH6.0TFo1mFtu3OnigydgdD5gcDoCXYkcfyOytH/sh28M.', NULL, NULL, NULL, 0),
(12, 'anguyenvan@gmail.com', '$2b$10$AAOD.KG8b3Ctb2vKWpraQ.1XjAvcAf.ODz5lNLMns5u4eKy6dSYWK', NULL, NULL, NULL, 0),
(13, 'abc@gmail.com', '$2b$10$SPRh1zeLq0u/Plr4JKRdS.T3L8NDxUZSms3I1krmzn9Hy/mEoniMq', NULL, NULL, NULL, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cateId` (`cateId`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cateId`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
