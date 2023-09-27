-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Sep 2023 pada 03.46
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `umkm_laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about`
--

CREATE TABLE `about` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul_website` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `atas_nama` varchar(255) NOT NULL,
  `no_rekening` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `about`
--

INSERT INTO `about` (`id`, `judul_website`, `logo`, `deskripsi`, `alamat`, `email`, `telepon`, `created_at`, `updated_at`, `atas_nama`, `no_rekening`) VALUES
(1, 'UMKM Laravel', '16957045524.png', 'Nikmati kelezatan Fresh Nugget , hidangan siap saji yang akan memanjakan lidah Anda. Fresh Nugget adalah pilihan sempurna untuk camilan, sarapan, atau makanan ringan kapan saja. Terbuat dari daging ayam berkualitas tinggi yang dipadukan dengan bumbu rahasia kami dan tanpa bahan pengawet,  nugget ini memiliki rasa gurih yang lezat dan tekstur yang renyah di luar namun lembut di dalam. Setiap gigitan akan membuat Anda ingin kembali lagi.  Dengan FreshNugget, Anda dapat menikmati sensasi rasa yang tak terlupakan dan kualitas yang konsisten setiap kali Anda menyantapnya. Jadikan nugget ini pilihan utama Anda untuk memenuhi hasrat makanan ringan yang lezat dan bergizi.', 'JL. bonang no 56', 'ichsan0333@email.com', '6285731202786', NULL, '2023-09-26 18:22:17', 'Pace Kobo', '222-555-666');

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `is_checkout` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `carts`
--

INSERT INTO `carts` (`id`, `id_member`, `id_barang`, `jumlah`, `total`, `is_checkout`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 48000, 1, '2023-09-25 23:14:33', '2023-09-26 06:02:03'),
(2, 1, 2, 1, 26000, 1, '2023-09-25 23:14:42', '2023-09-26 06:02:03'),
(3, 1, 3, 2, 96000, 1, '2023-09-26 06:01:24', '2023-09-26 06:02:03'),
(4, 1, 3, 1, 48000, 0, '2023-09-26 07:08:13', '2023-09-26 07:08:13'),
(5, 3, 3, 1, 48000, 1, '2023-09-26 07:37:30', '2023-09-26 17:06:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `nama_kategori`, `deskripsi`, `gambar`, `created_at`, `updated_at`) VALUES
(3, 'Isi 500 Gram', 'Kemudahan Siap Saji: Fresh Nugget dapat disiapkan dengan cepat dan mudah. Cukup panggang, goreng, atau oven sesuai selera Anda, dan hidangan lezat ini siap untuk dinikmati.', '16957305469.jpeg', '2023-09-26 05:15:46', '2023-09-26 05:15:46'),
(4, 'Our Logo', 'Fresh Nugget', '16957305746.jpeg', '2023-09-26 05:16:14', '2023-09-26 05:16:14'),
(5, 'Isi 250 Gram', 'Kemasan Praktis: Fresh Nugget dikemas dalam kemasan yang praktis, sehingga mudah disimpan dalam freezer dan diambil kapan saja Anda menginginkannya.', '16957305867.jpeg', '2023-09-26 05:16:26', '2023-09-26 05:16:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_member` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `members`
--

INSERT INTO `members` (`id`, `nama_member`, `no_hp`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Denis', '5755777', 'email@gmail.com', '$2y$10$LZkcA.7NmyC1GkiT.X5N/eGEAW2q/7M/pPG5O5jgYANCW1cvvA9om', '2023-09-05 19:24:38', '2023-09-05 19:24:38'),
(2, 'Iksan', '87889799', 'irulgamingcraft@gmail.com', '$2y$10$FLFh0VRFlBZC3G7UD6lID.MkKL7ihFwFrMZBEO2hKwiVBjVFAUdU2', '2023-09-05 21:43:35', '2023-09-05 21:43:35'),
(3, 'Mustafa', '98329873208', 'iksanvalorant@gmail.com', '$2y$10$i5E45N0lieNQBEntcycAIeviu64mzhnFUNdwtOOv2c/pXiTr2rRSi', '2023-09-26 07:17:47', '2023-09-26 07:17:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(30, '2023_08_25_023634_create_subcategories_table', 1),
(89, '2014_10_12_000000_create_users_table', 2),
(90, '2014_10_12_100000_create_password_resets_table', 2),
(91, '2019_08_19_000000_create_failed_jobs_table', 2),
(92, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(93, '2023_08_22_121028_create_categories_table', 2),
(94, '2023_08_26_033454_create_sliders_table', 2),
(95, '2023_08_26_115042_create_products_table', 2),
(96, '2023_08_26_123458_create_members_table', 2),
(97, '2023_08_27_051003_create_testimonis_table', 2),
(98, '2023_08_27_051906_create_reviews_table', 2),
(99, '2023_08_28_033243_add_status_to_orders_table', 2),
(100, '2023_09_03_021903_drop_orders_table', 2),
(101, '2023_09_03_023326_create_subcategories_table', 2),
(102, '2023_09_04_094529_modify_order_details_table', 2),
(103, '2023_09_04_124726_create_payments_table', 2),
(104, '2023_09_05_134808_create_about_table', 2),
(105, '2023_09_05_154633_rollback_subcategories_table', 2),
(106, '2023_09_06_014132_add_rekening_to_about', 3),
(107, '2023_09_06_022206_drop_column_in_members', 4),
(108, '2023_09_06_031446_create_carts_table', 5),
(110, '2023_09_06_031819_create_carts_table', 6),
(111, '2023_09_25_123242_add_id_member_to_payments', 7),
(112, '2023_09_26_010949_add_nama_barang_to_orders', 8),
(113, '2023_09_26_053214_add_harga_to_products', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_member` int(11) NOT NULL,
  `invoice` int(11) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `id_member`, `invoice`, `grand_total`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 23092648, 84000, '2023-09-25 23:15:48', '2023-09-25 23:17:12', 'Selesai'),
(2, 1, 23092603, 106000, '2023-09-26 06:02:03', '2023-09-26 06:03:27', 'Selesai'),
(3, 3, 23092721, 58000, '2023-09-26 17:06:21', NULL, 'Baru');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_details`
--

INSERT INTO `order_details` (`id`, `id_order`, `id_produk`, `jumlah`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 48000, '2023-09-26 06:17:51', NULL),
(2, 1, 2, 1, 26000, '2023-09-25 17:00:00', NULL),
(3, 2, 3, 2, 96000, NULL, NULL),
(4, 3, 3, 1, 48000, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_order` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kabupaten` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `detail_alamat` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `no_rekening` varchar(255) NOT NULL,
  `atas_nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `payments`
--

INSERT INTO `payments` (`id`, `id_order`, `jumlah`, `provinsi`, `kabupaten`, `kecamatan`, `detail_alamat`, `status`, `no_rekening`, `atas_nama`, `created_at`, `updated_at`, `id_member`) VALUES
(1, 1, 84000, 'banten', 'wewe', 'wowo', 'wawa', 'DITERIMA', '12345', 'Pace Kobo', '2023-09-25 23:16:04', '2023-09-25 23:16:30', 1),
(2, 2, 106000, 'banten', 'wewe', 'wowo', 'wawa', 'DITERIMA', '12345', 'Pace Kobo', '2023-09-26 06:02:22', '2023-09-26 06:02:33', 1),
(3, 3, 58000, 'Banten', 'Kabupaten Tangerang', 'Kelapa Dua', 'Desa uhuy', 'DITERIMA', '12345', 'Pace Kobo', '2023-09-26 17:11:08', '2023-09-26 17:20:15', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_subkategori` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `id_kategori`, `id_subkategori`, `nama_barang`, `gambar`, `deskripsi`, `created_at`, `updated_at`, `harga`) VALUES
(3, 3, 3, 'Fresh Nugget 500 Gram', '16957306886.jpeg', 'Dengan FreshNugget, Anda dapat menikmati sensasi rasa yang tak terlupakan dan kualitas yang konsisten setiap kali Anda menyantapnya. Jadikan nugget ini pilihan utama Anda untuk memenuhi hasrat makanan ringan yang lezat dan bergizi.', '2023-09-26 05:18:08', '2023-09-26 05:18:08', 48000),
(4, 4, 3, 'Fresh Nugget 250 Gram', '16957318144.jpeg', 'Dengan FreshNugget, Anda dapat menikmati sensasi rasa yang tak terlupakan dan kualitas yang konsisten setiap kali Anda menyantapnya. Jadikan nugget ini pilihan utama Anda untuk memenuhi hasrat makanan ringan yang lezat dan bergizi.', '2023-09-26 05:18:24', '2023-09-26 05:36:54', 26000),
(6, 3, 3, 'Fresh Nugget 500 Gram', '16957323857.jpeg', 'Dengan FreshNugget, Anda dapat menikmati sensasi rasa yang tak terlupakan dan kualitas yang konsisten setiap kali Anda menyantapnya. Jadikan nugget ini pilihan utama Anda untuk memenuhi hasrat makanan ringan yang lezat dan bergizi.', '2023-09-26 05:36:27', '2023-09-26 05:46:25', 48000),
(7, 4, 4, 'Fresh Nugget 250 Gram', '16957324611.jpeg', 'Dengan FreshNugget, Anda dapat menikmati sensasi rasa yang tak terlupakan dan kualitas yang konsisten setiap kali Anda menyantapnya. Jadikan nugget ini pilihan utama Anda untuk memenuhi hasrat makanan ringan yang lezat dan bergizi.', '2023-09-26 05:47:41', '2023-09-26 05:47:41', 26000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_slider` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sliders`
--

INSERT INTO `sliders` (`id`, `nama_slider`, `deskripsi`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Fresh Nugget', 'Rasa yang Menggugah Selera: Fresh Nugget memiliki rasa ayam yang autentik, dengan campuran bumbu yang pas, membuatnya menjadi camilan yang nikmat dan menggugah selera.', '16957048533.jpeg', '2023-09-05 08:56:12', '2023-09-25 22:08:12'),
(2, 'Keunggulan', 'Tekstur Sempurna: Kami telah merancang nugget ini agar memiliki tekstur renyah di luar dan lembut di dalam, sehingga setiap gigitan memberikan pengalaman yang memuaskan.', '16957054027.jpeg', '2023-09-05 08:56:42', '2023-09-25 22:16:42'),
(3, 'Enjoy Our Nugget :)', 'Bahan Berkualitas: Kami hanya menggunakan daging ayam berkualitas tinggi, tanpa tambahan pengawet atau bahan kimia berbahaya, sehingga Anda dapat menikmati nugget dengan ketenangan pikiran.', '16957054681.jpeg', '2023-09-05 08:57:03', '2023-09-25 22:17:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_subkategori` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `subcategories`
--

INSERT INTO `subcategories` (`id`, `id_kategori`, `nama_subkategori`, `deskripsi`, `gambar`, `created_at`, `updated_at`) VALUES
(3, 3, 'Fresh Nugget 500 Gram', 'Kemasan Praktis: Fresh Nugget dikemas dalam kemasan yang praktis, sehingga mudah disimpan dalam freezer dan diambil kapan saja Anda menginginkannya.', '16957306222.jpeg', '2023-09-26 05:17:02', '2023-09-26 05:17:02'),
(4, 5, 'Fresh Nugget 250 Gram', 'Cocok untuk Semua Usia: Produk ini cocok untuk semua usia, mulai dari anak-anak hingga dewasa, dan dapat menjadi bagian dari makanan sehari-hari atau camilan istimewa.', '16957306389.jpeg', '2023-09-26 05:17:18', '2023-09-26 05:17:18'),
(5, 4, 'Fresh Nugget 500 Gram', 'Dengan FreshNugget, Anda dapat menikmati sensasi rasa yang tak terlupakan dan kualitas yang konsisten setiap kali Anda menyantapnya. Jadikan nugget ini pilihan utama Anda untuk memenuhi hasrat makanan ringan yang lezat dan bergizi.', '16957317167.png', '2023-09-26 05:35:16', '2023-09-26 05:35:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimonis`
--

CREATE TABLE `testimonis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_testimoni` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `testimonis`
--

INSERT INTO `testimonis` (`id`, `nama_testimoni`, `deskripsi`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'CEO of Trump organization', 'I’am amazed, I should say thank you so much for your awesome template. Design is so good and neat, every detail has been taken care these team are realy amazing and talented! I will work only with this agency.', '16939294739.jpg', '2023-09-05 08:57:53', '2023-09-05 08:57:53'),
(2, 'Art Director', 'This is the excellent theme. It has many useful features that can be use for any kind of business. The support is just amazing and design', '16939294888.jpg', '2023-09-05 08:58:08', '2023-09-05 08:58:08'),
(3, 'PR Agent', 'Needless to say, beautifully designed theme that serves many purpose. Even more sutomers support is the best! Highly recommend this theme to anyone who enjoys a fine product.', '16939295038.jpg', '2023-09-05 08:58:23', '2023-09-05 08:58:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@admin.com', '2023-09-05 08:48:25', '$2y$10$dELKu/E/a.TzMe3pRH2V1eaLa2Raaa6xk6GCNkrXF8Bvf.RxYgJXa', NULL, '2023-09-05 08:48:25', '2023-09-05 08:48:25');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `testimonis`
--
ALTER TABLE `testimonis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `testimonis`
--
ALTER TABLE `testimonis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
