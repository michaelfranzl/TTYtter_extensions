--
-- Table structure for table `direct_messages`
--

DROP TABLE IF EXISTS `direct_messages`;
CREATE TABLE `direct_messages` (
  `id` bigint(20) unsigned NOT NULL,
  `sender_id` bigint(20) NOT NULL,
  `text` varchar(140) NOT NULL,
  `recipient_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `sender_screen_name` varchar(20) NOT NULL,
  `recipient_screen_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_id_index` (`sender_id`),
  KEY `recipient_id_index` (`recipient_id`)
) ENGINE=INNODB COMMENT='Direct Messages';

--
-- Table structure for table `tweets`
--

DROP TABLE IF EXISTS `tweets`;
CREATE TABLE `tweets` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `screen_name` varchar(20) NOT NULL,
  `text` varchar(163) NOT NULL,
  `created_at` datetime NOT NULL,
  `source` varchar(256) NOT NULL,
  `truncated` tinyint(1) NOT NULL DEFAULT '0',
  `user_name` varchar(40) NOT NULL,
  `geo_lat` varchar(50) DEFAULT NULL,
  `geo_long` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`)
) ENGINE=INNODB COMMENT='Tweets';

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `screen_name` varchar(20) NOT NULL,
  `location` varchar(128) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `profile_image_url` text NOT NULL,
  `url` text,
  `protected` tinyint(1) NOT NULL DEFAULT '0',
  `followers_count` bigint(20) DEFAULT '0',
  `friends_count` bigint(20) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `favourites_count` bigint(20) DEFAULT '0',
  `utc_offset` int(11) NOT NULL DEFAULT '0',
  `time_zone` tinytext,
  `statuses_count` bigint(20) DEFAULT NULL,
  `following` tinyint(1) NOT NULL DEFAULT '0',
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `geo_enabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `screen_name_index` (`screen_name`),
  KEY `name_index` (`name`)
) ENGINE=INNODB COMMENT='Twitter User Information';