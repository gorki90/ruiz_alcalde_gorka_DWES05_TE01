-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-04-2024 a las 10:57:31
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ruiz_alcalde_gorka_dwes05_te01`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autors`
--

CREATE TABLE `autors` (
  `autor_id` int(11) NOT NULL,
  `username_autor` text NOT NULL,
  `email_autor` longtext NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `contrasenia` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autors`
--

INSERT INTO `autors` (`autor_id`, `username_autor`, `email_autor`, `fecha_registro`, `contrasenia`) VALUES
(1, 'Sheenshots', 'sheenshots@gmail.com', '2024-02-07 18:22:27', 'sheenshots123456'),
(2, 'Gorki90', 'gorki90@gmail.com', '2024-02-07 18:22:27', 'gorki90123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `builds`
--

CREATE TABLE `builds` (
  `id_build` int(11) NOT NULL,
  `nombre_build` varchar(120) NOT NULL,
  `descripcion_build` longtext NOT NULL,
  `skill_trees` longtext DEFAULT NULL,
  `abilities` longtext DEFAULT NULL,
  `equipment_head` text DEFAULT NULL,
  `equipment_chest` text DEFAULT NULL,
  `equipment_foot` text DEFAULT NULL,
  `equipment_weapon1` text DEFAULT NULL,
  `equipment_weapon2` text DEFAULT NULL,
  `equipment_tent` text DEFAULT NULL,
  `autor_id` int(11) NOT NULL,
  `equipment_backpack` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `builds`
--

INSERT INTO `builds` (`id_build`, `nombre_build`, `descripcion_build`, `skill_trees`, `abilities`, `equipment_head`, `equipment_chest`, `equipment_foot`, `equipment_weapon1`, `equipment_weapon2`, `equipment_tent`, `autor_id`, `equipment_backpack`) VALUES
(1, 'Storm Palatin', '\"A paladin that deals lightning damage', 'Rogue Engineer\r\nWild Hunter\r\nRune Sage', 'Dez\r\nEgoth\r\nFal\r\nShim\r\nRunic Prefix', 'White Wide Hat', 'Silver Armor', 'Gold-Lich Boots', 'Light Menders Lexicon', 'Gold-Lich Mace', 'null', 1, 'Light Menders backpack'),
(2, 'Blue Ranger', 'A very defensive build that grants you resistances and life regeneration over time', 'Rune Sage\r\nCabal Hermit\r\nWarrior Monk', 'Puncture\r\nDez\r\nEgoth\r\nFal\r\nShim\r\nRunic Prefix\r\nMaster of Motion', 'Blue Sand Helmet', 'Blue Sand Armor', 'Blue Sand Boots', 'Lantern of Souls', 'Light Menders Lexicon', 'Luxury Tent', 1, 'Brigands backpack'),
(3, 'The Bloody Vampire', 'End game build with high lifesteal susbtain', 'Cabal Hermit\r\nMercenary\r\nHex Mage', 'Conjure\r\nBlood Bullet\r\nBlood Sigil\r\nCleanse\r\nThe Technique\r\nBlood Infuse\r\nAll extra T1 skill that you can get', 'Wolf Medic Helmet', 'Wolf Medic Armor', 'Wolf Medic Boots', 'Vampiric Sword', 'Old Legion Gladiors', 'null', 1, 'Brigands backpack'),
(4, 'Ghost of Enmerkar', 'A fun build with range attacks, high defense, and strong one-to-one fight', 'Kazite Spellblade\r\nWarrior Monk\r\nPhilosopher', 'Infuse Frost\r\nElemental Discharge\r\nMaster of Motion\r\nCounterstrike\r\nBrace\r\nMana Ward\r\nFire Sigil', 'Antique Plate Helm', 'Copal Armor', 'Antique Plate Boots', 'Dreamer Halberd', 'Iron Halberd', 'null', 1, 'Zhorns Hunting backpack'),
(5, 'The Dominator', 'A face-to-face build that destroys the enemies in 360 degrees', 'Cabal Hermit\r\nWarrior Monk\r\nHex Mage', 'Moon Swipe\r\nWind Infuse\r\nMaster of Motion\r\nBlood Sigil\r\nCounterstrike\r\nFocus\r\nBrace', 'Master Kazite Cat Mask', 'Wolf Plate Armor', 'Noble Shoes', 'Tsar Halberd', 'null', 'Brigands backpack', 2, 'Luxury Tent'),
(6, 'Disk of Death', 'High damage with Chakrams', 'Warrior Monk\r\nPhilosopher\r\nPrimal Ritualist', 'Brace\r\nFocus\r\nMaster of Motion\r\nFlash Onslaught\r\nChakram Pierce\r\nChakram Dance\r\nChakram Arc\r\nWelkin Ring\r\nHaunting Beat\r\nNurturing Echo', 'Antique Plate Helm', 'Antique Plate Armor', 'Antique Plate Boots', 'Frozen Chakram', 'Tsar Chakram', 'null', 2, 'Light Menders backpack'),
(7, 'Mana Knight', 'High damage and protection, a conbination os close range damage with range damage', 'Cabal Hermit\r\n Wild Hunter\r\nWarrior Monk', 'Dez\r\nEgoth\r\nFal\r\nShim\r\nRunic Prefix\r\nCounterstrike\r\nPerfect Strike', 'White Arcane Hood', 'Runic Armor', 'Antique Plate Boots', 'Light Menders Lexicon', 'Any Shield', 'null', 1, 'Light Menders backpack'),
(8, 'Hermit of Doom', 'A paladin that deals lightning damage', 'Cabal Hermit Rogue Engineer Warrior Monk', 'Simeons Gambit Wind Sigil Conjure Sweep Kick Brace Perfect Strike Flash Onslaught', 'Master Dessert Veil', 'Silver Armor', 'Orichalcum Boots', 'Werling Spear', 'null', 'null', 2, 'Light Menders backpack'),
(9, 'Virgin Warrior', 'A light warrior', 'Rogue Engineer Cabal Hermit Rune Sage', 'Puncture Egoth Fal Shim Internalized Lexicon Backstab serpents parry Probe Wind Infuse', 'Virgin Helmet', 'Virgin Armor', 'Virgin Boots', 'Radiant Wolf Sword', 'Zhorns Glowstone Dagger', 'Luxury Tent', 1, 'Glowstone backpack'),
(10, 'Mad Doctor', 'An easy to use build with high damage', 'Rogue Engineer Hex Mage Rune Sage', 'Dez Egoth Fal Shim Runic Prefix Jinx', 'Jade-Lich Mask', 'Jade-Lich Armor', 'Jade-Lich Boots', 'Lexicon', 'Gold-Lich Mace', 'null', 1, 'Zhorns Hunting backpack'),
(13, 'cuatro', 'axadsad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL),
(14, 'cuatro', 'gsdsff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL),
(15, 'cuatro', 'gsdsff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL),
(16, 'cuatro', 'gsdsff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL),
(17, 'Nombre de la Build', 'Descripción de la Build', 'uno, dos, tres', 'uno, dos, tres', 'uno', 'uno', 'uno', 'uno', 'uno', 'uno', 2, 'uno'),
(18, 'Nombre de la Build', 'Descripción de la Build', 'uno, dos, tres', 'uno, dos, tres', 'uno', 'uno', 'uno', 'uno', 'uno', 'uno', 2, 'uno'),
(21, 'Prueba', 'Descripción de la Build', 'uno, dos, tres', 'uno, dos, tres', 'uno', 'uno', 'uno', 'uno', 'uno', 'uno', 2, 'uno'),
(22, 'Prueba2222', 'Descripción de la Build', 'uno, dos, tres', 'uno, dos, tres', 'uno', 'uno', 'uno', 'uno', 'uno', 'uno', 2, 'uno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_04_10_132610_create_builds_table', 1),
(5, '2024_04_10_132620_create_autors_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('jJCjZOJedNujIDCHcIJbGCgQ6McUpe3aFwws8Xw1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHBsd1B0cXM1bXdYZ1haTkNnWXVoTUFBeVpldlhPSU9URklSRnBvaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wdWJsaWMvYnVpbGQvY3JlYXRlYnVpbGQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712910783),
('oCQVqJlHHCDUMHQllGzHgG5RFsYm6BbzKOsW2iMa', NULL, '127.0.0.1', 'Thunder Client (https://www.thunderclient.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGhOU1MzOFBpVlpEUDVNNFo4N0hEdFhSU1lLU1FLU1g0Sm5FVDNZdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wdWJsaWMvYnVpbGQvY3JlYXRlYnVpbGQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712909612),
('rMh93trJHM4CHgVpFhpCtcMPMO3y51bsPnN1vlle', NULL, '127.0.0.1', 'PostmanRuntime/7.37.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRnRWc1VSWFVGcjNWaFZlTmhmTjV3aXl4Tk1MUGY1V1pLanRzMFFLYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712907541);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autors`
--
ALTER TABLE `autors`
  ADD PRIMARY KEY (`autor_id`);

--
-- Indices de la tabla `builds`
--
ALTER TABLE `builds`
  ADD PRIMARY KEY (`id_build`);

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autors`
--
ALTER TABLE `autors`
  MODIFY `autor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `builds`
--
ALTER TABLE `builds`
  MODIFY `id_build` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
