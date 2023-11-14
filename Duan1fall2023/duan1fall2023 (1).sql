-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 14, 2023 lúc 05:56 PM
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
-- Cơ sở dữ liệu: `duan1fall2023`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `no_ticket` int(11) NOT NULL,
  `seat_dt_id` int(11) NOT NULL,
  `cinema_id` int(11) NOT NULL,
  `booking_date` date NOT NULL,
  `total_amount` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cinema`
--

CREATE TABLE `cinema` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cinema`
--

INSERT INTO `cinema` (`id`, `name`, `location`, `city`) VALUES
(2, 'CGV', 'CGV Hồ Gươm Plaza', 'Hà Nội'),
(3, 'Lotte', 'Lotte Thăng Long', 'Hà Nội'),
(5, 'BHD Star', 'BHD Star Vincom Phạm Ngọc Thạch', 'Hà Nội'),
(6, 'Beta Cineplex', 'Beta Cineplex Mỹ Đình', 'Hà Nội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `num` varchar(50) NOT NULL,
  `msg` varchar(100) NOT NULL,
  `msg_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `num`, `msg`, `msg_date`) VALUES
(1, 'Nguyễn Văn Tùng Dương', 'duongnvtph41711@fpt.edu.vn', '0397468816', 'hi', '2023-11-14'),
(3, 'Nguyễn Văn Tùng Dương', 'nguyentu99bn123@gmail.com', '0397468816', '1', '2023-11-14'),
(6, 'Nguyễn Văn Tùng Dương', 'nhom8mktonl@gmail.com', '0397468816', '2', '2023-11-14'),
(7, 'Nguyễn Văn Tùng Dương', 'duongnvtph41711@fpt.edu.vn', '0397468816', '3', '2023-11-14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cellno` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `fullname`, `email`, `cellno`, `gender`, `password`) VALUES
(1, 'Nguyễn Văn Tùng Dương', 'duongnvtph41711@fpt.edu.vn', '0397468816', 'male', '123'),
(4, 'tú123a', 'tduong2k4@gmail.com', '033156165', 'male', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `genre_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `genre`
--

INSERT INTO `genre` (`id`, `genre_name`) VALUES
(1, 'Comedy'),
(2, 'Drama'),
(3, 'Cartoon'),
(4, 'Horror'),
(5, 'Romantic'),
(6, 'Action');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `industry`
--

CREATE TABLE `industry` (
  `id` int(11) NOT NULL,
  `industry_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `industry`
--

INSERT INTO `industry` (`id`, `industry_name`) VALUES
(1, 'HollyWood'),
(2, 'Los Angeles'),
(3, 'Disney'),
(4, 'Fox Movie'),
(5, 'Mavel Comic'),
(6, 'Korea');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `lang_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `language`
--

INSERT INTO `language` (`id`, `lang_name`) VALUES
(1, 'English'),
(2, 'VietNamese'),
(3, 'Korean'),
(4, 'Chinese');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `movie_banner` varchar(50) NOT NULL,
  `movie_desc` varchar(4000) NOT NULL,
  `rel_date` date NOT NULL,
  `industry_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `duration` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `movie`
--

INSERT INTO `movie` (`id`, `name`, `movie_banner`, `movie_desc`, `rel_date`, `industry_id`, `genre_id`, `lang_id`, `duration`) VALUES
(1, 'Titanic', 'img/movie1.jpg', 'Chuyến Tàu Định Mệnh Titanic 1997 Full HD Vietsub Thuyết Minh Rose Dewitt Bukater bị gia đình “ép duyên” với nhà quý tộc giàu có Cal Hockley. Cuộc đời của cô lẽ ra sẽ được sắp đặt theo kế hoạch nhưng mọi chuyện đã thay đổi khi cô bước chân lên con tàu Titanic. Chính nơi đây cô đã gặp được Jack Dawso.', '2013-11-02', 1, 5, 1, '2 Hours'),
(2, 'Spider-Man:No Way Home', 'img/movie2.jpg', 'Người Nhện: Không Còn Nhà Spider-Man: No Way Home 2021 Full HD Vietsub Thuyết Minh Khi trailer của Spider-Man: No Way Home ra mắt vào ngày 16 tháng 11, nó đã chiếm lĩnh xu hướng toàn thế giới của Twitter khi những người hâm mộ mắt đại bàng đã tìm thấy teaser cho mỗi quả trứng phục sinh mà họ tìm thấy. Những người hâm mộ Marvel đã thất vọng khi cựu Spider-Men Tobey Maguire và Andrew Garfield không có trong trailer, đặc biệt là kể từ khi những phản diện mà họ đánh bại được thiết lập để trở lại trong bộ phim sắp tới. Nhưng không phải tất cả hy vọng cho một cuộc crossover Spidey đa vũ trụ đều bị mất . Với danh tính của Người Nhện giờ đã được tiết lộ, Peter nhờ Doctor Strange giúp đỡ. Khi một câu thần chú bị sai, những kẻ thù nguy hiểm từ các thế giới khác bắt đầu xuất hiện, buộc Peter phải khám phá ra ý nghĩa thực sự của việc trở thành Người Nhện.', '2021-12-15', 5, 6, 1, '1 Hours'),
(3, 'Avengers: End Game', 'img/movie3.jpg', 'Biệt Đội Siêu Anh Hùng 4: Hồi Kết - Avengers: Endgame: Cú búng tay của Thanos đã khiến toàn bộ dân số biến mất một nửa. Các siêu anh hùng đánh mất bạn bè, người thân và đánh mất cả chính mình. Bộ sáu Avengers đầu tiên tứ tán. Iron Man kẹt lại ngoài không gian, Hawkeye mất tích. Thor, Captain America, Hulk và Black Widow đều chìm trong nỗi đau vô tận vì mất đi những người thân yêu. Họ phải làm gì để cứu vãn mọi chuyện ở Avengers: Hồi Kết? Điều khán giả quan tâm nhất hiện nay chính là ai sẽ còn sống và ai sẽ ra đi khi Avengers: Endgame kết thúc.\r\n\r\nCaptain America là người có khả năng ra đi cao nhất khi Chris Evans đã tuyên bố từ bỏ chiếc áo Đại Úy Mỹ. Iron Man Tony Stark- người mở đầu của vũ trụ điện ảnh Marvel cũng có khả năng “bay màu” tương tự. Thor sau tội lỗi “không nhắm vào đầu” cũng thuộc danh sách nguy hiểm. Những người duy nhất chắc chắn còn sống sau Avengers: Hồi Kết là Nick Fury, Maria Hill và cậu bé Người Nhện Peter Parker. Ngoài ra, vai trò của chị Đại Captain Marvel với sức mạnh khủng khiếp trong câu chuyện này là gì? Câu trả lời sẽ có trong Avengers: Endgame.', '2019-04-22', 5, 6, 1, '3 Hours'),
(4, 'Dear Judge', 'img/movie4.jpg', 'Thẩm Phán Giả Mạo VietSub, hay còn được gọi là Dear Judge (2018), là một bộ phim độc đáo với chủ đề về một con người hai tính phương pháp. Đây là một dự án đáng chú ý của đài SBS trong tháng 7, được phát sóng vào khuôn giờ vàng tối đồng thời hàng tuần, hứa hẹn sẽ là một món ăn tinh thần hoàn hảo cho khán giả.\r\n\r\nBộ phim được chỉ đạo nội dung bởi đạo diễn Boo Sung Chul, một tên rất thân thuộc với SBS và đã thành công với nhiều dự án chất lượng như Our Gab-Soon, Mask và My Girlfriend is a Nine Tailed Fox. Ngoài ra, phim còn có sự tham gia của dàn diễn viên chất lượng, bao gồm Yoon Si Yoon - một nam diễn viên điển trai của điện ảnh Hàn Quốc và Lee Yoo Young - một nữ diễn viên tài năng đã giành giải nữ diễn viên xuất sắc nhất tại liên hoan phim quốc tế.\r\n\r\nNội dung phim xoay quanh cuộc sống và công việc của hai anh em sinh đôi Han Soo Ho và Han Kang Ho. Từ khi sinh ra, hai người đã có tính cách trái ngược nhau, và sau khi trưởng thành, họ đã chọn con đường khác nhau. Soo Ho là một thẩm phán tài năng, công tâm và chăm chỉ, trong khi Kang Ho là một kẻ máu mặt, sẵn sàng phạm tội và không sợ hãi.\r\n\r\nMột ngày nọ, Soo Ho bí ẩn mất tích và Kang Ho đã chiếm lấy vị trí thẩm phán của anh trai mình. Điều này mở ra một trang mới đầy thú vị trong cuộc sống của Kang Ho.', '2020-11-11', 6, 1, 3, '1 Hours'),
(5, 'Thor: Love and Thunder', 'img/movie5.jpg', 'Thor: Love and Thunder sẽ là phim chiếu rạp với sự xác nhận sự trở lại của Jane Foster, người tình cũ của Thor và những câu hỏi xoay quanh vai trò của cô nàng đã xuất hiện. Cụ thể, theo nguyên gốc, Jane Foster cũng được trao cho sức mạnh của Thor để cô thoát khỏi thân thể phàm trần ốm yếu do căn bệnh ung thư. Vẫn chưa rõ vai trò của Jane trong phần phim thứ 4 của Thor là gì, nhưng khả năng cô trở thành Thor tiếp theo của MCU hoàn toàn có thể xảy ra, khi mà nữ quyền đang lên ngôi trong thế giới siêu anh hùng.', '2023-11-29', 5, 6, 1, '2 Hours');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seat_detail`
--

CREATE TABLE `seat_detail` (
  `id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `seat_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seat_reserved`
--

CREATE TABLE `seat_reserved` (
  `id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `seat_number` varchar(50) NOT NULL,
  `reserved` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `show`
--

CREATE TABLE `show` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `show_date` date NOT NULL,
  `show_time_id` int(11) NOT NULL,
  `no_seat` int(11) NOT NULL,
  `cinema_id` int(11) NOT NULL,
  `ticket_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `show`
--

INSERT INTO `show` (`id`, `movie_id`, `show_date`, `show_time_id`, `no_seat`, `cinema_id`, `ticket_price`) VALUES
(1, 3, '2023-11-24', 4, 40, 2, 500);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `show_time`
--

CREATE TABLE `show_time` (
  `id` int(11) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `show_time`
--

INSERT INTO `show_time` (`id`, `time`) VALUES
(1, '1:00 P.M - 3:00 P.M'),
(2, '3:30 P.M - 5:30 P.M'),
(4, '6:00 P.M - 8:00 P.M'),
(5, '8:30 P.M - 10:30 P.M'),
(6, '11:00 P.M - 1:00 A.M'),
(7, '1:30 A.M - 3:30 A.M'),
(8, '4:00 A.M - 6:00 A.M'),
(9, '6:30 A.M - 8:30 A.M'),
(10, '9:00 A.M - 11:00 A.M'),
(11, '11:00 A.M - 1:00 P.M');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `img_path` varchar(100) NOT NULL,
  `alt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `img_path`, `alt`) VALUES
(1, 'img/banner1.jpeg', 'First slide'),
(2, 'img/banner2.jpg', 'Second slide'),
(3, 'img/banner3.jpeg', 'Third slide'),
(4, 'img/banner4.jpg', 'Forth slide');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `show_id` (`show_id`),
  ADD KEY `seat_dt_id` (`seat_dt_id`);

--
-- Chỉ mục cho bảng `cinema`
--
ALTER TABLE `cinema`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cellno` (`cellno`);

--
-- Chỉ mục cho bảng `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `industry`
--
ALTER TABLE `industry`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `industry_id` (`industry_id`),
  ADD KEY `genre_id` (`genre_id`),
  ADD KEY `lang_id` (`lang_id`);

--
-- Chỉ mục cho bảng `seat_detail`
--
ALTER TABLE `seat_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `show_id` (`show_id`);

--
-- Chỉ mục cho bảng `seat_reserved`
--
ALTER TABLE `seat_reserved`
  ADD PRIMARY KEY (`id`),
  ADD KEY `show_id` (`show_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Chỉ mục cho bảng `show`
--
ALTER TABLE `show`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `cinema_id` (`cinema_id`),
  ADD KEY `show_time_id` (`show_time_id`);

--
-- Chỉ mục cho bảng `show_time`
--
ALTER TABLE `show_time`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cinema`
--
ALTER TABLE `cinema`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `industry`
--
ALTER TABLE `industry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `seat_detail`
--
ALTER TABLE `seat_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `seat_reserved`
--
ALTER TABLE `seat_reserved`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `show`
--
ALTER TABLE `show`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `show_time`
--
ALTER TABLE `show_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`show_id`) REFERENCES `show` (`id`),
  ADD CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`seat_dt_id`) REFERENCES `seat_detail` (`id`);

--
-- Các ràng buộc cho bảng `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`industry_id`) REFERENCES `industry` (`id`),
  ADD CONSTRAINT `movie_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`),
  ADD CONSTRAINT `movie_ibfk_3` FOREIGN KEY (`lang_id`) REFERENCES `language` (`id`);

--
-- Các ràng buộc cho bảng `seat_detail`
--
ALTER TABLE `seat_detail`
  ADD CONSTRAINT `seat_detail_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `seat_detail_ibfk_2` FOREIGN KEY (`show_id`) REFERENCES `show` (`id`);

--
-- Các ràng buộc cho bảng `seat_reserved`
--
ALTER TABLE `seat_reserved`
  ADD CONSTRAINT `seat_reserved_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `show` (`id`),
  ADD CONSTRAINT `seat_reserved_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`id`);

--
-- Các ràng buộc cho bảng `show`
--
ALTER TABLE `show`
  ADD CONSTRAINT `show_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  ADD CONSTRAINT `show_ibfk_3` FOREIGN KEY (`cinema_id`) REFERENCES `cinema` (`id`),
  ADD CONSTRAINT `show_ibfk_4` FOREIGN KEY (`show_time_id`) REFERENCES `show_time` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
