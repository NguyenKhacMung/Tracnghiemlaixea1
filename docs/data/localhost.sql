-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 17, 2019 lúc 08:27 AM
-- Phiên bản máy phục vụ: 10.1.29-MariaDB
-- Phiên bản PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `localhost`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cauhoi`
--

CREATE TABLE `cauhoi` (
  `MaCauHoi` int(11) NOT NULL,
  `NoiDungCauHoi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CauHoi1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CauHoi2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CauHoi3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `CauHoi4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `DapAn1` int(11) NOT NULL,
  `DapAn2` int(11) DEFAULT NULL,
  `MaLoaiCauHoi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cauhoi`
--

INSERT INTO `cauhoi` (`MaCauHoi`, `NoiDungCauHoi`, `CauHoi1`, `CauHoi2`, `CauHoi3`, `CauHoi4`, `DapAn1`, `DapAn2`, `MaLoaiCauHoi`) VALUES
(1, 'Khái niệm \"đường bộ\" được hiểu thế nào là đúng?\r\nĐường bộ gồm:', 'Đường, cầu đường bộ.', 'Hầm đường bộ, bến phà đường bộ.', 'Đường, cầu đường bộ, hầm đường bộ, bến phà đường bộ và các công trình phụ trợ khác.', NULL, 1, 2, 1),
(2, '\"Vạch kẻ đường\" được hiểu thế nào là đúng?', 'Là phần của đường bộ được sử dụng cho các phương tiện giao thông qua lại.\r\n', 'Là phần đường bộ được sử dụng cho các phương tiện giao thông qua lại, dải đất dọc hai bên đường để đảm bảo an toàn giao thông.', 'Là phần đường bộ được sử dụng cho các phương tiện giao thông qua lại, các công trình, thiết bị phụ trợ khác và dải đất dọc hai bên đường để đảm bảo an toàn giao thông.', NULL, 1, NULL, 1),
(3, 'Khái niệm \"phần đường xe chạy\" được hiểu như thế nào là đúng?', 'Là phần của đường bộ được sử dụng cho các phương tiện giao thông qua lại.', 'Là phần đường bộ được sử dụng cho các phương tiện giao thông qua lại, dải đất dọc hai bên đường để đảm bảo an toàn giao thông.', 'Là phần đường bộ được sử dụng cho các phương tiện giao thông qua lại, các công trình, thiết bị phụ trợ khác và dải đất dọc hai bên đường để đảm bảo an toàn giao thông.', NULL, 1, NULL, 1),
(4, 'Khái niệm “Làn đường” được hiểu như thế nào là đúng?', 'Là một phần của đường được chia theo chiều ngang của đường, có bề rộng đủ cho xe đỗ an toàn.', 'Là một phần đường xe chạy được chia theo chiều dọc của đường, có bề rộng đủ cho xe chạy an toàn.', 'Cả 02 ý trên.', NULL, 2, NULL, 1),
(5, 'Khái niệm “đường phố” được hiểu như thế nào là đúng?', 'Đường phố là đường đô thị, gồm lòng đường và hè phố.', 'Đường phố là đường bộ ngoài đô thị có lòng đường đủ rộng cho các phương tiện giao thông qua lại', 'Cả hai ý nêu trên.', NULL, 1, NULL, 1),
(6, 'Khái niệm “dải phân cách” được hiểu như thế nào là đúng?', 'Là bộ phận của đường để phân chia mặt đường thành hai chiều xe chạy riêng biệt hoặc để phân chia phần đường của xe cơ giới và xe thô sơ.', 'Là bộ phận của đường để xác định ranh giới của đất dành cho người đi bộ theo chiều ngang của đường.', 'Là bộ phận của đường để ngăn cách không cho các loại xe vào những nơi không được phép.', NULL, 1, NULL, 1),
(7, 'Dải phân cách trên đường bộ có những loại nào?', 'Loại cố định.', 'Loại di động.', NULL, NULL, 1, 2, 1),
(8, 'Khái niệm “đường ưu tiên” được hiểu như thế nào là đúng?', 'Đường ưu tiên là đường mà trên đó phương tiện tham gia giao thông đường bộ phải nhường đường cho các phương tiện đến từ hướng khác khi qua nơi đường giao nhau, có thể được cắm biển báo hiệu đường ưu tiên.', 'Đường ưu tiên là đường mà trên đó phương tiện tham gia giao thông đường bộ được các phương tiện đến từ hướng khác nhường đường khi qua nơi đường giao nhau, được cắm biển báo hiệu đường ưu tiên.', 'Đường ưu tiên là đường chỉ dành cho một số loại phương tiện tham gia giao thông, được cắm biển báo hiệu đường ưu tiên.', NULL, 2, NULL, 1),
(9, '\"Phương tiện giao thông đường bộ\" gồm những loại nào?', 'Phương tiện giao thông cơ giới đường bộ, phương tiện giao thông thô sơ đường bộ.', 'Phương tiện giao thông thô sơ đường bộ, phương tiện giao thông cơ giới đường bộ và xe máy chuyên dùng.', 'Cả hai ý nêu trên.', NULL, 1, NULL, 1),
(10, 'Khái niệm “phương tiện giao thông cơ giới đường bộ” được hiểu như thế nào là đúng?', 'Gồm xe ô tô, máy kéo, xe mô tô hai bánh, xe mô tô ba bánh, xe gắn máy, xe cơ giới dành cho người khuyết tật và xe máy chuyên dùng.', 'Gồm xe ô tô, máy kéo, rơ moóc hoặc sơ mi rơ moóc được kéo bởi xe ô tô, máy kéo, xe mô tô hai bánh, xe mô tô ba bánh, xe gắn máy (kể cả xe máy điện) và các loại xe tương tự.', NULL, NULL, 2, NULL, 1),
(11, '“Phương tiện tham gia giao thông đường bộ” gồm những loại nào?', 'Phương tiện giao thông cơ giới đường bộ.', 'Phương tiện giao thông thô sơ đường bộ và xe máy chuyên dùng.', NULL, NULL, 1, 2, 1),
(12, '“Người tham gia giao thông đường bộ” gồm những đối tượng nào?', 'Người điều khiển, người sử dụng phương tiện tham gia giao thông đường bộ.', 'Người điều khiển, dẫn dắt súc vật; người đi bộ trên đường bộ.', NULL, NULL, 1, 2, 1),
(13, 'Khái niệm “người điều khiển giao thông” được hiểu như thế nào là đúng?', 'Là người điều khiển phương tiện tham gia giao thông.', 'Là người được giao nhiệm vụ hướng dẫn giao thông tại nơi thi công, nơi ùn tắc giao thông, ở bến phà, tại cầu đường bộ đi chung với đường sắt.', 'Là cảnh sát giao thông', 'Tất cả các ý nêu trên.', 2, 3, 1),
(14, 'Các hành vi nào ghi ở dưới đây bị nghiêm cấm?', 'Phá hoại đường, cầu, hầm, bến phà đường bộ, phá hoại đèn tín hiệu, cọc tiêu, biển báo hiệu, gương cầu, dải phân cách.', 'Phá hoại hệ thống thoát nước và các công trình, thiết bị khác thuộc kết cấu hạ tầng giao thông đường bộ.', NULL, NULL, 1, 2, 2),
(15, 'Những hành vi nào ghi ở dưới đây bị nghiêm cấm?', 'Đua xe, cổ vũ đua xe, tổ chức đưa xe trái phép', 'Lạng lách, đánh võng.', NULL, NULL, 1, 2, 2),
(16, 'Người điều khiển phương tiện giao thông đường bộ mà trong cơ thể có chất ma túy có bị nghiêm cấm hay không?', 'Bị nghiêm cấm.', 'Không bị nghiêm cấm', NULL, NULL, 1, NULL, 2),
(17, 'Người điều khiển xe ô tô, xe máy kéo, xe máy chuyên dùng trên đường mà trong máu hoặc hơi thở có nồng độ cồn vượt quá bao nhiêu thì bị cấm?', 'Người điều khiển xe ô tô, máy kéo, xe máy chuyên dùng trên đường mà trong máu có nồng độ cồn vượt quá 50 miligam/100 mililit máu hoặc 0,25 miligam/1 lít khí thở.', 'Người điều khiển xe ô tô, máy kéo, xe máy chuyên dùng trên đường mà trong máu hoặc hơi thở có nồng độ cồn.', 'Người điều khiển xe ô tô, máy kéo, xe máy chuyên dùng trên đường mà trong máu có nồng độ cồn vượt quá 80 miligam/100 mililít máu hoặc 40 miligam/1 lít khí thở.', NULL, 2, NULL, 2),
(18, 'Người điều khiển xe mô tô, xe gắn máy trên đường mà trong máu có nồng độ cồn vượt quá bao nhiêu thì bị cấm?', 'Nồng độ cồn vượt quá 50 miligam/ 100 mililít máu.', 'Nồng độ cồn vượt quá 40 miligam/ 100 mililít máu.', 'Nồng độ cồn vượt quá 30 miligam/ 100 mililít máu.', NULL, 1, NULL, 2),
(19, 'Người điều khiển xe mô tô, xe gắn máy trên đường mà trong khí thở có nồng độ cồn vượt quá bao nhiêu thì bị cấm?', 'Nồng độ cồn vượt quá 0,25 miligam/ 1 lít khí thở.', 'Nồng độ cồn vượt quá 0,20 miligam/ 1 lít khí thở.', 'Nồng độ cồn vượt quá 0,15 miligam/ 1 lít khí thở.', NULL, 1, NULL, 2),
(20, 'Hành vi giao xe cơ giới, xe máy chuyên dùng cho người không đủ điều kiện để điều khiển xe tham gia giao thông có bị nghiêm cấm hay không?', 'Không bị nghiêm cấm. ', ' Bị nghiêm cấm.', 'Nghiêm cấm tùy từng trường hợp', NULL, 2, NULL, 2),
(21, 'Hành vi điều khiển xe cơ giới chạy quá tốc độ quy định, giành đường, vượt ẩu có bị nghiêm cấm hay không?', 'Bị nghiêm cấm.', 'Bị nghiêm cấm tùy từng trường hợp.', 'Không bị nghiêm cấm.', NULL, 1, NULL, 2),
(22, 'Những hành vi nào sau đây bị cấm?', 'Bấm còi, rú ga liên tục, bấm còi trong thời gian từ 22 giờ đến 5 giờ.', 'Bấm còi hơi, sử dụng đèn chiếu xa trong khu đô thị và khu dân cư, trừ các xe ưu tiên khi đang làm nhiệm vụ.', NULL, NULL, 1, 2, 2),
(23, 'Các hành vi nào sau đây bị nghiêm cấm?', 'Lắp đặt, sử dụng còi, đèn không đúng thiết kế của nhà sản xuất đối với từng loại xe cơ giới.', 'Sử dụng thiết bị âm thanh gây mất trật tự an toàn giao thông, trật tự công cộng.', NULL, NULL, 1, 2, 2),
(24, 'Hành vi bỏ trốn sau khi gây tai nạn để trốn tránh trách nhiệm hoặc khi có điều kiện mà cố ý không cứu giúp người bị tai nạn giao thông có bị nghiêm cấm hay không?', 'Không bị nghiêm cấm.', 'Nghiêm cấm tùy từng trường hợp cụ thể.', 'Bị nghiêm cấm.', NULL, 3, NULL, 2),
(25, 'Khi xảy ra tai nạn giao thông, những hành vi nào ghi ở dưới đây bị nghiêm cấm?', 'Xâm phạm tính mạng, sức khỏe, tài sản của người bị tai nạn giao thông; xâm phạm tính mạng, sức khỏe, tài sản của người gây tai nạn giao thông.', 'Lợi dụng việc xảy ra tai nạn giao thông để hành hung, đe dọa, xúi giục, gây sức ép, làm mất trật tự, cản trở việc xử lý tai nạn giao thông.', NULL, NULL, 1, 2, 2),
(26, 'Việc sản xuất, mua bán, sử dụng biển xe cơ giới, xe máy chuyên dùng được quy định như thế nào trong Luật giao thông đường bộ?', 'Nghiêm cấm sản xuất, được phép sử dụng.', 'Nghiêm cấm mua bán, cho phép sử dụng.', 'Nghiêm cấm sản xuất, mua bán, sử dụng trái phép.', NULL, 3, NULL, 2),
(27, 'Người lái xe không được vượt xe khác khi gặp trường hợp nào ghi ở dưới đây?', 'Trên cầu hẹp có một làn xe, nơi đường giao nhau, đường bộ giao nhau cùng mức với đường sắt.', 'Điều kiện thời tiết hoặc đường không đảm bảo an toàn cho việc vượt, xe ưu tiên đang phát tín hiệu ưu tiên làm nhiệm vụ.', NULL, NULL, 1, 2, 2),
(28, 'Người điều khiển xe mô tô hai bánh, ba bánh, xe gắn máy có được phép sử dụng xe để kéo, đẩy các xe khác, vật khác khi tham gia giao thông không?', 'Được phép.', 'Tùy trường hợp.', 'Không được phép.', NULL, 3, NULL, 2),
(29, 'Người ngồi trên xe mô tô hai bánh, ba bánh, xe gắn máy khi tham gia giao thông không được thực hiện những hành vi nào dưới đây?', 'Đội mũ bảo hiểm và cài quai đúng cách.', 'Sử dụng ô; bấm, kéo hoặc đẩy các phương tiện khác.', 'Đứng trên yên, giá đèo hàng hoặc ngồi trên tay lái, các hành vi khác gây mất trật tự an toàn giao thông.', NULL, 2, 3, 2),
(30, 'Người ngồi trên xe mô tô hai bánh, xe mô tô ba bánh, xe gắn máy khi tham gia giao thông có được mang, vác vật cồng kềnh hay không?', 'Được mang, vác tùy trường hợp cụ thể.', 'Không được mang, vác.', 'Được mang, vác nhưng phải đảm bảo an toàn.', NULL, 2, NULL, 2),
(31, 'Khi điều khiển xe mô tô hai bánh, mô tô ba bánh, xe gắn máy những hành vi nào không được phép?', 'Buông cả hai tay hoặc đi xe bằng một bánh đối với xe hai bánh, bằng hai bánh đối với xe ba bánh, chạy quá tốc độ quy định.', 'Sử dụng xe để kéo, đẩy xe khác, vật khác và chở vật cồng kềnh, để chân chống quẹt xuống đất và cá hành vi khác gây mất trật tự an toàn giao thông.', 'Chạy đúng tốc độ quy định và chấp hành đúng quy tắc giao thông đường bộ.', NULL, 1, 2, 2),
(32, 'Bảo đảm trật tự an toàn giao thông đường bộ là trách nhiệm của ai?', 'Là trách nhiệm của ngành giao thông vận tải và ngành công an.', 'Là trách nhiệm của cơ quan, tổ chức, cá nhân.', 'Là trách nhiệm của cảnh sát giao thông.', NULL, 2, NULL, 2),
(33, 'Tại nơi đường giao nhau, khi đèn điều khiển giao thông có tín hiệu vàng, người điều khiển phương tiện phải thực hiện như thế nào?', 'Phải cho xe dừng lại trước vạch dừng, trừ trường hợp đã đi quá vạch dừng thi được đi tiếp; trong trường hợp tín hiệu vàng nhấp nháy là được đi nhưng phải giảm tốc độ, chú ý quan sát, nhường đường cho người đi bộ qua đường.', 'Phải cho xe nhanh chóng vượt qua vạch dừng để đi qua đường giao nhau và chú ý đảm bảo an toàn; khi đèn tín hiệu vàng nhấp nháy là được đi nhưng phải giảm tốc độ, chú ý quan sát người đi bộ để bảo đảm an toàn.', 'Cả hai ý nêu trên.', NULL, 1, NULL, 2),
(34, 'Biển báo hiệu đường bộ gồm những nhóm nào, ý nghĩa của từng nhóm?', 'Nhóm biển báo cấm để biểu thị các điều cấm; nhóm biển báo hiệu nguy hiểm để cảnh báo các tình huống nguy hiểm có thể xảy ra, nhóm biển hiệu lệnh để báo hiệu các hiệu lệnh phải thi hành.', 'Nhóm biển chỉ dẫn để chỉ dẫn hướng đi hoặc các điều biết; nhóm biển phụ để thuyết minh bổ sung các loại biển báo cấm, biển báo nguy hiểm, biển hiệu lệnh và biển chỉ dẫn.', NULL, NULL, 1, 2, 2),
(35, 'Tại nơi đường giao nhau, khi người điều khiển giao thông ra hiệu lệnh bằng hai tay hoặc một tay giang ngang để báo hiệu thì người tham gia giao thông phải đi như thế nào là đúng quy tắc giao thông?', 'Người tham gia giao thông ở phía trước và ở phía sau người điều khiển giao thông phải dừng lại; người tham gia giao thông ở phía bên phải và bên trái người điều khiển được đi.', 'Người tham gia giao thông ở phía trước và ở phía sau người điều khiển giao thông được đi thẳng; người tham gia giao thông ở phía bên phải và bên trái người điều khiển giao thông được đi thẳng và rẽ phải.', NULL, NULL, 1, NULL, 2),
(36, 'Tại nơi đường giao nhau, khi người điều khiển giao thông ra hiệu lệnh tay giơ thẳng đứng để báo hiệu thì người tham gia giao thông phải đi như thế nào?', 'Người tham gia giao thông ở phía trước và ở phía sau người điều khiển giao thông phải dừng lại; người tham gia giao thông ở phía bên phải và bên trái người điều khiển được đi.', 'Người tham gia giao thông ở các hướng phải dừng lại.', 'Tất cả các trường hợp trên.', NULL, 2, NULL, 2),
(37, 'Tại nơi đường giao nhau, khi người điều khiển giao thông ra hiệu lệnh bằng tay phải giơ về phía trước để báo hiệu thì người tham gia giao thông phải đi như thế nào?', 'Người tham gia giao thông ở phía sau người điều khiển phải dừng lại; người ở phía trước người điều khiển được rẽ trái; người ở bên trái người điều khiển được rẽ trái; người đi bộ qua đường phải dừng lại sau lưng người điều khiển giao thông.', 'Người tham giao giao thông ở phía sau và bên phải người điều khiển phải dừng lại; người ở phía trước người điều khiển được rẽ phải; người ở phía bên trái người điều khiển giao thông được đi tất cả các hướng; người đi bộ qua đường phải đi sau lưng người điều khiển giao thông.', NULL, NULL, 2, NULL, 2),
(38, 'Trên đường giao thông, khi hiệu lệnh của người điều khiển giao thông trái với hiệu lệnh của đèn hoặc biển báo hiệu thì người tham gia giao thông phải chấp hành theo hiệu lệnh nào?', 'Hiệu lệnh của người điều khiển giao thông.', 'Hiệu lệnh của đèn điều khiển giao thông.', 'Hiệu lệnh của biển báo hiệu đường bộ.', NULL, 1, NULL, 2),
(39, 'Tại nơi có biển báo hiệu cố định lại có báo hiệu tạm thời thì người tham gia giao thông phải chấp hành hiệu lệnh của báo hiệu nào?', 'Biển báo hiệu cố định.', 'Báo hiệu tạm thời.', NULL, NULL, 2, NULL, 2),
(40, 'Trên đường có nhiều làn đường cho xe đi cùng chiều được phân biệt bằng vạch kẻ phân làn đường, người điều khiển phương tiện phải cho xe đi như thế nào?', 'Cho xe đi trên bất kỳ làn đường nào; khi cần thiết phải chuyển làn đường, người lái xe phải có đèn tín hiệu báo trước và phải bảo đảm an toàn.', 'Phải cho xe đi trong một làn đường và chỉ được chuyển làn đường ở những nơi cho phép; khi chuyển làn phải có tín hiệu báo trước và phải đảm bảo an toàn.', 'Phải cho xe đi trong một làn, khi chuyển làn đường phải có tín hiệu báo trước, chú ý quan sát để bảo đảm an toàn.', NULL, 2, NULL, 2),
(41, 'Trên đường có nhiều làn đường cho xe đi cùng chiều được phân biệt bằng vạch kẻ phân làn đường, người điều khiển phương tiện phải cho xe đi như thế nào?', 'Xe thô sơ phải đi trên làn đường bên trái trong cùng; xe cơ giới, xe máy chuyên dùng đi trên làn đường bên phải.', 'Xe thô sơ phải đi trên làn đường bên phải trong cùng; xe cơ giới, xe máy chuyên dùng đi trên làn đường bên trái.', 'Xe thô sơ đi trên làn đường phù hợp không gây cản trở giao thông; xe cơ giới, xe máy chuyên dùng đi trên làn đường bên phải.', NULL, 2, NULL, 2),
(42, 'Trên đường có nhiều làn đường, người điều khiển phương tiện tham gia giao thông sử dụng làn đường như thế nào là đúng?', 'Trên đường có nhiều làn đường cho xe đi cùng chiều được phân biêt bằng vạch kẻ phân làn đường, người điều khiển phương tiện phải cho xe đi trong một làn đường và chỉ được chuyển làn đường ở những nơi cho phép; khi chuyển làn đường phải có tín hiệu báo trước và đảm bảo an toàn.', 'Phương tiện tham gia giao thông đường bộ di chuyển tốc độ thấp hơn đi về bên trái.', 'Trên đường một chiều có vạch kẻ phân làn đường, xe thô sơ phải đi trên làn đường bên phải trong cùng xe cơ giới, xe máy chuyên dùng đi trên làn đường bên trái, phương tiện tham gia giao thông đường bộ di chuyển tốc độ thấp hơn đi về bên phải.', NULL, 1, 3, 2),
(43, 'Xe sau có thể vượt lên bên phải xe khác đang chạy phía trước trong trường hợp nào?', 'Khi xe phía trước có tín hiệu rẽ trái hoặc đang rẽ trái; khi xe điện đang chạy giữa đường.', 'Khi xe chuyên dùng đang làm việc trên đường mà không thể vượt bên trái được.', 'Khi có đủ khoảng trống để vượt xe.', NULL, 1, 2, 2),
(44, 'Người lái xe phải làm gì khi quay đầu xe trên cầu, gầm cầu vượt, đường ngầm hay khu vực đường bộ giao nhau cùng mức với đường sắt?', 'Không được quay đầu xe.', 'Lợi dụng chỗ trống và phải có người làm tín hiệu sau xe để đảm bảo an toàn.', 'Lợi dụng chỗ trống có thể quay đầu được để quay đầu x echo an toàn.', NULL, 1, NULL, 2),
(45, 'Khi muốn chuyển hướng, người lái xe phải thực hiện như thế nào?', 'Người điều khiển phương tiện phải tăng tốc độ và có tín hiệu báo hướng để rẽ.', 'Người điều khiển phương tiện phải giảm tốc độ và có tín hiệu báo hướng rẽ; chỉ cho rẽ chuyển hướng khi quan sát thấy không gây trở ngại hoặc nguy hiểm cho người và phương tiện khác.', 'Trong khi chuyển hướng, người lái xe, người điều khiển xe máy chuyên dùng phải nhường quyền đi trước cho người đi bộ, người đi xe đạp đang đi trên phần đường dành riêng cho họ, nhường đường cho các xe đi ngược chiều.', NULL, 2, 3, 2),
(46, 'Khi tránh xe đi ngược chiều, các xe phải nhường đường nhe thế nào là đúng?', 'Nơi đường hẹp chỉ đủ cho một xe chạy và có chỗ tránh xe thì xe nào ở gần chỗ tránh hơn phải vào vị trí tránh nhường đường cho xe kia đi.', 'Xe xuống dốc phải nhường đường cho xe đang lên dốc, xe nào có chướng ngại vật phía trước phải nhường đường cho xe không có chướng ngại vật đi trước.', 'Xe lên dốc phải nhường đường cho xe xuống dốc.', NULL, 1, 2, 2),
(47, 'Ban đêm xe cơ giới đi ngược chiều gặp nhau, đèn chiếu sáng phải sử dụng như thế nào?', 'Phải chuyến từ đèn chiếu gần sang đèn chiếu xa.', 'Phải chuyển từ đèn chiếu xa sang đèn chiếu gần.', NULL, NULL, 2, NULL, 2),
(48, 'Khi có tín hiệu của xe ưu tiên, người tham gia giao thông phải làm gì?', 'Phải nhanh chống giảm tốc độ, tránh hoặc dừng lại sát lề đường bên trái để nhường đường.', 'Phải nhanh chống tăng tốc độ, tránh sát lề đường để nhường đường cho xe ưu tiên. Cấm các hành vi gây cản trở xe ưu tiên.', 'Phải nhanh chống giảm tốc độ, tránh hoặc dừng lại sát lề đường bên phải để nhường đường. Không được gây cản trở xe được quyền ưu tiên.', NULL, 3, NULL, 2),
(49, 'Tại nơi đường giao nhau có báo hiệu đi theo vòng xuyến người điều khiển phương tiện phải nhường đường như thế nào?', 'Phải nhường đường cho xe đi bên phải.', 'Xe báo hiệu xin đường trước xe đó được đi trước.', 'Phải nhường đường cho xe đi bên trái.', NULL, 3, NULL, 2),
(50, 'Tại nơi đường giao nhau, người lái xe đang đi trên đường không ưu tiên phải nhường đường như thế nào?', 'Nhường đường cho xe đi ở bên phải mình tới.', 'Nhường đường cho xe đi ở bên trái mình tới.', 'Nhường đường cho xe đi trên đường ưu tiên hoặc đường chính đi từ bất kì hướng nào tới.', NULL, 3, NULL, 2),
(51, 'Tại nơi đường giao nhau không có báo hiệu đi theo vòng xuyến, người điều khiển phương tiện phải nhường đường như thế nào là đúng quy tắc giao thông?', 'Phải nhường đường cho xe đi đến từ bên phải.', 'Xe báo hiệu xin đường trước xe đó được đi trước.', 'Phải nhường đường cho xe đi đến từ bên trái.', NULL, 1, NULL, 2),
(52, 'Trên đoạn đường bộ giao nhau cùng mức với đường sắt, cầu đường bộ đi chung với đường sắt thì loại phương tiện nào được quyền ưu tiên đi trước?', 'Phương tiện nào bên phải không vướng.', 'Phương tiện nào ra tín hiệu xin đường trước.', 'Phương tiện giao thông đường sắt.', NULL, 3, NULL, 2),
(53, 'Tại nơi đường bộ giao nhau cùng mức với đường sắt chỉ có đèn tín hiệu hoặc chuông báo hiệu, khi đèn tín hiệu màu đỏ đã bật sáng hoặc có tiếng chuông báo hiệu, người tham gia giao thông phải dừng lại ngay và giữ khoảng cách tối thiểu bao nhiêu mét tính từ ray gần nhất?', '5.00m.', '3.00m.', '4.00m.', '7.00m.', 1, NULL, 2),
(54, 'Người lái xe phải làm gì khi điều khiển xe vào đường cao tốc?', 'Phải có tín hiệu xin vào và phải nhường đường cho xe đang chạy trên đường, khi thấy an toàn mới cho xe nhập vào dòng xe ở làn đường sát mép ngoài.', 'Phải có tín hiệu và tăng tốc độ vào đường cao tốc.', 'Nếu có làn đường tăng tốc thì phải cho xe chạy trên làn đường đó trước khi vào làn đường của đường cao tốc.', NULL, 1, 3, 2),
(55, 'Người lái xe phải làm gì khi điều khiển xe ra khỏi làn đường cao tốc?', 'Phải thực hiện chuyển dần sang làn đường phía bên phải, nếu có làn đường giảm tốc thì phải cho xe chạy trên làn đường đó trước khi rời khỏi đường cao tốc.', 'Phải thực hiện chuyển ngay sang các làn đường phía bên phải, nếu có làn đường giảm tốc thì phải cho xe chạy trên làn đường đó trước khi rời khỏi đường cao tốc.', NULL, NULL, 1, NULL, 2),
(56, 'Những trường hợp nào ghi ở dưới đây không được đi vào đường cao tốc trừ người, phương tiện, thiết bị phục vụ cho việc quản lý, bảo trì đường cao tốc?', 'Người đi bộ, xe thô sơ, xe gắn máy và xe ô tô.', 'Xe mô tô và xe máy chuyên dùng có tốc độ thiết kế lớn hơn 70km/h.', 'Người đi bộ, xe thô sơ, xe gắn máy, xe mô tô và xe máy chuyên dùng có tốc độ thiết kế nhỏ hơn 70km/h.', NULL, 3, NULL, 2),
(57, 'Người điều khiển phương tiện tham gia giao thông trong hầm đường bộ ngoài việc phải tuân thủ các quy tắc giao thông còn phải thực hiện những quy định nào ghi ở dưới đây?', 'Xe cơ giới, xe máy chuyên dùng phải bật đèn; xe thô sơ phải bật đèn hoặc có vật phát sáng báo hiệu; chỉ được dừng xe, đỗ xe ở nơi quy định.', 'Xe cơ giới phải bật đèn ngay cả khi đường hầm sáng; phải cho xe trên một làn đường và chỉ chuyển làn ở nơi được phép; được quay đầu xe, lùi xe khi cần thiết.', 'Xe máy chuyên dùng phải bật đèn ngay cả khi đường hầm sáng; phải cho xe chạy trên một làn đường và chỉ chuyển làn ở nơi được phép; được quay đầu xe, lùi xe khi cần thiết.', NULL, 1, NULL, 2),
(58, 'Người ngồi trên xe mô tô 2 bánh, xe mô tô 3 bánh, xe gắn máy phải đội mũ bảo hiểm có cài quay đúng quy cách khi nào?', 'Khi tham gia giao thông đường bộ.', 'Chỉ khi đi trên đường cao tốc.', NULL, NULL, 1, NULL, 2),
(59, 'Khi điều khiển xe mô tô 2 bánh, xe gắn máy được phép chở tối đa 2 người trong những trường hợp nào?', 'Chở người bệnh đi cấp cứu, trẻ em dưới 14 tuổi.', 'Áp giải người có hành vi vi phạm pháp luật.', NULL, NULL, 1, 2, 2),
(60, 'Người điều khiển xe mô tô 2 bánh, xe mô tô 3 bánh, xe gắn máy không được thực hiện những hành vi nào ghi ở dưới đây?', 'Đi xe dàng hàng ngang.', 'Đi xe vào phần đường dành cho người đi bộ và phương tiện khác, sử dụng ô, điện thoại di động, thiết bị âm thanh (trừ thiết bị trợ thính).', 'Chở người bệnh đi cấp cứu, trẻ em dưới 14 tuổi, áp giải người có hành vi vi phạm pháp luật.', NULL, 1, 2, 2),
(61, 'Người điều khiển, người ngồi trên xe đạp máy phải đội mũ bảo hiểm có cài quay đúng quy cách khi nào?', 'Khi tham gia giao thông đường bộ.', 'Chỉ khi tham gia giao thông trên đường quốc lộ, khu vực đô thị.', NULL, NULL, 1, NULL, 2),
(62, 'Cơ quan nào quy định các đoạn đường cấm đi, đường đi một chiều, nơi cấm dừng, cấm đỗ, cấm quay đầu xe, lắp đặt báo hiệu đường bộ thuộc địa phương quản lý?', 'Cơ quan quản lý giao thông vận tải.', 'Ủy ban nhân dân cấp tỉnh.', 'Cơ quan cảnh sát giao thông đường bộ.', 'Thanh tra giao thông đường bộ.', 2, NULL, 2),
(63, 'Người điều khiển phương tiện và những người liên quan trực tiếp đến vụ tai nạn có trách nhiệm gì?', 'Dừng ngay phương tiện; giữ nguyên hiện trường; cấp cứu người bị tai nạn và phải có mặt khi cơ quan có thẩm quyền yêu cầu; cung cấp thông tin xác thực về vụ tai nạn cho cơ quan có thẩm quyền.', 'Ở lại nơi xảy ra tai nạn cho đến khi người của cơ quan công an đến, trừ trường hợp người điều khiển phương tiện cũng bị thương phải đưa đi cấp cứu hoặc phải đưa người bị tai nạn đi cấp cứu hoặc vì lí do bị đe doạ đến tính mạng, nhưng phải đến trình báo ngay với cơ quan công an nơi gần nhất.', 'Rời khỏi hiện trường nơi xảy ra tai nạn giao thông.', NULL, 1, 2, 2),
(64, 'Những người có mặt tại nơi xảy ra tai nạn giao thông có trách nhiệm gì?', 'Bảo vệ hiện trường, giúp đỡ, cứu chữa người bị nạn, bảo vệ tài sản của người bị nạn.', 'Báo tin ngay cho cơ quan công an, y tế hoặc Ủy ban nhân dân nơi gần nhất, cung cấp thông tin xác thực về vụ tai nạn theo yêu cầu của cơ quan có thẩm quyền.', NULL, NULL, 1, 2, 2),
(65, 'Khi điều khiển xe chạy trên đường, người lái xe phải mang theo các loại giấy tờ gì?', 'Giấy phép lái xe, đăng ký xe, giấy phép lưu hành xe.', 'Lệnh vận chuyển, đăng ký xe, giấy phép lưu hành xe.', 'Giấy phép lái xe phù hợp với loại xe đó, đăng ký xe, giấy chứng nhận kiểm định kỹ thuật và bảo vệ môi trường, giấy chứng nhận bảo hiểm trách nhiệm dân sự của chủ xe cơ giới và giấy phép vận chuyển (nếu loại xe đó cần phải có).', NULL, 3, NULL, 2),
(66, 'Người đủ bao nhiêu tuổi trở lên thì được điều khiển xe mô tô 2 bánh, xe mô tô 3 bánh có dung tích xilanh từ 50 cm3 trở lên và các loại xe có kết cấu tương tự, xe ô tô tải, máy kéo có trọng tải dưới 3,5 tấn; xe ô tô chở người dưới 9 chỗ ngồi?', '16 tuổi.', '18 tuổi.', '17 tuổi.', NULL, 2, NULL, 2),
(67, 'Tại ngã ba hoặc ngã tư không có đảo an toàn, người lái xe phải nhường đường như thế nào là đúng trong các trường hợp dưới đây?', 'Nhường đường cho xe đi trên đường nhánh từ bất kỳ hướng nào tới.', 'Nhường đường cho người đi bộ đang đi trên phần đường dành cho người đi bộ sang đường.', 'Nhường đường cho xe đi trên đường ưu tiên, đường chính đi từ bất kì hướng nào tới, nhường đường cho xe ưu tiên, nhường đường cho xe đi từ bên phải đến.', NULL, 2, 3, 2),
(68, 'Người đủ 16 tuổi được điều khiển các loại xe nào dưới đây?', 'Xe mô tô hai bánh có dung tích xilanh từ 50 cm3 trở lên.', 'Xe gắn máy có dung tích xilanh dưới 50 cm3.', 'Xe ô tô tải dưới 3,5 tấn, xe chở người đến 9 chỗ ngồi.', 'Tất cả các ý trên.', 2, NULL, 2),
(69, 'Khi phát hiện hành vi giả khai báo mất hoặc tẩy xóa, làm sai lệch các thông tin trên giấy phép lái xe; sử dụng giấy phép lái xe hoặc đổi hồ sơ giả; có hành vi cố tình gian dối để được đổi, cấp mới, cấp lại giấy phép lái xe, ngoài việc bị cơ quan quản lý giấy phép lái xe quyết định thu hồi giấy phép lái xe và hồ sơ gốc còn phải chịu trách nhiệm trước pháp luật, người lái xe không được cấp giấy phép lái xe trong thời gian bao nhiêu năm?', '05 năm.', '03 năm.', '02 năm.', NULL, 1, NULL, 2),
(70, 'Người lái xe mô tô xử lý như thế nào khi cho xe mô tô phía sau vượt?', 'Lái xe vào lề đường bên phải và giảm tốc độ để xe phía sau vượt qua.', 'Lái xe vào lề đường bên trái và giảm tốc độ để xe phía sau vượt qua.', 'Lái xe vào lề đường bên phải và tăng tốc độ để xe phía sau vượt qua.', NULL, 1, NULL, 2),
(71, 'Trong các trường hợp dưới đây, để đảm bảo an toàn khi tham gia giao thông, người lái xe mô tô cần thực hiện như thế nào?', 'Phải đội mũ bảo hiểm có cài quay đúng quy cách, mặc quần áo gọn gàng.', 'Không sử dụng ô, điện thoại di động, thiết bị âm thanh (trừ thiết bị trợ thính).', 'Buông cả hai tay hoặc đi xe bằng 1 bánh.', 'Tất cả các ý nêu trên.', 1, 2, 2),
(72, 'Đường bộ trong khu vực đông dân cư gồm những đường nào?', 'Đường bộ nằm trong khu vực nội thành phố, nội thị xã, nội thị trấn, khu công nghiệp có đông người và phương tiện tham gia giao thông.', 'Đường bộ nằm trong khu vực nội thành phố, nội thị xã và những đoạn đường bộ được xác định từ vị trí có hiệu lực của biển báo hiệu “bắt đầu khu đông dân cư” đến vị trí có hiệu lực của biển báo hiệu “hết khu đông dân cư”.', 'Đường bộ có đông người, phương tiện tham gia giao thông và những đoạn đường bộ được xác định từ vị trí có hiệu lực của biển báo hiệu “bắt đầu khu đông dân cư” đến vị trí có hiệu lực của biển báo hiệu “hết khu đông dân cư”.', NULL, 2, NULL, 2),
(73, 'Trên đường bộ trong khu vực đông dân cư, xe mô tô hai bánh, xe gắn máy tham gia giao thông với tốc độ tối đa cho phép là bao nhiêu?', '60km/h.', '50km/h.', '40km/h.', '30km/h.', 3, NULL, 3),
(74, 'Trên đường bộ trong khu vực đông dân cư, loại xe nào tham gia giao thông với tốc độ tối đa cho phép là 40 km/h?', 'Ô tô chở người trên 30 chỗ ngồi, ô tô tải có trọng tải từ 3500kg trở lên, ô tô sơ mi rơ mooc, ô tô kéo rơ moóc, ô tô kéo xe khác, ô tô chuyên dùng, xe mô tô, xe gắn máy.', 'Ô tô chở người đến 30 chỗ ngồi, ô tô tải có trọng tải dưới 3500 kg.', 'Xe máy kéo, xe công nông, xe lam, xe lôi máy xe xích lô máy, xe ba gác máy, xe máy chuyên dùng và các loại xe tương tự (loại đang được phép hoạt động).', NULL, 1, NULL, 3),
(75, 'Trên đường bộ ngoài khu đông dân cư, loại xe nào tham gia giao thông với tốc độ tối đa cho phép là 50 km/h?', 'Ô tô chở người đến 30 chỗ ngồi (trừ ô tô buýt), ô tô tải có tải trọng dưới 3500 kg.', 'Ô tô chở người trên 30 chỗ ngồi (trừ ô tô buýt), ô tô tải có trọng tải dưới 3500 kg.', 'Ô tô kéo rơ moóc, ô tô kéo xe khác, xe gắn máy.', 'Ô tô buýt, ô tô sơ mi rơ moóc, ô tô chuyên dùng, xe mô tô.', 3, NULL, 3),
(76, 'Khái niệm về văn hóa giao thông được hiểu như thế nào là đúng?', 'Là sự hiểu biết và chấp hành nghiêm chỉnh pháp luật về giao thông; là ý thức trách nhiệm với cộng đồng khi tham gia giao thông.', 'Là ứng xử văn hóa có tình yêu thương con người trong các tình huống không may xảy ra khi tham gia giao thông.', NULL, NULL, 1, 2, 4),
(77, 'Người lái xe cố tình vi phạm Luật Giao thông đường bộ, không phân biệt làn đường, vạch phân làn, phóng nhanh, vượt ẩu, vượt đèn đỏ, đi vào đường cấm, đường một chiều được coi là hành vi nào trong các hành vi sau đây?', 'Là bình thường.', 'Là thiếu văn hóa giao thông.', 'Là có văn hóa giao thông.', NULL, 2, NULL, 4),
(78, 'Trong các hành vi dưới đây, người lái xe mô tô có văn hóa giao thông phải ứng xử như thế nào?', 'Điều khiển xe đi trên phần đường, làn đường có ít phương tiện tham gia giao thông, đội mũ bảo hiểm ở những nơi có biển báo bắt buộc đội mũ bảo hiểm.', 'Chấp hành quy định về tốc độ, đèn tín hiệu, biển báo hiệu, vạch kẻ đường khi lái xe.', 'Chấp hành hiệu lệnh, chỉ dẫn của người điều khiển giao thông, nhường đường cho người đi bộ, người già, trẻ em, người khuyết tật.', 'Cả 3 ý nêu trên.', 2, 3, 4),
(79, 'Trong các hành vi dưới đây, người lái xe mô tô có văn hóa giao thông phải ứng xử như thế nào?', 'Điều khiển xe đi bên phải chiều đi của mình', 'Điều khiển xe đi trên phần đường, làn đường có ít phương tiện tham gia giao thông.', 'Đi đúng phần đường, làn đường quy định; đội mũ bảo hiểm đúng quy cách.', 'Đội mũ bảo hiểm ở nơi có biển báo bắt buộc đội mũ bảo hiểm.', 1, 3, 4),
(80, 'Người có văn hóa giao thông, khi điều khiển xe cơ giới tham gia giao thông đường bộ phải đảm bảo các điều kiện gì?', 'Có giấy phép lái xe phù hợp với loại xe được phép điều khiển, xe cơ giới đảm bảo các quy định về chất lượng, an toàn kỹ thuật và bảo vệ môi trường.', 'Có giấy chứng nhận trách nhiệm bảo hiểm dân sự của chủ xe cơ giới còn hiệu lực, nộp phí sử dụng đường bộ theo quy định.', NULL, NULL, 1, 2, 4),
(81, 'Biển nào cấm người đi bộ?\r\n[IMG=ch81.jpg][/IMG]\r\n', 'Biển 1', 'Biển 1 và 3', 'Biển 2', 'Biển 2 và 3', 3, NULL, 5),
(82, 'Gặp biển nào người lái xe phải nhường đường cho người đi bộ?\r\n[IMG=ch82.jpg][/IMG]', 'Biển 1.', 'Biển 3.', 'Biển 2.', 'Biển 1 và 3.', 1, NULL, 5),
(83, 'Biển nào chỉ đường dành cho người đi bộ, các loại xe không được đi vào khi gặp biển này?\r\n[IMG=ch83.jpg][/IMG]', 'Biển 1.', 'Biển 1 và 3.', 'Biển 3.', 'Cả ba biển.', 3, NULL, 5),
(84, 'Biển nào báo hiệu sắp đến chỗ giao nhau nguy hiểm?\r\n[IMG=ch84.jpg][/IMG]', 'Biển 1 và 2.', 'Biển 2 và 3.', 'Biển 1.', 'Cả ba biển.', 2, NULL, 5),
(85, 'Biển nào báo hiệu sắp đến chỗ giao nhau với đường sắt có rào chắn?\r\n[IMG=ch85.jpg][/IMG]', 'Biển 1.', 'Biển 2 và 3.', 'Biển 3.', NULL, 1, NULL, 5),
(86, 'Biển nào báo hiệu giao nhau có tín hiệu đèn?\r\n[IMG=ch86.jpg][/IMG]', 'Biển 2.', 'Biển 1.', 'Biển 3.', 'Cả ba biển.', 3, NULL, 5),
(87, 'Biển nào báo hiệu nguy hiểm giao nhau với đường sắt?\r\n[IMG=ch87.jpg][/IMG]', 'Biển 1 và 3.', 'Biển 1 và 2.', 'Biển 2 và 3.', ' Cả ba biển', 1, NULL, 5),
(88, 'Biển nào báo hiệu đường sắt giao nhau với đường bộ không có rào chắn?\r\n[IMG=ch88.jpg][/IMG]', 'Biển 1 và 2.', 'Biển 2 và 3.', 'Biển 1 và 3.', 'Cả ba biển.', 2, NULL, 5),
(89, 'Biển nào báo hiệu “Hết đoạn đường ưu tiên”?\r\n[IMG=ch89.jpg][/IMG]', 'Biển 3.', 'Biển 1.', 'Biển 2.', NULL, 1, NULL, 5),
(90, 'Biển nào báo hiệu, chỉ dẫn xe đi trên đường này được quyền ưu tiên qua nơi giao nhau?\r\n[IMG=ch90.jpg][/IMG]', 'Biển 1 và 2.', 'Biển 1 và 3.', 'Cả ba biển.', 'Biển 2 và 3.', 2, NULL, 5),
(91, 'Biển nào báo hiệu giao nhau với đường không ưu tiên?\r\n[IMG=ch91.jpg][/IMG]', 'Biển 1.', 'Biển 2 và 3.', 'Biển 2.', 'Biển 3.', 1, NULL, 5),
(92, 'Biển nào báo hiệu giao nhau với đườn ưu tiên?\r\n[IMG=ch92.jpg][/IMG]', 'Biển 1 và 3.', 'Biển 2.', 'Biển 3.', NULL, 2, NULL, 5),
(93, 'Biển nào báo hiệu giao nhau với đường\r\n[IMG=ch93.jpg][/IMG]', 'Biển 1.', 'Biển 3.', 'Biển 2.', 'Cả ba biển', 2, NULL, 5),
(94, 'Biển nào báo hiệu “Đường giao nhau” của các tuyến đường cùng cấp?\r\n[IMG=ch94.jpg][/IMG]', 'Biển 1', 'Biển 3', 'Biển 2', NULL, 1, NULL, 5),
(95, 'Biển nào báo hiệu giao nhau với đường không ưu tiên?\r\n[IMG=ch95.jpg][/IMG]', 'Biển 1.', 'Biển 2.', 'Biển 3.', NULL, 2, NULL, 5),
(96, 'Biển nào báo hiệu đường hai chiều?\r\n[IMG=ch96.jpg][/IMG]', 'Biển 1.', 'Biển 2.', 'Biển 3.', NULL, 1, NULL, 5),
(97, 'Biển nào báo hiệu phải giảm tốc độ, nhường đường cho xe cơ giới đi ngược chiều qua đường hẹp?\r\n[IMG=ch97.jpg][/IMG]', 'Biển 1.', 'Biển 2.', 'Biển 3.', NULL, 2, NULL, 5),
(98, 'Biển nào chỉ dẫn được ưu tiên qua đường hẹp?', 'Biển 1', 'Biển 2.', 'Biển 3.', 'Biển 2 và 3.', 3, NULL, 5),
(99, 'Biển nào báo hiệu cấm xe mô tô ba bánh đi vào?\r\n[IMG=ch99.jpg][/IMG]', 'Biển 1 và 3.', 'Biển 1 và 2.', 'Biển 2 và 3.', NULL, 2, NULL, 5),
(100, 'Biển nào báo hiệu cấm xe mô tô hai bánh đi vào?\r\n[IMG=ch100.jpg][/IMG]', 'Biển 1.', 'Biển 2.', 'Biển 3.', NULL, 1, NULL, 5),
(101, 'Khi gặp biển nào thì xe mô tô hai bánh được đi vào?\r\n[IMG=ch101.jpg][/IMG]', 'Không biển nào.', 'Biển 1 và 2.', 'Biển 2 và 3.', 'Cả ba biển.', 3, NULL, 5),
(102, 'Biển nào xe mô tô hai bánh được đi vào?\r\n[IMG=ch102.jpg][/IMG]', 'Biển 1 và 2.', 'Biển 1 và 3.', 'Biển 2 và 3.', NULL, 2, NULL, 5),
(103, 'Biển nào xe mô tô hai bánh không được đi vào?\r\n[IMG=ch103.jpg][/IMG]', 'Biển 1.', 'Biển 2.', 'Biển 3.', NULL, 2, NULL, 5),
(104, 'Ba biển này có ý nghĩa hiệu lực như thế nào?\r\n[IMG=ch104.jpg][/IMG]', 'Cấm các loại xe ở biển phụ đi vào.', 'Cấm các loại xe cơ giới đi vào trừ loại xe ở biển phụ.', NULL, NULL, 1, NULL, 5),
(105, 'Biển nào cấm quay xe?\r\n[IMG=ch105.jpg][/IMG]', 'Biển 1.', 'Biển 2.', 'Không biển nào.', NULL, 1, 2, 5),
(106, 'Biển nào cấm xe rẽ trái?\r\n[IMG=ch106.jpg][/IMG]', 'Biển 1.', 'Biển 2.', 'Cả hai biển.', NULL, 1, NULL, 5),
(107, 'Khi gặp biển nào xe được rẽ trái\r\n[IMG=ch107.jpg][/IMG]', 'Biển 1.', 'Biển 2.', 'Không biển nào.', NULL, 2, NULL, 5),
(108, 'Khi gặp biển nào xe ưu tiên theo luật định vẫn phải dừng lại?\r\n[IMG=ch108.jpg][/IMG]', 'Biển 1.', 'Biển 2.', 'Cả 3 biển.', NULL, 2, NULL, 5),
(109, 'Khi đến chỗ giao nhau, gặp biển nào thì người lái xe không được cho xe đi thẳng, phải rẽ sang hướng khác?\r\n[IMG=ch109.jpg][/IMG]', 'Biển 1 và 3.', 'Biển 2 và 3.', 'Biển 1 và 2.', 'Cả ba biển.', 3, NULL, 5),
(110, 'Khi gặp biển này, xe lam và mô tô ba bánh có được phép rẽ trái hay rẽ phải hay không?\r\n[IMG=ch110.jpg][/IMG]', 'Được phép.', 'Không được phép.', NULL, NULL, 2, NULL, 5),
(111, 'Biển này có hiệu lực đối với xe mô tô hai, ba bánh không?\r\n[IMG=ch111.jpg][/IMG]', 'Có.', 'Không.', NULL, NULL, 1, NULL, 5),
(112, 'Biển nào báo hiệu cầu vượt liên thông?\r\n[IMG=ch112.jpg][/IMG]', 'Biển 2 và 3.', 'Biển 1 và 2.', 'Biển 1 và 3.', 'Cả ba biển.', 3, NULL, 5),
(113, 'Biển nào báo hiệu đoạn đường hay xảy ra tai nạn?\r\n[IMG=ch113.jpg][/IMG]', 'Biển 1.', 'Biển 2.', 'Biển 2 và 3.', NULL, 2, NULL, 5),
(114, 'Biển nào báo hiệu tuyến đường cầu vượt cắt qua?\r\n[IMG=ch114.jpg][/IMG]', 'Biển 1 và 2.', 'Biển 1 và 3.', 'Biển 2 và 3.', NULL, 1, NULL, 5),
(115, 'Biển nào chỉ dẫn tên đường trên các tuyến đường đối ngoại?\r\n[IMG=ch115.jpg][/IMG]', 'Biển 1.', 'Biển 2.', 'Biển 3.', 'Biển 1 va 2.', 3, NULL, 5),
(116, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?\r\n[IMG=ch116.jpg][/IMG]', 'Xe tải, xe lam, xe con, mô tô.', 'Xe tải, mô tô, xe lam, xe con.', 'Xe lam, xe tải, xe con, mô tô.', 'Mô tô, xe lam, xe tải, xe con.', 2, NULL, 6),
(117, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?\r\n[IMG=ch117.jpg][/IMG]', 'Xe tải, xe lam, mô tô.', 'Xe lam, xe tải, mô tô.', 'Mô tô, xe lam, xe tải.', 'Xe lam, mô tô, xe tải.', 3, NULL, 6),
(118, 'Trường hợp này xe nào được quyền đi trước?\r\n[IMG=ch118.jpg][/IMG]', 'Mô tô.', 'Xe con.', NULL, NULL, 2, NULL, 6),
(119, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?\r\n[IMG=ch119.jpg][/IMG]', 'Xe lam, xe cứu thương, xe con.', 'Xe cứu thương, xe con, xe lam.', 'Xe con, xe lam, xe cứu thương.', NULL, 1, NULL, 6),
(120, 'Xe nào được quyền đi trước trong trường hợp này?\r\n[IMG=ch120.jpg][/IMG]', 'Mô tô.', 'Xe cứu thương.', NULL, NULL, 2, NULL, 6),
(121, 'Theo tín hiệu đèn, xe nào được phép đi?\r\n[IMG=ch121.jpg][/IMG]', 'Xe con và xe khách.', 'Mô tô.', NULL, NULL, 1, NULL, 6),
(122, 'Theo tín hiệu đèn, xe nào được quyền đi là đúng quy tắc giao thông?\r\n[IMG=ch122.jpg][/IMG]', 'Xe khách, mô tô.', 'Xe tải, mô tô.', 'Xe con, xe tải.', NULL, 3, NULL, 6),
(123, 'Các xe đi theo mũi tên, xe nào vi phạm quy tắc giao thông?\r\n[IMG=ch123.jpg][/IMG]', 'Xe khách, xe tải, mô tô.', 'Xe tải, xe con, xe mô tô.', 'Xe khách, xe con, xe mô tô.', NULL, 1, NULL, 6),
(124, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?\r\n[IMG=ch124.jpg][/IMG]', 'Xe khách, xe tải, mô tô, xe con.', 'Xe con, xe khách, xe tải, mô tô.', 'Mô tô, xe tải, xe khách, xe con.', 'Mô tô, xe tải, xe con, xe khách.', 3, NULL, 6),
(125, 'Trong trường hợp này xe nào đỗ vi phạm quy tắc giao thông?\r\n[IMG=ch125.jpg][/IMG]', 'Xe tải.', 'Xe con và mô tô.', 'Cả ba xe.', 'Xe con và xe tải.', 1, NULL, 6),
(126, 'Xe nào được quyền đi trước?\r\n[IMG=ch126.jpg][/IMG]', 'Xe tải.', 'Xe con.', 'Xe lam.', NULL, 2, NULL, 6),
(127, 'Theo mũi tên, những hướng nào xe gắn máy đi được?\r\n[IMG=ch127.jpg][/IMG]', 'Cả ba hướng.', 'Hướng 1 và 3.', 'Chỉ hướng 1.', NULL, 1, NULL, 6),
(128, 'Xe nào đỗ vi phạm quy tắc giao thông?\r\n[IMG=ch128.jpg][/IMG]', 'Cả hai xe.', 'Không xe nào vi phạm.', 'Chỉ xe mô tô vi phạm.', 'Chỉ xe tải vi phạm.', 1, NULL, 6),
(129, 'Xe nào đỗ vi phạm quy tắc giao thông?\r\n[IMG=ch129.jpg][/IMG]', 'Chỉ mô tô.', 'Chỉ xe tải.', 'Cả ba xe.', 'Chỉ mô tô và xe tải.', 3, NULL, 6),
(130, 'Xe tải kéo mô tô ba bánh như hình này có đúng quy tắc giao thông không?\r\n[IMG=ch130.jpg][/IMG]', 'Đúng.', 'Không đúng.', NULL, NULL, 2, NULL, 6),
(131, 'Xe nào được quyền đi trước trong trường hợp này?\r\n[IMG=ch131.jpg][/IMG]', 'Xe lam.', 'Xe xích lô.', NULL, NULL, 2, NULL, 6),
(132, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?\r\n[IMG=ch132.jpg][/IMG]', 'Xe lam, mô tô, xe con, xe đạp.', 'Xe con, xe đạp, mô tô, xe lam.', 'Xe lam, xe con, mô tô + xe đạp.', 'Mô tô + xe đạp, xe lam, xe con.', 4, NULL, 6),
(133, 'Xe nào được quyền đi trước trong trường hợp này?\r\n[IMG=ch133.jpg][/IMG]', 'Mô tô.', 'Xe con.', NULL, NULL, 1, NULL, 6),
(134, 'Xe nào vi phạm quy tắc giao thông?\r\n[IMG=ch134.jpg][/IMG]', 'Xe khách.', 'Mô tô.', 'Xe con.', 'Xe con và mô tô.', 3, NULL, 6),
(135, 'Các xe đi như thế nào là đúng quy tắc giao thông?\r\n[IMG=ch135.jpg][/IMG]', 'Các xe ở phía tay phải và tay trái của người điều khiển được phép đi thẳng.', 'Cho phép các xe ở mọi hướng được rẽ phải.', 'Tất cả các xe phải dừng lại trước ngã tư, trừ những xe đã ở trong ngã tư được phép tiếp tục đi.', NULL, 3, NULL, 6),
(136, 'Theo hướng mũi tên, xe nào được phép đi?\r\n[IMG=ch136.jpg][/IMG]', 'Mô tô, xe con', 'Xe con, xe tải', 'Mô tô, xe tải', 'Cả ba xe', 3, NULL, 6),
(137, 'Trong hình dưới đây, xe nào chấp hành đúng quy tắc giao thông?\r\n[IMG=ch137.jpg][/IMG]', 'Xe khách, mô tô.', 'Tất cả các loại xe trên.', 'Không xe nào chấp hành đúng quy tắc giao thông.', NULL, 2, NULL, 6),
(138, 'Theo hướng mũi tên, những hướng nào xe mô tô được phép đi?\r\n[IMG=ch138.jpg][/IMG]', 'Cả ba hướng.', 'Hướng 1 và 2.', 'Hướng 1 và 3.', 'Hướng 2 và 3.', 3, NULL, 6),
(139, 'Trong trường hợp này, thứ tự các xe đi như thế nào là đúng quy tắc giao thông?\r\n[IMG=ch139.jpg][/IMG]', 'Xe công an, xe quân sự, xe con + mô tô.', 'Xe quân sự, xe công an, xe con + mô tô.', 'Xe mô tô + xe con, xe quân sự, xe công an.', NULL, 2, NULL, 6),
(140, 'Trong hình dưới, những xe nào vi phạm quy tắc giao thông?\r\n[IMG=ch140.jpg][/IMG]', 'Xe con (E), mô tô (C).', 'Xe tải (A), mô tô (D).', 'Xe khách (B), mô tô (C).', 'Xe khách (B), mô tô (D).', 1, NULL, 6),
(141, 'Trong hình dưới, những xe nào vi phạm quy tắc giao thông?\r\n[IMG=ch141.jpg][/IMG]', 'Xe con (B), mô tô (C).', 'Xe con (A), mô tô (C).', 'Xe con (E), mô tô (D).', 'Tất cả các loại xe trên.', 3, NULL, 6),
(142, 'Theo tín hiệu đèn, xe nào phải dừng lại là đúng quy tắc giao thông?\r\n[IMG=ch142.jpg][/IMG]', 'Xe khách, mô tô.', 'Xe tải, mô tô.', 'Xe con, xe tải.', NULL, 3, NULL, 6),
(143, 'Bạn có được phép vượt xe mô tô phía trước không?\r\n[IMG=ch143.jpg][/IMG]', 'Cho phép.', 'Không được phép.', NULL, NULL, 2, NULL, 6),
(144, 'Theo tín hiệu đèn của xe cơ giới, xe nào vi phạm quy tắc giao thông?\r\n[IMG=ch144.jpg][/IMG]', 'Xe mô tô.', 'Xe ô tô con.', 'Không xe nào vi phạm.', NULL, 1, 2, 6),
(145, 'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?\r\n[IMG=ch145.jpg][/IMG]', 'Xe con.', 'Xe tải.', 'Xe con, xe tải.', NULL, 2, NULL, 6),
(146, 'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?\r\n[IMG=ch146.jpg][/IMG]', 'Xe tải, xe con.', 'Xe khách, xe con.', 'Xe khách, xe tải.', NULL, 3, NULL, 6),
(147, 'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?\r\n[IMG=ch147.jpg][/IMG]', 'Xe con, xe tải, xe khách.', 'Xe tải, xe khách, xe mô tô.', 'Xe khách, xe mô tô, xe con.', 'Cả bốn xe.', 2, NULL, 6),
(148, 'Các xe đi theo hướng mũi tên, xe nào chấp hành đúng quy tắc giao thông?\r\n[IMG=ch148.jpg][/IMG]', 'Xe tải, mô tô.', 'Xe khách, mô tô.', 'Xe tải, xe con.', 'Mô tô, xe con.', 2, NULL, 6),
(149, 'Các xe đi theo thứ tự nào là đúng quy tắc giao thông đường bộ?\r\n[IMG=ch149.jpg][/IMG]', 'Xe của bạn, mô tô, xe con.', 'Xe con, xe của bạn, mô tô.', 'Mô tô, xe con, xe của bạn.', NULL, 3, NULL, 6),
(150, 'Các xe đi theo thứ tự nào là đúng quy tắc giao thông đường bộ?\r\n[IMG=ch150.jpg][/IMG]', 'Xe của bạn, mô tô, xe con.', 'Xe con, xe của bạn, mô tô.', 'Mô tô, xe con, xe của bạn.', NULL, 2, NULL, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dethi`
--

CREATE TABLE `dethi` (
  `MaDe` int(11) NOT NULL,
  `MaCauHoi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dethi`
--

INSERT INTO `dethi` (`MaDe`, `MaCauHoi`) VALUES
(1, 1),
(1, 14),
(1, 24),
(1, 34),
(1, 44),
(1, 54),
(1, 64),
(1, 33),
(1, 73),
(1, 76),
(1, 81),
(1, 85),
(1, 90),
(1, 95),
(1, 100),
(1, 116),
(1, 126),
(1, 136),
(1, 146),
(1, 150),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 12),
(2, 13),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(3, 30),
(3, 31),
(3, 32),
(3, 35),
(3, 36),
(3, 37),
(3, 38),
(3, 39),
(3, 40),
(3, 41),
(3, 42),
(3, 43),
(3, 45),
(3, 46),
(3, 47),
(3, 48),
(3, 49),
(3, 59),
(3, 51),
(3, 52),
(4, 53),
(4, 55),
(4, 56),
(4, 57),
(4, 58),
(4, 59),
(4, 60),
(4, 61),
(4, 62),
(4, 63),
(4, 65),
(4, 66),
(4, 67),
(4, 68),
(4, 69),
(4, 70),
(4, 71),
(4, 72),
(4, 75),
(4, 74);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaicauhoi`
--

CREATE TABLE `loaicauhoi` (
  `MaLoaiCauHoi` int(11) NOT NULL,
  `TenLoaiCauHoi` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('admin', '123'),
('mung', '1'),
('thisinh', '1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD PRIMARY KEY (`MaCauHoi`),
  ADD KEY `MaLoaiCauHoi` (`MaLoaiCauHoi`);

--
-- Chỉ mục cho bảng `dethi`
--
ALTER TABLE `dethi`
  ADD KEY `fk_ch` (`MaCauHoi`);

--
-- Chỉ mục cho bảng `loaicauhoi`
--
ALTER TABLE `loaicauhoi`
  ADD PRIMARY KEY (`MaLoaiCauHoi`),
  ADD KEY `TenLoaiCauHoi` (`TenLoaiCauHoi`),
  ADD KEY `TenLoaiCauHoi_2` (`TenLoaiCauHoi`),
  ADD KEY `MaLoaiCauHoi` (`MaLoaiCauHoi`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `dethi`
--
ALTER TABLE `dethi`
  ADD CONSTRAINT `fk_ch` FOREIGN KEY (`MaCauHoi`) REFERENCES `cauhoi` (`MaCauHoi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `loaicauhoi`
--
ALTER TABLE `loaicauhoi`
  ADD CONSTRAINT `loaicauhoi_ibfk_1` FOREIGN KEY (`MaLoaiCauHoi`) REFERENCES `cauhoi` (`MaLoaiCauHoi`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
