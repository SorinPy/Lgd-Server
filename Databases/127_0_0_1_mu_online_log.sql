--
-- Bază de date: `mu_online_log`
--
DROP DATABASE IF EXISTS `mu_online_log`;
CREATE DATABASE IF NOT EXISTS `mu_online_log` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mu_online_log`;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `antihack`
--

DROP TABLE IF EXISTS `antihack`;
CREATE TABLE `antihack` (
  `server` smallint UNSIGNED NOT NULL,
  `account_id` int UNSIGNED NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int UNSIGNED NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `player_location` varchar(255) DEFAULT NULL,
  `type` tinyint UNSIGNED NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `item_bag_serial`
--

DROP TABLE IF EXISTS `item_bag_serial`;
CREATE TABLE `item_bag_serial` (
  `serial` int UNSIGNED NOT NULL,
  `server` smallint UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `level` tinyint UNSIGNED NOT NULL,
  `account_id` int UNSIGNED NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int UNSIGNED NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `world` smallint UNSIGNED NOT NULL,
  `world_x` smallint NOT NULL,
  `world_y` smallint NOT NULL,
  `instance` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `item_bag_serial`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `log_boss_kill`
--

DROP TABLE IF EXISTS `log_boss_kill`;
CREATE TABLE `log_boss_kill` (
  `boss_index` smallint UNSIGNED NOT NULL,
  `boss_name` varchar(255) DEFAULT NULL,
  `boss_id` tinyint UNSIGNED NOT NULL,
  `character_id` int UNSIGNED NOT NULL,
  `character_name` varchar(255) DEFAULT NULL,
  `damage` bigint NOT NULL,
  `damage_reflect` bigint NOT NULL,
  `damage_debuff` bigint NOT NULL,
  `damage_elemental` bigint NOT NULL,
  `server` smallint UNSIGNED NOT NULL,
  `first_hit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `log_boss_kill`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `log_cash_shop`
--

DROP TABLE IF EXISTS `log_cash_shop`;
CREATE TABLE `log_cash_shop` (
  `server_id` smallint UNSIGNED NOT NULL,
  `account_id` int UNSIGNED NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int UNSIGNED NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `dest_char` varchar(255) DEFAULT NULL,
  `package_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `option_id` int UNSIGNED NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `price_type` tinyint UNSIGNED NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `gift` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `log_errtel_pentagram`
--

DROP TABLE IF EXISTS `log_errtel_pentagram`;
CREATE TABLE `log_errtel_pentagram` (
  `server` smallint UNSIGNED NOT NULL,
  `account_id` int UNSIGNED NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int UNSIGNED NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `type` tinyint UNSIGNED NOT NULL,
  `blessing_spirit` tinyint UNSIGNED NOT NULL,
  `result` tinyint UNSIGNED NOT NULL,
  `pentagram_data` varchar(255) DEFAULT NULL,
  `errtel_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `log_errtel_pentagram`
--

--
-- Structură tabel pentru tabel `log_item_buy`
--

DROP TABLE IF EXISTS `log_item_buy`;
CREATE TABLE `log_item_buy` (
  `server` smallint UNSIGNED NOT NULL,
  `account_id` int UNSIGNED NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int UNSIGNED NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `log_item_create`
--

DROP TABLE IF EXISTS `log_item_create`;
CREATE TABLE `log_item_create` (
  `account_id` int UNSIGNED NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int UNSIGNED NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `interface_id` varchar(255) DEFAULT NULL,
  `world` smallint UNSIGNED NOT NULL,
  `world_x` smallint NOT NULL,
  `world_y` smallint NOT NULL,
  `server` smallint UNSIGNED NOT NULL,
  `serial` int UNSIGNED NOT NULL,
  `serial_shop` int UNSIGNED NOT NULL,
  `item` smallint UNSIGNED NOT NULL,
  `level` tinyint UNSIGNED NOT NULL,
  `item_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `log_item_drop`
--

DROP TABLE IF EXISTS `log_item_drop`;
CREATE TABLE `log_item_drop` (
  `server` smallint UNSIGNED NOT NULL,
  `account_id` int UNSIGNED NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int UNSIGNED NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `log_item_loot`
--

DROP TABLE IF EXISTS `log_item_loot`;
CREATE TABLE `log_item_loot` (
  `server` smallint UNSIGNED NOT NULL,
  `account_id` int UNSIGNED NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int UNSIGNED NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `log_item_sell`
--

DROP TABLE IF EXISTS `log_item_sell`;
CREATE TABLE `log_item_sell` (
  `server` smallint UNSIGNED NOT NULL,
  `account_id` int UNSIGNED NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int UNSIGNED NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `log_jewel_drop`
--

DROP TABLE IF EXISTS `log_jewel_drop`;
CREATE TABLE `log_jewel_drop` (
  `char_id` int UNSIGNED NOT NULL,
  `account_id` int UNSIGNED NOT NULL,
  `jewel_type` tinyint UNSIGNED NOT NULL,
  `jewel_index` smallint UNSIGNED NOT NULL,
  `jewel_name` varchar(255) DEFAULT NULL,
  `world` smallint UNSIGNED NOT NULL,
  `x` smallint NOT NULL,
  `y` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `log_jewel_drop`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `log_jewel_mix`
--

DROP TABLE IF EXISTS `log_jewel_mix`;
CREATE TABLE `log_jewel_mix` (
  `char_id` int UNSIGNED NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `server` smallint UNSIGNED NOT NULL,
  `mix_type` tinyint UNSIGNED NOT NULL,
  `mix_id` tinyint UNSIGNED NOT NULL,
  `mix_level` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `log_level_up`
--

DROP TABLE IF EXISTS `log_level_up`;
CREATE TABLE `log_level_up` (
  `char_id` int UNSIGNED NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `level_normal` smallint UNSIGNED NOT NULL,
  `level_master` smallint UNSIGNED NOT NULL,
  `level_majestic` smallint UNSIGNED NOT NULL,
  `world` smallint UNSIGNED NOT NULL,
  `world_x` smallint NOT NULL,
  `world_y` smallint NOT NULL,
  `event_ground` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `log_level_up`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `log_mix`
--

DROP TABLE IF EXISTS `log_mix`;
CREATE TABLE `log_mix` (
  `server` smallint UNSIGNED NOT NULL,
  `account_id` int UNSIGNED NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int UNSIGNED NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `mix_id` smallint UNSIGNED NOT NULL,
  `mix_name` varchar(255) DEFAULT NULL,
  `rate` int NOT NULL,
  `cost` int UNSIGNED NOT NULL,
  `result` tinyint UNSIGNED NOT NULL,
  `item_data_before` varchar(255) DEFAULT NULL,
  `item_data_after` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `log_mix`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `log_personal_store`
--

DROP TABLE IF EXISTS `log_personal_store`;
CREATE TABLE `log_personal_store` (
  `server` smallint UNSIGNED NOT NULL,
  `account_id_01` int UNSIGNED NOT NULL,
  `account_01` varchar(255) DEFAULT NULL,
  `char_id_01` int UNSIGNED NOT NULL,
  `char_name_01` varchar(255) DEFAULT NULL,
  `player_data_01` varchar(255) DEFAULT NULL,
  `account_id_02` int UNSIGNED NOT NULL,
  `account_02` varchar(255) DEFAULT NULL,
  `char_id_02` int UNSIGNED NOT NULL,
  `char_name_02` varchar(255) DEFAULT NULL,
  `player_data_02` varchar(255) DEFAULT NULL,
  `offstore` tinyint UNSIGNED NOT NULL,
  `item_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `log_pvp`
--

DROP TABLE IF EXISTS `log_pvp`;
CREATE TABLE `log_pvp` (
  `char_id_1` int UNSIGNED NOT NULL,
  `char_name_1` varchar(255) DEFAULT NULL,
  `char_class_1` tinyint UNSIGNED NOT NULL,
  `char_stat_1` varchar(255) DEFAULT NULL,
  `char_set_1` varchar(255) DEFAULT NULL,
  `char_id_2` int UNSIGNED NOT NULL,
  `char_name_2` varchar(255) DEFAULT NULL,
  `char_class_2` tinyint UNSIGNED NOT NULL,
  `char_stat_2` varchar(255) DEFAULT NULL,
  `char_set_2` varchar(255) DEFAULT NULL,
  `skill` smallint UNSIGNED NOT NULL,
  `hp_damage` int NOT NULL,
  `sd_damage` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `log_trade`
--

DROP TABLE IF EXISTS `log_trade`;
CREATE TABLE `log_trade` (
  `server` smallint UNSIGNED NOT NULL,
  `account_id_01` int UNSIGNED NOT NULL,
  `account_01` varchar(255) DEFAULT NULL,
  `char_id_01` int UNSIGNED NOT NULL,
  `char_name_01` varchar(255) DEFAULT NULL,
  `player_data_01` varchar(255) DEFAULT NULL,
  `account_id_02` int UNSIGNED NOT NULL,
  `account_02` varchar(255) DEFAULT NULL,
  `char_id_02` int UNSIGNED NOT NULL,
  `char_name_02` varchar(255) DEFAULT NULL,
  `player_data_02` varchar(255) DEFAULT NULL,
  `money` int UNSIGNED NOT NULL,
  `item_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `log_trade`
--

--
-- Structură tabel pentru tabel `mix_recovery`
--

DROP TABLE IF EXISTS `mix_recovery`;
CREATE TABLE `mix_recovery` (
  `server` smallint UNSIGNED NOT NULL,
  `account_id` int UNSIGNED NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int UNSIGNED NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `type` tinyint UNSIGNED NOT NULL,
  `item_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `reward_dungeon`
--

DROP TABLE IF EXISTS `reward_dungeon`;
CREATE TABLE `reward_dungeon` (
  `server` smallint UNSIGNED NOT NULL,
  `account_id` int UNSIGNED NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int UNSIGNED NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `type` tinyint UNSIGNED NOT NULL,
  `item_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `reward_labyrinth_of_dimensions`
--

DROP TABLE IF EXISTS `reward_labyrinth_of_dimensions`;
CREATE TABLE `reward_labyrinth_of_dimensions` (
  `server` smallint UNSIGNED NOT NULL,
  `char_id` int UNSIGNED NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `category` tinyint UNSIGNED NOT NULL,
  `rank` int NOT NULL,
  `item_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
