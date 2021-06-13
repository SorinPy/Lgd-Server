--
-- Bază de date: `mu_online_login`
--
DROP DATABASE IF EXISTS `mu_online_login`;
CREATE DATABASE IF NOT EXISTS `mu_online_login` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mu_online_login`;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `guid` int UNSIGNED NOT NULL,
  `blocked` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `security_code` varchar(255) DEFAULT NULL,
  `golden_channel` bigint NOT NULL,
  `facebook_status` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `secured` tinyint UNSIGNED NOT NULL,
  `account` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `register` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `accounts`
--

--
-- Declanșatori `accounts`
--
DROP TRIGGER IF EXISTS `before_insert_accounts`;
DELIMITER $$
CREATE TRIGGER `before_insert_accounts` BEFORE INSERT ON `accounts` FOR EACH ROW SET new.`register` = NOW( )
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `accounts_allowed`
--

DROP TABLE IF EXISTS `accounts_allowed`;
CREATE TABLE `accounts_allowed` (
  `account_id` int UNSIGNED NOT NULL,
  `guid` int UNSIGNED NOT NULL,
  `server` smallint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `accounts_banned`
--

DROP TABLE IF EXISTS `accounts_banned`;
CREATE TABLE `accounts_banned` (
  `account_id` int UNSIGNED NOT NULL,
  `guid` int UNSIGNED NOT NULL,
  `unban_date` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `accounts_disconnect`
--

DROP TABLE IF EXISTS `accounts_disconnect`;
CREATE TABLE `accounts_disconnect` (
  `account_id` int UNSIGNED NOT NULL,
  `server` smallint UNSIGNED NOT NULL,
  `masive` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `accounts_security`
--

DROP TABLE IF EXISTS `accounts_security`;
CREATE TABLE `accounts_security` (
  `account_id` int UNSIGNED NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `disk_serial` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `accounts_security`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `accounts_status`
--

DROP TABLE IF EXISTS `accounts_status`;
CREATE TABLE `accounts_status` (
  `account_id` int UNSIGNED NOT NULL,
  `server_group` smallint UNSIGNED NOT NULL,
  `current_server` smallint UNSIGNED NOT NULL,
  `start_server` smallint UNSIGNED NOT NULL,
  `dest_server` smallint NOT NULL,
  `dest_world` smallint NOT NULL,
  `dest_x` smallint NOT NULL,
  `dest_y` smallint NOT NULL,
  `warp_time` int UNSIGNED NOT NULL,
  `warp_auth_1` int UNSIGNED NOT NULL,
  `warp_auth_2` int UNSIGNED NOT NULL,
  `warp_auth_3` int UNSIGNED NOT NULL,
  `warp_auth_4` int UNSIGNED NOT NULL,
  `last_ip` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `last_mac` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `last_online` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `online` tinyint UNSIGNED NOT NULL,
  `disk_serial` int UNSIGNED NOT NULL,
  `type` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `accounts_status`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `accounts_validation`
--

DROP TABLE IF EXISTS `accounts_validation`;
CREATE TABLE `accounts_validation` (
  `account_id` int UNSIGNED NOT NULL,
  `disk_serial` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `accounts_validation`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `accounts_warning`
--

DROP TABLE IF EXISTS `accounts_warning`;
CREATE TABLE `accounts_warning` (
  `account_id` int UNSIGNED NOT NULL,
  `disk_serial` int UNSIGNED NOT NULL,
  `block_date` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `block_diskserial`
--

DROP TABLE IF EXISTS `block_diskserial`;
CREATE TABLE `block_diskserial` (
  `disk_serial` int UNSIGNED NOT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `block_ip`
--

DROP TABLE IF EXISTS `block_ip`;
CREATE TABLE `block_ip` (
  `ip` varchar(16) NOT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `block_mac`
--

DROP TABLE IF EXISTS `block_mac`;
CREATE TABLE `block_mac` (
  `mac` varchar(50) NOT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_notification`
--

DROP TABLE IF EXISTS `character_notification`;
CREATE TABLE `character_notification` (
  `server_group` smallint UNSIGNED NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `notification_id` varchar(255) DEFAULT NULL,
  `notification_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `item_serial`
--

DROP TABLE IF EXISTS `item_serial`;
CREATE TABLE `item_serial` (
  `server` smallint UNSIGNED NOT NULL,
  `serial` int UNSIGNED NOT NULL,
  `serial_shop` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `item_serial`
--

INSERT INTO `item_serial` (`server`, `serial`, `serial_shop`) VALUES
(0, 9227, 0),
(18, 596, 0),
(19, 58, 0);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `master_pc`
--

DROP TABLE IF EXISTS `master_pc`;
CREATE TABLE `master_pc` (
  `disk_serial` int UNSIGNED NOT NULL,
  `mac` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `server_list`
--

DROP TABLE IF EXISTS `server_list`;
CREATE TABLE `server_list` (
  `server` smallint UNSIGNED NOT NULL,
  `code` smallint UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `port` smallint UNSIGNED NOT NULL,
  `ip` varchar(16) NOT NULL,
  `flag` tinyint UNSIGNED NOT NULL,
  `online` tinyint UNSIGNED NOT NULL,
  `default_world` smallint UNSIGNED NOT NULL,
  `default_x` smallint NOT NULL,
  `default_y` smallint NOT NULL,
  `type` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `server_list`
--

INSERT INTO `server_list` (`server`, `code`, `name`, `port`, `ip`, `flag`, `online`, `default_world`, `default_x`, `default_y`, `type`) VALUES
(0, 0, 'Test', 55509, '127.0.0.1', 1, 1, 0, 75, 75, 0),
(18, 18, 'EventServer Loren', 55511, '127.0.0.1', 0, 1, 0, 75, 75, 0),
(19, 19, 'EventServer', 55510, '127.0.0.1', 0, 1, 0, 75, 75, 0);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `world_server`
--

DROP TABLE IF EXISTS `world_server`;
CREATE TABLE `world_server` (
  `server` smallint UNSIGNED NOT NULL,
  `world` smallint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `world_server`
--

INSERT INTO `world_server` (`server`, `world`) VALUES
(0, 0),
(0, 1),
(0, 2),
(0, 3),
(0, 4),
(0, 5),
(0, 6),
(0, 7),
(0, 8),
(0, 10),
(0, 24),
(0, 25),
(0, 26),
(0, 27),
(0, 28),
(0, 29),
(0, 33),
(0, 35),
(0, 36),
(0, 37),
(0, 38),
(0, 39),
(0, 40),
(0, 43),
(0, 44),
(0, 45),
(0, 46),
(0, 47),
(0, 48),
(0, 49),
(0, 50),
(0, 51),
(0, 54),
(0, 55),
(0, 56),
(0, 57),
(0, 58),
(0, 59),
(0, 60),
(0, 61),
(0, 62),
(0, 63),
(0, 64),
(0, 65),
(0, 66),
(0, 67),
(0, 68),
(0, 69),
(0, 70),
(0, 71),
(0, 72),
(0, 73),
(0, 74),
(0, 75),
(0, 76),
(0, 77),
(0, 78),
(0, 80),
(0, 81),
(0, 82),
(0, 83),
(0, 84),
(0, 85),
(0, 86),
(0, 87),
(0, 88),
(0, 89),
(0, 90),
(0, 91),
(0, 92),
(0, 93),
(0, 94),
(0, 95),
(0, 96),
(0, 98),
(0, 99),
(0, 100),
(0, 101),
(0, 102),
(0, 103),
(0, 104),
(0, 105),
(0, 106),
(0, 107),
(0, 108),
(0, 109),
(0, 110),
(0, 111),
(0, 112),
(0, 113),
(0, 115),
(0, 116),
(0, 117),
(0, 118),
(0, 119),
(0, 120),
(0, 121),
(0, 122),
(0, 123),
(0, 124),
(0, 125),
(0, 126),
(0, 127),
(0, 128),
(0, 129),
(0, 130),
(0, 131),
(0, 132),
(0, 133),
(18, 9),
(18, 11),
(18, 12),
(18, 13),
(18, 14),
(18, 15),
(18, 16),
(18, 17),
(18, 18),
(18, 19),
(18, 20),
(18, 21),
(18, 22),
(18, 23),
(18, 32),
(18, 52),
(18, 53),
(18, 79),
(18, 97),
(18, 114),
(19, 30),
(19, 31),
(19, 34),
(19, 41),
(19, 42);

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`guid`),
  ADD UNIQUE KEY `account_UNIQUE` (`account`);

--
-- Indexuri pentru tabele `accounts_allowed`
--
ALTER TABLE `accounts_allowed`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexuri pentru tabele `accounts_banned`
--
ALTER TABLE `accounts_banned`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexuri pentru tabele `accounts_disconnect`
--
ALTER TABLE `accounts_disconnect`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexuri pentru tabele `accounts_status`
--
ALTER TABLE `accounts_status`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexuri pentru tabele `accounts_validation`
--
ALTER TABLE `accounts_validation`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexuri pentru tabele `accounts_warning`
--
ALTER TABLE `accounts_warning`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexuri pentru tabele `block_diskserial`
--
ALTER TABLE `block_diskserial`
  ADD PRIMARY KEY (`disk_serial`);

--
-- Indexuri pentru tabele `block_ip`
--
ALTER TABLE `block_ip`
  ADD PRIMARY KEY (`ip`);

--
-- Indexuri pentru tabele `block_mac`
--
ALTER TABLE `block_mac`
  ADD PRIMARY KEY (`mac`);

--
-- Indexuri pentru tabele `character_notification`
--
ALTER TABLE `character_notification`
  ADD PRIMARY KEY (`server_group`);

--
-- Indexuri pentru tabele `item_serial`
--
ALTER TABLE `item_serial`
  ADD PRIMARY KEY (`server`);

--
-- Indexuri pentru tabele `master_pc`
--
ALTER TABLE `master_pc`
  ADD PRIMARY KEY (`disk_serial`);

--
-- Indexuri pentru tabele `server_list`
--
ALTER TABLE `server_list`
  ADD PRIMARY KEY (`server`);

--
-- Indexuri pentru tabele `world_server`
--
ALTER TABLE `world_server`
  ADD PRIMARY KEY (`server`,`world`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `accounts`
--
ALTER TABLE `accounts`
  MODIFY `guid` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pentru tabele `server_list`
--
ALTER TABLE `server_list`
  MODIFY `server` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
