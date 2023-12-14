-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Apr 2023 pada 10.05
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_shop_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,


  `client_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`id`, `client_id`, `inventory_id`, `price`, `quantity`, `date_created`) VALUES
(4, 1, 1, 2500, 1, '2021-07-16 13:48:00'),
(7, 2, 2, 125000, 1, '2023-04-19 14:56:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`, `status`, `date_created`) VALUES
(1, 'Educational', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ultrices tortor. Sed at ligula non lectus tempor bibendum a nec ante. Maecenas iaculis vitae nisi eu dictum. Duis sit amet enim arcu. Etiam blandit vulputate magna, non lobortis velit pharetra vel. Morbi sollicitudin lorem sed augue suscipit, eu commodo tortor vulputate. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent eleifend interdum est, at gravida erat molestie in. Vestibulum et consectetur dui, ac luctus arcu. Curabitur et viverra elit. Cras ac eleifend ipsum, ac suscipit leo. Vivamus porttitor ac risus eu ultricies. Morbi malesuada mi vel luctus sagittis. Ut vestibulum porttitor est, id rutrum libero. Mauris at lacus vehicula, aliquam purus quis, pharetra lorem.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Proin consectetur massa ut quam molestie porta. Donec sit amet ligula odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi ex sapien, pulvinar ac arcu at, luctus scelerisque nibh. In dolor velit, pellentesque eu blandit a, mollis ac neque. Fusce tortor lectus, aliquam et eleifend id, aliquet ut libero. Nunc scelerisque vulputate turpis quis volutpat. Vivamus malesuada sem in dapibus aliquam. Vestibulum imperdiet, nulla vitae pharetra pretium, magna felis placerat libero, quis tincidunt felis diam nec nisi. Sed scelerisque ullamcorper cursus. Suspendisse posuere, velit nec rhoncus cursus, urna sapien consectetur est, et lacinia odio leo nec massa. Nam vitae nunc vitae tortor vestibulum consequat ac quis risus. Sed finibus pharetra orci, id vehicula tellus eleifend sit amet.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Morbi id ante vel velit mollis egestas. Suspendisse pretium sem urna, vitae placerat turpis cursus faucibus. Ut dignissim molestie blandit. Phasellus pulvinar, eros id ultricies mollis, lectus velit viverra mi, at venenatis velit purus id nisi. Duis eu massa lorem. Curabitur sed nibh felis. Donec faucibus, nulla at faucibus blandit, mi justo efficitur dui, non mattis nisl purus non lacus. Maecenas vel congue tellus, in convallis nisi. Curabitur faucibus interdum massa, eu facilisis ligula pretium quis. Nunc eleifend orci nec volutpat tincidunt.&lt;/p&gt;', 1, '2021-07-16 09:08:44'),
2+, 'Fiction', '&lt;p&gt;Sample 102&lt;/p&gt;', 1, '2021-07-16 09:09:25'),
(3, 'Novels', '&lt;p&gt;Sample 103&lt;/p&gt;', 1, '2021-07-16 09:09:46'),
(4, 'Sample Category', '&lt;p&gt;Sample Category 104&lt;/p&gt;', 1, '2021-07-16 11:33:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `default_delivery_address` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `gender`, `contact`, `email`, `password`, `default_delivery_address`, `date_created`) VALUES
(1, 'John', 'Smith', 'Male', '091023456789', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 'Sample Address', '2021-07-16 10:34:48'),
(2, 'didi', 'achamd', 'Male', '081728292', 'didi@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'semanggi', '2023-04-19 14:54:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventory`
--
+
C/REATE TABLE `inventory` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `quantity`, `price`, `date_created`, `date_updated`) VALUES
(1, 1, 50, 185000, '2021-07-16 10:02:39', '2023-04-18 15:19:33'),
(2, 2, 20, 125000, '2021-07-16 10:09:08', '2023-04-18 15:19:22'),
(3, 3, 10, 250000, '2021-07-16 12:05:54', '2023-04-18 15:19:14'),
(4, 4, 50, 150000, '2021-07-16 13:12:10', '2023-04-18 15:19:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `order_type` tinyint(1) NOT NULL COMMENT '1= pickup,2= deliver',
  `amount` double NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `orders`
--


INSERT INTO `orders` (`id`, `client_id`, `delivery_address`, `payment_method`, `order_type`, `amount`, `status`, `paid`, `date_created`, `date_updated`) VALUES
(1, 1, 'Sample Address', 'Online Payment', 2, 8500, 0, 1, '2021-07-16 11:14:58', NULL),
(4, 1, 'Sample Address', 'Online Payment', 2, 5000, 5, 1, '2021-07-16 13:13:42', '2021-07-16 13:52:56'),
(5, 2, 'semanggi', 'cod', 2, 185000, 0, 0, '2023-04-19 14:54:53', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `product_id`, `quantity`, `price`, `total`) VALUES
(1, 1, 2, 1, 3500, 3500),
(2, 1, 1, 2, 2500, 5000),
(3, 4, 3, 2, 2500, 5000),
(4, 5, 1, 1, 185000, 185000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `sub_category_id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `author` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `title`, `author`, `description`, `status`, `date_created`) VALUES
(1, 1, 1, 'PHP:Programming', 'Alan Forbes', '&lt;p&gt;&lt;span style=\\\\\\&quot;text-align: justify;\\\\\\&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ultrices tortor. Sed at ligula non lectus tempor bibendum a nec ante. Maecenas iaculis vitae nisi eu dictum. Duis sit amet enim arcu. Etiam blandit vulputate magna, non lobortis velit pharetra vel. Morbi sollicitudin lorem sed augue suscipit, eu commodo tortor vulputate. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent eleifend interdum est, at gravida erat molestie in. Vestibulum et consectetur dui, ac luctus arcu. Curabitur et viverra elit. Cras ac eleifend ipsum, ac suscipit leo. Vivamus porttitor ac risus eu ultricies. Morbi malesuada mi vel luctus sagittis. Ut vestibulum porttitor est, id rutrum libero. Mauris at lacus vehicula, aliquam purus quis, pharetra lorem.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-07-16 09:43:11'),
(2, 1, 1, 'buku Modern PHP', 'Josh Lockhart', '&lt;p&gt;&lt;span style=\\\\\\\\\\\\\\&quot;text-align: justify;\\\\\\\\\\\\\\&quot;&gt;Proin consectetur massa ut quam molestie porta. Donec sit amet ligula odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi ex sapien, pulvinar ac arcu at, luctus scelerisque nibh. In dolor velit, pellentesque eu blandit a, mollis ac neque. Fusce tortor lectus, aliquam et eleifend id, aliquet ut libero. Nunc scelerisque vulputate turpis quis volutpat. Vivamus malesuada sem in dapibus aliquam. Vestibulum imperdiet, nulla vitae pharetra pretium, magna felis placerat libero, quis tincidunt felis diam nec nisi. Sed scelerisque ullamcorper cursus. Suspendisse posuere, velit nec rhoncus cursus, urna sapien consectetur est, et lacinia odio leo nec massa. Nam vitae nunc vitae tortor vestibulum consequat ac quis risus. Sed finibus pharetra orci, id vehicula tellus eleifend sit amet.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-07-16 10:08:53'),
(3, 1, 2, 'English Grammar in Use', 'Raymond Murphy, Surai Pongtongcharoen', '&lt;p&gt;&lt;span style=\\&quot;text-align: justify;\\&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ultrices tortor. Sed at ligula non lectus tempor bibendum a nec ante. Maecenas iaculis vitae nisi eu dictum. Duis sit amet enim arcu. Etiam blandit vulputate magna, non lobortis velit pharetra vel. Morbi sollicitudin lorem sed augue suscipit, eu commodo tortor vulputate. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent eleifend interdum est, at gravida erat molestie in. Vestibulum et consectetur dui, ac luctus arcu. Curabitur et viverra elit. Cras ac eleifend ipsum, ac suscipit leo. Vivamus porttitor ac risus eu ultricies. Morbi malesuada mi vel luctus sagittis. Ut vestibulum porttitor est, id rutrum libero. Mauris at lacus vehicula, aliquam purus quis, pharetra lorem.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-07-16 12:03:08'),
(4, 1, 2, 'English Grammar for Dummies', 'Geraldine Woods', '&lt;p style=\\&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\\&quot;&gt;Ut et urna sapien. Nulla lacinia sagittis felis id cursus. Etiam eget lacus quis enim aliquet dignissim. Nulla vel elit ultrices, venenatis quam sed, rutrum magna. Pellentesque ultricies non lorem hendrerit vestibulum. Maecenas lacinia pharetra nisi, at pharetra nunc placerat nec. Maecenas luctus dolor in leo malesuada, vel aliquet metus sollicitudin. Curabitur sed pellentesque sem, in tincidunt mi. Aliquam sodales aliquam felis, eget tristique felis dictum at. Proin leo nisi, malesuada vel ex eu, dictum pellentesque mauris. Quisque sit amet varius augue.&lt;/p&gt;&lt;p style=\\&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\\&quot;&gt;Sed quis imperdiet est. Donec lobortis tortor id neque tempus, vel faucibus lorem mollis. Fusce ut sollicitudin risus. Aliquam iaculis tristique nunc vel feugiat. Sed quis nulla non dui ornare porttitor eu vitae nisi. Curabitur at quam ut libero convallis mattis vel eget mauris. Vivamus vitae lectus ligula. Nulla facilisi. Vivamus tristique maximus nulla, vel mollis felis blandit posuere. Curabitur mi risus, rutrum non magna at, molestie gravida magna. Aenean neque sapien, volutpat a ullamcorper nec, iaculis quis est.&lt;/p&gt;', 1, '2021-07-16 13:11:17'),
(5, 3, 6, 'Neverwhere', 'Richard Mayhew', '&lt;p&gt;Richard Mayhew menjalani kehidupan yang biasa-biasa saja di London. \r\nHidupnya berubah setelah menolong seorang gadis gelandangan yang \r\nberdarah dan terkapar di jalan. Dalam sekejap Richard kehilangan \r\ntunangan, identitas, rumah, dan pekerjaannya. Tiba-tiba saja ia \r\nterlempar dalam dunia gelap London yang tidak dikenalnya. Mau tidak mau \r\nRichard harus bergabung dengan Door, gadis yang ia selamatkan. Bersama \r\ndengan Hunter dan Marquis de Carabas, mereka berusaha mencari pembunuh \r\nkeluarga Door.&lt;/p&gt;', 1, '2023-04-18 15:28:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sales`
--

INSERT INTO `sales` (`id`, `order_id`, `total_amount`, `date_created`) VALUES
(1, 3, 8500, '2021-07-16 11:18:12'),
(2, 4, 5000, '2021-07-16 13:13:42'),
(3, 5, 185000, '2023-04-19 14:54:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(30) NOT NULL,
  `parent_id` int(30) NOT NULL,
  `sub_category` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `parent_id`, `sub_category`, `description`, `status`, `date_created`) VALUES
(1, 1, 'Programming', '&lt;p&gt;Sample Sub Category&lt;/p&gt;', 1, '2021-07-16 09:10:44'),
(2, 1, 'Grammar', '&lt;p&gt;Sample Sub 102&lt;/p&gt;', 1, '2021-07-16 09:11:05'),
(3, 2, 'Literary', '&lt;p&gt;Sample Sub 103&lt;/p&gt;', 1, '2021-07-16 09:11:36'),
(4, 2, 'Historical', '&lt;p&gt;Sample 104&lt;/p&gt;', 1, '2021-07-16 09:12:51'),
(5, 3, 'Fantasy', '&lt;p&gt;Sample Sub 105&lt;/p&gt;', 1, '2021-07-16 09:13:28'),
(6, 3, 'Action and Adventure', '&lt;p&gt;Sample Sub 106&lt;/p&gt;', 1, '2021-07-16 09:13:49'),
(7, 4, 'Sub Cat 101', '&lt;p&gt;Sample Sub 107&lt;/p&gt;', 1, '2021-07-16 11:34:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Penjualan buku online'),
(6, 'short_name', 'Buku online'),
(11, 'logo', 'uploads/1626397500_book_logo.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1681805820_cover-buku.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07'),
(4, 'John', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', NULL, NULL, 0, '2021-06-19 08:36:09', '2021-06-19 10:53:12'),
(5, 'Claire', 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', NULL, NULL, 0, '2021-06-19 10:01:51', '2021-06-19 12:03:23');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
