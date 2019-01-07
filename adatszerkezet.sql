SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `milena2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `milena2`;

CREATE TABLE `bereg` (
  `id` int(11) NOT NULL,
  `kh` varchar(130) COLLATE utf8_hungarian_ci NOT NULL,
  `ip` varchar(40) COLLATE utf8_hungarian_ci NOT NULL,
  `time` int(11) UNSIGNED NOT NULL,
  `nick` varchar(30) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

CREATE TABLE `kiknek` (
  `id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `kinek` int(11) NOT NULL,
  `statusz` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `reg_id` int(11) NOT NULL,
  `bejelentkezett` int(10) UNSIGNED NOT NULL,
  `ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `statusz` int(11) NOT NULL,
  `kijelentkezes` int(10) UNSIGNED NOT NULL,
  `eszkoz_azon` varchar(500) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `loginkod` varchar(100) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `reg_id` int(11) NOT NULL,
  `uzenet` blob NOT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `lejar` int(11) UNSIGNED NOT NULL,
  `sor` varchar(55) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

CREATE TABLE `reg` (
  `id` int(11) NOT NULL,
  `hash` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `aktiv` int(1) NOT NULL,
  `regisztralt` int(11) UNSIGNED NOT NULL,
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_hungarian_ci DEFAULT NULL,
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci DEFAULT NULL,
  `passhash` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `dmsk` varchar(200) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

CREATE TABLE `sec` (
  `kulcs` varchar(300) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `kulcs_hash` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `date` int(20) UNSIGNED NOT NULL,
  `azonosito` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

CREATE TABLE `sikertelen` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `password` varchar(80) COLLATE utf8_hungarian_ci NOT NULL,
  `date` int(11) UNSIGNED NOT NULL,
  `ip` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `eszkoz` varchar(300) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

CREATE TABLE `temp413` (
  `id` int(11) NOT NULL,
  `kinek` varchar(1000) COLLATE utf8_hungarian_ci NOT NULL,
  `ki` int(11) NOT NULL,
  `darab` mediumblob NOT NULL,
  `sorban` int(10) UNSIGNED NOT NULL,
  `klt` int(1) NOT NULL,
  `azonosito` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `lejar` int(10) UNSIGNED NOT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;


ALTER TABLE `bereg`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `kiknek`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `reg`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sec`
  ADD PRIMARY KEY (`kulcs_hash`);

ALTER TABLE `sikertelen`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `temp413`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `bereg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `kiknek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sikertelen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `temp413`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
