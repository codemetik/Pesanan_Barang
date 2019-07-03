-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2019 at 04:04 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_master`
--

CREATE TABLE `data_master` (
  `id_master` char(20) NOT NULL,
  `id_produk` varchar(225) NOT NULL,
  `id_ukuran` varchar(225) NOT NULL,
  `stok` int(30) NOT NULL,
  `harga` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_master`
--

INSERT INTO `data_master` (`id_master`, `id_produk`, `id_ukuran`, `stok`, `harga`) VALUES
('M001', 'PR0001', 'U001', 2, 80000),
('M002', 'PR0001', 'U002', 3, 80000),
('M003', 'PR0001', 'U003', 4, 80000),
('M004', 'PR0001', 'U004', 3, 85000),
('M005', 'PR0001', 'U005', 5, 85000),
('M006', 'PR0002', 'U001', 2, 70000),
('M007', 'PR0002', 'U002', 4, 70000),
('M008', 'PR0002', 'U003', 1, 70000),
('M009', 'PR0002', 'U004', 2, 75000),
('M010', 'PR0002', 'U005', 1, 75000),
('M011', 'PR0003', 'U001', 1, 70000),
('M012', 'PR0003', 'U002', 1, 70000),
('M013', 'PR0003', 'U003', 2, 70000),
('M014', 'PR0003', 'U004', 3, 75000),
('M015', 'PR0003', 'U005', 2, 75000),
('M016', 'PR0004', 'U001', 2, 80000),
('M017', 'PR0004', 'U002', 2, 80000),
('M018', 'PR0004', 'U003', 2, 80000),
('M019', 'PR0004', 'U004', 7, 86000),
('M020', 'PR0004', 'U005', 2, 90000),
('M021', 'PR0005', 'U001', 10, 80000),
('M022', 'PR0005', 'U002', 4, 80000),
('M023', 'PR0005', 'U003', 5, 86000),
('M024', 'PR0005', 'U004', 4, 80000),
('M025', 'PR0005', 'U005', 9, 85000),
('M026', 'PR0006', 'U001', 1, 80000),
('M027', 'PR0006', 'U002', 4, 80000),
('M028', 'PR0006', 'U003', 7, 80000),
('M029', 'PR0006', 'U004', 8, 87000),
('M030', 'PR0006', 'U005', 7, 87000);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_faktur` char(20) NOT NULL,
  `tanggal` varchar(225) NOT NULL,
  `id_master` char(20) NOT NULL,
  `nama_produk` varchar(225) NOT NULL,
  `harga` int(30) NOT NULL,
  `jumlah` int(30) NOT NULL,
  `total` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `penjualan`
--
DELIMITER $$
CREATE TRIGGER `update_stok` AFTER INSERT ON `penjualan` FOR EACH ROW BEGIN
	update data_master set stok = stok - new.jumlah where id_master = new.id_master;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` char(20) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `nama` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `gambar`, `nama`) VALUES
('PR0001', 'bad_religion.jpg', 'Bad Religion Islam'),
('PR0002', 'bubg.jpg', 'BUBG'),
('PR0003', 'kartun.jpg', 'Kartun'),
('PR0004', 'original.jpg', 'Original'),
('PR0005', 'sholat.jpg', 'Sholat'),
('PR0006', 'siap_86.jpg', 'Siap 86'),
('PR0007', 'youtube.jpg', 'You tube'),
('PR0008', 'fila.jpg', 'fila'),
('PR0009', 'hoodie_jumper.webp', 'Hoodie Jumper'),
('PR0010', 'pink.webp', 'Pink'),
('PR0011', 'switer_mat.jpg', 'Switer Mat'),
('PR0012', 'w.jpg', 'w');

-- --------------------------------------------------------

--
-- Table structure for table `ukuran_helm`
--

CREATE TABLE `ukuran_helm` (
  `id_ukuran` char(20) NOT NULL,
  `nama_ukuran` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ukuran_helm`
--

INSERT INTO `ukuran_helm` (`id_ukuran`, `nama_ukuran`) VALUES
('U001', 'S'),
('U002', 'M'),
('U003', 'L'),
('U004', 'XL'),
('U005', 'XXL');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(4, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(5, 'arman', '66059a527018b32e4597dd27574929f6'),
(6, 'helm', 'e7d07ed8aa8dd8cafce4a527a523d6c5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_master`
--
ALTER TABLE `data_master`
  ADD PRIMARY KEY (`id_master`),
  ADD KEY `id_produk` (`id_produk`,`id_ukuran`),
  ADD KEY `ukuran_master` (`id_ukuran`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_faktur`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `ukuran_helm`
--
ALTER TABLE `ukuran_helm`
  ADD PRIMARY KEY (`id_ukuran`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_master`
--
ALTER TABLE `data_master`
  ADD CONSTRAINT `master_id` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `ukuran_master` FOREIGN KEY (`id_ukuran`) REFERENCES `ukuran_helm` (`id_ukuran`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
