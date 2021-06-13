-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: iun. 13, 2021 la 07:22 PM
-- Versiune server: 8.0.23
-- Versiune PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `mu_online_characters`
--
DROP DATABASE IF EXISTS `mu_online_characters`;
CREATE DATABASE IF NOT EXISTS `mu_online_characters` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mu_online_characters`;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `account_buff`
--

DROP TABLE IF EXISTS `account_buff`;
CREATE TABLE `account_buff` (
  `account_id` int UNSIGNED NOT NULL,
  `buff` smallint UNSIGNED NOT NULL,
  `effect_1` tinyint UNSIGNED NOT NULL,
  `value_1` int NOT NULL,
  `effect_2` tinyint UNSIGNED NOT NULL,
  `value_2` int NOT NULL,
  `effect_3` tinyint UNSIGNED NOT NULL,
  `value_3` int NOT NULL,
  `duration` bigint NOT NULL,
  `flags` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `account_cash_shop_gift`
--

DROP TABLE IF EXISTS `account_cash_shop_gift`;
CREATE TABLE `account_cash_shop_gift` (
  `account_id` int UNSIGNED NOT NULL,
  `product` int UNSIGNED NOT NULL,
  `option` int UNSIGNED NOT NULL,
  `serial` int UNSIGNED NOT NULL,
  `serial_cash_shop` int UNSIGNED NOT NULL,
  `server` smallint UNSIGNED NOT NULL,
  `date` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `account_cash_shop_item`
--

DROP TABLE IF EXISTS `account_cash_shop_item`;
CREATE TABLE `account_cash_shop_item` (
  `account_id` int UNSIGNED NOT NULL,
  `product` int UNSIGNED NOT NULL,
  `option` int UNSIGNED NOT NULL,
  `serial` int UNSIGNED NOT NULL,
  `serial_cash_shop` int UNSIGNED NOT NULL,
  `server` smallint UNSIGNED NOT NULL,
  `gift` tinyint UNSIGNED NOT NULL,
  `date` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `account_data`
--

DROP TABLE IF EXISTS `account_data`;
CREATE TABLE `account_data` (
  `account_id` int UNSIGNED NOT NULL,
  `vip_status` int NOT NULL,
  `vip_duration` bigint NOT NULL,
  `expanded_warehouse` tinyint UNSIGNED NOT NULL,
  `expanded_warehouse_time` bigint NOT NULL,
  `special_character` smallint UNSIGNED NOT NULL,
  `credits` int UNSIGNED NOT NULL,
  `web_credits` int UNSIGNED NOT NULL,
  `current_character` int UNSIGNED NOT NULL,
  `current_type` tinyint UNSIGNED NOT NULL,
  `current_ip` varchar(16) DEFAULT NULL,
  `current_mac` varchar(50) DEFAULT NULL,
  `current_diskserial` int UNSIGNED NOT NULL,
  `current_server` smallint UNSIGNED NOT NULL,
  `cash_shop_discount_wc` tinyint UNSIGNED NOT NULL,
  `cash_shop_discount_gp` tinyint UNSIGNED NOT NULL,
  `cash_shop_discount_date` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `account_warehouse`
--

DROP TABLE IF EXISTS `account_warehouse`;
CREATE TABLE `account_warehouse` (
  `account_id` int UNSIGNED NOT NULL,
  `money` int UNSIGNED NOT NULL,
  `password` smallint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `arka_war_data`
--

DROP TABLE IF EXISTS `arka_war_data`;
CREATE TABLE `arka_war_data` (
  `id` tinyint UNSIGNED NOT NULL,
  `guild` int UNSIGNED NOT NULL,
  `attribute` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `castle_siege_data`
--

DROP TABLE IF EXISTS `castle_siege_data`;
CREATE TABLE `castle_siege_data` (
  `owner` int UNSIGNED NOT NULL,
  `status` tinyint UNSIGNED NOT NULL,
  `tax_hunt` int NOT NULL,
  `tax_chaos` tinyint UNSIGNED NOT NULL,
  `tax_store` tinyint UNSIGNED NOT NULL,
  `hunt_allowed` tinyint NOT NULL,
  `money` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `castle_siege_guild`
--

DROP TABLE IF EXISTS `castle_siege_guild`;
CREATE TABLE `castle_siege_guild` (
  `guild` int UNSIGNED NOT NULL,
  `side` tinyint UNSIGNED NOT NULL,
  `score` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `castle_siege_npc`
--

DROP TABLE IF EXISTS `castle_siege_npc`;
CREATE TABLE `castle_siege_npc` (
  `npc` smallint UNSIGNED NOT NULL,
  `id` tinyint UNSIGNED NOT NULL,
  `defense_level` tinyint UNSIGNED NOT NULL,
  `regen_level` tinyint UNSIGNED NOT NULL,
  `life_level` tinyint UNSIGNED NOT NULL,
  `life` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `castle_siege_registered_guild`
--

DROP TABLE IF EXISTS `castle_siege_registered_guild`;
CREATE TABLE `castle_siege_registered_guild` (
  `guild` int UNSIGNED NOT NULL,
  `marks` int UNSIGNED NOT NULL,
  `register_id` int UNSIGNED NOT NULL,
  `level` smallint UNSIGNED NOT NULL,
  `level_master` smallint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `chaos_castle_survival_hall_of_fame`
--

DROP TABLE IF EXISTS `chaos_castle_survival_hall_of_fame`;
CREATE TABLE `chaos_castle_survival_hall_of_fame` (
  `char_id` int UNSIGNED NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `score` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `chaos_castle_survival_ranking`
--

DROP TABLE IF EXISTS `chaos_castle_survival_ranking`;
CREATE TABLE `chaos_castle_survival_ranking` (
  `char_id` int UNSIGNED NOT NULL,
  `score` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_buff`
--

DROP TABLE IF EXISTS `character_buff`;
CREATE TABLE `character_buff` (
  `char_id` int UNSIGNED NOT NULL,
  `buff` smallint UNSIGNED NOT NULL,
  `effect_1` tinyint UNSIGNED NOT NULL,
  `value_1` int NOT NULL,
  `effect_2` tinyint UNSIGNED NOT NULL,
  `value_2` int NOT NULL,
  `effect_3` tinyint UNSIGNED NOT NULL,
  `value_3` int NOT NULL,
  `duration` bigint NOT NULL,
  `flags` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_chat_block`
--

DROP TABLE IF EXISTS `character_chat_block`;
CREATE TABLE `character_chat_block` (
  `char_id` int UNSIGNED NOT NULL,
  `blocked` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_date`
--

DROP TABLE IF EXISTS `character_date`;
CREATE TABLE `character_date` (
  `char_id` int UNSIGNED NOT NULL,
  `id` int UNSIGNED NOT NULL,
  `date` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_deleted`
--

DROP TABLE IF EXISTS `character_deleted`;
CREATE TABLE `character_deleted` (
  `account_id` int UNSIGNED NOT NULL,
  `char_id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_event_count`
--

DROP TABLE IF EXISTS `character_event_count`;
CREATE TABLE `character_event_count` (
  `char_id` int UNSIGNED NOT NULL,
  `event_id` tinyint UNSIGNED NOT NULL,
  `count` tinyint UNSIGNED NOT NULL,
  `day` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_friend`
--

DROP TABLE IF EXISTS `character_friend`;
CREATE TABLE `character_friend` (
  `char_id` int UNSIGNED NOT NULL,
  `friend_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_gameoption`
--

DROP TABLE IF EXISTS `character_gameoption`;
CREATE TABLE `character_gameoption` (
  `char_id` int UNSIGNED NOT NULL,
  `game_option` tinyint UNSIGNED NOT NULL,
  `chat_window` tinyint UNSIGNED NOT NULL,
  `q_key` tinyint UNSIGNED NOT NULL,
  `w_key` tinyint UNSIGNED NOT NULL,
  `e_key` tinyint UNSIGNED NOT NULL,
  `r_key` tinyint UNSIGNED NOT NULL,
  `qwer_level` int NOT NULL,
  `skill_bind_0` smallint UNSIGNED NOT NULL,
  `skill_bind_1` smallint UNSIGNED NOT NULL,
  `skill_bind_2` smallint UNSIGNED NOT NULL,
  `skill_bind_3` smallint UNSIGNED NOT NULL,
  `skill_bind_4` smallint UNSIGNED NOT NULL,
  `skill_bind_5` smallint UNSIGNED NOT NULL,
  `skill_bind_6` smallint UNSIGNED NOT NULL,
  `skill_bind_7` smallint UNSIGNED NOT NULL,
  `skill_bind_8` smallint UNSIGNED NOT NULL,
  `skill_bind_9` smallint UNSIGNED NOT NULL,
  `extra_data` bigint UNSIGNED NOT NULL,
  `change_skin` tinyint UNSIGNED NOT NULL,
  `additional_options` smallint UNSIGNED NOT NULL,
  `button_bind_1` tinyint UNSIGNED NOT NULL,
  `button_bind_2` tinyint UNSIGNED NOT NULL,
  `button_bind_3` tinyint UNSIGNED NOT NULL,
  `button_bind_4` tinyint UNSIGNED NOT NULL,
  `button_bind_5` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_gens`
--

DROP TABLE IF EXISTS `character_gens`;
CREATE TABLE `character_gens` (
  `char_id` int UNSIGNED NOT NULL,
  `family` tinyint UNSIGNED NOT NULL,
  `level` tinyint UNSIGNED NOT NULL,
  `contribution` int NOT NULL,
  `reward_date` bigint NOT NULL,
  `join_date` bigint NOT NULL,
  `left_date` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_gens_kill`
--

DROP TABLE IF EXISTS `character_gens_kill`;
CREATE TABLE `character_gens_kill` (
  `char_id` int UNSIGNED NOT NULL,
  `killed_id` int UNSIGNED NOT NULL,
  `count` int UNSIGNED NOT NULL,
  `date` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_helper`
--

DROP TABLE IF EXISTS `character_helper`;
CREATE TABLE `character_helper` (
  `char_id` int UNSIGNED NOT NULL,
  `option_flag_1` int UNSIGNED NOT NULL,
  `option_flag_2` int UNSIGNED NOT NULL,
  `item_pick_flag` tinyint UNSIGNED NOT NULL,
  `hunting_range` tinyint UNSIGNED NOT NULL,
  `item_pick_range` tinyint UNSIGNED NOT NULL,
  `distance` smallint UNSIGNED NOT NULL,
  `attack_skill_1` smallint UNSIGNED NOT NULL,
  `attack_sec_skill_1` smallint UNSIGNED NOT NULL,
  `attack_sec_skill_2` smallint UNSIGNED NOT NULL,
  `attack_sec_delay_1` smallint UNSIGNED NOT NULL,
  `attack_sec_delay_2` smallint UNSIGNED NOT NULL,
  `buff_skill_1` smallint UNSIGNED NOT NULL,
  `buff_skill_2` smallint UNSIGNED NOT NULL,
  `buff_skill_3` smallint UNSIGNED NOT NULL,
  `time_space_casting` smallint UNSIGNED NOT NULL,
  `percent_autopot` tinyint UNSIGNED NOT NULL,
  `percent_autoheal` tinyint UNSIGNED NOT NULL,
  `percent_partyheal` tinyint UNSIGNED NOT NULL,
  `percent_drainlife` tinyint UNSIGNED NOT NULL,
  `item_list` smallint UNSIGNED NOT NULL,
  `buff_item_1` smallint UNSIGNED NOT NULL,
  `buff_item_2` smallint UNSIGNED NOT NULL,
  `buff_item_3` smallint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_hunting_record`
--

DROP TABLE IF EXISTS `character_hunting_record`;
CREATE TABLE `character_hunting_record` (
  `char_id` int UNSIGNED NOT NULL,
  `world` smallint UNSIGNED NOT NULL,
  `year` smallint UNSIGNED NOT NULL,
  `month` tinyint UNSIGNED NOT NULL,
  `day` tinyint UNSIGNED NOT NULL,
  `level` int UNSIGNED NOT NULL,
  `duration` int UNSIGNED NOT NULL,
  `damage` bigint UNSIGNED NOT NULL,
  `elemental_damage` bigint UNSIGNED NOT NULL,
  `healing` int UNSIGNED NOT NULL,
  `killed_count` int UNSIGNED NOT NULL,
  `earned_experience` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_info`
--

DROP TABLE IF EXISTS `character_info`;
CREATE TABLE `character_info` (
  `guid` int UNSIGNED NOT NULL,
  `account_id` int UNSIGNED NOT NULL,
  `authority` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `race` tinyint UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slot` tinyint NOT NULL,
  `level` smallint NOT NULL,
  `level_master` smallint NOT NULL DEFAULT '0',
  `level_majestic` smallint NOT NULL DEFAULT '0',
  `experience` bigint NOT NULL DEFAULT '0',
  `experience_master` bigint NOT NULL DEFAULT '0',
  `experience_majestic` bigint NOT NULL DEFAULT '0',
  `points` int NOT NULL,
  `points_master` int NOT NULL DEFAULT '0',
  `points_majestic` int NOT NULL DEFAULT '0',
  `strength` int UNSIGNED NOT NULL,
  `agility` int UNSIGNED NOT NULL,
  `vitality` int UNSIGNED NOT NULL,
  `energy` int UNSIGNED NOT NULL,
  `leadership` int UNSIGNED NOT NULL,
  `world` smallint UNSIGNED NOT NULL,
  `world_x` smallint NOT NULL,
  `world_y` smallint NOT NULL,
  `direction` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `money` int UNSIGNED NOT NULL DEFAULT '0',
  `life` int NOT NULL,
  `mana` int NOT NULL,
  `shield` int NOT NULL DEFAULT '0',
  `stamina` int NOT NULL DEFAULT '0',
  `add_fruit_points` int NOT NULL DEFAULT '0',
  `dec_fruit_points` int NOT NULL DEFAULT '0',
  `expanded_inventory` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `mute_time` bigint NOT NULL DEFAULT '0',
  `admin_flags` int UNSIGNED NOT NULL DEFAULT '0',
  `pk_level` tinyint UNSIGNED NOT NULL DEFAULT '3',
  `pk_count` int NOT NULL DEFAULT '0',
  `pk_points` int NOT NULL DEFAULT '0',
  `first_time` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `santa_claus_gift` bigint NOT NULL DEFAULT '0',
  `personal_store_name` varchar(255) DEFAULT NULL,
  `personal_store_open` tinyint NOT NULL DEFAULT '0',
  `goblin_points` int UNSIGNED NOT NULL DEFAULT '0',
  `last_use` bigint NOT NULL DEFAULT '0',
  `kick_time` bigint NOT NULL DEFAULT '0',
  `post_count` int NOT NULL DEFAULT '0',
  `post_day` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `post_month` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `ruud_money` int UNSIGNED NOT NULL DEFAULT '0',
  `hunting_log_visible` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `create_date` bigint NOT NULL DEFAULT '0',
  `online` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `server_code` smallint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_item_delay`
--

DROP TABLE IF EXISTS `character_item_delay`;
CREATE TABLE `character_item_delay` (
  `char_id` int UNSIGNED NOT NULL,
  `item` smallint UNSIGNED NOT NULL,
  `date` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_jewel_bingo`
--

DROP TABLE IF EXISTS `character_jewel_bingo`;
CREATE TABLE `character_jewel_bingo` (
  `char_id` int UNSIGNED NOT NULL,
  `state` tinyint UNSIGNED NOT NULL,
  `box` tinyint UNSIGNED NOT NULL,
  `count` tinyint UNSIGNED NOT NULL,
  `jewel` tinyint UNSIGNED NOT NULL,
  `score1` int NOT NULL,
  `score2` int NOT NULL,
  `score3` int NOT NULL,
  `date` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_jewel_bingo_grid`
--

DROP TABLE IF EXISTS `character_jewel_bingo_grid`;
CREATE TABLE `character_jewel_bingo_grid` (
  `char_id` int UNSIGNED NOT NULL,
  `type` tinyint UNSIGNED NOT NULL,
  `slot` tinyint UNSIGNED NOT NULL,
  `value` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_kick`
--

DROP TABLE IF EXISTS `character_kick`;
CREATE TABLE `character_kick` (
  `char_id` int UNSIGNED NOT NULL,
  `character_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_labyrinth`
--

DROP TABLE IF EXISTS `character_labyrinth`;
CREATE TABLE `character_labyrinth` (
  `char_id` int UNSIGNED NOT NULL,
  `stage` tinyint UNSIGNED NOT NULL,
  `id` tinyint UNSIGNED NOT NULL,
  `level` smallint UNSIGNED NOT NULL,
  `status` tinyint UNSIGNED NOT NULL,
  `killed_monsters` int NOT NULL,
  `earned_experience` bigint NOT NULL,
  `completed_missions` int NOT NULL,
  `date` bigint NOT NULL,
  `goblin_state` tinyint UNSIGNED NOT NULL,
  `day_first` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_labyrinth_level`
--

DROP TABLE IF EXISTS `character_labyrinth_level`;
CREATE TABLE `character_labyrinth_level` (
  `char_id` int UNSIGNED NOT NULL,
  `level` smallint UNSIGNED NOT NULL,
  `amount` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_labyrinth_zone`
--

DROP TABLE IF EXISTS `character_labyrinth_zone`;
CREATE TABLE `character_labyrinth_zone` (
  `char_id` int UNSIGNED NOT NULL,
  `idx` tinyint UNSIGNED NOT NULL,
  `subidx` tinyint UNSIGNED NOT NULL,
  `mission_id_1` tinyint UNSIGNED NOT NULL,
  `mission_id_2` tinyint UNSIGNED NOT NULL,
  `mission_id_3` tinyint UNSIGNED NOT NULL,
  `mission_id_4` tinyint UNSIGNED NOT NULL,
  `mission_id_5` tinyint UNSIGNED NOT NULL,
  `mission_count_1` int NOT NULL,
  `mission_count_2` int NOT NULL,
  `mission_count_3` int NOT NULL,
  `mission_count_4` int NOT NULL,
  `mission_count_5` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_mail`
--

DROP TABLE IF EXISTS `character_mail`;
CREATE TABLE `character_mail` (
  `id` int UNSIGNED NOT NULL,
  `char_id` int UNSIGNED NOT NULL,
  `from_id` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `direction` tinyint UNSIGNED NOT NULL,
  `action` tinyint UNSIGNED NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `window_guid` int UNSIGNED NOT NULL,
  `date` bigint NOT NULL,
  `opened` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_majestic_stats`
--

DROP TABLE IF EXISTS `character_majestic_stats`;
CREATE TABLE `character_majestic_stats` (
  `char_id` int UNSIGNED NOT NULL,
  `id` tinyint UNSIGNED NOT NULL,
  `level` smallint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_majestic_tree`
--

DROP TABLE IF EXISTS `character_majestic_tree`;
CREATE TABLE `character_majestic_tree` (
  `char_id` int UNSIGNED NOT NULL,
  `type` tinyint UNSIGNED NOT NULL,
  `section` tinyint UNSIGNED NOT NULL,
  `id` smallint UNSIGNED NOT NULL,
  `level` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_mini_bomb`
--

DROP TABLE IF EXISTS `character_mini_bomb`;
CREATE TABLE `character_mini_bomb` (
  `char_id` int UNSIGNED NOT NULL,
  `state` tinyint UNSIGNED NOT NULL,
  `score` smallint UNSIGNED NOT NULL,
  `total_score` int NOT NULL,
  `cdate` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_mini_bomb_grid`
--

DROP TABLE IF EXISTS `character_mini_bomb_grid`;
CREATE TABLE `character_mini_bomb_grid` (
  `char_id` int UNSIGNED NOT NULL,
  `cell` tinyint UNSIGNED NOT NULL,
  `value` tinyint UNSIGNED NOT NULL,
  `status` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_monster_soul`
--

DROP TABLE IF EXISTS `character_monster_soul`;
CREATE TABLE `character_monster_soul` (
  `char_id` int UNSIGNED NOT NULL,
  `type` int UNSIGNED NOT NULL,
  `id` int UNSIGNED NOT NULL,
  `amount` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_mu_roomy`
--

DROP TABLE IF EXISTS `character_mu_roomy`;
CREATE TABLE `character_mu_roomy` (
  `char_id` int UNSIGNED NOT NULL,
  `playing` tinyint UNSIGNED NOT NULL,
  `type` tinyint UNSIGNED NOT NULL,
  `score` smallint UNSIGNED NOT NULL,
  `card_count` tinyint UNSIGNED NOT NULL,
  `special_card_count` tinyint UNSIGNED NOT NULL,
  `date` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_mu_roomy_deck`
--

DROP TABLE IF EXISTS `character_mu_roomy_deck`;
CREATE TABLE `character_mu_roomy_deck` (
  `char_id` int UNSIGNED NOT NULL,
  `type` tinyint UNSIGNED NOT NULL,
  `slot` tinyint UNSIGNED NOT NULL,
  `color` tinyint UNSIGNED NOT NULL,
  `number` tinyint UNSIGNED NOT NULL,
  `state` tinyint UNSIGNED NOT NULL,
  `play_slot` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_numeric_baseball`
--

DROP TABLE IF EXISTS `character_numeric_baseball`;
CREATE TABLE `character_numeric_baseball` (
  `char_id` int UNSIGNED NOT NULL,
  `state` tinyint UNSIGNED NOT NULL,
  `score` int NOT NULL,
  `number_1` tinyint UNSIGNED NOT NULL,
  `number_2` tinyint UNSIGNED NOT NULL,
  `number_3` tinyint UNSIGNED NOT NULL,
  `numbers` varchar(255) DEFAULT NULL,
  `strikes` varchar(255) DEFAULT NULL,
  `balls` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_quest_evo`
--

DROP TABLE IF EXISTS `character_quest_evo`;
CREATE TABLE `character_quest_evo` (
  `char_id` int UNSIGNED NOT NULL,
  `id` tinyint UNSIGNED NOT NULL,
  `state` tinyint UNSIGNED NOT NULL,
  `kill_count_1` int NOT NULL,
  `kill_count_2` int NOT NULL,
  `kill_count_3` int NOT NULL,
  `kill_count_4` int NOT NULL,
  `kill_count_5` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_quest_guided`
--

DROP TABLE IF EXISTS `character_quest_guided`;
CREATE TABLE `character_quest_guided` (
  `char_id` int UNSIGNED NOT NULL,
  `quest` smallint UNSIGNED NOT NULL,
  `count` int NOT NULL,
  `state` tinyint UNSIGNED NOT NULL,
  `date` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_quest_mu`
--

DROP TABLE IF EXISTS `character_quest_mu`;
CREATE TABLE `character_quest_mu` (
  `char_id` int UNSIGNED NOT NULL,
  `quest_id` smallint UNSIGNED NOT NULL,
  `state` tinyint UNSIGNED NOT NULL,
  `objective` smallint UNSIGNED NOT NULL,
  `date` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_restriction`
--

DROP TABLE IF EXISTS `character_restriction`;
CREATE TABLE `character_restriction` (
  `char_id` int UNSIGNED NOT NULL,
  `restriction` int UNSIGNED NOT NULL,
  `time` bigint NOT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_score`
--

DROP TABLE IF EXISTS `character_score`;
CREATE TABLE `character_score` (
  `char_id` int UNSIGNED NOT NULL,
  `type` tinyint UNSIGNED NOT NULL,
  `level` int NOT NULL,
  `score` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_skill`
--

DROP TABLE IF EXISTS `character_skill`;
CREATE TABLE `character_skill` (
  `char_id` int UNSIGNED NOT NULL,
  `type` tinyint UNSIGNED NOT NULL,
  `skill` smallint UNSIGNED NOT NULL,
  `skill_level` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_statistics`
--

DROP TABLE IF EXISTS `character_statistics`;
CREATE TABLE `character_statistics` (
  `char_id` int UNSIGNED NOT NULL,
  `statistic_id` int UNSIGNED NOT NULL,
  `count` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `character_warp_favorite_list`
--

DROP TABLE IF EXISTS `character_warp_favorite_list`;
CREATE TABLE `character_warp_favorite_list` (
  `char_id` int UNSIGNED NOT NULL,
  `slot` tinyint UNSIGNED NOT NULL,
  `data` smallint UNSIGNED NOT NULL,
  `warp_id` smallint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `crywolf_data`
--

DROP TABLE IF EXISTS `crywolf_data`;
CREATE TABLE `crywolf_data` (
  `state` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `event_arka_war_kill`
--

DROP TABLE IF EXISTS `event_arka_war_kill`;
CREATE TABLE `event_arka_war_kill` (
  `char_id` int UNSIGNED NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `char_rank` tinyint UNSIGNED NOT NULL,
  `player_data_01` varchar(255) DEFAULT NULL,
  `guild_id_01` int UNSIGNED NOT NULL,
  `guild_name_01` varchar(255) DEFAULT NULL,
  `killer_id` int UNSIGNED NOT NULL,
  `killer_name` varchar(255) DEFAULT NULL,
  `killer_rank` tinyint UNSIGNED NOT NULL,
  `player_data_02` varchar(255) DEFAULT NULL,
  `guild_id_02` int UNSIGNED NOT NULL,
  `guild_name_02` varchar(255) DEFAULT NULL,
  `world` smallint UNSIGNED NOT NULL,
  `world_x` smallint NOT NULL,
  `world_y` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `event_arka_war_ranking`
--

DROP TABLE IF EXISTS `event_arka_war_ranking`;
CREATE TABLE `event_arka_war_ranking` (
  `guild_id_01` int UNSIGNED NOT NULL,
  `guild_name_01` varchar(255) DEFAULT NULL,
  `guild_id_02` int UNSIGNED NOT NULL,
  `guild_name_02` varchar(255) DEFAULT NULL,
  `character_count` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `event_castle_siege_kill`
--

DROP TABLE IF EXISTS `event_castle_siege_kill`;
CREATE TABLE `event_castle_siege_kill` (
  `char_id` int UNSIGNED NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `char_rank` tinyint UNSIGNED NOT NULL,
  `state` tinyint UNSIGNED NOT NULL,
  `player_data_01` varchar(255) DEFAULT NULL,
  `guild_id_01` int UNSIGNED NOT NULL,
  `guild_name_01` varchar(255) DEFAULT NULL,
  `killer_id` int UNSIGNED NOT NULL,
  `killer_name` varchar(255) DEFAULT NULL,
  `killer_rank` tinyint UNSIGNED NOT NULL,
  `player_data_02` varchar(255) DEFAULT NULL,
  `guild_id_02` int UNSIGNED NOT NULL,
  `guild_name_02` varchar(255) DEFAULT NULL,
  `world` smallint UNSIGNED NOT NULL,
  `world_x` smallint NOT NULL,
  `world_y` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `event_castle_siege_ranking`
--

DROP TABLE IF EXISTS `event_castle_siege_ranking`;
CREATE TABLE `event_castle_siege_ranking` (
  `guild_id` int UNSIGNED NOT NULL,
  `guild_name` varchar(255) DEFAULT NULL,
  `character_count` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `event_castle_siege_time`
--

DROP TABLE IF EXISTS `event_castle_siege_time`;
CREATE TABLE `event_castle_siege_time` (
  `char_id` int UNSIGNED NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `char_rank` tinyint UNSIGNED NOT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `guild_id` int UNSIGNED NOT NULL,
  `guild_name` varchar(255) DEFAULT NULL,
  `type` tinyint UNSIGNED NOT NULL,
  `time` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `event_dungeon_instance`
--

DROP TABLE IF EXISTS `event_dungeon_instance`;
CREATE TABLE `event_dungeon_instance` (
  `char_id` int UNSIGNED NOT NULL,
  `id` tinyint UNSIGNED NOT NULL,
  `time` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `event_jewel_bingo_ranking`
--

DROP TABLE IF EXISTS `event_jewel_bingo_ranking`;
CREATE TABLE `event_jewel_bingo_ranking` (
  `char_id` int UNSIGNED NOT NULL,
  `type` tinyint UNSIGNED NOT NULL,
  `score1` int NOT NULL,
  `score2` int NOT NULL,
  `score3` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `event_labyrinth_league`
--

DROP TABLE IF EXISTS `event_labyrinth_league`;
CREATE TABLE `event_labyrinth_league` (
  `category` tinyint UNSIGNED NOT NULL,
  `char_id` int UNSIGNED NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `char_class` tinyint UNSIGNED NOT NULL,
  `score` int NOT NULL,
  `league_score` int NOT NULL,
  `time` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `event_labyrinth_schedule`
--

DROP TABLE IF EXISTS `event_labyrinth_schedule`;
CREATE TABLE `event_labyrinth_schedule` (
  `server` smallint UNSIGNED NOT NULL,
  `state` tinyint UNSIGNED NOT NULL,
  `start_date` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `event_mini_bomb_ranking`
--

DROP TABLE IF EXISTS `event_mini_bomb_ranking`;
CREATE TABLE `event_mini_bomb_ranking` (
  `char_id` int UNSIGNED NOT NULL,
  `state` tinyint UNSIGNED NOT NULL,
  `score` smallint UNSIGNED NOT NULL,
  `bombs_founded` tinyint UNSIGNED NOT NULL,
  `bombs_failed` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `event_mu_roomy_ranking`
--

DROP TABLE IF EXISTS `event_mu_roomy_ranking`;
CREATE TABLE `event_mu_roomy_ranking` (
  `char_id` int UNSIGNED NOT NULL,
  `type` tinyint UNSIGNED NOT NULL,
  `score` smallint UNSIGNED NOT NULL,
  `remain_card` tinyint UNSIGNED NOT NULL,
  `remain_special_card` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `event_numeric_baseball_ranking`
--

DROP TABLE IF EXISTS `event_numeric_baseball_ranking`;
CREATE TABLE `event_numeric_baseball_ranking` (
  `char_id` int UNSIGNED NOT NULL,
  `score` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `event_race_ranking`
--

DROP TABLE IF EXISTS `event_race_ranking`;
CREATE TABLE `event_race_ranking` (
  `char_id` int UNSIGNED NOT NULL,
  `race` varchar(255) NOT NULL,
  `start` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `event_ranking`
--

DROP TABLE IF EXISTS `event_ranking`;
CREATE TABLE `event_ranking` (
  `event_id` tinyint UNSIGNED NOT NULL,
  `event_ground` tinyint UNSIGNED NOT NULL,
  `char_id` int UNSIGNED NOT NULL,
  `score` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `event_ranking_labyrinth`
--

DROP TABLE IF EXISTS `event_ranking_labyrinth`;
CREATE TABLE `event_ranking_labyrinth` (
  `char_id` int UNSIGNED NOT NULL,
  `level` smallint UNSIGNED NOT NULL,
  `stage` tinyint UNSIGNED NOT NULL,
  `index` tinyint UNSIGNED NOT NULL,
  `killed_monsters` int NOT NULL,
  `earned_experience` bigint NOT NULL,
  `completed_missions` int NOT NULL,
  `score` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `event_scramble_ranking`
--

DROP TABLE IF EXISTS `event_scramble_ranking`;
CREATE TABLE `event_scramble_ranking` (
  `char_id` int UNSIGNED NOT NULL,
  `word` varchar(255) DEFAULT NULL,
  `shuffle_word` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `event_stage`
--

DROP TABLE IF EXISTS `event_stage`;
CREATE TABLE `event_stage` (
  `event_id` tinyint UNSIGNED NOT NULL,
  `stage` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `gen_ranking`
--

DROP TABLE IF EXISTS `gen_ranking`;
CREATE TABLE `gen_ranking` (
  `family` tinyint UNSIGNED NOT NULL,
  `level` tinyint UNSIGNED NOT NULL,
  `type` tinyint UNSIGNED NOT NULL,
  `score` int NOT NULL,
  `ranking` int NOT NULL,
  `char_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `guild_list`
--

DROP TABLE IF EXISTS `guild_list`;
CREATE TABLE `guild_list` (
  `guid` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `emblem` varchar(255) DEFAULT NULL,
  `hostil` int UNSIGNED NOT NULL,
  `alliance` int UNSIGNED NOT NULL,
  `notice` varchar(255) DEFAULT NULL,
  `score` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `guild_matching`
--

DROP TABLE IF EXISTS `guild_matching`;
CREATE TABLE `guild_matching` (
  `guild_id` int UNSIGNED NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `interest_type` tinyint UNSIGNED NOT NULL,
  `level_range` tinyint UNSIGNED NOT NULL,
  `class_type` smallint UNSIGNED NOT NULL,
  `board_number` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `guild_members`
--

DROP TABLE IF EXISTS `guild_members`;
CREATE TABLE `guild_members` (
  `guild_id` int UNSIGNED NOT NULL,
  `char_id` int UNSIGNED NOT NULL,
  `id` tinyint UNSIGNED NOT NULL,
  `ranking` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `guild_score`
--

DROP TABLE IF EXISTS `guild_score`;
CREATE TABLE `guild_score` (
  `guild_id` int UNSIGNED NOT NULL,
  `score` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `item_data`
--

DROP TABLE IF EXISTS `item_data`;
CREATE TABLE `item_data` (
  `id` int UNSIGNED NOT NULL,
  `box` tinyint UNSIGNED NOT NULL,
  `slot` int UNSIGNED NOT NULL,
  `entry` smallint UNSIGNED NOT NULL,
  `server` smallint UNSIGNED NOT NULL,
  `serial` int UNSIGNED NOT NULL,
  `serial_cash_shop` int UNSIGNED NOT NULL,
  `level` tinyint UNSIGNED NOT NULL,
  `durability` tinyint UNSIGNED NOT NULL,
  `durability_state` int NOT NULL DEFAULT '0',
  `skill` tinyint UNSIGNED NOT NULL,
  `luck` tinyint UNSIGNED NOT NULL,
  `option` tinyint UNSIGNED NOT NULL,
  `excellent` tinyint UNSIGNED NOT NULL,
  `ancient` tinyint UNSIGNED NOT NULL,
  `option_380` tinyint UNSIGNED NOT NULL,
  `harmony` tinyint UNSIGNED NOT NULL,
  `socket_1` smallint UNSIGNED NOT NULL,
  `socket_2` smallint UNSIGNED NOT NULL,
  `socket_3` smallint UNSIGNED NOT NULL,
  `socket_4` smallint UNSIGNED NOT NULL,
  `socket_5` smallint UNSIGNED NOT NULL,
  `socket_bonus` tinyint UNSIGNED NOT NULL,
  `locked` tinyint UNSIGNED NOT NULL,
  `data_1` int NOT NULL DEFAULT '0',
  `data_2` int NOT NULL DEFAULT '0',
  `data_3` int NOT NULL DEFAULT '0',
  `personal_store_price` int UNSIGNED NOT NULL DEFAULT '0',
  `personal_store_job` smallint UNSIGNED NOT NULL DEFAULT '0',
  `personal_store_jos` smallint UNSIGNED NOT NULL DEFAULT '0',
  `personal_store_joc` smallint UNSIGNED NOT NULL DEFAULT '0',
  `expire_date` bigint NOT NULL DEFAULT '0',
  `flags` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `item_data_my`
--

DROP TABLE IF EXISTS `item_data_my`;
CREATE TABLE `item_data_my` (
  `id` int UNSIGNED NOT NULL,
  `box` tinyint UNSIGNED NOT NULL,
  `slot` int UNSIGNED NOT NULL,
  `entry` smallint UNSIGNED NOT NULL,
  `server` smallint UNSIGNED NOT NULL,
  `serial` int UNSIGNED NOT NULL,
  `serial_cash_shop` int UNSIGNED NOT NULL,
  `level` tinyint UNSIGNED NOT NULL,
  `durability` tinyint UNSIGNED NOT NULL,
  `durability_state` int NOT NULL,
  `skill` tinyint UNSIGNED NOT NULL,
  `luck` tinyint UNSIGNED NOT NULL,
  `option` tinyint UNSIGNED NOT NULL,
  `excellent` tinyint UNSIGNED NOT NULL,
  `ancient` tinyint UNSIGNED NOT NULL,
  `option_380` tinyint UNSIGNED NOT NULL,
  `harmony` tinyint UNSIGNED NOT NULL,
  `socket_1` smallint UNSIGNED NOT NULL,
  `socket_2` smallint UNSIGNED NOT NULL,
  `socket_3` smallint UNSIGNED NOT NULL,
  `socket_4` smallint UNSIGNED NOT NULL,
  `socket_5` smallint UNSIGNED NOT NULL,
  `socket_bonus` tinyint UNSIGNED NOT NULL,
  `locked` tinyint UNSIGNED NOT NULL,
  `data_1` int NOT NULL,
  `data_2` int NOT NULL,
  `data_3` int NOT NULL,
  `personal_store_price` int UNSIGNED NOT NULL,
  `personal_store_job` smallint UNSIGNED NOT NULL,
  `personal_store_jos` smallint UNSIGNED NOT NULL,
  `personal_store_joc` smallint UNSIGNED NOT NULL,
  `expire_date` bigint NOT NULL,
  `flags` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `item_pentagram_data`
--

DROP TABLE IF EXISTS `item_pentagram_data`;
CREATE TABLE `item_pentagram_data` (
  `id` int UNSIGNED NOT NULL,
  `type` tinyint UNSIGNED NOT NULL,
  `index` tinyint UNSIGNED NOT NULL,
  `attribute` tinyint UNSIGNED NOT NULL,
  `item_type` tinyint UNSIGNED NOT NULL,
  `item_index` smallint UNSIGNED NOT NULL,
  `item_level` tinyint UNSIGNED NOT NULL,
  `option_index_rank_1` tinyint UNSIGNED NOT NULL,
  `option_level_rank_1` tinyint UNSIGNED NOT NULL,
  `option_index_rank_2` tinyint UNSIGNED NOT NULL,
  `option_level_rank_2` tinyint UNSIGNED NOT NULL,
  `option_index_rank_3` tinyint UNSIGNED NOT NULL,
  `option_level_rank_3` tinyint UNSIGNED NOT NULL,
  `option_index_rank_4` tinyint UNSIGNED NOT NULL,
  `option_level_rank_4` tinyint UNSIGNED NOT NULL,
  `option_index_rank_5` tinyint UNSIGNED NOT NULL,
  `option_level_rank_5` tinyint UNSIGNED NOT NULL,
  `serial_server` smallint UNSIGNED NOT NULL,
  `serial` int UNSIGNED NOT NULL,
  `flags` int UNSIGNED NOT NULL,
  `data_1` int NOT NULL,
  `data_2` int NOT NULL,
  `data_3` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `item_recovery`
--

DROP TABLE IF EXISTS `item_recovery`;
CREATE TABLE `item_recovery` (
  `char_id` int UNSIGNED NOT NULL,
  `item` smallint UNSIGNED NOT NULL,
  `level` tinyint UNSIGNED NOT NULL,
  `durability` tinyint UNSIGNED NOT NULL,
  `skill` tinyint UNSIGNED NOT NULL,
  `luck` tinyint UNSIGNED NOT NULL,
  `option` tinyint UNSIGNED NOT NULL,
  `excellent` tinyint UNSIGNED NOT NULL,
  `ancient` tinyint UNSIGNED NOT NULL,
  `harmony` tinyint UNSIGNED NOT NULL,
  `option_380` tinyint UNSIGNED NOT NULL,
  `socket_1` smallint UNSIGNED NOT NULL,
  `socket_2` smallint UNSIGNED NOT NULL,
  `socket_3` smallint UNSIGNED NOT NULL,
  `socket_4` smallint UNSIGNED NOT NULL,
  `socket_5` smallint UNSIGNED NOT NULL,
  `socket_bonus` tinyint UNSIGNED NOT NULL,
  `data_1` int NOT NULL,
  `data_2` int NOT NULL,
  `data_3` int NOT NULL,
  `serial_server` smallint UNSIGNED NOT NULL,
  `serial` int UNSIGNED NOT NULL,
  `serial_cash_shop` int UNSIGNED NOT NULL,
  `flags` int UNSIGNED NOT NULL,
  `id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `monster_respawn`
--

DROP TABLE IF EXISTS `monster_respawn`;
CREATE TABLE `monster_respawn` (
  `server` smallint UNSIGNED NOT NULL,
  `guid` smallint UNSIGNED NOT NULL,
  `date` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `party`
--

DROP TABLE IF EXISTS `party`;
CREATE TABLE `party` (
  `guid` smallint UNSIGNED NOT NULL,
  `server` smallint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `party_member`
--

DROP TABLE IF EXISTS `party_member`;
CREATE TABLE `party_member` (
  `server` smallint UNSIGNED NOT NULL,
  `party` smallint UNSIGNED NOT NULL,
  `member` int UNSIGNED NOT NULL,
  `position` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `serial_check`
--

DROP TABLE IF EXISTS `serial_check`;
CREATE TABLE `serial_check` (
  `server` smallint UNSIGNED NOT NULL,
  `serial` int UNSIGNED NOT NULL,
  `type` tinyint UNSIGNED NOT NULL,
  `account_id` int UNSIGNED NOT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `disk_serial` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `server_signal`
--

DROP TABLE IF EXISTS `server_signal`;
CREATE TABLE `server_signal` (
  `id` int UNSIGNED NOT NULL,
  `server` smallint UNSIGNED NOT NULL,
  `signal` smallint UNSIGNED NOT NULL,
  `data_1` int NOT NULL,
  `data_2` int NOT NULL,
  `data_3` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `tormented_square_survival_hall_of_fame`
--

DROP TABLE IF EXISTS `tormented_square_survival_hall_of_fame`;
CREATE TABLE `tormented_square_survival_hall_of_fame` (
  `char_id_1` int UNSIGNED NOT NULL,
  `char_name_1` varchar(255) DEFAULT NULL,
  `char_id_2` int UNSIGNED NOT NULL,
  `char_name_2` varchar(255) DEFAULT NULL,
  `score` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `tormented_square_survival_ranking`
--

DROP TABLE IF EXISTS `tormented_square_survival_ranking`;
CREATE TABLE `tormented_square_survival_ranking` (
  `type` tinyint UNSIGNED NOT NULL,
  `ranking` int NOT NULL,
  `char_id_1` int UNSIGNED NOT NULL,
  `char_name_1` varchar(255) DEFAULT NULL,
  `char_id_2` int UNSIGNED NOT NULL,
  `char_name_2` varchar(255) DEFAULT NULL,
  `score` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `tormented_square_survival_team`
--

DROP TABLE IF EXISTS `tormented_square_survival_team`;
CREATE TABLE `tormented_square_survival_team` (
  `char_id_1` int UNSIGNED NOT NULL,
  `char_id_2` int UNSIGNED NOT NULL,
  `score` int NOT NULL,
  `type` tinyint UNSIGNED NOT NULL,
  `enter_count` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `account_buff`
--
ALTER TABLE `account_buff`
  ADD PRIMARY KEY (`account_id`,`buff`);

--
-- Indexuri pentru tabele `account_data`
--
ALTER TABLE `account_data`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexuri pentru tabele `account_warehouse`
--
ALTER TABLE `account_warehouse`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexuri pentru tabele `arka_war_data`
--
ALTER TABLE `arka_war_data`
  ADD PRIMARY KEY (`id`,`guild`);

--
-- Indexuri pentru tabele `castle_siege_data`
--
ALTER TABLE `castle_siege_data`
  ADD PRIMARY KEY (`owner`);

--
-- Indexuri pentru tabele `castle_siege_guild`
--
ALTER TABLE `castle_siege_guild`
  ADD PRIMARY KEY (`guild`,`side`);

--
-- Indexuri pentru tabele `castle_siege_npc`
--
ALTER TABLE `castle_siege_npc`
  ADD PRIMARY KEY (`npc`);

--
-- Indexuri pentru tabele `castle_siege_registered_guild`
--
ALTER TABLE `castle_siege_registered_guild`
  ADD PRIMARY KEY (`guild`);

--
-- Indexuri pentru tabele `chaos_castle_survival_hall_of_fame`
--
ALTER TABLE `chaos_castle_survival_hall_of_fame`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexuri pentru tabele `chaos_castle_survival_ranking`
--
ALTER TABLE `chaos_castle_survival_ranking`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexuri pentru tabele `character_buff`
--
ALTER TABLE `character_buff`
  ADD PRIMARY KEY (`char_id`,`buff`);

--
-- Indexuri pentru tabele `character_chat_block`
--
ALTER TABLE `character_chat_block`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexuri pentru tabele `character_date`
--
ALTER TABLE `character_date`
  ADD PRIMARY KEY (`char_id`,`id`);

--
-- Indexuri pentru tabele `character_deleted`
--
ALTER TABLE `character_deleted`
  ADD PRIMARY KEY (`account_id`,`char_id`);

--
-- Indexuri pentru tabele `character_event_count`
--
ALTER TABLE `character_event_count`
  ADD PRIMARY KEY (`char_id`,`event_id`,`day`);

--
-- Indexuri pentru tabele `character_friend`
--
ALTER TABLE `character_friend`
  ADD PRIMARY KEY (`char_id`,`friend_name`);

--
-- Indexuri pentru tabele `character_gameoption`
--
ALTER TABLE `character_gameoption`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexuri pentru tabele `character_gens`
--
ALTER TABLE `character_gens`
  ADD PRIMARY KEY (`char_id`,`family`);

--
-- Indexuri pentru tabele `character_helper`
--
ALTER TABLE `character_helper`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexuri pentru tabele `character_hunting_record`
--
ALTER TABLE `character_hunting_record`
  ADD PRIMARY KEY (`char_id`,`world`);

--
-- Indexuri pentru tabele `character_info`
--
ALTER TABLE `character_info`
  ADD PRIMARY KEY (`guid`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexuri pentru tabele `character_jewel_bingo`
--
ALTER TABLE `character_jewel_bingo`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexuri pentru tabele `character_jewel_bingo_grid`
--
ALTER TABLE `character_jewel_bingo_grid`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexuri pentru tabele `character_kick`
--
ALTER TABLE `character_kick`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexuri pentru tabele `character_labyrinth`
--
ALTER TABLE `character_labyrinth`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexuri pentru tabele `character_labyrinth_level`
--
ALTER TABLE `character_labyrinth_level`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexuri pentru tabele `character_labyrinth_zone`
--
ALTER TABLE `character_labyrinth_zone`
  ADD PRIMARY KEY (`char_id`,`idx`,`subidx`);

--
-- Indexuri pentru tabele `character_mail`
--
ALTER TABLE `character_mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `character_majestic_stats`
--
ALTER TABLE `character_majestic_stats`
  ADD PRIMARY KEY (`char_id`,`id`);

--
-- Indexuri pentru tabele `character_majestic_tree`
--
ALTER TABLE `character_majestic_tree`
  ADD PRIMARY KEY (`char_id`,`id`);

--
-- Indexuri pentru tabele `character_mini_bomb`
--
ALTER TABLE `character_mini_bomb`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexuri pentru tabele `character_mini_bomb_grid`
--
ALTER TABLE `character_mini_bomb_grid`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexuri pentru tabele `character_monster_soul`
--
ALTER TABLE `character_monster_soul`
  ADD PRIMARY KEY (`char_id`,`id`);

--
-- Indexuri pentru tabele `character_mu_roomy`
--
ALTER TABLE `character_mu_roomy`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexuri pentru tabele `character_numeric_baseball`
--
ALTER TABLE `character_numeric_baseball`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexuri pentru tabele `character_quest_evo`
--
ALTER TABLE `character_quest_evo`
  ADD PRIMARY KEY (`char_id`,`id`);

--
-- Indexuri pentru tabele `character_quest_guided`
--
ALTER TABLE `character_quest_guided`
  ADD PRIMARY KEY (`char_id`,`quest`);

--
-- Indexuri pentru tabele `character_quest_mu`
--
ALTER TABLE `character_quest_mu`
  ADD PRIMARY KEY (`char_id`,`quest_id`);

--
-- Indexuri pentru tabele `character_restriction`
--
ALTER TABLE `character_restriction`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexuri pentru tabele `character_score`
--
ALTER TABLE `character_score`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexuri pentru tabele `character_skill`
--
ALTER TABLE `character_skill`
  ADD PRIMARY KEY (`char_id`,`skill`);

--
-- Indexuri pentru tabele `character_statistics`
--
ALTER TABLE `character_statistics`
  ADD PRIMARY KEY (`char_id`,`statistic_id`);

--
-- Indexuri pentru tabele `character_warp_favorite_list`
--
ALTER TABLE `character_warp_favorite_list`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexuri pentru tabele `crywolf_data`
--
ALTER TABLE `crywolf_data`
  ADD PRIMARY KEY (`state`);

--
-- Indexuri pentru tabele `event_castle_siege_ranking`
--
ALTER TABLE `event_castle_siege_ranking`
  ADD PRIMARY KEY (`guild_id`);

--
-- Indexuri pentru tabele `event_dungeon_instance`
--
ALTER TABLE `event_dungeon_instance`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexuri pentru tabele `event_jewel_bingo_ranking`
--
ALTER TABLE `event_jewel_bingo_ranking`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexuri pentru tabele `event_labyrinth_league`
--
ALTER TABLE `event_labyrinth_league`
  ADD PRIMARY KEY (`char_id`,`category`);

--
-- Indexuri pentru tabele `event_labyrinth_schedule`
--
ALTER TABLE `event_labyrinth_schedule`
  ADD PRIMARY KEY (`server`);

--
-- Indexuri pentru tabele `event_mini_bomb_ranking`
--
ALTER TABLE `event_mini_bomb_ranking`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexuri pentru tabele `event_mu_roomy_ranking`
--
ALTER TABLE `event_mu_roomy_ranking`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexuri pentru tabele `event_numeric_baseball_ranking`
--
ALTER TABLE `event_numeric_baseball_ranking`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexuri pentru tabele `event_race_ranking`
--
ALTER TABLE `event_race_ranking`
  ADD PRIMARY KEY (`char_id`,`race`);

--
-- Indexuri pentru tabele `event_ranking`
--
ALTER TABLE `event_ranking`
  ADD PRIMARY KEY (`event_id`,`char_id`);

--
-- Indexuri pentru tabele `event_ranking_labyrinth`
--
ALTER TABLE `event_ranking_labyrinth`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexuri pentru tabele `event_scramble_ranking`
--
ALTER TABLE `event_scramble_ranking`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexuri pentru tabele `event_stage`
--
ALTER TABLE `event_stage`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexuri pentru tabele `gen_ranking`
--
ALTER TABLE `gen_ranking`
  ADD PRIMARY KEY (`family`,`char_id`);

--
-- Indexuri pentru tabele `guild_list`
--
ALTER TABLE `guild_list`
  ADD PRIMARY KEY (`guid`);

--
-- Indexuri pentru tabele `guild_matching`
--
ALTER TABLE `guild_matching`
  ADD PRIMARY KEY (`guild_id`);

--
-- Indexuri pentru tabele `guild_members`
--
ALTER TABLE `guild_members`
  ADD PRIMARY KEY (`guild_id`,`char_id`);

--
-- Indexuri pentru tabele `guild_score`
--
ALTER TABLE `guild_score`
  ADD PRIMARY KEY (`guild_id`);

--
-- Indexuri pentru tabele `item_data`
--
ALTER TABLE `item_data`
  ADD PRIMARY KEY (`id`,`box`,`slot`) USING BTREE,
  ADD UNIQUE KEY `DupeInv` (`server`,`serial`,`serial_cash_shop`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE,
  ADD KEY `box` (`box`) USING BTREE,
  ADD KEY `slot` (`slot`) USING BTREE,
  ADD KEY `idx_id_and_box` (`id`,`box`) USING BTREE,
  ADD KEY `idx_id_and_box_and_slot` (`id`,`box`,`slot`) USING BTREE;

--
-- Indexuri pentru tabele `item_data_my`
--
ALTER TABLE `item_data_my`
  ADD PRIMARY KEY (`id`,`box`,`slot`);

--
-- Indexuri pentru tabele `item_recovery`
--
ALTER TABLE `item_recovery`
  ADD PRIMARY KEY (`char_id`,`item`);

--
-- Indexuri pentru tabele `monster_respawn`
--
ALTER TABLE `monster_respawn`
  ADD PRIMARY KEY (`server`,`guid`);

--
-- Indexuri pentru tabele `party`
--
ALTER TABLE `party`
  ADD PRIMARY KEY (`guid`);

--
-- Indexuri pentru tabele `serial_check`
--
ALTER TABLE `serial_check`
  ADD PRIMARY KEY (`serial`,`server`);

--
-- Indexuri pentru tabele `server_signal`
--
ALTER TABLE `server_signal`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `tormented_square_survival_hall_of_fame`
--
ALTER TABLE `tormented_square_survival_hall_of_fame`
  ADD PRIMARY KEY (`char_id_1`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `character_info`
--
ALTER TABLE `character_info`
  MODIFY `guid` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `server_signal`
--
ALTER TABLE `server_signal`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;
