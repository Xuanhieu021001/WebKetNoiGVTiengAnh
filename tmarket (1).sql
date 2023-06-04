-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 03, 2023 lúc 12:12 PM
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
-- Cơ sở dữ liệu: `tmarket`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `taikhoan` varchar(100) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `thoigiantao` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `taikhoan`, `matkhau`, `hoten`, `email`, `thoigiantao`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 'Tùng Đức', 'admin@gmail.com', '2023-05-22 16:17:46'),
(2, 'admin2', '202cb962ac59075b964b07152d234b70', 'Dương Dức', 'admin2@gmail.com', '2023-05-31 21:42:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baikiemtra`
--

CREATE TABLE `baikiemtra` (
  `id` int(11) NOT NULL,
  `tenbaitap` varchar(255) NOT NULL,
  `idkhoahoc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `baikiemtra`
--

INSERT INTO `baikiemtra` (`id`, `tenbaitap`, `idkhoahoc`) VALUES
(2, 'Bài thi tiếng Anh', 10),
(3, 'Tiếng Anh văn phòng', 13),
(4, 'Bài kiểm tra', 24);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cahoc`
--

CREATE TABLE `cahoc` (
  `id` int(11) NOT NULL,
  `thoigian` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cahoc`
--

INSERT INTO `cahoc` (`id`, `thoigian`) VALUES
(1, 'Thứ: 3,5,7. Thời gian: 18h - 21h'),
(2, 'Thứ: 3,5,7. Thời gian: 14h - 17h'),
(3, 'Thứ: 3,5,7. Thời gian: 8h - 11h'),
(4, 'Thứ: 2,4,6. Thời gian: 18h - 21h'),
(5, 'Thứ: 2,4,6. Thời gian: 14h - 17h'),
(6, 'Thứ: 2,4,6. Thời gian: 8h - 11h');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietbaikiemtra`
--

CREATE TABLE `chitietbaikiemtra` (
  `STT` int(11) NOT NULL,
  `idbkt` int(11) NOT NULL,
  `tencauhoi` varchar(255) NOT NULL,
  `dapana` varchar(255) NOT NULL,
  `dapanb` varchar(255) NOT NULL,
  `dapanc` varchar(255) NOT NULL,
  `dapand` varchar(255) NOT NULL,
  `dapandung` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietbaikiemtra`
--

INSERT INTO `chitietbaikiemtra` (`STT`, `idbkt`, `tencauhoi`, `dapana`, `dapanb`, `dapanc`, `dapand`, `dapandung`) VALUES
(2, 2, 'Claude is ________.', 'Frenchman', 'a French', 'a Frenchman', 'French man', 'b'),
(3, 2, 'I ____ a car next year.', 'buy', 'am buying', 'going to buy', 'bought', 'b'),
(7, 2, 'They are all ________ ready for the party.', 'getting', 'going', 'doing', 'putting', 'a'),
(8, 3, 'When do you go ________ bed?', 'to', 'to the', 'in', 'in the', 'a'),
(9, 3, 'London is famous for _____ red buses.', 'itis', 'its', 'it', 'it is', 'b'),
(10, 4, 'London is famous for _____ red buses.', 'it is', 'its', 'it', 'it are', 'b'),
(11, 4, 'Where are _____ children? – They go to school.', 'the', 'you', 'a', 'an', 'a'),
(12, 4, 'Those students are working very _____ for their next exams.', 'hardly', 'hard', 'harder', 'hardest', 'b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congcudayhoc`
--

CREATE TABLE `congcudayhoc` (
  `id` int(11) NOT NULL,
  `tencongcu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `congcudayhoc`
--

INSERT INTO `congcudayhoc` (`id`, `tencongcu`) VALUES
(2, 'Zoom'),
(3, 'Google Meet');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doanhthu`
--

CREATE TABLE `doanhthu` (
  `id` int(11) NOT NULL,
  `idkhoahoc` int(11) NOT NULL,
  `sotien` int(11) NOT NULL,
  `tongtienconlai` int(11) NOT NULL,
  `thoigian` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `doanhthu`
--

INSERT INTO `doanhthu` (`id`, `idkhoahoc`, `sotien`, `tongtienconlai`, `thoigian`) VALUES
(1, 11, 60000, 0, '2023-06-02'),
(2, 21, 30000, 0, '2023-06-02'),
(3, 22, 30000, 0, '2023-06-02'),
(4, 10, 60000, 0, '2023-06-02'),
(5, 12, 60000, 0, '2023-06-02'),
(6, 19, 60001, 0, '2023-06-02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donggopykien`
--

CREATE TABLE `donggopykien` (
  `id` int(11) NOT NULL,
  `hoten` varchar(100) NOT NULL,
  `sodienthoai` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ykiendonggop` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donggopykien`
--

INSERT INTO `donggopykien` (`id`, `hoten`, `sodienthoai`, `email`, `ykiendonggop`) VALUES
(1, 'Đức', 0, '0796470639', 'Học viên chỉ được đăng ký khóa học 1 lần'),
(2, 'Bình', 796470639, 'abc@gmail.com', 'Đăng ký khóa học chỉ đc đăng ký 1 lần khóa học đó');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaovien`
--

CREATE TABLE `giaovien` (
  `id` int(11) NOT NULL,
  `hoten` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sodienthoai` int(11) NOT NULL,
  `theloaigiaovien` int(11) NOT NULL,
  `quocgia` varchar(10) NOT NULL,
  `gioitinh` int(11) NOT NULL,
  `vitien` int(11) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `timezone` varchar(10) NOT NULL,
  `idcongcudayhoc` int(11) NOT NULL,
  `linkdayhoc` varchar(255) NOT NULL,
  `gioithieubanthan1` text NOT NULL,
  `gioithieubanthan2` text NOT NULL,
  `gioithieubanthan3` text NOT NULL,
  `imgprofile` varchar(255) NOT NULL,
  `taikhoan` int(11) NOT NULL,
  `video` varchar(100) NOT NULL,
  `idcard1` varchar(100) NOT NULL,
  `idcard2` varchar(100) NOT NULL,
  `chungchi1` varchar(100) NOT NULL,
  `chungchi2` varchar(100) NOT NULL,
  `congcu1` varchar(100) NOT NULL,
  `congcu2` varchar(100) NOT NULL,
  `congcu3` varchar(100) NOT NULL,
  `congcu4` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `giaovien`
--

INSERT INTO `giaovien` (`id`, `hoten`, `email`, `sodienthoai`, `theloaigiaovien`, `quocgia`, `gioitinh`, `vitien`, `diachi`, `timezone`, `idcongcudayhoc`, `linkdayhoc`, `gioithieubanthan1`, `gioithieubanthan2`, `gioithieubanthan3`, `imgprofile`, `taikhoan`, `video`, `idcard1`, `idcard2`, `chungchi1`, `chungchi2`, `congcu1`, `congcu2`, `congcu3`, `congcu4`) VALUES
(4, 'Dương Hiếu', 'abc1@gmail.com', 22, 2, 'qg02', 1, 4680002, 'abcbc', 'tg02', 2, 'ID: 757 815 7697  PASS: 12345', 'Hi. My name is Nhật I took Bachelor of Secondary Education Major in Social Studies at Jose Rizal University in Mandaluyong City. My hobbies are watching movies, listening to music as well as reading books. I am working as an online tutor for almost 4 months now and I teach Filipino, English and Social Studies in grades 1, 3 and 6 students.', 'b', 'c', './img/profile/415a0cX.jpg', 4, './video/181vqeLM.mp4', '', '', '', '', '', '', '', ''),
(10, 'Dương Đức', 'duc@gmail.com', 123456, 1, 'qg01', 1, 2754562, 'Chợ Hàng', 'tg02', 3, 'https://meet.google.com/epr-royk-kzn', 'My name is Kendy Gutierrez, and I am 32 years old. I am residing n Pangasinan Philippines. I took a course of Bachelor in Science Business Administrator major in Marketing Management at the University of Pangasinan Phinma', '22', '33', './img/profile/91rSv2P.jpg', 9, './video/181vqeLM.mp4', '', '', '', '', '', '', '', ''),
(13, 'Hoàng Nhật', 'duc@gmail.com', 12345678, 2, 'qg01', 1, 0, 'Hải Phòng', 'tg01', 2, 'https://meet.google.com/jxv-nwsd-kwz', 'Hi. My name is Nhật I took Bachelor of Secondary Education Major in Social Studies at Jose Rizal University in Mandaluyong City. My hobbies are watching movies, listening to music as well as reading books. I am working as an online tutor for almost 4 months now and I teach Filipino, English and Social Studies in grades 1, 3 and 6 students.', 'b', 'c', './img/profile/161M6H5K.jpg', 16, './video/181vqeLM.mp4', './img/idcard/161wB0VP.jpg', './img/idcard/162QNN3p.jpg', './img/chungchi/161ZEYME.jpg', './img/chungchi/161dATfC.jpg', './img/congcudayhoc/165Ujwbl.jpg', './img/congcudayhoc/161DITWe.jpg', './img/congcudayhoc/161hEigj.jpg', './img/congcudayhoc/16161djb.jpg'),
(14, 'phạm  chi', 'chi@gmail.com', 2147483647, 2, 'qg01', 2, 210000, 'HaiPhong', 'tg01', 3, 'https://meet.google.com/qtw-qyez-uab', 'My name is Teacher Chi, or other people called me Teacher J. I graduated in Central Philippine University with Bachelor of Secondary Education Major In English. When it comes to experience, I am a teacher both online ESL tutor and offline teaching with foreign students. My hobbies are watching classic English movies, read books both fiction and non-fiction, and I also love to play volleyball.', 'good', 'FreeStyle', './img/profile/181oDJp5.jpg', 18, './video/181vqeLM.mp4', './img/idcard/181mCRGV.jpg', './img/idcard/181M99FS.jpg', './img/chungchi/181xcn9B.jpg', './img/chungchi/181cp8QP.jpg', './img/congcudayhoc/1811ba00.jpg', './img/congcudayhoc/1810TZWq.jpg', './img/congcudayhoc/181w0OOe.jpg', './img/congcudayhoc/181sGQMC.jpg'),
(15, 'Myra Zharifa', 'zhafira@gmail.com', 365874589, 1, 'qg03', 2, 0, 'Ha Noi', 'tg01', 3, 'https://meet.google.com/trr-jfce-hjm', ' my name is Zhafira. I am an English teacher and I am passionate about teaching and helping students learn English. In my free time, I enjoy reading books and playing the guitar. I have a degree in English literature from the University of Washington. I am excited to be here and look forward to getting to know everyone.', 'The better teacher', 'Polite course', './img/profile/191TRuyS.jpg', 19, './video/191aE0X0.mp4', './img/idcard/191TnI5t.jpg', './img/idcard/191dhh6W.jpg', './img/chungchi/191SrvbT.jpg', './img/chungchi/191K8YT1.jpg', './img/congcudayhoc/191BYqF1.jpg', './img/congcudayhoc/191TstZ2.jpg', './img/congcudayhoc/191MEVM7.jpg', './img/congcudayhoc/191HTqgZ.jpg'),
(16, 'Đặng Vy', 'vivian@gmail.com', 365874587, 1, 'qg01', 2, 0, 'Ho Chi Minh', 'tg01', 3, 'https://meet.google.com/trr-jfce-hjm', 'Hi, my name is Vivian Dang. I am an English teacher and I am passionate about teaching and helping students learn English. In my free time, I enjoy reading books and playing the piano. I have a degree in English literature from the University of California, Los Angeles. I am excited to be here and look forward to getting to know everyone.', 'Fun teacher', 'Serious, funny course', './img/profile/201IkQ3W.jpg', 20, './video/201QXdDt.mp4', './img/idcard/201idnke.jpg', './img/idcard/201fGqk2.jpg', './img/chungchi/201D8L6O.jpg', './img/chungchi/201HWYdR.jpg', './img/congcudayhoc/201x8BK7.jpg', './img/congcudayhoc/2018k1F1.jpg', './img/congcudayhoc/201hDzz2.jpg', './img/congcudayhoc/201e8sZT.jpg'),
(17, 'Nguyen Mai Lan', 'lannguyen@gmail.com', 365874587, 2, 'qg01', 2, 0, 'Hai Phong', 'tg01', 2, 'https://meet.google.com/trr-jfce-hjm', '“Hi, my name is Lan. I am an English teacher and I am passionate about teaching and helping students learn English. In my free time, I enjoy reading books and playing the piano. I have a degree in English literature from the University of California, Los Angeles. I am excited to be here and look forward to getting to know everyone', 'Funny', 'meticulous', './img/profile/211ELNom.jpg', 21, './video/211ytfDf.mp4', './img/idcard/211osAVx.jpg', './img/idcard/211Jirdn.jpg', './img/chungchi/211OUNlq.jpg', './img/chungchi/211kBfGz.jpg', './img/congcudayhoc/211YCNb9.jpg', './img/congcudayhoc/211wC5k6.jpg', './img/congcudayhoc/211JyAwk.jpg', './img/congcudayhoc/211LJiM7.jpg'),
(18, 'Runel Milky', 'milky@gmail.com', 365897484, 2, 'qg03', 1, 0, 'Manila', 'tg01', 3, 'https://meet.google.com/trr-jfce-hjm', 'Hi, my name is Milky. I am a male English teacher and I am passionate about teaching and helping students learn English. In my free time, I enjoy playing video games and playing the guitar. I have a degree in English literature from the University of California, Berkeley. I am excited to be here and look forward to getting to know everyone', 'Funny', 'Humorous  Course', './img/profile/221hLVFA.jpg', 22, './video/221LUNgw.mp4', './img/idcard/221DNhkI.jpg', './img/idcard/221ZHJwH.jpg', './img/chungchi/2211HPAK.jpg', './img/chungchi/221Xuxs5.jpg', './img/congcudayhoc/2211yp5M.jpg', './img/congcudayhoc/221VZB2K.jpg', './img/congcudayhoc/22187IWH.jpg', './img/congcudayhoc/221q407b.jpg'),
(19, 'Luu Huyen', 'annie@gmail.com', 358747895, 1, 'qg01', 2, 0, 'Hue', 'tg01', 3, 'https://meet.google.com/trr-jfce-hjm', '“Hi, my name is Huyen. I am an English teacher and I am passionate about teaching and helping students learn English. In my free time, I enjoy reading books and playing the piano. I have a degree in English literature from the University of California, Los Angeles. I am excited to be here and look forward to getting to know everyone', 'Easygoing Teacher', 'Not Bored', './img/profile/231kubrN.jpg', 23, './video/231SKund.mp4', './img/idcard/231BLE9S.jpg', './img/idcard/231SmIXr.jpg', './img/chungchi/231nzpKD.jpg', './img/chungchi/231jmuYL.jpg', './img/congcudayhoc/231aGIEe.jpg', './img/congcudayhoc/231ji9iB.jpg', './img/congcudayhoc/231j5fL8.jpg', './img/congcudayhoc/231O834G.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gioitinh`
--

CREATE TABLE `gioitinh` (
  `id` int(11) NOT NULL,
  `gioitinh` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `gioitinh`
--

INSERT INTO `gioitinh` (`id`, `gioitinh`) VALUES
(1, 'Nam'),
(2, 'Nữ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhthucthanhtoan`
--

CREATE TABLE `hinhthucthanhtoan` (
  `id` int(11) NOT NULL,
  `tenhinhthuc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hinhthucthanhtoan`
--

INSERT INTO `hinhthucthanhtoan` (`id`, `tenhinhthuc`) VALUES
(1, 'Ví Tmarket'),
(2, 'Chuyển khoản ngân hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocvien`
--

CREATE TABLE `hocvien` (
  `id` int(11) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `sodienthoai` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gioitinh` int(11) NOT NULL,
  `taikhoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hocvien`
--

INSERT INTO `hocvien` (`id`, `hoten`, `sodienthoai`, `email`, `gioitinh`, `taikhoan`) VALUES
(1, 'Trần Khải', 12345567, 'khai@gmail.com', 1, 14),
(3, 'Dương Tùng', 23, 'duc', 1, 11),
(5, 'Phạm Chi', 1234567, 'chi@gmail.com', 1, 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ketqualambaitap`
--

CREATE TABLE `ketqualambaitap` (
  `id` int(11) NOT NULL,
  `idbaikiemtra` int(11) NOT NULL,
  `idhocvien` int(11) NOT NULL,
  `ketqua` varchar(100) NOT NULL,
  `thoigian` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ketqualambaitap`
--

INSERT INTO `ketqualambaitap` (`id`, `idbaikiemtra`, `idhocvien`, `ketqua`, `thoigian`) VALUES
(2, 2, 11, '2/3', '2023-06-02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoahocgiaovien`
--

CREATE TABLE `khoahocgiaovien` (
  `id` int(11) NOT NULL,
  `giaovienid` int(11) NOT NULL,
  `theloaikhoahocid` int(11) NOT NULL,
  `hocphi` float NOT NULL,
  `thoigianbatdau` date NOT NULL,
  `thoigianketthuc` date NOT NULL,
  `cahoc` int(11) NOT NULL,
  `tinhtrang` varchar(255) NOT NULL,
  `tailieu1` varchar(100) NOT NULL,
  `tailieu2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khoahocgiaovien`
--

INSERT INTO `khoahocgiaovien` (`id`, `giaovienid`, `theloaikhoahocid`, `hocphi`, `thoigianbatdau`, `thoigianketthuc`, `cahoc`, `tinhtrang`, `tailieu1`, `tailieu2`) VALUES
(10, 10, 2, 200001, '2023-05-04', '2023-06-03', 4, 'Đã hoàn thành', './tailieukhoahoc/91gfHwU1.pdf', './tailieukhoahoc/91Y2LMk2.pdf'),
(11, 4, 2, 200001, '2023-05-26', '2023-06-04', 1, 'Đã hoàn thành', './tailieukhoahoc/91gfHwU1.pdf', './tailieukhoahoc/91Y2LMk2.pdf'),
(12, 4, 3, 200001, '2023-05-03', '2023-06-03', 2, 'Đang hoạt động', './tailieukhoahoc/91gfHwU1.pdf', './tailieukhoahoc/91Y2LMk2.pdf'),
(13, 10, 2, 200002, '2023-05-04', '2023-06-02', 4, 'Đã hoàn thành', './tailieukhoahoc/91gfHwU1.pdf', './tailieukhoahoc/91Y2LMk2.pdf'),
(19, 10, 6, 200003, '2023-05-29', '2023-07-07', 5, 'Chưa hoạt động', './tailieukhoahoc/91IruDr1.pdf', './tailieukhoahoc/919LwDD2.pdf'),
(20, 10, 5, 2000000, '2023-05-31', '2023-07-02', 5, 'Chưa hoạt động', './tailieukhoahoc/91O6X131.pdf', './tailieukhoahoc/91VQjLt2.pdf'),
(21, 14, 8, 100000, '2023-06-15', '2023-07-06', 3, 'Đã hoàn thành', './tailieukhoahoc/1815AeZc1.pdf', './tailieukhoahoc/181LL38D2.pdf'),
(22, 14, 2, 100000, '2023-06-22', '2023-07-01', 1, 'Đã hoàn thành', './tailieukhoahoc/181qI4CM1.pdf', './tailieukhoahoc/181ZAkMK2.pdf'),
(23, 10, 8, 150000, '2023-06-07', '2023-06-29', 2, 'Chưa hoạt động', './tailieukhoahoc/91YwAJT1.pdf', './tailieukhoahoc/91tTjGN2.pdf'),
(24, 14, 5, 250000, '2023-06-20', '2023-07-01', 5, 'Chưa hoạt động', './tailieukhoahoc/181sAzLd2.pdf', './tailieukhoahoc/181ONVk91.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoahochocvien`
--

CREATE TABLE `khoahochocvien` (
  `id` int(11) NOT NULL,
  `idkhoahoc` int(11) NOT NULL,
  `idhocvien` int(11) NOT NULL,
  `tinhtrang` varchar(100) NOT NULL,
  `hinhthucthanhtoan` int(11) NOT NULL,
  `thoigiandangky` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khoahochocvien`
--

INSERT INTO `khoahochocvien` (`id`, `idkhoahoc`, `idhocvien`, `tinhtrang`, `hinhthucthanhtoan`, `thoigiandangky`) VALUES
(10, 11, 11, 'Đã hoàn thành', 2, '2023-05-25'),
(18, 12, 14, 'Phê duyệt thành công', 2, '2023-06-02'),
(20, 21, 14, 'Đã hoàn thành', 2, '2023-06-02'),
(21, 21, 12, 'Đã hoàn thành', 2, '2023-06-02'),
(22, 22, 12, 'Đã hoàn thành', 2, '2023-06-02'),
(23, 12, 12, 'Phê duyệt thành công', 2, '2023-06-02'),
(25, 10, 11, 'Đã hoàn thành', 1, '2023-06-02'),
(26, 12, 12, 'Phê duyệt thành công', 2, '2023-06-02'),
(28, 12, 11, 'Phê duyệt thành công', 1, '2023-06-02'),
(29, 20, 11, 'Đang phê duyệt', 2, '2023-06-02'),
(30, 19, 14, 'Phê duyệt thành công', 1, '2023-06-02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichsugiaodich`
--

CREATE TABLE `lichsugiaodich` (
  `id` int(11) NOT NULL,
  `idgiaovien` int(11) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `biendong` int(11) NOT NULL,
  `tongtienconlai` int(11) NOT NULL,
  `thoigian` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lichsugiaodich`
--

INSERT INTO `lichsugiaodich` (`id`, `idgiaovien`, `mota`, `biendong`, `tongtienconlai`, `thoigian`) VALUES
(1, 4, 'Cộng tiền', 500000, 2500000, '2023-05-25'),
(2, 4, 'Cộng tiền', 1000000, 4500000, '2023-05-25'),
(3, 4, 'Rút tiền', 100000, 4400000, '2023-05-26'),
(4, 10, 'Cộng tiền', 500000, 1734560, '2023-06-01'),
(5, 10, 'Cộng tiền', 500000, 2234560, '2023-06-01'),
(6, 10, 'Cộng tiền', 199999, 2434559, '2023-06-01'),
(7, 10, 'Rút tiền', 100000, 2334559, '2023-06-01'),
(8, 4, 'Cộng tiền', 140001, 4540001, '2023-06-02'),
(9, 14, 'Cộng tiền', 70000, 140000, '2023-06-02'),
(10, 14, 'Cộng tiền', 70000, 210000, '2023-06-02'),
(12, 10, 'Cộng tiền', 140001, 2614560, '2023-06-02'),
(13, 4, 'Cộng tiền', 140001, 4680002, '2023-06-02'),
(14, 10, 'Cộng tiền', 140002, 2754562, '2023-06-02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lsgiaodich`
--

CREATE TABLE `lsgiaodich` (
  `id` int(11) NOT NULL,
  `ngaythang` date NOT NULL DEFAULT current_timestamp(),
  `idtaikhoan` int(11) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `biendong` int(11) NOT NULL,
  `tienconlai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lsgiaodich`
--

INSERT INTO `lsgiaodich` (`id`, `ngaythang`, `idtaikhoan`, `mota`, `biendong`, `tienconlai`) VALUES
(1, '2023-06-02', 11, 'Nạp tiền', 500000, 500000),
(2, '2023-06-02', 11, 'Nạp tiền', 10000, 510000),
(3, '2023-06-02', 11, 'Nạp tiền', 10000, 520000),
(4, '2023-06-02', 11, 'Trừ tiền', 200001, 319999),
(5, '2023-06-02', 11, 'Trừ tiền', 200001, 119998),
(6, '2023-06-02', 11, 'Nạp tiền', 500000, 619998),
(7, '2023-06-02', 11, 'Trừ tiền', 200001, 419997),
(8, '2023-06-02', 14, 'Nạp tiền', 1000000, 399997),
(9, '2023-06-02', 14, 'Trừ tiền', 200003, 199994),
(10, '2023-06-03', 12, 'Nạp tiền', 500000, -300006),
(11, '2023-06-03', 12, 'Nạp tiền', 500000, 199994);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `naptien`
--

CREATE TABLE `naptien` (
  `id` int(11) NOT NULL,
  `idtaikhoan` int(11) NOT NULL,
  `sotien` int(11) NOT NULL,
  `thoigian` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `naptien`
--

INSERT INTO `naptien` (`id`, `idtaikhoan`, `sotien`, `thoigian`) VALUES
(2, 11, 500000, '2023-06-02'),
(8, 12, 500000, '2023-06-03'),
(9, 12, 200000, '2023-06-03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `id` int(11) NOT NULL,
  `tenquyen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`id`, `tenquyen`) VALUES
(1, 'Giáo viên'),
(2, 'Học viên'),
(3, 'Người dùng mới');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pheduyetgiaovien`
--

CREATE TABLE `pheduyetgiaovien` (
  `id` int(11) NOT NULL,
  `hoten` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sodienthoai` int(11) NOT NULL,
  `theloaigiaovien` int(11) NOT NULL,
  `quocgia` varchar(10) NOT NULL,
  `gioitinh` int(11) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `congcudayhoc` int(11) NOT NULL,
  `linkdayhoc` varchar(255) NOT NULL,
  `gioithieubanthan1` text NOT NULL,
  `gioithieubanthan2` text NOT NULL,
  `gioithieubanthan3` text NOT NULL,
  `imgprofile` varchar(255) NOT NULL,
  `taikhoan` int(11) NOT NULL,
  `timezone` varchar(10) NOT NULL,
  `video` varchar(100) NOT NULL,
  `idcard1` varchar(100) NOT NULL,
  `idcard2` varchar(100) NOT NULL,
  `chungchi1` varchar(100) NOT NULL,
  `chungchi2` varchar(100) NOT NULL,
  `congcu1` varchar(100) NOT NULL,
  `congcu2` varchar(100) NOT NULL,
  `congcu3` varchar(100) NOT NULL,
  `congcu4` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `pheduyetgiaovien`
--

INSERT INTO `pheduyetgiaovien` (`id`, `hoten`, `email`, `sodienthoai`, `theloaigiaovien`, `quocgia`, `gioitinh`, `diachi`, `congcudayhoc`, `linkdayhoc`, `gioithieubanthan1`, `gioithieubanthan2`, `gioithieubanthan3`, `imgprofile`, `taikhoan`, `timezone`, `video`, `idcard1`, `idcard2`, `chungchi1`, `chungchi2`, `congcu1`, `congcu2`, `congcu3`, `congcu4`) VALUES
(10, 'Vũ Khải', 'khai@gmail.com', 12345678, 1, 'qg01', 1, 'Hà Nội', 3, 'https://meet.google.com/jxv-nwsd-kwz', 'a', 'b', 'c', 'default.jpg', 14, 'tg01', '', '', '', '', '', '', '', '', ''),
(11, 'Phạm Đăng', 'dang@gmail.com', 2147483647, 1, 'qg02', 1, 'HP', 2, 'ID 112 333 555 pass 123', '1', '2', '3', 'default.jpg', 17, 'tg01', '', '', '', '', '', '', '', '', ''),
(12, 'Phạm Đăng', 'dang@gmail.com', 2147483647, 1, 'qg02', 1, 'HP', 2, 'ID 112 333 555 pass 123', '1', '2', '3', 'default.jpg', 17, 'tg01', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pheduyetkhoahochoanthanh`
--

CREATE TABLE `pheduyetkhoahochoanthanh` (
  `id` int(11) DEFAULT NULL,
  `idkhoahoc` int(11) NOT NULL,
  `idgiaovien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `pheduyetkhoahochoanthanh`
--

INSERT INTO `pheduyetkhoahochoanthanh` (`id`, `idkhoahoc`, `idgiaovien`) VALUES
(NULL, 12, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quocgia`
--

CREATE TABLE `quocgia` (
  `id` varchar(10) NOT NULL,
  `quocgia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quocgia`
--

INSERT INTO `quocgia` (`id`, `quocgia`) VALUES
('qg01', 'Việt Nam'),
('qg02', 'Mỹ'),
('qg03', 'Philipine'),
('qg04', 'Nga');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ruttien`
--

CREATE TABLE `ruttien` (
  `id` int(11) NOT NULL,
  `idgiaovien` int(11) NOT NULL,
  `tennganhang` varchar(255) NOT NULL,
  `sotaikhoan` int(11) NOT NULL,
  `sotien` int(11) NOT NULL,
  `thoigian` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ruttien`
--

INSERT INTO `ruttien` (`id`, `idgiaovien`, `tennganhang`, `sotaikhoan`, `sotien`, `thoigian`) VALUES
(3, 4, 'Vietcombank', 1019020866, 2000000, '2023-05-26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `taikhoan` varchar(255) NOT NULL,
  `matkhau` varchar(255) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `phanquyen` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `thoigian` datetime NOT NULL DEFAULT current_timestamp(),
  `email` varchar(100) DEFAULT NULL,
  `sodienthoai` int(11) DEFAULT NULL,
  `gioitinh` int(11) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `quocgia` varchar(10) DEFAULT NULL,
  `timezone` varchar(10) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `vitien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `taikhoan`, `matkhau`, `hoten`, `phanquyen`, `image`, `thoigian`, `email`, `sodienthoai`, `gioitinh`, `diachi`, `quocgia`, `timezone`, `ngaysinh`, `vitien`) VALUES
(4, 'tungduc', 'b59c67bf196a4758191e42f76670ceba', 'Dương Đức', 1, './photo/1G4vvk.jpg', '2023-05-20 16:55:14', 'duc@gmail.com', 1234, 1, 'Sỹ', 'qg01', 'tg01', '2023-05-26', -800006),
(9, 'student1', 'b59c67bf196a4758191e42f76670ceba', 'Dương Đức', 1, 'default.jpg', '2023-05-21 21:31:17', 'duc@gmail.com', 222, 1, '222', 'qg02', 'tg02', '2023-05-04', -800006),
(11, 'duc', 'b59c67bf196a4758191e42f76670ceba', 'Dương Tùng', 2, './photo/111SESY0.jpg', '2023-05-24 15:41:46', 'duc', 23, 1, 'gghgh', 'qg01', 'tg01', '2023-05-20', 219994),
(12, 'chi123', 'b59c67bf196a4758191e42f76670ceba', 'Phạm Chi', 2, './photo/1216cAor.jpg', '2023-05-24 21:13:35', 'chi@gmail.com', 1234567, 1, 'Hải Phòng', 'qg01', 'tg01', '2023-06-16', 199994),
(13, 'vuhieu123', 'b59c67bf196a4758191e42f76670ceba', 'Vũ Hiếu', 3, './photo/131ZZMQf.jpg', '2023-05-24 22:08:49', 'hieu@gmail.com', 123456789, 1, 'dfgdfg\r\n', 'qg01', 'tg01', '2023-05-18', -800006),
(14, 'khai', 'b59c67bf196a4758191e42f76670ceba', 'Trần Khải', 2, './photo/141NFLQ9.jpg', '2023-05-24 23:26:03', 'khai@gmail.com', 12345567, 1, 'Hồ Chí Minh\r\n', 'qg03', 'tg01', '2023-05-11', 199994),
(15, 'quoc', 'b59c67bf196a4758191e42f76670ceba', 'Trần Quốc', 3, './photo/151rye27.jpg', '2023-05-24 23:35:19', 'quoc@gmail.com', 774488, 1, 'Tô Hiệu', 'qg01', 'tg02', '2023-05-16', -800006),
(16, 'long', 'b59c67bf196a4758191e42f76670ceba', 'Dương Long', 1, './photo/161h3X4C.jpg', '2023-05-24 23:37:45', 'long@gmail.com', 7778899, 1, 'Hàng Kênh', 'qg01', 'tg01', '2023-06-14', -800006),
(17, 'dangpham123', '202cb962ac59075b964b07152d234b70', 'Phạm Đăng', 3, './photo/default.jpg', '2023-06-01 00:00:05', ' ', 0, 1, ' ', 'qg01', 'tg01', NULL, -800006),
(18, 'chi', 'b59c67bf196a4758191e42f76670ceba', 'phạm chi', 1, 'default.jpg', '2023-06-01 15:03:20', ' ', 0, 1, ' ', 'qg01', 'tg01', NULL, -800006),
(19, 'zhafira', 'b59c67bf196a4758191e42f76670ceba', 'Myra Zharifa', 1, 'default.jpg', '2023-06-01 15:30:16', ' ', 0, 1, ' ', 'qg01', 'tg01', NULL, -800006),
(20, 'vy', 'b59c67bf196a4758191e42f76670ceba', 'Đặng Vy', 1, 'default.jpg', '2023-06-01 16:04:14', ' ', 0, 1, ' ', 'qg01', 'tg01', NULL, -800006),
(21, 'lan', 'b59c67bf196a4758191e42f76670ceba', 'Nguyễn Mai Lan', 1, 'default.jpg', '2023-06-01 16:22:41', ' ', 0, 1, ' ', 'qg01', 'tg01', NULL, -800006),
(22, 'milky', 'b59c67bf196a4758191e42f76670ceba', 'Runel Milky', 1, 'default.jpg', '2023-06-01 16:32:57', ' ', 0, 1, ' ', 'qg01', 'tg01', NULL, -800006),
(23, 'huyen', 'b59c67bf196a4758191e42f76670ceba', 'Lưu Khánh Huyền', 1, 'default.jpg', '2023-06-01 16:54:05', ' ', 0, 1, ' ', 'qg01', 'tg01', NULL, -800006);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloaigiaovien`
--

CREATE TABLE `theloaigiaovien` (
  `id` int(11) NOT NULL,
  `tentheloai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `theloaigiaovien`
--

INSERT INTO `theloaigiaovien` (`id`, `tentheloai`) VALUES
(1, 'Giáo viên chuyên nghiệp'),
(2, 'Gia sư cộng đồng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloaikhoahoc`
--

CREATE TABLE `theloaikhoahoc` (
  `id` int(11) NOT NULL,
  `tenkhoahoc` varchar(255) NOT NULL,
  `mota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `theloaikhoahoc`
--

INSERT INTO `theloaikhoahoc` (`id`, `tenkhoahoc`, `mota`) VALUES
(2, 'English for Communication - Intermediate (Tiếng Anh Giao Tiếp - B1)', '- Có thể hiểu được ý chính của một đoạn văn hay bài phát biểu về các chủ đề quen thuộc trong công việc, trường học, giải trí, v.v... - Có thể mô tả được những kinh nghiệm, kế hoạch, trải nghiệm của bản thân - Có thể xử lý hầu hết các tình huống xảy ra trong giao tiếp bằng Tiếng Anh. - Có thể trình bày ngắn gọn các lý do, giải thích ý kiến và kế hoạch của mình. - Can understand the main idea of a paragraph or speech on familiar topics in work, school, entertainment, etc.v... - Can describe your own background, plans, and experiences. - Able to handle most situations occurring in communication in English. - Can briefly present the logic, explain your opinions and plans.'),
(3, 'English for Communication - Elementary (Tiếng Anh Giao Tiếp - A1)', '- Có thể hiểu, sử dụng các cấu trúc quen thuộc thông thường nhất\r\n- Được học các từ ngữ cơ bản đáp ứng nhu cầu giao tiếp cụ thể.\r\n- Có thể tự giới thiệu bản thân, có thể trả lời những thông tin về bản thân như nơi sinh sống, người thân…\r\n- Có thể giao tiếp đơn giản nếu người đối thoại nói chậm, rõ ràng và sẵn sàng hợp tác giúp đỡ.\r\n- Can understand and use the most common familiar structures.\r\n- Learn primary words to meet specific communication needs.\r\n- Can introduce yourself, can answer information about yourself such as where you live, relatives...\r\n- Can communicate simply if the interlocutor speaks slowly, clearly and is willing to cooperate and help.'),
(4, 'English for Communication - Foundation (Tiếng Anh Giao Tiếp - Cơ Bản)', '- Tiếng Anh giao tiếp cho người mới bắt đầu sẽ giúp bạn tự tin sử dụng tiếng Anh khi giao tiếp với người nước ngoài.\r\n- Cải thiện ngay khả năng phát âm, giúp bạn nói tiếng Anh hay và chuẩn hơn.\r\n- Cải thiện khả năng nghe tiếng Anh một cách rõ rệt.\r\n- Tìm được đam mê và niềm yêu thích với Tiếng Anh.\r\n- Củng cố vốn từ vựng và ngữ pháp căn bản, nâng cao trình độ tiếng Anh của mình một cách dễ dàng.\r\n- Có khả năng bắn ra thành phản xạ các chủ đề thông dụng, áp dụng cho công việc và học tập\r\n- Communicative English for beginners will help you confidently use English when communicating with foreigners.\r\n- Immediately improve pronunciation, help you speak English better and more precisely.\r\n- Improve your English listening ability effectively.\r\n- Find your passion and interest in English.\r\n- Consolidate basic vocabulary and grammar, improve your English level effortlessly.\r\n- Able to react immediately to common topics, applicable to work and study.'),
(5, 'English for Kids( Tiếng Anh Trẻ Em)', '- Học từ vựng của các chủ đề trong cuộc sống hằng ngày\r\n- Định hướng SPEAKING theo phương pháp tách ghép âm IPA.\r\n- Xây dựng nền tảng LISTENING với những bài hội thoại đơn giản.\r\n- Phát triển các kỹ năng READING và WRITING thông qua các cấu trúc ngữ pháp căn bản.\r\n- Tạo nhiều động lực để các bạn yêu thích học tiếng Anh cũng như có những tư duy tích cực trong cuộc sống.\r\n- Learn vocabulary of topics in daily life.\r\n- SPEAKING orientation according to IPA sound splitting method.\r\n- Build up a LISTENING platform with simple conversations.\r\n- Develop READING and WRITING skills through basic grammatical structures.\r\n- Create more motivation for you to love learning English as well as have positive thoughts in life.'),
(6, 'English for Interview - Business (Phỏng Vấn Văn Phòng)', '- Những điều cần biết về cuộc phỏng vấn.\r\n- Các cuộc hội thoại điển hình trong phỏng vấn xin việc.\r\n- Những câu hỏi giúp bạn chuẩn bị cho cuộc phỏng vấn.\r\n- Những câu và cụm từ thường dùng khi xin việc\r\n- Mô hình học 1 thầy 1 trò là môi trường lý tưởng để giáo viên giúp bạn tự tin đưa ra những phương án trả lời thuyết phục nhất.\r\n- What you need to know about an interview.\r\n- Typical conversations in job interviews.\r\n- Questions to help you prepare for the interview.\r\n- Sentences and phrases often used when applying for jobs.\r\n- The one-to-one learning model is an ideal environment for teachers to help you confidently give the most convincing answer options.'),
(7, 'English for Teenagers( Tiếng Anh Thiếu Niên)', '- Ở cấp độ cơ bản này, chương trình sẽ tập trung phát triển nền tảng giao tiếp của người học qua các chủ đề, chủ điểm thông dụng nhất.\r\n- Chương trình được kèm theo series video của BBC theo mức độ từ dễ đến khó, tạo môi trường tìm hiểu văn hoá và áp dụng ngôn ngữ đã học.\r\n- Chương trình với nhiều tài liệu đa dạng, phong phú và dễ hiểu\r\n- Người học sẽ được dành nhiều thời gian vào hoạt động, phát triển ý kiến và động lực để thực hành ngôn ngữ, từ đó giúp tiếp thu bài học dễ hơn\r\n- At this basic level, the program will focus on developing the communication platform of learners through the most common topics.\r\n- The program is accompanied by the BBC video series level from easy to difficult, creating an environment to learn the culture and apply the language learned.\r\n- Program with a variety of documents, plentiful and easy to understand.\r\n- Learners will be able to spend more time on activities, developing opinions and motivation to practice the language, thereby making learning lesson easier.'),
(8, 'English Pronunciation - All levels (Phát Âm)', '- Khóa học này giúp cho học viên làm quen với Phát Âm nhằm xây dựng nền móng thật chắc để phát triển kĩ năng nói và nghe.\r\n- Giới thiệu tổng quan về 44 âm trong Tiếng Anh.\r\n- Luyện nhuần nhuyễn IPA, học kỹ khẩu hình của từng âm, tự tin phát âm chuẩn từng từ.\r\n- Luyện từng từ vựng, đọc từng đoạn hội thoại ngắn.\r\n- This course helps students familiarize themselves with Pronunciation to build a solid foundation for developing speaking and listening skills.\r\n- An overview of 44 sounds in English.\r\n- Practice IPA fluently, learn the mouth shape of each sound, confidently pronounce each word correctly.\r\n- Practice each word, read each short conversation.'),
(9, 'English for Business( Tiếng Anh Văn Phòng)', '• Có thể giới thiệu một cách cơ bản về bản thân và giới thiệu về đồng nghiệp cũng như hỏi và trả lời các câu hỏi về thông tin cá nhân như tên tuổi, nghề nghiệp, sở thích…\r\n• Có khả năng giới thiệu về công ty, nơi làm việc và đồng nghiệp một cách đơn giản, mô tả ngoại hình và tính cách của họ.\r\n• Có khả năng nói về các tiện ích cơ bản trong văn phòng và đưa ra những hướng dẫn cơ bản để sử dụng.\r\n- Be able to introduce yourself and co-workers as well as ask and answer questions about personal information such as names, careers, interests…\r\n- Ability to introduce the company, workplace and colleagues in a simple way, describing their appearance and personality.\r\n- Ability to talk about basic utilities in the office and give basic instructions for use.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `timezone`
--

CREATE TABLE `timezone` (
  `id` varchar(10) NOT NULL,
  `ten` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `timezone`
--

INSERT INTO `timezone` (`id`, `ten`) VALUES
('tg01', '(UTC+07:00) Asia/Ho_Chi_Minh (GMT+07:00)'),
('tg02', '(UTC+07:00) Asia/Bangkok (GMT+07:00)');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ykiendanhgia`
--

CREATE TABLE `ykiendanhgia` (
  `id` int(11) NOT NULL,
  `idkhoahoc` int(11) NOT NULL,
  `idhocvien` int(11) NOT NULL,
  `ykiendanhgia` text NOT NULL,
  `thoigian` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ykiendanhgia`
--

INSERT INTO `ykiendanhgia` (`id`, `idkhoahoc`, `idhocvien`, `ykiendanhgia`, `thoigian`) VALUES
(1, 12, 13, 'Xuất sắc', '2023-06-01'),
(2, 10, 11, 'Rất hay', '2023-06-01'),
(3, 10, 13, 'Thầy dạy rất hay', '2023-06-01'),
(4, 11, 11, 'Thầy dạy rất tuyệt vời', '2023-06-02');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `baikiemtra`
--
ALTER TABLE `baikiemtra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idkhoahoc` (`idkhoahoc`);

--
-- Chỉ mục cho bảng `cahoc`
--
ALTER TABLE `cahoc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chitietbaikiemtra`
--
ALTER TABLE `chitietbaikiemtra`
  ADD PRIMARY KEY (`STT`),
  ADD KEY `idbkt` (`idbkt`);

--
-- Chỉ mục cho bảng `congcudayhoc`
--
ALTER TABLE `congcudayhoc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `doanhthu`
--
ALTER TABLE `doanhthu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idkhoahoc` (`idkhoahoc`);

--
-- Chỉ mục cho bảng `donggopykien`
--
ALTER TABLE `donggopykien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quocgia` (`quocgia`),
  ADD KEY `taikhoan` (`taikhoan`),
  ADD KEY `theloaigiaovien` (`theloaigiaovien`),
  ADD KEY `gioitinh` (`gioitinh`),
  ADD KEY `timezone` (`timezone`),
  ADD KEY `idcongcudayhoc` (`idcongcudayhoc`);

--
-- Chỉ mục cho bảng `gioitinh`
--
ALTER TABLE `gioitinh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hinhthucthanhtoan`
--
ALTER TABLE `hinhthucthanhtoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hocvien`
--
ALTER TABLE `hocvien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taikhoan` (`taikhoan`);

--
-- Chỉ mục cho bảng `ketqualambaitap`
--
ALTER TABLE `ketqualambaitap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idbaikiemtra` (`idbaikiemtra`),
  ADD KEY `idhocvien` (`idhocvien`);

--
-- Chỉ mục cho bảng `khoahocgiaovien`
--
ALTER TABLE `khoahocgiaovien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cahoc` (`cahoc`),
  ADD KEY `giaovienid` (`giaovienid`),
  ADD KEY `theloaikhoahocid` (`theloaikhoahocid`);

--
-- Chỉ mục cho bảng `khoahochocvien`
--
ALTER TABLE `khoahochocvien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idhocvien` (`idhocvien`),
  ADD KEY `idkhoahoc` (`idkhoahoc`),
  ADD KEY `hinhthucthanhtoan` (`hinhthucthanhtoan`);

--
-- Chỉ mục cho bảng `lichsugiaodich`
--
ALTER TABLE `lichsugiaodich`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idgiaovien` (`idgiaovien`);

--
-- Chỉ mục cho bảng `lsgiaodich`
--
ALTER TABLE `lsgiaodich`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `naptien`
--
ALTER TABLE `naptien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idtaikhoan` (`idtaikhoan`);

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pheduyetgiaovien`
--
ALTER TABLE `pheduyetgiaovien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quocgia` (`quocgia`),
  ADD KEY `gioitinh` (`gioitinh`),
  ADD KEY `taikhoan` (`taikhoan`),
  ADD KEY `theloaigiaovien` (`theloaigiaovien`),
  ADD KEY `timezone` (`timezone`),
  ADD KEY `congcudayhoc` (`congcudayhoc`);

--
-- Chỉ mục cho bảng `pheduyetkhoahochoanthanh`
--
ALTER TABLE `pheduyetkhoahochoanthanh`
  ADD KEY `idgiaovien` (`idgiaovien`),
  ADD KEY `idkhoahoc` (`idkhoahoc`);

--
-- Chỉ mục cho bảng `quocgia`
--
ALTER TABLE `quocgia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ruttien`
--
ALTER TABLE `ruttien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idgiaovien` (`idgiaovien`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phanquyen` (`phanquyen`),
  ADD KEY `timezone` (`timezone`),
  ADD KEY `quocgia` (`quocgia`),
  ADD KEY `gioitinh` (`gioitinh`);

--
-- Chỉ mục cho bảng `theloaigiaovien`
--
ALTER TABLE `theloaigiaovien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `theloaikhoahoc`
--
ALTER TABLE `theloaikhoahoc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `timezone`
--
ALTER TABLE `timezone`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ykiendanhgia`
--
ALTER TABLE `ykiendanhgia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idhocvien` (`idhocvien`),
  ADD KEY `idkhoahoc` (`idkhoahoc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `baikiemtra`
--
ALTER TABLE `baikiemtra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `cahoc`
--
ALTER TABLE `cahoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `chitietbaikiemtra`
--
ALTER TABLE `chitietbaikiemtra`
  MODIFY `STT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `congcudayhoc`
--
ALTER TABLE `congcudayhoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `doanhthu`
--
ALTER TABLE `doanhthu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `donggopykien`
--
ALTER TABLE `donggopykien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `gioitinh`
--
ALTER TABLE `gioitinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `hinhthucthanhtoan`
--
ALTER TABLE `hinhthucthanhtoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `hocvien`
--
ALTER TABLE `hocvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `ketqualambaitap`
--
ALTER TABLE `ketqualambaitap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `khoahocgiaovien`
--
ALTER TABLE `khoahocgiaovien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `khoahochocvien`
--
ALTER TABLE `khoahochocvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `lichsugiaodich`
--
ALTER TABLE `lichsugiaodich`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `lsgiaodich`
--
ALTER TABLE `lsgiaodich`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `naptien`
--
ALTER TABLE `naptien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `pheduyetgiaovien`
--
ALTER TABLE `pheduyetgiaovien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `ruttien`
--
ALTER TABLE `ruttien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `theloaigiaovien`
--
ALTER TABLE `theloaigiaovien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `theloaikhoahoc`
--
ALTER TABLE `theloaikhoahoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `ykiendanhgia`
--
ALTER TABLE `ykiendanhgia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `baikiemtra`
--
ALTER TABLE `baikiemtra`
  ADD CONSTRAINT `baikiemtra_ibfk_1` FOREIGN KEY (`idkhoahoc`) REFERENCES `khoahocgiaovien` (`id`);

--
-- Các ràng buộc cho bảng `chitietbaikiemtra`
--
ALTER TABLE `chitietbaikiemtra`
  ADD CONSTRAINT `chitietbaikiemtra_ibfk_1` FOREIGN KEY (`idbkt`) REFERENCES `baikiemtra` (`id`);

--
-- Các ràng buộc cho bảng `doanhthu`
--
ALTER TABLE `doanhthu`
  ADD CONSTRAINT `doanhthu_ibfk_1` FOREIGN KEY (`idkhoahoc`) REFERENCES `khoahocgiaovien` (`id`);

--
-- Các ràng buộc cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD CONSTRAINT `giaovien_ibfk_1` FOREIGN KEY (`quocgia`) REFERENCES `quocgia` (`id`),
  ADD CONSTRAINT `giaovien_ibfk_2` FOREIGN KEY (`taikhoan`) REFERENCES `taikhoan` (`id`),
  ADD CONSTRAINT `giaovien_ibfk_3` FOREIGN KEY (`theloaigiaovien`) REFERENCES `theloaigiaovien` (`id`),
  ADD CONSTRAINT `giaovien_ibfk_4` FOREIGN KEY (`gioitinh`) REFERENCES `gioitinh` (`id`),
  ADD CONSTRAINT `giaovien_ibfk_5` FOREIGN KEY (`timezone`) REFERENCES `timezone` (`id`),
  ADD CONSTRAINT `giaovien_ibfk_6` FOREIGN KEY (`idcongcudayhoc`) REFERENCES `congcudayhoc` (`id`);

--
-- Các ràng buộc cho bảng `hocvien`
--
ALTER TABLE `hocvien`
  ADD CONSTRAINT `hocvien_ibfk_1` FOREIGN KEY (`taikhoan`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `ketqualambaitap`
--
ALTER TABLE `ketqualambaitap`
  ADD CONSTRAINT `ketqualambaitap_ibfk_1` FOREIGN KEY (`idbaikiemtra`) REFERENCES `baikiemtra` (`id`),
  ADD CONSTRAINT `ketqualambaitap_ibfk_2` FOREIGN KEY (`idhocvien`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `khoahocgiaovien`
--
ALTER TABLE `khoahocgiaovien`
  ADD CONSTRAINT `khoahocgiaovien_ibfk_1` FOREIGN KEY (`cahoc`) REFERENCES `cahoc` (`id`),
  ADD CONSTRAINT `khoahocgiaovien_ibfk_2` FOREIGN KEY (`giaovienid`) REFERENCES `giaovien` (`id`),
  ADD CONSTRAINT `khoahocgiaovien_ibfk_3` FOREIGN KEY (`theloaikhoahocid`) REFERENCES `theloaikhoahoc` (`id`);

--
-- Các ràng buộc cho bảng `khoahochocvien`
--
ALTER TABLE `khoahochocvien`
  ADD CONSTRAINT `khoahochocvien_ibfk_1` FOREIGN KEY (`idhocvien`) REFERENCES `taikhoan` (`id`),
  ADD CONSTRAINT `khoahochocvien_ibfk_2` FOREIGN KEY (`idkhoahoc`) REFERENCES `khoahocgiaovien` (`id`),
  ADD CONSTRAINT `khoahochocvien_ibfk_3` FOREIGN KEY (`hinhthucthanhtoan`) REFERENCES `hinhthucthanhtoan` (`id`);

--
-- Các ràng buộc cho bảng `lichsugiaodich`
--
ALTER TABLE `lichsugiaodich`
  ADD CONSTRAINT `lichsugiaodich_ibfk_1` FOREIGN KEY (`idgiaovien`) REFERENCES `giaovien` (`id`);

--
-- Các ràng buộc cho bảng `naptien`
--
ALTER TABLE `naptien`
  ADD CONSTRAINT `naptien_ibfk_1` FOREIGN KEY (`idtaikhoan`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `pheduyetgiaovien`
--
ALTER TABLE `pheduyetgiaovien`
  ADD CONSTRAINT `pheduyetgiaovien_ibfk_1` FOREIGN KEY (`quocgia`) REFERENCES `quocgia` (`id`),
  ADD CONSTRAINT `pheduyetgiaovien_ibfk_2` FOREIGN KEY (`gioitinh`) REFERENCES `gioitinh` (`id`),
  ADD CONSTRAINT `pheduyetgiaovien_ibfk_3` FOREIGN KEY (`taikhoan`) REFERENCES `taikhoan` (`id`),
  ADD CONSTRAINT `pheduyetgiaovien_ibfk_4` FOREIGN KEY (`theloaigiaovien`) REFERENCES `theloaigiaovien` (`id`),
  ADD CONSTRAINT `pheduyetgiaovien_ibfk_5` FOREIGN KEY (`timezone`) REFERENCES `timezone` (`id`),
  ADD CONSTRAINT `pheduyetgiaovien_ibfk_6` FOREIGN KEY (`congcudayhoc`) REFERENCES `congcudayhoc` (`id`);

--
-- Các ràng buộc cho bảng `pheduyetkhoahochoanthanh`
--
ALTER TABLE `pheduyetkhoahochoanthanh`
  ADD CONSTRAINT `pheduyetkhoahochoanthanh_ibfk_1` FOREIGN KEY (`idgiaovien`) REFERENCES `giaovien` (`id`),
  ADD CONSTRAINT `pheduyetkhoahochoanthanh_ibfk_2` FOREIGN KEY (`idkhoahoc`) REFERENCES `khoahocgiaovien` (`id`);

--
-- Các ràng buộc cho bảng `ruttien`
--
ALTER TABLE `ruttien`
  ADD CONSTRAINT `ruttien_ibfk_1` FOREIGN KEY (`idgiaovien`) REFERENCES `giaovien` (`id`);

--
-- Các ràng buộc cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`phanquyen`) REFERENCES `phanquyen` (`id`),
  ADD CONSTRAINT `taikhoan_ibfk_2` FOREIGN KEY (`timezone`) REFERENCES `timezone` (`id`),
  ADD CONSTRAINT `taikhoan_ibfk_3` FOREIGN KEY (`quocgia`) REFERENCES `quocgia` (`id`),
  ADD CONSTRAINT `taikhoan_ibfk_4` FOREIGN KEY (`gioitinh`) REFERENCES `gioitinh` (`id`);

--
-- Các ràng buộc cho bảng `ykiendanhgia`
--
ALTER TABLE `ykiendanhgia`
  ADD CONSTRAINT `ykiendanhgia_ibfk_1` FOREIGN KEY (`idhocvien`) REFERENCES `taikhoan` (`id`),
  ADD CONSTRAINT `ykiendanhgia_ibfk_2` FOREIGN KEY (`idkhoahoc`) REFERENCES `khoahocgiaovien` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
