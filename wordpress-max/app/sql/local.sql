-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2025-09-03 09:35:03','2025-09-03 09:35:03','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com/\">Gravatar</a>.',0,'post-trashed','','comment',0,0);
INSERT INTO `wp_comments` VALUES (2,1,'Ahmad','dev-email@wpengine.local','http://wordpress-max.local','127.0.0.1','2025-09-03 09:51:12','2025-09-03 09:51:12','Hello world',0,'post-trashed','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36','comment',0,1);
INSERT INTO `wp_comments` VALUES (3,1,'Ahmad','dev-email@wpengine.local','http://wordpress-max.local','127.0.0.1','2025-09-03 09:51:29','2025-09-03 09:51:29','second hello world',0,'post-trashed','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36','comment',0,1);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=378 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'cron','a:11:{i:1759316703;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1759318503;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1759318505;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1759354546;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1759358103;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1759397704;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1759397705;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1759397746;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1759397749;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1759917110;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','on');
INSERT INTO `wp_options` VALUES (2,'siteurl','http://wordpress-max.local','on');
INSERT INTO `wp_options` VALUES (3,'home','http://wordpress-max.local','on');
INSERT INTO `wp_options` VALUES (4,'blogname','','on');
INSERT INTO `wp_options` VALUES (5,'blogdescription','','on');
INSERT INTO `wp_options` VALUES (6,'users_can_register','0','on');
INSERT INTO `wp_options` VALUES (7,'admin_email','dev-email@wpengine.local','on');
INSERT INTO `wp_options` VALUES (8,'start_of_week','1','on');
INSERT INTO `wp_options` VALUES (9,'use_balanceTags','0','on');
INSERT INTO `wp_options` VALUES (10,'use_smilies','1','on');
INSERT INTO `wp_options` VALUES (11,'require_name_email','1','on');
INSERT INTO `wp_options` VALUES (12,'comments_notify','1','on');
INSERT INTO `wp_options` VALUES (13,'posts_per_rss','10','on');
INSERT INTO `wp_options` VALUES (14,'rss_use_excerpt','0','on');
INSERT INTO `wp_options` VALUES (15,'mailserver_url','mail.example.com','on');
INSERT INTO `wp_options` VALUES (16,'mailserver_login','login@example.com','on');
INSERT INTO `wp_options` VALUES (17,'mailserver_pass','','on');
INSERT INTO `wp_options` VALUES (18,'mailserver_port','110','on');
INSERT INTO `wp_options` VALUES (19,'default_category','1','on');
INSERT INTO `wp_options` VALUES (20,'default_comment_status','open','on');
INSERT INTO `wp_options` VALUES (21,'default_ping_status','open','on');
INSERT INTO `wp_options` VALUES (22,'default_pingback_flag','1','on');
INSERT INTO `wp_options` VALUES (23,'posts_per_page','10','on');
INSERT INTO `wp_options` VALUES (24,'date_format','F j, Y','on');
INSERT INTO `wp_options` VALUES (25,'time_format','g:i a','on');
INSERT INTO `wp_options` VALUES (26,'links_updated_date_format','F j, Y g:i a','on');
INSERT INTO `wp_options` VALUES (27,'comment_moderation','0','on');
INSERT INTO `wp_options` VALUES (28,'moderation_notify','1','on');
INSERT INTO `wp_options` VALUES (29,'permalink_structure','/%postname%/','on');
INSERT INTO `wp_options` VALUES (30,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','on');
INSERT INTO `wp_options` VALUES (31,'hack_file','0','on');
INSERT INTO `wp_options` VALUES (32,'blog_charset','UTF-8','on');
INSERT INTO `wp_options` VALUES (33,'moderation_keys','','off');
INSERT INTO `wp_options` VALUES (34,'active_plugins','a:2:{i:0;s:21:\"safe-svg/safe-svg.php\";i:1;s:27:\"svg-support/svg-support.php\";}','on');
INSERT INTO `wp_options` VALUES (35,'category_base','','on');
INSERT INTO `wp_options` VALUES (36,'ping_sites','https://rpc.pingomatic.com/','on');
INSERT INTO `wp_options` VALUES (37,'comment_max_links','2','on');
INSERT INTO `wp_options` VALUES (38,'gmt_offset','0','on');
INSERT INTO `wp_options` VALUES (39,'default_email_category','1','on');
INSERT INTO `wp_options` VALUES (40,'recently_edited','','off');
INSERT INTO `wp_options` VALUES (41,'template','ahmadtheme-wp-loop','on');
INSERT INTO `wp_options` VALUES (42,'stylesheet','ahmadtheme-wp-loop','on');
INSERT INTO `wp_options` VALUES (43,'comment_registration','0','on');
INSERT INTO `wp_options` VALUES (44,'html_type','text/html','on');
INSERT INTO `wp_options` VALUES (45,'use_trackback','0','on');
INSERT INTO `wp_options` VALUES (46,'default_role','subscriber','on');
INSERT INTO `wp_options` VALUES (47,'db_version','60421','on');
INSERT INTO `wp_options` VALUES (48,'uploads_use_yearmonth_folders','1','on');
INSERT INTO `wp_options` VALUES (49,'upload_path','','on');
INSERT INTO `wp_options` VALUES (50,'blog_public','1','on');
INSERT INTO `wp_options` VALUES (51,'default_link_category','2','on');
INSERT INTO `wp_options` VALUES (52,'show_on_front','posts','on');
INSERT INTO `wp_options` VALUES (53,'tag_base','','on');
INSERT INTO `wp_options` VALUES (54,'show_avatars','1','on');
INSERT INTO `wp_options` VALUES (55,'avatar_rating','G','on');
INSERT INTO `wp_options` VALUES (56,'upload_url_path','','on');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_w','150','on');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_h','150','on');
INSERT INTO `wp_options` VALUES (59,'thumbnail_crop','1','on');
INSERT INTO `wp_options` VALUES (60,'medium_size_w','300','on');
INSERT INTO `wp_options` VALUES (61,'medium_size_h','300','on');
INSERT INTO `wp_options` VALUES (62,'avatar_default','mystery','on');
INSERT INTO `wp_options` VALUES (63,'large_size_w','1024','on');
INSERT INTO `wp_options` VALUES (64,'large_size_h','1024','on');
INSERT INTO `wp_options` VALUES (65,'image_default_link_type','none','on');
INSERT INTO `wp_options` VALUES (66,'image_default_size','','on');
INSERT INTO `wp_options` VALUES (67,'image_default_align','','on');
INSERT INTO `wp_options` VALUES (68,'close_comments_for_old_posts','0','on');
INSERT INTO `wp_options` VALUES (69,'close_comments_days_old','14','on');
INSERT INTO `wp_options` VALUES (70,'thread_comments','1','on');
INSERT INTO `wp_options` VALUES (71,'thread_comments_depth','5','on');
INSERT INTO `wp_options` VALUES (72,'page_comments','0','on');
INSERT INTO `wp_options` VALUES (73,'comments_per_page','50','on');
INSERT INTO `wp_options` VALUES (74,'default_comments_page','newest','on');
INSERT INTO `wp_options` VALUES (75,'comment_order','asc','on');
INSERT INTO `wp_options` VALUES (76,'sticky_posts','a:0:{}','on');
INSERT INTO `wp_options` VALUES (77,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (78,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (79,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (80,'uninstall_plugins','a:0:{}','off');
INSERT INTO `wp_options` VALUES (81,'timezone_string','','on');
INSERT INTO `wp_options` VALUES (82,'page_for_posts','0','on');
INSERT INTO `wp_options` VALUES (83,'page_on_front','0','on');
INSERT INTO `wp_options` VALUES (84,'default_post_format','0','on');
INSERT INTO `wp_options` VALUES (85,'link_manager_enabled','0','on');
INSERT INTO `wp_options` VALUES (86,'finished_splitting_shared_terms','1','on');
INSERT INTO `wp_options` VALUES (87,'site_icon','78','on');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_w','768','on');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_h','0','on');
INSERT INTO `wp_options` VALUES (90,'wp_page_for_privacy_policy','3','on');
INSERT INTO `wp_options` VALUES (91,'show_comments_cookies_opt_in','1','on');
INSERT INTO `wp_options` VALUES (92,'admin_email_lifespan','1772444103','on');
INSERT INTO `wp_options` VALUES (93,'disallowed_keys','','off');
INSERT INTO `wp_options` VALUES (94,'comment_previously_approved','1','on');
INSERT INTO `wp_options` VALUES (95,'auto_plugin_theme_update_emails','a:0:{}','off');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_dev','enabled','on');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_minor','enabled','on');
INSERT INTO `wp_options` VALUES (98,'auto_update_core_major','enabled','on');
INSERT INTO `wp_options` VALUES (99,'wp_force_deactivated_plugins','a:0:{}','on');
INSERT INTO `wp_options` VALUES (100,'wp_attachment_pages_enabled','0','on');
INSERT INTO `wp_options` VALUES (101,'initial_db_version','60421','on');
INSERT INTO `wp_options` VALUES (102,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','on');
INSERT INTO `wp_options` VALUES (103,'fresh_site','0','off');
INSERT INTO `wp_options` VALUES (104,'user_count','1','off');
INSERT INTO `wp_options` VALUES (105,'widget_block','a:19:{i:2;a:1:{s:7:\"content\";s:60:\"<!-- wp:search {\"label\":\"\",\"placeholder\":\"Lorem ipsum\"} /-->\";}i:3;a:1:{s:7:\"content\";s:158:\"<!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Recent Posts</h2>\n<!-- /wp:heading --></div>\n<!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:161:\"<!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Recent Comments</h2>\n<!-- /wp:heading --></div>\n<!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:177:\"<!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Archives</h2>\n<!-- /wp:heading -->\n\n<!-- wp:archives /--></div>\n<!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:181:\"<!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Categories</h2>\n<!-- /wp:heading -->\n\n<!-- wp:categories /--></div>\n<!-- /wp:group -->\";}i:7;a:1:{s:7:\"content\";s:95:\"<!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /-->\";}i:11;a:1:{s:7:\"content\";s:25:\"<!-- wp:latest-posts /-->\";}i:18;a:1:{s:7:\"content\";s:87:\"<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Recent Posts</h2>\n<!-- /wp:heading -->\";}i:19;a:1:{s:7:\"content\";s:25:\"<!-- wp:latest-posts /-->\";}i:20;a:1:{s:7:\"content\";s:57:\"<!-- wp:paragraph -->\n<p>Hello</p>\n<!-- /wp:paragraph -->\";}i:21;a:1:{s:7:\"content\";s:52:\"<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\";}i:22;a:1:{s:7:\"content\";s:1234:\"<!-- wp:latest-posts {\"postsToShow\":3,\"displayPostContent\":true,\"align\":\"left\",\"className\":\".widget_recent_entries ul, .wp-block-latest-posts {   list-style: none;   margin: 0;   padding: 0; }  .widget_recent_entries li, .wp-block-latest-posts__list li {   margin-bottom: 2.5em;   border: none;   padding: 0; }  .widget_recent_entries li a, .wp-block-latest-posts__list a {   font-size: 1.1em;   font-weight: 700;   color: #222;   text-decoration: none;   letter-spacing: 0.05em;   text-transform: uppercase;   display: block;   margin-bottom: 0.2em; }  .widget_recent_entries .post-date, .wp-block-latest-posts__post-date {   display: block;   font-size: 0.9em;   color: #888;   margin-bottom: 0.5em; }  .wp-block-latest-posts__featured-image img {   width: 100%;   max-width: 180px;   height: auto;   display: block;   margin-bottom: 0.7em;   border-radius: 2px; }  .wp-block-latest-posts__list {   margin: 0;   padding: 0; }  .wp-block-latest-posts__list li {   border: none;   padding: 0 0 2em 0;   margin: 0; }  .wp-block-latest-posts__post-excerpt {   color: #666;   font-size: 1em;   margin-bottom: 0.5em; }  .wp-block-latest-posts__author {   font-size: 0.9em;   color: #888;   margin-bottom: 0.5em;   display: block; }\"} /-->\";}i:25;a:1:{s:7:\"content\";s:276:\"<!-- wp:widget-group -->\n<h2 class=\"widget-title\"></h2><div class=\"wp-widget-group__inner-blocks\"><!-- wp:details -->\n<details class=\"wp-block-details\"><summary></summary><!-- wp:latest-posts {\"align\":\"left\"} /--></details>\n<!-- /wp:details --></div>\n<!-- /wp:widget-group -->\";}i:24;a:1:{s:7:\"content\";s:146:\"<!-- wp:details -->\n<details class=\"wp-block-details\"><summary></summary><!-- wp:latest-posts {\"align\":\"left\"} /--></details>\n<!-- /wp:details -->\";}i:30;a:1:{s:7:\"content\";s:1765:\"<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:details -->\n<details class=\"wp-block-details\"><summary></summary><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:widget-group -->\n<h2 class=\"widget-title\"></h2><div class=\"wp-widget-group__inner-blocks\"><!-- wp:latest-posts {\"postsToShow\":3,\"displayPostContent\":true,\"align\":\"left\",\"className\":\".widget_recent_entries ul, .wp-block-latest-posts {   list-style: none;   margin: 0;   padding: 0; }  .widget_recent_entries li, .wp-block-latest-posts__list li {   margin-bottom: 2.5em;   border: none;   padding: 0; }  .widget_recent_entries li a, .wp-block-latest-posts__list a {   font-size: 1.1em;   font-weight: 700;   color: #222;   text-decoration: none;   letter-spacing: 0.05em;   text-transform: uppercase;   display: block;   margin-bottom: 0.2em; }  .widget_recent_entries .post-date, .wp-block-latest-posts__post-date {   display: block;   font-size: 0.9em;   color: #888;   margin-bottom: 0.5em; }  .wp-block-latest-posts__featured-image img {   width: 100%;   max-width: 180px;   height: auto;   display: block;   margin-bottom: 0.7em;   border-radius: 2px; }  .wp-block-latest-posts__list {   margin: 0;   padding: 0; }  .wp-block-latest-posts__list li {   border: none;   padding: 0 0 2em 0;   margin: 0; }  .wp-block-latest-posts__post-excerpt {   color: #666;   font-size: 1em;   margin-bottom: 0.5em; }  .wp-block-latest-posts__author {   font-size: 0.9em;   color: #888;   margin-bottom: 0.5em;   display: block; }\"} /--></div>\n<!-- /wp:widget-group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></details>\n<!-- /wp:details --></div>\n<!-- /wp:group -->\";}i:29;a:1:{s:7:\"content\";s:1660:\"<!-- wp:details -->\n<details class=\"wp-block-details\"><summary></summary><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:widget-group -->\n<h2 class=\"widget-title\"></h2><div class=\"wp-widget-group__inner-blocks\"><!-- wp:latest-posts {\"postsToShow\":3,\"displayPostContent\":true,\"align\":\"left\",\"className\":\".widget_recent_entries ul, .wp-block-latest-posts {   list-style: none;   margin: 0;   padding: 0; }  .widget_recent_entries li, .wp-block-latest-posts__list li {   margin-bottom: 2.5em;   border: none;   padding: 0; }  .widget_recent_entries li a, .wp-block-latest-posts__list a {   font-size: 1.1em;   font-weight: 700;   color: #222;   text-decoration: none;   letter-spacing: 0.05em;   text-transform: uppercase;   display: block;   margin-bottom: 0.2em; }  .widget_recent_entries .post-date, .wp-block-latest-posts__post-date {   display: block;   font-size: 0.9em;   color: #888;   margin-bottom: 0.5em; }  .wp-block-latest-posts__featured-image img {   width: 100%;   max-width: 180px;   height: auto;   display: block;   margin-bottom: 0.7em;   border-radius: 2px; }  .wp-block-latest-posts__list {   margin: 0;   padding: 0; }  .wp-block-latest-posts__list li {   border: none;   padding: 0 0 2em 0;   margin: 0; }  .wp-block-latest-posts__post-excerpt {   color: #666;   font-size: 1em;   margin-bottom: 0.5em; }  .wp-block-latest-posts__author {   font-size: 0.9em;   color: #888;   margin-bottom: 0.5em;   display: block; }\"} /--></div>\n<!-- /wp:widget-group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></details>\n<!-- /wp:details -->\";}i:28;a:1:{s:7:\"content\";s:192:\"<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:31;a:1:{s:7:\"content\";s:25:\"<!-- wp:latest-posts /-->\";}s:12:\"_multiwidget\";i:1;}','on');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:17:{i:0;s:8:\"block-22\";i:1;s:8:\"block-30\";i:2;s:8:\"block-29\";i:3;s:8:\"block-25\";i:4;s:8:\"block-24\";i:5;s:7:\"block-2\";i:6;s:7:\"block-3\";i:7;s:8:\"block-11\";i:8;s:7:\"block-4\";i:9;s:7:\"block-7\";i:10;s:7:\"block-5\";i:11;s:7:\"block-6\";i:12;s:8:\"block-18\";i:13;s:8:\"block-19\";i:14;s:8:\"block-20\";i:15;s:8:\"block-21\";i:16;s:8:\"block-31\";}s:10:\"mini-posts\";a:0:{}s:10:\"posts-list\";a:1:{i:0;s:8:\"block-28\";}s:13:\"array_version\";i:3;}','on');
INSERT INTO `wp_options` VALUES (107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.8.2\";s:5:\"files\";a:536:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:26:\"post-content/style-rtl.css\";i:309;s:30:\"post-content/style-rtl.min.css\";i:310;s:22:\"post-content/style.css\";i:311;s:26:\"post-content/style.min.css\";i:312;s:23:\"post-date/style-rtl.css\";i:313;s:27:\"post-date/style-rtl.min.css\";i:314;s:19:\"post-date/style.css\";i:315;s:23:\"post-date/style.min.css\";i:316;s:27:\"post-excerpt/editor-rtl.css\";i:317;s:31:\"post-excerpt/editor-rtl.min.css\";i:318;s:23:\"post-excerpt/editor.css\";i:319;s:27:\"post-excerpt/editor.min.css\";i:320;s:26:\"post-excerpt/style-rtl.css\";i:321;s:30:\"post-excerpt/style-rtl.min.css\";i:322;s:22:\"post-excerpt/style.css\";i:323;s:26:\"post-excerpt/style.min.css\";i:324;s:34:\"post-featured-image/editor-rtl.css\";i:325;s:38:\"post-featured-image/editor-rtl.min.css\";i:326;s:30:\"post-featured-image/editor.css\";i:327;s:34:\"post-featured-image/editor.min.css\";i:328;s:33:\"post-featured-image/style-rtl.css\";i:329;s:37:\"post-featured-image/style-rtl.min.css\";i:330;s:29:\"post-featured-image/style.css\";i:331;s:33:\"post-featured-image/style.min.css\";i:332;s:34:\"post-navigation-link/style-rtl.css\";i:333;s:38:\"post-navigation-link/style-rtl.min.css\";i:334;s:30:\"post-navigation-link/style.css\";i:335;s:34:\"post-navigation-link/style.min.css\";i:336;s:27:\"post-template/style-rtl.css\";i:337;s:31:\"post-template/style-rtl.min.css\";i:338;s:23:\"post-template/style.css\";i:339;s:27:\"post-template/style.min.css\";i:340;s:24:\"post-terms/style-rtl.css\";i:341;s:28:\"post-terms/style-rtl.min.css\";i:342;s:20:\"post-terms/style.css\";i:343;s:24:\"post-terms/style.min.css\";i:344;s:24:\"post-title/style-rtl.css\";i:345;s:28:\"post-title/style-rtl.min.css\";i:346;s:20:\"post-title/style.css\";i:347;s:24:\"post-title/style.min.css\";i:348;s:26:\"preformatted/style-rtl.css\";i:349;s:30:\"preformatted/style-rtl.min.css\";i:350;s:22:\"preformatted/style.css\";i:351;s:26:\"preformatted/style.min.css\";i:352;s:24:\"pullquote/editor-rtl.css\";i:353;s:28:\"pullquote/editor-rtl.min.css\";i:354;s:20:\"pullquote/editor.css\";i:355;s:24:\"pullquote/editor.min.css\";i:356;s:23:\"pullquote/style-rtl.css\";i:357;s:27:\"pullquote/style-rtl.min.css\";i:358;s:19:\"pullquote/style.css\";i:359;s:23:\"pullquote/style.min.css\";i:360;s:23:\"pullquote/theme-rtl.css\";i:361;s:27:\"pullquote/theme-rtl.min.css\";i:362;s:19:\"pullquote/theme.css\";i:363;s:23:\"pullquote/theme.min.css\";i:364;s:39:\"query-pagination-numbers/editor-rtl.css\";i:365;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:366;s:35:\"query-pagination-numbers/editor.css\";i:367;s:39:\"query-pagination-numbers/editor.min.css\";i:368;s:31:\"query-pagination/editor-rtl.css\";i:369;s:35:\"query-pagination/editor-rtl.min.css\";i:370;s:27:\"query-pagination/editor.css\";i:371;s:31:\"query-pagination/editor.min.css\";i:372;s:30:\"query-pagination/style-rtl.css\";i:373;s:34:\"query-pagination/style-rtl.min.css\";i:374;s:26:\"query-pagination/style.css\";i:375;s:30:\"query-pagination/style.min.css\";i:376;s:25:\"query-title/style-rtl.css\";i:377;s:29:\"query-title/style-rtl.min.css\";i:378;s:21:\"query-title/style.css\";i:379;s:25:\"query-title/style.min.css\";i:380;s:25:\"query-total/style-rtl.css\";i:381;s:29:\"query-total/style-rtl.min.css\";i:382;s:21:\"query-total/style.css\";i:383;s:25:\"query-total/style.min.css\";i:384;s:20:\"query/editor-rtl.css\";i:385;s:24:\"query/editor-rtl.min.css\";i:386;s:16:\"query/editor.css\";i:387;s:20:\"query/editor.min.css\";i:388;s:19:\"quote/style-rtl.css\";i:389;s:23:\"quote/style-rtl.min.css\";i:390;s:15:\"quote/style.css\";i:391;s:19:\"quote/style.min.css\";i:392;s:19:\"quote/theme-rtl.css\";i:393;s:23:\"quote/theme-rtl.min.css\";i:394;s:15:\"quote/theme.css\";i:395;s:19:\"quote/theme.min.css\";i:396;s:23:\"read-more/style-rtl.css\";i:397;s:27:\"read-more/style-rtl.min.css\";i:398;s:19:\"read-more/style.css\";i:399;s:23:\"read-more/style.min.css\";i:400;s:18:\"rss/editor-rtl.css\";i:401;s:22:\"rss/editor-rtl.min.css\";i:402;s:14:\"rss/editor.css\";i:403;s:18:\"rss/editor.min.css\";i:404;s:17:\"rss/style-rtl.css\";i:405;s:21:\"rss/style-rtl.min.css\";i:406;s:13:\"rss/style.css\";i:407;s:17:\"rss/style.min.css\";i:408;s:21:\"search/editor-rtl.css\";i:409;s:25:\"search/editor-rtl.min.css\";i:410;s:17:\"search/editor.css\";i:411;s:21:\"search/editor.min.css\";i:412;s:20:\"search/style-rtl.css\";i:413;s:24:\"search/style-rtl.min.css\";i:414;s:16:\"search/style.css\";i:415;s:20:\"search/style.min.css\";i:416;s:20:\"search/theme-rtl.css\";i:417;s:24:\"search/theme-rtl.min.css\";i:418;s:16:\"search/theme.css\";i:419;s:20:\"search/theme.min.css\";i:420;s:24:\"separator/editor-rtl.css\";i:421;s:28:\"separator/editor-rtl.min.css\";i:422;s:20:\"separator/editor.css\";i:423;s:24:\"separator/editor.min.css\";i:424;s:23:\"separator/style-rtl.css\";i:425;s:27:\"separator/style-rtl.min.css\";i:426;s:19:\"separator/style.css\";i:427;s:23:\"separator/style.min.css\";i:428;s:23:\"separator/theme-rtl.css\";i:429;s:27:\"separator/theme-rtl.min.css\";i:430;s:19:\"separator/theme.css\";i:431;s:23:\"separator/theme.min.css\";i:432;s:24:\"shortcode/editor-rtl.css\";i:433;s:28:\"shortcode/editor-rtl.min.css\";i:434;s:20:\"shortcode/editor.css\";i:435;s:24:\"shortcode/editor.min.css\";i:436;s:24:\"site-logo/editor-rtl.css\";i:437;s:28:\"site-logo/editor-rtl.min.css\";i:438;s:20:\"site-logo/editor.css\";i:439;s:24:\"site-logo/editor.min.css\";i:440;s:23:\"site-logo/style-rtl.css\";i:441;s:27:\"site-logo/style-rtl.min.css\";i:442;s:19:\"site-logo/style.css\";i:443;s:23:\"site-logo/style.min.css\";i:444;s:27:\"site-tagline/editor-rtl.css\";i:445;s:31:\"site-tagline/editor-rtl.min.css\";i:446;s:23:\"site-tagline/editor.css\";i:447;s:27:\"site-tagline/editor.min.css\";i:448;s:26:\"site-tagline/style-rtl.css\";i:449;s:30:\"site-tagline/style-rtl.min.css\";i:450;s:22:\"site-tagline/style.css\";i:451;s:26:\"site-tagline/style.min.css\";i:452;s:25:\"site-title/editor-rtl.css\";i:453;s:29:\"site-title/editor-rtl.min.css\";i:454;s:21:\"site-title/editor.css\";i:455;s:25:\"site-title/editor.min.css\";i:456;s:24:\"site-title/style-rtl.css\";i:457;s:28:\"site-title/style-rtl.min.css\";i:458;s:20:\"site-title/style.css\";i:459;s:24:\"site-title/style.min.css\";i:460;s:26:\"social-link/editor-rtl.css\";i:461;s:30:\"social-link/editor-rtl.min.css\";i:462;s:22:\"social-link/editor.css\";i:463;s:26:\"social-link/editor.min.css\";i:464;s:27:\"social-links/editor-rtl.css\";i:465;s:31:\"social-links/editor-rtl.min.css\";i:466;s:23:\"social-links/editor.css\";i:467;s:27:\"social-links/editor.min.css\";i:468;s:26:\"social-links/style-rtl.css\";i:469;s:30:\"social-links/style-rtl.min.css\";i:470;s:22:\"social-links/style.css\";i:471;s:26:\"social-links/style.min.css\";i:472;s:21:\"spacer/editor-rtl.css\";i:473;s:25:\"spacer/editor-rtl.min.css\";i:474;s:17:\"spacer/editor.css\";i:475;s:21:\"spacer/editor.min.css\";i:476;s:20:\"spacer/style-rtl.css\";i:477;s:24:\"spacer/style-rtl.min.css\";i:478;s:16:\"spacer/style.css\";i:479;s:20:\"spacer/style.min.css\";i:480;s:20:\"table/editor-rtl.css\";i:481;s:24:\"table/editor-rtl.min.css\";i:482;s:16:\"table/editor.css\";i:483;s:20:\"table/editor.min.css\";i:484;s:19:\"table/style-rtl.css\";i:485;s:23:\"table/style-rtl.min.css\";i:486;s:15:\"table/style.css\";i:487;s:19:\"table/style.min.css\";i:488;s:19:\"table/theme-rtl.css\";i:489;s:23:\"table/theme-rtl.min.css\";i:490;s:15:\"table/theme.css\";i:491;s:19:\"table/theme.min.css\";i:492;s:24:\"tag-cloud/editor-rtl.css\";i:493;s:28:\"tag-cloud/editor-rtl.min.css\";i:494;s:20:\"tag-cloud/editor.css\";i:495;s:24:\"tag-cloud/editor.min.css\";i:496;s:23:\"tag-cloud/style-rtl.css\";i:497;s:27:\"tag-cloud/style-rtl.min.css\";i:498;s:19:\"tag-cloud/style.css\";i:499;s:23:\"tag-cloud/style.min.css\";i:500;s:28:\"template-part/editor-rtl.css\";i:501;s:32:\"template-part/editor-rtl.min.css\";i:502;s:24:\"template-part/editor.css\";i:503;s:28:\"template-part/editor.min.css\";i:504;s:27:\"template-part/theme-rtl.css\";i:505;s:31:\"template-part/theme-rtl.min.css\";i:506;s:23:\"template-part/theme.css\";i:507;s:27:\"template-part/theme.min.css\";i:508;s:30:\"term-description/style-rtl.css\";i:509;s:34:\"term-description/style-rtl.min.css\";i:510;s:26:\"term-description/style.css\";i:511;s:30:\"term-description/style.min.css\";i:512;s:27:\"text-columns/editor-rtl.css\";i:513;s:31:\"text-columns/editor-rtl.min.css\";i:514;s:23:\"text-columns/editor.css\";i:515;s:27:\"text-columns/editor.min.css\";i:516;s:26:\"text-columns/style-rtl.css\";i:517;s:30:\"text-columns/style-rtl.min.css\";i:518;s:22:\"text-columns/style.css\";i:519;s:26:\"text-columns/style.min.css\";i:520;s:19:\"verse/style-rtl.css\";i:521;s:23:\"verse/style-rtl.min.css\";i:522;s:15:\"verse/style.css\";i:523;s:19:\"verse/style.min.css\";i:524;s:20:\"video/editor-rtl.css\";i:525;s:24:\"video/editor-rtl.min.css\";i:526;s:16:\"video/editor.css\";i:527;s:20:\"video/editor.min.css\";i:528;s:19:\"video/style-rtl.css\";i:529;s:23:\"video/style-rtl.min.css\";i:530;s:15:\"video/style.css\";i:531;s:19:\"video/style.min.css\";i:532;s:19:\"video/theme-rtl.css\";i:533;s:23:\"video/theme-rtl.min.css\";i:534;s:15:\"video/theme.css\";i:535;s:19:\"video/theme.min.css\";}}','on');
INSERT INTO `wp_options` VALUES (125,'recovery_keys','a:0:{}','off');
INSERT INTO `wp_options` VALUES (126,'WPLANG','','auto');
INSERT INTO `wp_options` VALUES (128,'theme_mods_twentytwentyfive','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1756893031;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','off');
INSERT INTO `wp_options` VALUES (129,'_transient_wp_styles_for_blocks','a:2:{s:4:\"hash\";s:32:\"8c7d46a72d7d4591fc1dd9485bedb304\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}','on');
INSERT INTO `wp_options` VALUES (133,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1759310705;s:7:\"checked\";a:2:{s:18:\"ahmadtheme-wp-loop\";s:5:\"1.0.0\";s:10:\"ahmadtheme\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (141,'can_compress_scripts','0','on');
INSERT INTO `wp_options` VALUES (154,'finished_updating_comment_type','1','auto');
INSERT INTO `wp_options` VALUES (155,'current_theme','AhmadTheme (Auto-Converted)','auto');
INSERT INTO `wp_options` VALUES (156,'theme_mods_basic-ahmad-theme','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1756894723;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','off');
INSERT INTO `wp_options` VALUES (157,'theme_switched','','auto');
INSERT INTO `wp_options` VALUES (170,'wp_calendar_block_has_published_posts','1','auto');
INSERT INTO `wp_options` VALUES (173,'theme_mods_basic-from-upload','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1756895183;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','off');
INSERT INTO `wp_options` VALUES (177,'theme_mods_ahmadtheme','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1756895930;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','off');
INSERT INTO `wp_options` VALUES (184,'theme_mods_ahmadtheme-wp-loop','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:18:\"custom_css_post_id\";i:96;s:11:\"custom_logo\";i:78;}','on');
INSERT INTO `wp_options` VALUES (217,'_transient_health-check-site-status-result','{\"good\":15,\"recommended\":3,\"critical\":2}','on');
INSERT INTO `wp_options` VALUES (219,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (227,'category_children','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (243,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','off');
INSERT INTO `wp_options` VALUES (244,'recently_activated','a:0:{}','off');
INSERT INTO `wp_options` VALUES (251,'bodhi_svgs_settings','a:3:{s:22:\"sanitize_svg_front_end\";s:2:\"on\";s:8:\"restrict\";a:1:{i:0;s:13:\"administrator\";}s:24:\"sanitize_on_upload_roles\";a:0:{}}','auto');
INSERT INTO `wp_options` VALUES (252,'bodhi_svgs_plugin_version','2.5.14','auto');
INSERT INTO `wp_options` VALUES (253,'site_logo','78','auto');
INSERT INTO `wp_options` VALUES (281,'recovery_mode_email_last_sent','1758710931','auto');
INSERT INTO `wp_options` VALUES (282,'widget_ahmadtheme_custom_widget','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (316,'widget_ahmadtheme_intro','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (341,'widget_ahmadtheme_mini_posts_widget','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (345,'widget_ahmadtheme_posts_list_widget','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (360,'_site_transient_timeout_php_check_617fc4d260191bf0de418d0d961f5a43','1759915487','off');
INSERT INTO `wp_options` VALUES (361,'_site_transient_php_check_617fc4d260191bf0de418d0d961f5a43','a:5:{s:19:\"recommended_version\";s:3:\"8.3\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','off');
INSERT INTO `wp_options` VALUES (364,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.8.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.8.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.8.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.8.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.3\";s:7:\"version\";s:5:\"6.8.3\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1759316372;s:15:\"version_checked\";s:5:\"6.8.3\";s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (366,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"dev-email@wpengine.local\";s:7:\"version\";s:5:\"6.8.3\";s:9:\"timestamp\";i:1759310775;}','off');
INSERT INTO `wp_options` VALUES (371,'_site_transient_timeout_wp_theme_files_patterns-ddee5d74797f68b338185a8c9fda7833','1759318171','off');
INSERT INTO `wp_options` VALUES (372,'_site_transient_wp_theme_files_patterns-ddee5d74797f68b338185a8c9fda7833','a:2:{s:7:\"version\";s:5:\"1.0.0\";s:8:\"patterns\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (375,'_site_transient_timeout_theme_roots','1759318172','off');
INSERT INTO `wp_options` VALUES (376,'_site_transient_theme_roots','a:2:{s:18:\"ahmadtheme-wp-loop\";s:7:\"/themes\";s:10:\"ahmadtheme\";s:7:\"/themes\";}','off');
INSERT INTO `wp_options` VALUES (377,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1759316373;s:8:\"response\";a:1:{s:21:\"safe-svg/safe-svg.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:22:\"w.org/plugins/safe-svg\";s:4:\"slug\";s:8:\"safe-svg\";s:6:\"plugin\";s:21:\"safe-svg/safe-svg.php\";s:11:\"new_version\";s:5:\"2.4.0\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/safe-svg/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/safe-svg.2.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=2779013\";s:3:\"svg\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=2779013\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/safe-svg/assets/banner-1544x500.png?rev=2683939\";s:2:\"1x\";s:63:\"https://ps.w.org/safe-svg/assets/banner-772x250.png?rev=2683939\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.6\";s:6:\"tested\";s:5:\"6.8.3\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/svg-support\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:6:\"2.5.14\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/svg-support.2.5.14.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";s:3:\"svg\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377\";s:2:\"1x\";s:66:\"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}}s:7:\"checked\";a:2:{s:21:\"safe-svg/safe-svg.php\";s:5:\"2.3.3\";s:27:\"svg-support/svg-support.php\";s:6:\"2.5.14\";}}','off');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=395 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,6,'_edit_lock','1756894711:1');
INSERT INTO `wp_postmeta` VALUES (6,8,'_edit_lock','1756895803:1');
INSERT INTO `wp_postmeta` VALUES (9,1,'_edit_lock','1756895896:1');
INSERT INTO `wp_postmeta` VALUES (10,10,'_edit_lock','1758710093:1');
INSERT INTO `wp_postmeta` VALUES (11,11,'_wp_attached_file','2025/09/pic01.jpg');
INSERT INTO `wp_postmeta` VALUES (12,11,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:840;s:6:\"height\";i:341;s:4:\"file\";s:17:\"2025/09/pic01.jpg\";s:8:\"filesize\";i:20550;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"pic01-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2840;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"pic01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2127;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"pic01-768x312.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:312;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12322;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (18,15,'_wp_attached_file','2025/09/image.png');
INSERT INTO `wp_postmeta` VALUES (19,15,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1121;s:6:\"height\";i:777;s:4:\"file\";s:17:\"2025/09/image.png\";s:8:\"filesize\";i:222403;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"image-300x208.png\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44553;}s:5:\"large\";a:5:{s:4:\"file\";s:18:\"image-1024x710.png\";s:5:\"width\";i:1024;s:6:\"height\";i:710;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:380784;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"image-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:11581;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"image-768x532.png\";s:5:\"width\";i:768;s:6:\"height\";i:532;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:234361;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (40,19,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (41,19,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (42,19,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (43,19,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (44,19,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (45,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (46,19,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (47,19,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (48,19,'_menu_item_orphaned','1757496919');
INSERT INTO `wp_postmeta` VALUES (49,20,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (50,20,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (51,20,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (52,20,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (53,20,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (54,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (55,20,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (56,20,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (57,20,'_menu_item_orphaned','1757496923');
INSERT INTO `wp_postmeta` VALUES (58,21,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (59,21,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (60,21,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (61,21,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (62,21,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (63,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (64,21,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (65,21,'_menu_item_url','http://wordpress-max.local/');
INSERT INTO `wp_postmeta` VALUES (66,21,'_menu_item_orphaned','1757496927');
INSERT INTO `wp_postmeta` VALUES (67,22,'_edit_lock','1757497020:1');
INSERT INTO `wp_postmeta` VALUES (77,22,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (78,22,'_wp_trash_meta_time','1757497155');
INSERT INTO `wp_postmeta` VALUES (79,22,'_wp_desired_post_slug','categorieen');
INSERT INTO `wp_postmeta` VALUES (80,25,'_edit_lock','1757497173:1');
INSERT INTO `wp_postmeta` VALUES (81,27,'_edit_lock','1757497200:1');
INSERT INTO `wp_postmeta` VALUES (82,29,'_edit_lock','1757497203:1');
INSERT INTO `wp_postmeta` VALUES (83,31,'_edit_lock','1757497230:1');
INSERT INTO `wp_postmeta` VALUES (84,33,'_edit_lock','1757497237:1');
INSERT INTO `wp_postmeta` VALUES (130,40,'_wp_attached_file','2025/09/pic01-1.jpg');
INSERT INTO `wp_postmeta` VALUES (131,40,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:840;s:6:\"height\";i:341;s:4:\"file\";s:19:\"2025/09/pic01-1.jpg\";s:8:\"filesize\";i:20550;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"pic01-1-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2840;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"pic01-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2127;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"pic01-1-768x312.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:312;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12322;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (134,10,'_thumbnail_id','40');
INSERT INTO `wp_postmeta` VALUES (137,42,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (138,42,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (139,42,'_menu_item_object_id','42');
INSERT INTO `wp_postmeta` VALUES (140,42,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (141,42,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (142,42,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (143,42,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (144,42,'_menu_item_url','http://wordpress-max.local/');
INSERT INTO `wp_postmeta` VALUES (145,42,'_menu_item_orphaned','1757497979');
INSERT INTO `wp_postmeta` VALUES (146,43,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (147,43,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (148,43,'_menu_item_object_id','33');
INSERT INTO `wp_postmeta` VALUES (149,43,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (150,43,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (151,43,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (152,43,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (153,43,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (154,43,'_menu_item_orphaned','1757497979');
INSERT INTO `wp_postmeta` VALUES (155,44,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (156,44,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (157,44,'_menu_item_object_id','29');
INSERT INTO `wp_postmeta` VALUES (158,44,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (159,44,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (160,44,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (161,44,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (162,44,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (163,44,'_menu_item_orphaned','1757497979');
INSERT INTO `wp_postmeta` VALUES (164,45,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (165,45,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (166,45,'_menu_item_object_id','27');
INSERT INTO `wp_postmeta` VALUES (167,45,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (168,45,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (169,45,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (170,45,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (171,45,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (172,45,'_menu_item_orphaned','1757497979');
INSERT INTO `wp_postmeta` VALUES (173,46,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (174,46,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (175,46,'_menu_item_object_id','25');
INSERT INTO `wp_postmeta` VALUES (176,46,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (177,46,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (178,46,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (179,46,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (180,46,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (181,46,'_menu_item_orphaned','1757497979');
INSERT INTO `wp_postmeta` VALUES (182,47,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (183,47,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (184,47,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (185,47,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (186,47,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (187,47,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (188,47,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (189,47,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (190,47,'_menu_item_orphaned','1757497979');
INSERT INTO `wp_postmeta` VALUES (191,48,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (192,48,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (193,48,'_menu_item_object_id','31');
INSERT INTO `wp_postmeta` VALUES (194,48,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (195,48,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (196,48,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (197,48,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (198,48,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (199,48,'_menu_item_orphaned','1757497979');
INSERT INTO `wp_postmeta` VALUES (209,50,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (210,50,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (211,50,'_menu_item_object_id','33');
INSERT INTO `wp_postmeta` VALUES (212,50,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (213,50,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (214,50,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (215,50,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (216,50,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (217,50,'_menu_item_orphaned','1757497982');
INSERT INTO `wp_postmeta` VALUES (218,51,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (219,51,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (220,51,'_menu_item_object_id','29');
INSERT INTO `wp_postmeta` VALUES (221,51,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (222,51,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (223,51,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (224,51,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (225,51,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (226,51,'_menu_item_orphaned','1757497982');
INSERT INTO `wp_postmeta` VALUES (227,52,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (228,52,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (229,52,'_menu_item_object_id','27');
INSERT INTO `wp_postmeta` VALUES (230,52,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (231,52,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (232,52,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (233,52,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (234,52,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (235,52,'_menu_item_orphaned','1757497983');
INSERT INTO `wp_postmeta` VALUES (236,53,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (237,53,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (238,53,'_menu_item_object_id','25');
INSERT INTO `wp_postmeta` VALUES (239,53,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (240,53,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (241,53,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (242,53,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (243,53,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (244,53,'_menu_item_orphaned','1757497983');
INSERT INTO `wp_postmeta` VALUES (245,54,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (246,54,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (247,54,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (248,54,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (249,54,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (250,54,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (251,54,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (252,54,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (253,54,'_menu_item_orphaned','1757497983');
INSERT INTO `wp_postmeta` VALUES (254,55,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (255,55,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (256,55,'_menu_item_object_id','31');
INSERT INTO `wp_postmeta` VALUES (257,55,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (258,55,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (259,55,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (260,55,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (261,55,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (262,55,'_menu_item_orphaned','1757497983');
INSERT INTO `wp_postmeta` VALUES (263,56,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (264,56,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (265,56,'_menu_item_object_id','56');
INSERT INTO `wp_postmeta` VALUES (266,56,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (267,56,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (268,56,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (269,56,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (270,56,'_menu_item_url','http://wordpress-max.local/');
INSERT INTO `wp_postmeta` VALUES (272,57,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (273,57,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (274,57,'_menu_item_object_id','57');
INSERT INTO `wp_postmeta` VALUES (275,57,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (276,57,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (277,57,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (278,57,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (279,57,'_menu_item_url','http://wordpress-max.local/');
INSERT INTO `wp_postmeta` VALUES (281,58,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (282,58,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (283,58,'_menu_item_object_id','58');
INSERT INTO `wp_postmeta` VALUES (284,58,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (285,58,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (286,58,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (287,58,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (288,58,'_menu_item_url','http://wordpress-max.local/');
INSERT INTO `wp_postmeta` VALUES (290,59,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (291,59,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (292,59,'_menu_item_object_id','59');
INSERT INTO `wp_postmeta` VALUES (293,59,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (294,59,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (295,59,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (296,59,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (297,59,'_menu_item_url','http://wordpress-max.local/');
INSERT INTO `wp_postmeta` VALUES (299,60,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (300,60,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (301,60,'_menu_item_object_id','60');
INSERT INTO `wp_postmeta` VALUES (302,60,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (303,60,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (304,60,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (305,60,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (306,60,'_menu_item_url','http://wordpress-max.local/');
INSERT INTO `wp_postmeta` VALUES (308,61,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (309,61,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (310,61,'_menu_item_object_id','61');
INSERT INTO `wp_postmeta` VALUES (311,61,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (312,61,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (313,61,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (314,61,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (315,61,'_menu_item_url','http://wordpress-max.local/');
INSERT INTO `wp_postmeta` VALUES (317,62,'_wp_attached_file','2025/09/logo.jpg');
INSERT INTO `wp_postmeta` VALUES (318,62,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:81;s:6:\"height\";i:80;s:4:\"file\";s:16:\"2025/09/logo.jpg\";s:8:\"filesize\";i:1893;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (319,63,'_wp_attached_file','2025/09/avatar.jpg');
INSERT INTO `wp_postmeta` VALUES (320,63,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:36;s:6:\"height\";i:36;s:4:\"file\";s:18:\"2025/09/avatar.jpg\";s:8:\"filesize\";i:1328;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (321,64,'_wp_attached_file','2025/09/logo-1.jpg');
INSERT INTO `wp_postmeta` VALUES (322,64,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:81;s:6:\"height\";i:80;s:4:\"file\";s:18:\"2025/09/logo-1.jpg\";s:8:\"filesize\";i:1893;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (323,65,'_wp_attached_file','2025/09/pic01-2.jpg');
INSERT INTO `wp_postmeta` VALUES (324,65,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:840;s:6:\"height\";i:341;s:4:\"file\";s:19:\"2025/09/pic01-2.jpg\";s:8:\"filesize\";i:20550;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"pic01-2-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2840;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"pic01-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2127;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"pic01-2-768x312.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:312;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12322;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (325,66,'_wp_attached_file','2025/09/pic02.jpg');
INSERT INTO `wp_postmeta` VALUES (326,66,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:840;s:6:\"height\";i:341;s:4:\"file\";s:17:\"2025/09/pic02.jpg\";s:8:\"filesize\";i:21198;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"pic02-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2632;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"pic02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2091;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"pic02-768x312.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:312;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12218;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (327,67,'_wp_attached_file','2025/09/pic03.jpg');
INSERT INTO `wp_postmeta` VALUES (328,67,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:840;s:6:\"height\";i:341;s:4:\"file\";s:17:\"2025/09/pic03.jpg\";s:8:\"filesize\";i:21717;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"pic03-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3113;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"pic03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2371;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"pic03-768x312.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:312;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13243;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (329,68,'_wp_attached_file','2025/09/pic04.jpg');
INSERT INTO `wp_postmeta` VALUES (330,68,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:351;s:6:\"height\";i:176;s:4:\"file\";s:17:\"2025/09/pic04.jpg\";s:8:\"filesize\";i:5788;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"pic04-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3554;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"pic04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2374;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (331,69,'_wp_attached_file','2025/09/pic05.jpg');
INSERT INTO `wp_postmeta` VALUES (332,69,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:351;s:6:\"height\";i:176;s:4:\"file\";s:17:\"2025/09/pic05.jpg\";s:8:\"filesize\";i:6055;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"pic05-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3870;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"pic05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2534;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (333,70,'_wp_attached_file','2025/09/pic06.jpg');
INSERT INTO `wp_postmeta` VALUES (334,70,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:351;s:6:\"height\";i:176;s:4:\"file\";s:17:\"2025/09/pic06.jpg\";s:8:\"filesize\";i:6089;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"pic06-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3865;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"pic06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2517;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (335,71,'_wp_attached_file','2025/09/pic07.jpg');
INSERT INTO `wp_postmeta` VALUES (336,71,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:351;s:6:\"height\";i:176;s:4:\"file\";s:17:\"2025/09/pic07.jpg\";s:8:\"filesize\";i:6035;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"pic07-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3867;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"pic07-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2542;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (337,72,'_wp_attached_file','2025/09/pic08.jpg');
INSERT INTO `wp_postmeta` VALUES (338,72,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:51;s:6:\"height\";i:51;s:4:\"file\";s:17:\"2025/09/pic08.jpg\";s:8:\"filesize\";i:1495;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (339,73,'_wp_attached_file','2025/09/pic09.jpg');
INSERT INTO `wp_postmeta` VALUES (340,73,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:51;s:6:\"height\";i:51;s:4:\"file\";s:17:\"2025/09/pic09.jpg\";s:8:\"filesize\";i:1547;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (341,74,'_wp_attached_file','2025/09/pic10.jpg');
INSERT INTO `wp_postmeta` VALUES (342,74,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:51;s:6:\"height\";i:51;s:4:\"file\";s:17:\"2025/09/pic10.jpg\";s:8:\"filesize\";i:1482;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (343,75,'_wp_attached_file','2025/09/pic11.jpg');
INSERT INTO `wp_postmeta` VALUES (344,75,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:51;s:6:\"height\";i:51;s:4:\"file\";s:17:\"2025/09/pic11.jpg\";s:8:\"filesize\";i:1522;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (345,76,'_wp_attached_file','2025/09/pic12.jpg');
INSERT INTO `wp_postmeta` VALUES (346,76,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:51;s:6:\"height\";i:51;s:4:\"file\";s:17:\"2025/09/pic12.jpg\";s:8:\"filesize\";i:1528;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (349,78,'_wp_attached_file','2025/09/logo.svg');
INSERT INTO `wp_postmeta` VALUES (350,78,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:17:\"/2025/09/logo.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";d:150;s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";d:300;s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";d:768;s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";d:1024;s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}');
INSERT INTO `wp_postmeta` VALUES (351,79,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (352,79,'_wp_trash_meta_time','1757501479');
INSERT INTO `wp_postmeta` VALUES (353,57,'_wp_old_date','2025-09-10');
INSERT INTO `wp_postmeta` VALUES (354,58,'_wp_old_date','2025-09-10');
INSERT INTO `wp_postmeta` VALUES (355,56,'_wp_old_date','2025-09-10');
INSERT INTO `wp_postmeta` VALUES (356,59,'_wp_old_date','2025-09-10');
INSERT INTO `wp_postmeta` VALUES (357,60,'_wp_old_date','2025-09-10');
INSERT INTO `wp_postmeta` VALUES (358,61,'_wp_old_date','2025-09-10');
INSERT INTO `wp_postmeta` VALUES (359,81,'_wp_attached_file','2025/09/image-1.png');
INSERT INTO `wp_postmeta` VALUES (360,81,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:703;s:6:\"height\";i:988;s:4:\"file\";s:19:\"2025/09/image-1.png\";s:8:\"filesize\";i:167056;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"image-1-213x300.png\";s:5:\"width\";i:213;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:16210;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"image-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6792;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (362,83,'_edit_lock','1758709981:1');
INSERT INTO `wp_postmeta` VALUES (363,83,'_thumbnail_id','66');
INSERT INTO `wp_postmeta` VALUES (368,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (369,1,'_wp_trash_meta_time','1758710008');
INSERT INTO `wp_postmeta` VALUES (370,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (371,1,'_wp_trash_meta_comments_status','a:3:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (372,8,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (373,8,'_wp_trash_meta_time','1758710009');
INSERT INTO `wp_postmeta` VALUES (374,8,'_wp_desired_post_slug','hello-world-0-3');
INSERT INTO `wp_postmeta` VALUES (375,87,'_edit_lock','1758710094:1');
INSERT INTO `wp_postmeta` VALUES (378,87,'_thumbnail_id','68');
INSERT INTO `wp_postmeta` VALUES (379,89,'_edit_lock','1758710119:1');
INSERT INTO `wp_postmeta` VALUES (382,89,'_thumbnail_id','69');
INSERT INTO `wp_postmeta` VALUES (383,91,'_edit_lock','1758710151:1');
INSERT INTO `wp_postmeta` VALUES (386,91,'_thumbnail_id','69');
INSERT INTO `wp_postmeta` VALUES (387,93,'_edit_lock','1758711506:1');
INSERT INTO `wp_postmeta` VALUES (388,93,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (389,93,'_wp_trash_meta_time','1758711513');
INSERT INTO `wp_postmeta` VALUES (392,95,'_edit_lock','1758712065:1');
INSERT INTO `wp_postmeta` VALUES (393,95,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (394,95,'_wp_trash_meta_time','1758712065');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2025-09-03 09:35:03','2025-09-03 09:35:03','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2025-09-24 10:33:28','2025-09-24 10:33:28','',0,'http://wordpress-max.local/?p=1',0,'post','',3);
INSERT INTO `wp_posts` VALUES (2,1,'2025-09-03 09:35:03','2025-09-03 09:35:03','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://wordpress-max.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2025-09-03 09:35:03','2025-09-03 09:35:03','',0,'http://wordpress-max.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2025-09-03 09:35:03','2025-09-03 09:35:03','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://wordpress-max.local.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','draft','closed','open','','privacy-policy','','','2025-09-03 09:35:03','2025-09-03 09:35:03','',0,'http://wordpress-max.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,0,'2025-09-03 09:35:21','2025-09-03 09:35:21','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2025-09-03 09:35:21','2025-09-03 09:35:21','',0,'http://wordpress-max.local/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2025-09-03 09:57:33','2025-09-03 09:57:33','<!-- wp:paragraph -->\n<p>This text is only a fulling form meeeeeee</p>\n<!-- /wp:paragraph -->','Hello World 0.2','','publish','open','open','','hello-world-0-2','','','2025-09-03 09:57:33','2025-09-03 09:57:33','',0,'http://wordpress-max.local/?p=6',0,'post','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2025-09-03 09:57:33','2025-09-03 09:57:33','<!-- wp:paragraph -->\n<p>This text is only a fulling form meeeeeee</p>\n<!-- /wp:paragraph -->','Hello World 0.2','','inherit','closed','closed','','6-revision-v1','','','2025-09-03 09:57:33','2025-09-03 09:57:33','',6,'http://wordpress-max.local/?p=7',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2025-09-03 10:36:42','2025-09-03 10:36:42','<!-- wp:paragraph -->\n<p>this is for education purpose</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Hello world 0.3','','trash','open','open','','hello-world-0-3__trashed','','','2025-09-24 10:33:29','2025-09-24 10:33:29','',0,'http://wordpress-max.local/?p=8',0,'post','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2025-09-03 10:36:39','2025-09-03 10:36:39','<!-- wp:paragraph -->\n<p>this is for education purpose</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Hello world 0.3','','inherit','closed','closed','','8-revision-v1','','','2025-09-03 10:36:39','2025-09-03 10:36:39','',8,'http://wordpress-max.local/?p=9',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2025-09-03 10:41:50','2025-09-03 10:41:50','<!-- wp:paragraph -->\n<p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nunc quis dui scelerisque, scelerisque urna ut, dapibus orci. Sed vitae condimentum lectus, ut imperdiet quam. Maecenas in justo ut nulla aliquam sodales vel at ligula. Sed blandit diam odio, sed fringilla lectus molestie sit amet. Praesent eu tortor viverra lorem mattis pulvinar feugiat in turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce ullamcorper tellus sit amet mattis dignissim. Phasellus ut metus ligula. Curabitur nec leo turpis. Ut gravida purus quis erat pretium, sed pellentesque massa elementum. Fusce vestibulum porta augue, at mattis justo. Integer sed sapien fringilla, dapibus risus id, faucibus ante. Pellentesque mattis nunc sit amet tortor pellentesque, non placerat neque viverra.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Magna sed adipiscing','Lorem ipsum dolor amet nullam consequat etiam feugiat','publish','open','open','','magna-sed-adipiscing','','','2025-09-10 09:49:21','2025-09-10 09:49:21','',0,'http://wordpress-max.local/?p=10',0,'post','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2025-09-03 10:41:35','2025-09-03 10:41:35','','pic01','','inherit','open','closed','','pic01','','','2025-09-03 10:41:35','2025-09-03 10:41:35','',10,'http://wordpress-max.local/wp-content/uploads/2025/09/pic01.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (12,1,'2025-09-03 10:41:50','2025-09-03 10:41:50','<!-- wp:image {\"id\":11,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://wordpress-max.local/wp-content/uploads/2025/09/pic01.jpg\" alt=\"\" class=\"wp-image-11\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nunc quis dui scelerisque, scelerisque urna ut, dapibus orci. Sed vitae condimentum lectus, ut imperdiet quam. Maecenas in justo ut nulla aliquam sodales vel at ligula. Sed blandit diam odio, sed fringilla lectus molestie sit amet. Praesent eu tortor viverra lorem mattis pulvinar feugiat in turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce ullamcorper tellus sit amet mattis dignissim. Phasellus ut metus ligula. Curabitur nec leo turpis. Ut gravida purus quis erat pretium, sed pellentesque massa elementum. Fusce vestibulum porta augue, at mattis justo. Integer sed sapien fringilla, dapibus risus id, faucibus ante. Pellentesque mattis nunc sit amet tortor pellentesque, non placerat neque viverra.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Magna sed adipiscing','','inherit','closed','closed','','10-revision-v1','','','2025-09-03 10:41:50','2025-09-03 10:41:50','',10,'http://wordpress-max.local/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2025-09-03 10:56:03','2025-09-03 10:56:03','<!-- wp:list -->\n<ul class=\"wp-block-list\"><!-- wp:list-item -->\n<li>Lorem ipsum dolor amet nullam consequat etiam feugiat</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:image {\"id\":11,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://wordpress-max.local/wp-content/uploads/2025/09/pic01.jpg\" alt=\"\" class=\"wp-image-11\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nunc quis dui scelerisque, scelerisque urna ut, dapibus orci. Sed vitae condimentum lectus, ut imperdiet quam. Maecenas in justo ut nulla aliquam sodales vel at ligula. Sed blandit diam odio, sed fringilla lectus molestie sit amet. Praesent eu tortor viverra lorem mattis pulvinar feugiat in turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce ullamcorper tellus sit amet mattis dignissim. Phasellus ut metus ligula. Curabitur nec leo turpis. Ut gravida purus quis erat pretium, sed pellentesque massa elementum. Fusce vestibulum porta augue, at mattis justo. Integer sed sapien fringilla, dapibus risus id, faucibus ante. Pellentesque mattis nunc sit amet tortor pellentesque, non placerat neque viverra.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Magna sed adipiscing','','inherit','closed','closed','','10-revision-v1','','','2025-09-03 10:56:03','2025-09-03 10:56:03','',10,'http://wordpress-max.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2025-09-03 10:56:26','2025-09-03 10:56:26','','image','','inherit','open','closed','','image','','','2025-09-03 10:56:26','2025-09-03 10:56:26','',10,'http://wordpress-max.local/wp-content/uploads/2025/09/image.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (16,1,'2025-09-03 11:00:58','2025-09-03 11:00:58','<!-- wp:image {\"id\":11,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://wordpress-max.local/wp-content/uploads/2025/09/pic01.jpg\" alt=\"\" class=\"wp-image-11\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nunc quis dui scelerisque, scelerisque urna ut, dapibus orci. Sed vitae condimentum lectus, ut imperdiet quam. Maecenas in justo ut nulla aliquam sodales vel at ligula. Sed blandit diam odio, sed fringilla lectus molestie sit amet. Praesent eu tortor viverra lorem mattis pulvinar feugiat in turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce ullamcorper tellus sit amet mattis dignissim. Phasellus ut metus ligula. Curabitur nec leo turpis. Ut gravida purus quis erat pretium, sed pellentesque massa elementum. Fusce vestibulum porta augue, at mattis justo. Integer sed sapien fringilla, dapibus risus id, faucibus ante. Pellentesque mattis nunc sit amet tortor pellentesque, non placerat neque viverra.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Magna sed adipiscing','Lorem ipsum dolor amet nullam consequat etiam feugiat','inherit','closed','closed','','10-revision-v1','','','2025-09-03 11:00:58','2025-09-03 11:00:58','',10,'http://wordpress-max.local/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2025-09-10 09:35:19','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2025-09-10 09:35:19','0000-00-00 00:00:00','',0,'http://wordpress-max.local/?p=19',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2025-09-10 09:35:23','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2025-09-10 09:35:23','0000-00-00 00:00:00','',0,'http://wordpress-max.local/?p=20',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2025-09-10 09:35:27','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2025-09-10 09:35:27','0000-00-00 00:00:00','',0,'http://wordpress-max.local/?p=21',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2025-09-10 09:37:04','2025-09-10 09:37:04','<!-- wp:paragraph -->\n<p>Can u really read?</p>\n<!-- /wp:paragraph -->','Categorieen','','trash','closed','closed','','categorieen__trashed','','','2025-09-10 09:39:15','2025-09-10 09:39:15','',0,'http://wordpress-max.local/?page_id=22',0,'page','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2025-09-10 09:37:04','2025-09-10 09:37:04','<!-- wp:paragraph -->\n<p>Can u really read?</p>\n<!-- /wp:paragraph -->','Categorieen','','inherit','closed','closed','','22-revision-v1','','','2025-09-10 09:37:04','2025-09-10 09:37:04','',22,'http://wordpress-max.local/?p=23',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2025-09-10 09:39:31','2025-09-10 09:39:31','','Lorem','','publish','closed','closed','','lorem','','','2025-09-10 09:39:31','2025-09-10 09:39:31','',0,'http://wordpress-max.local/?page_id=25',0,'page','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2025-09-10 09:39:31','2025-09-10 09:39:31','','Lorem','','inherit','closed','closed','','25-revision-v1','','','2025-09-10 09:39:31','2025-09-10 09:39:31','',25,'http://wordpress-max.local/?p=26',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2025-09-10 09:39:46','2025-09-10 09:39:46','','Ipsum','','publish','closed','closed','','ipsum','','','2025-09-10 09:39:46','2025-09-10 09:39:46','',0,'http://wordpress-max.local/?page_id=27',0,'page','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2025-09-10 09:39:46','2025-09-10 09:39:46','','Ipsum','','inherit','closed','closed','','27-revision-v1','','','2025-09-10 09:39:46','2025-09-10 09:39:46','',27,'http://wordpress-max.local/?p=28',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2025-09-10 09:40:08','2025-09-10 09:40:08','','Feugiat','','publish','closed','closed','','feugiat','','','2025-09-10 09:40:08','2025-09-10 09:40:08','',0,'http://wordpress-max.local/?page_id=29',0,'page','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2025-09-10 09:40:08','2025-09-10 09:40:08','','Feugiat','','inherit','closed','closed','','29-revision-v1','','','2025-09-10 09:40:08','2025-09-10 09:40:08','',29,'http://wordpress-max.local/?p=30',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2025-09-10 09:40:31','2025-09-10 09:40:31','','Tempus','','publish','closed','closed','','tempus','','','2025-09-10 09:40:31','2025-09-10 09:40:31','',0,'http://wordpress-max.local/?page_id=31',0,'page','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2025-09-10 09:40:31','2025-09-10 09:40:31','','Tempus','','inherit','closed','closed','','31-revision-v1','','','2025-09-10 09:40:31','2025-09-10 09:40:31','',31,'http://wordpress-max.local/?p=32',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2025-09-10 09:40:41','2025-09-10 09:40:41','','Adipiscing','','publish','closed','closed','','adipiscing','','','2025-09-10 09:40:41','2025-09-10 09:40:41','',0,'http://wordpress-max.local/?page_id=33',0,'page','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2025-09-10 09:40:41','2025-09-10 09:40:41','','Adipiscing','','inherit','closed','closed','','33-revision-v1','','','2025-09-10 09:40:41','2025-09-10 09:40:41','',33,'http://wordpress-max.local/?p=34',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2025-09-10 09:48:49','2025-09-10 09:48:49','','pic01','','inherit','open','closed','','pic01-2','','','2025-09-10 09:48:49','2025-09-10 09:48:49','',10,'http://wordpress-max.local/wp-content/uploads/2025/09/pic01-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (41,1,'2025-09-10 09:49:21','2025-09-10 09:49:21','<!-- wp:paragraph -->\n<p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nunc quis dui scelerisque, scelerisque urna ut, dapibus orci. Sed vitae condimentum lectus, ut imperdiet quam. Maecenas in justo ut nulla aliquam sodales vel at ligula. Sed blandit diam odio, sed fringilla lectus molestie sit amet. Praesent eu tortor viverra lorem mattis pulvinar feugiat in turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce ullamcorper tellus sit amet mattis dignissim. Phasellus ut metus ligula. Curabitur nec leo turpis. Ut gravida purus quis erat pretium, sed pellentesque massa elementum. Fusce vestibulum porta augue, at mattis justo. Integer sed sapien fringilla, dapibus risus id, faucibus ante. Pellentesque mattis nunc sit amet tortor pellentesque, non placerat neque viverra.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Magna sed adipiscing','Lorem ipsum dolor amet nullam consequat etiam feugiat','inherit','closed','closed','','10-revision-v1','','','2025-09-10 09:49:21','2025-09-10 09:49:21','',10,'http://wordpress-max.local/?p=41',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2025-09-10 09:52:59','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2025-09-10 09:52:59','0000-00-00 00:00:00','',0,'http://wordpress-max.local/?p=42',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2025-09-10 09:52:59','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2025-09-10 09:52:59','0000-00-00 00:00:00','',0,'http://wordpress-max.local/?p=43',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2025-09-10 09:52:59','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2025-09-10 09:52:59','0000-00-00 00:00:00','',0,'http://wordpress-max.local/?p=44',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2025-09-10 09:52:59','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2025-09-10 09:52:59','0000-00-00 00:00:00','',0,'http://wordpress-max.local/?p=45',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2025-09-10 09:52:59','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2025-09-10 09:52:59','0000-00-00 00:00:00','',0,'http://wordpress-max.local/?p=46',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2025-09-10 09:52:59','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2025-09-10 09:52:59','0000-00-00 00:00:00','',0,'http://wordpress-max.local/?p=47',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2025-09-10 09:52:59','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2025-09-10 09:52:59','0000-00-00 00:00:00','',0,'http://wordpress-max.local/?p=48',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2025-09-10 09:53:02','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2025-09-10 09:53:02','0000-00-00 00:00:00','',0,'http://wordpress-max.local/?p=50',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2025-09-10 09:53:02','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2025-09-10 09:53:02','0000-00-00 00:00:00','',0,'http://wordpress-max.local/?p=51',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2025-09-10 09:53:03','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2025-09-10 09:53:03','0000-00-00 00:00:00','',0,'http://wordpress-max.local/?p=52',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2025-09-10 09:53:03','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2025-09-10 09:53:03','0000-00-00 00:00:00','',0,'http://wordpress-max.local/?p=53',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2025-09-10 09:53:03','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2025-09-10 09:53:03','0000-00-00 00:00:00','',0,'http://wordpress-max.local/?p=54',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2025-09-10 09:53:03','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2025-09-10 09:53:03','0000-00-00 00:00:00','',0,'http://wordpress-max.local/?p=55',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2025-09-17 09:32:43','2025-09-10 10:23:32','','Lorem','','publish','closed','closed','','lorem','','','2025-09-17 09:32:43','2025-09-17 09:32:43','',0,'http://wordpress-max.local/?p=56',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2025-09-17 09:32:43','2025-09-10 10:23:32','','Ipsum','','publish','closed','closed','','ipsum','','','2025-09-17 09:32:43','2025-09-17 09:32:43','',0,'http://wordpress-max.local/?p=57',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2025-09-17 09:32:43','2025-09-10 10:23:32','','Feugiat','','publish','closed','closed','','feugiat','','','2025-09-17 09:32:43','2025-09-17 09:32:43','',0,'http://wordpress-max.local/?p=58',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2025-09-17 09:32:43','2025-09-10 10:23:32','','Feugiat','','publish','closed','closed','','feugiat-2','','','2025-09-17 09:32:43','2025-09-17 09:32:43','',0,'http://wordpress-max.local/?p=59',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2025-09-17 09:32:43','2025-09-10 10:23:32','','Tempus','','publish','closed','closed','','tempus','','','2025-09-17 09:32:43','2025-09-17 09:32:43','',0,'http://wordpress-max.local/?p=60',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2025-09-17 09:32:43','2025-09-10 10:23:32','','Adipiscing','','publish','closed','closed','','adipiscing','','','2025-09-17 09:32:43','2025-09-17 09:32:43','',0,'http://wordpress-max.local/?p=61',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2025-09-10 10:33:44','2025-09-10 10:33:44','','logo','','inherit','open','closed','','logo','','','2025-09-10 10:33:44','2025-09-10 10:33:44','',0,'http://wordpress-max.local/wp-content/uploads/2025/09/logo.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (63,1,'2025-09-10 10:33:53','2025-09-10 10:33:53','','avatar','','inherit','open','closed','','avatar','','','2025-09-10 10:33:53','2025-09-10 10:33:53','',0,'http://wordpress-max.local/wp-content/uploads/2025/09/avatar.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (64,1,'2025-09-10 10:33:53','2025-09-10 10:33:53','','logo','','inherit','open','closed','','logo-2','','','2025-09-10 10:33:53','2025-09-10 10:33:53','',0,'http://wordpress-max.local/wp-content/uploads/2025/09/logo-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (65,1,'2025-09-10 10:33:53','2025-09-10 10:33:53','','pic01','','inherit','open','closed','','pic01-3','','','2025-09-10 10:33:53','2025-09-10 10:33:53','',0,'http://wordpress-max.local/wp-content/uploads/2025/09/pic01-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (66,1,'2025-09-10 10:33:53','2025-09-10 10:33:53','','pic02','','inherit','open','closed','','pic02','','','2025-09-10 10:33:53','2025-09-10 10:33:53','',0,'http://wordpress-max.local/wp-content/uploads/2025/09/pic02.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (67,1,'2025-09-10 10:33:54','2025-09-10 10:33:54','','pic03','','inherit','open','closed','','pic03','','','2025-09-10 10:33:54','2025-09-10 10:33:54','',0,'http://wordpress-max.local/wp-content/uploads/2025/09/pic03.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (68,1,'2025-09-10 10:33:54','2025-09-10 10:33:54','','pic04','','inherit','open','closed','','pic04','','','2025-09-10 10:33:54','2025-09-10 10:33:54','',0,'http://wordpress-max.local/wp-content/uploads/2025/09/pic04.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (69,1,'2025-09-10 10:33:54','2025-09-10 10:33:54','','pic05','','inherit','open','closed','','pic05','','','2025-09-10 10:33:54','2025-09-10 10:33:54','',0,'http://wordpress-max.local/wp-content/uploads/2025/09/pic05.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (70,1,'2025-09-10 10:33:54','2025-09-10 10:33:54','','pic06','','inherit','open','closed','','pic06','','','2025-09-10 10:33:54','2025-09-10 10:33:54','',0,'http://wordpress-max.local/wp-content/uploads/2025/09/pic06.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (71,1,'2025-09-10 10:33:55','2025-09-10 10:33:55','','pic07','','inherit','open','closed','','pic07','','','2025-09-10 10:33:55','2025-09-10 10:33:55','',0,'http://wordpress-max.local/wp-content/uploads/2025/09/pic07.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (72,1,'2025-09-10 10:33:55','2025-09-10 10:33:55','','pic08','','inherit','open','closed','','pic08','','','2025-09-10 10:33:55','2025-09-10 10:33:55','',0,'http://wordpress-max.local/wp-content/uploads/2025/09/pic08.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (73,1,'2025-09-10 10:33:55','2025-09-10 10:33:55','','pic09','','inherit','open','closed','','pic09','','','2025-09-10 10:33:55','2025-09-10 10:33:55','',0,'http://wordpress-max.local/wp-content/uploads/2025/09/pic09.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (74,1,'2025-09-10 10:33:55','2025-09-10 10:33:55','','pic10','','inherit','open','closed','','pic10','','','2025-09-10 10:33:55','2025-09-10 10:33:55','',0,'http://wordpress-max.local/wp-content/uploads/2025/09/pic10.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (75,1,'2025-09-10 10:33:55','2025-09-10 10:33:55','','pic11','','inherit','open','closed','','pic11','','','2025-09-10 10:33:55','2025-09-10 10:33:55','',0,'http://wordpress-max.local/wp-content/uploads/2025/09/pic11.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (76,1,'2025-09-10 10:33:56','2025-09-10 10:33:56','','pic12','','inherit','open','closed','','pic12','','','2025-09-10 10:33:56','2025-09-10 10:33:56','',0,'http://wordpress-max.local/wp-content/uploads/2025/09/pic12.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (78,1,'2025-09-10 10:50:21','2025-09-10 10:50:21','','logo','','inherit','open','closed','','logo-3','','','2025-09-10 10:50:21','2025-09-10 10:50:21','',0,'http://wordpress-max.local/wp-content/uploads/2025/09/logo.svg',0,'attachment','image/svg+xml',0);
INSERT INTO `wp_posts` VALUES (79,1,'2025-09-10 10:51:19','2025-09-10 10:51:19','{\n    \"blogname\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-09-10 10:51:19\"\n    },\n    \"site_icon\": {\n        \"value\": 78,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-09-10 10:51:19\"\n    },\n    \"ahmadtheme-wp-loop::custom_logo\": {\n        \"value\": 78,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-09-10 10:51:19\"\n    }\n}','','','trash','closed','closed','','034ecf73-2bf9-4c32-b291-5cc9c12eb3e5','','','2025-09-10 10:51:19','2025-09-10 10:51:19','',0,'http://wordpress-max.local/034ecf73-2bf9-4c32-b291-5cc9c12eb3e5/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2025-09-24 09:41:54','2025-09-24 09:41:54','','image','','inherit','open','closed','','image-2','','','2025-09-24 09:41:54','2025-09-24 09:41:54','',0,'http://wordpress-max.local/wp-content/uploads/2025/09/image-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (83,1,'2025-09-24 10:32:56','2025-09-24 10:32:56','<!-- wp:paragraph -->\n<p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Ultricies sed magna euismod enim vitae gravida','','publish','open','open','','ultricies-sed-magna-euismod-enim-vitae-gravida','','','2025-09-24 10:33:03','2025-09-24 10:33:03','',0,'http://wordpress-max.local/?p=83',0,'post','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2025-09-24 10:32:53','2025-09-24 10:32:53','<!-- wp:paragraph -->\n<p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper.</p>\n<!-- /wp:paragraph -->','Ultricies sed magna euismod enim vitae gravida','','inherit','closed','closed','','83-revision-v1','','','2025-09-24 10:32:53','2025-09-24 10:32:53','',83,'http://wordpress-max.local/?p=84',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2025-09-24 10:33:03','2025-09-24 10:33:03','<!-- wp:paragraph -->\n<p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Ultricies sed magna euismod enim vitae gravida','','inherit','closed','closed','','83-revision-v1','','','2025-09-24 10:33:03','2025-09-24 10:33:03','',83,'http://wordpress-max.local/?p=85',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2025-09-24 10:33:28','2025-09-24 10:33:28','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2025-09-24 10:33:28','2025-09-24 10:33:28','',1,'http://wordpress-max.local/?p=86',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2025-09-24 10:34:28','2025-09-24 10:34:28','<!-- wp:paragraph -->\n<p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla. Cras vehicula tellus eu ligula viverra, ac fringilla turpis suscipit. Quisque vestibulum rhoncus ligula.</p>\n<!-- /wp:paragraph -->','Euismod et accumsan','Lorem ipsum dolor amet nullam consequat etiam feugiat','publish','open','open','','euismod-et-accumsan','','','2025-09-24 10:34:28','2025-09-24 10:34:28','',0,'http://wordpress-max.local/?p=87',0,'post','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2025-09-24 10:34:28','2025-09-24 10:34:28','<!-- wp:paragraph -->\n<p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla. Cras vehicula tellus eu ligula viverra, ac fringilla turpis suscipit. Quisque vestibulum rhoncus ligula.</p>\n<!-- /wp:paragraph -->','Euismod et accumsan','Lorem ipsum dolor amet nullam consequat etiam feugiat','inherit','closed','closed','','87-revision-v1','','','2025-09-24 10:34:28','2025-09-24 10:34:28','',87,'http://wordpress-max.local/?p=88',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2025-09-24 10:35:24','2025-09-24 10:35:24','<!-- wp:paragraph -->\n<p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla. Cras vehicula tellus eu ligula viverra, ac fringilla turpis suscipit. Quisque vestibulum rhoncus ligula.</p>\n<!-- /wp:paragraph -->','Enim nisl veroeros','Lorem ipsum dolor amet nullam consequat etiam feugiat\n\n','publish','open','open','','enim-nisl-veroeros','','','2025-09-24 10:35:24','2025-09-24 10:35:24','',0,'http://wordpress-max.local/?p=89',0,'post','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2025-09-24 10:35:24','2025-09-24 10:35:24','<!-- wp:paragraph -->\n<p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla. Cras vehicula tellus eu ligula viverra, ac fringilla turpis suscipit. Quisque vestibulum rhoncus ligula.</p>\n<!-- /wp:paragraph -->','Enim nisl veroeros','Lorem ipsum dolor amet nullam consequat etiam feugiat\n\n','inherit','closed','closed','','89-revision-v1','','','2025-09-24 10:35:24','2025-09-24 10:35:24','',89,'http://wordpress-max.local/?p=90',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2025-09-24 10:35:57','2025-09-24 10:35:57','<!-- wp:paragraph -->\n<p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla. Cras vehicula tellus eu ligula viverra, ac fringilla turpis suscipit. Quisque vestibulum rhoncus ligula.</p>\n<!-- /wp:paragraph -->','post 5','Post 5 bla bla bla','publish','open','open','','post-5','','','2025-09-24 10:35:57','2025-09-24 10:35:57','',0,'http://wordpress-max.local/?p=91',0,'post','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2025-09-24 10:35:57','2025-09-24 10:35:57','<!-- wp:paragraph -->\n<p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla. Cras vehicula tellus eu ligula viverra, ac fringilla turpis suscipit. Quisque vestibulum rhoncus ligula.</p>\n<!-- /wp:paragraph -->','post 5','Post 5 bla bla bla','inherit','closed','closed','','91-revision-v1','','','2025-09-24 10:35:57','2025-09-24 10:35:57','',91,'http://wordpress-max.local/?p=92',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2025-09-24 10:58:33','2025-09-24 10:58:33','{\n    \"sidebars_widgets[mini-posts]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-09-24 10:56:41\"\n    },\n    \"sidebars_widgets[posts-list]\": {\n        \"value\": [\n            \"block-22\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-09-24 10:56:41\"\n    },\n    \"widget_block[25]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:widget-group -->\\n<h2 class=\\\"widget-title\\\"></h2><div class=\\\"wp-widget-group__inner-blocks\\\"><!-- wp:details -->\\n<details class=\\\"wp-block-details\\\"><summary></summary><!-- wp:latest-posts {\\\"align\\\":\\\"left\\\"} /--></details>\\n<!-- /wp:details --></div>\\n<!-- /wp:widget-group -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-09-24 10:56:41\"\n    },\n    \"widget_block[24]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:details -->\\n<details class=\\\"wp-block-details\\\"><summary></summary><!-- wp:latest-posts {\\\"align\\\":\\\"left\\\"} /--></details>\\n<!-- /wp:details -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-09-24 10:56:41\"\n    },\n    \"widget_block[22]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:latest-posts {\\\"postsToShow\\\":3,\\\"displayPostContent\\\":true,\\\"align\\\":\\\"left\\\",\\\"className\\\":\\\".widget_recent_entries ul, .wp-block-latest-posts {   list-style: none;   margin: 0;   padding: 0; }  .widget_recent_entries li, .wp-block-latest-posts__list li {   margin-bottom: 2.5em;   border: none;   padding: 0; }  .widget_recent_entries li a, .wp-block-latest-posts__list a {   font-size: 1.1em;   font-weight: 700;   color: #222;   text-decoration: none;   letter-spacing: 0.05em;   text-transform: uppercase;   display: block;   margin-bottom: 0.2em; }  .widget_recent_entries .post-date, .wp-block-latest-posts__post-date {   display: block;   font-size: 0.9em;   color: #888;   margin-bottom: 0.5em; }  .wp-block-latest-posts__featured-image img {   width: 100%;   max-width: 180px;   height: auto;   display: block;   margin-bottom: 0.7em;   border-radius: 2px; }  .wp-block-latest-posts__list {   margin: 0;   padding: 0; }  .wp-block-latest-posts__list li {   border: none;   padding: 0 0 2em 0;   margin: 0; }  .wp-block-latest-posts__post-excerpt {   color: #666;   font-size: 1em;   margin-bottom: 0.5em; }  .wp-block-latest-posts__author {   font-size: 0.9em;   color: #888;   margin-bottom: 0.5em;   display: block; }\\\"} /-->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-09-24 10:57:41\"\n    }\n}','','','trash','closed','closed','','5a4e717a-5ac1-445a-9712-b93660792a2e','','','2025-09-24 10:58:33','2025-09-24 10:58:33','',0,'http://wordpress-max.local/?p=93',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2025-09-24 11:07:45','2025-09-24 11:07:45','{\n    \"sidebars_widgets[posts-list]\": {\n        \"value\": [\n            \"block-28\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-09-24 11:03:00\"\n    },\n    \"custom_css[ahmadtheme-wp-loop]\": {\n        \"value\": \"/* ===== Sidebar layout & intro ===== */\\n#sidebar{padding:3rem 2rem 0}\\n#sidebar section{margin:0 0 2.25rem}\\n#sidebar section:last-child{margin-bottom:0}\\n\\n/* \\\"GreenTech Solutions\\\" block at the top */\\n#sidebar #intro header h2{\\n  margin:0 0 .35rem;\\n  font-size:2rem;\\n  font-weight:800;\\n  letter-spacing:.08em;\\n  color:#2a2a2a;\\n}\\n#sidebar #intro header p{\\n  margin:0;\\n  font-size:.9rem;\\n  color:#66b72f;             /* <- green accent */\\n  letter-spacing:.25em;\\n  text-transform:uppercase;\\n}\\n\\n/* Widget titles */\\n#sidebar .widget-title{\\n  margin:0 0 1rem;\\n  font-size:.85rem;\\n  text-transform:uppercase;\\n  letter-spacing:.35rem;\\n  font-weight:800;\\n  color:#333;\\n}\\n\\n/* Divider between widgets */\\n#sidebar .widget:not(:last-child)::after{\\n  content:\\\"\\\"; display:block; height:1px; background:#ececec; margin-top:2rem;\\n}\\n\\n/* ===== Mini Posts Widget =====\\n   (matches your PHP: .mini-posts-widget > .mini-posts > .mini-post) */\\n\\n.mini-posts-widget .mini-posts{display:grid; gap:1.25rem}\\n\\n/* Each mini-post is a two-column media card (thumb + meta) */\\n.mini-posts-widget .mini-post{\\n  display:grid;\\n  grid-template-columns:96px 1fr;\\n  grid-template-areas: \\\"thumb meta\\\";\\n  column-gap:1rem;\\n  align-items:start;\\n  padding:0 0 1rem;\\n  border-bottom:1px solid #f0f0f0;\\n}\\n.mini-posts-widget .mini-post:last-child{border-bottom:0; padding-bottom:0}\\n\\n/* Put the image in the left column even though it comes after header in DOM */\\n.mini-posts-widget .mini-post .image{grid-area:thumb; display:block; width:96px; height:96px; overflow:hidden; border-radius:3px}\\n.mini-posts-widget .mini-post .image img{width:100%; height:100%; object-fit:cover; display:block}\\n\\n/* Header/text on the right column */\\n.mini-posts-widget .mini-post header{grid-area:meta}\\n.mini-posts-widget .mini-post h3{margin:0 0 .35rem; font-size:.95rem; font-weight:800; letter-spacing:.06em}\\n.mini-posts-widget .mini-post h3 a{color:#2d2d2d; text-decoration:none}\\n.mini-posts-widget .mini-post h3 a:hover{color:#111}\\n\\n/* Date + author avatar */\\n.mini-posts-widget .mini-post .published{\\n  display:block; margin:.15rem 0 0;\\n  font-size:.75rem; color:#9a9a9a;\\n  text-transform:uppercase; letter-spacing:.08em;\\n}\\n.mini-posts-widget .mini-post .author img{\\n  width:28px; height:28px; border-radius:50%; vertical-align:middle; margin-top:.35rem;\\n}\\n\\n/* ===== Optional: Posts List area (simple media list) ===== */\\n.posts-list-widget .widget-title{margin-bottom:.75rem}\\n.posts-list-widget ul{list-style:none; margin:0; padding:0; display:grid; gap:.9rem}\\n.posts-list-widget li a{color:#2d2d2d; text-decoration:none}\\n.posts-list-widget li a:hover{text-decoration:underline}\\n\\n/* ===== Responsive ===== */\\n@media (max-width:760px){\\n  #sidebar{padding:2rem 1rem 0}\\n  .mini-posts-widget .mini-post{\\n    grid-template-columns:72px 1fr;\\n  }\\n  .mini-posts-widget .mini-post .image{width:72px; height:72px}\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-09-24 11:07:45\"\n    },\n    \"widget_block[30]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:group {\\\"layout\\\":{\\\"type\\\":\\\"constrained\\\"}} -->\\n<div class=\\\"wp-block-group\\\"><!-- wp:details -->\\n<details class=\\\"wp-block-details\\\"><summary></summary><!-- wp:columns -->\\n<div class=\\\"wp-block-columns\\\"><!-- wp:column {\\\"width\\\":\\\"100%\\\"} -->\\n<div class=\\\"wp-block-column\\\" style=\\\"flex-basis:100%\\\"><!-- wp:widget-group -->\\n<h2 class=\\\"widget-title\\\"></h2><div class=\\\"wp-widget-group__inner-blocks\\\"><!-- wp:latest-posts {\\\"postsToShow\\\":3,\\\"displayPostContent\\\":true,\\\"align\\\":\\\"left\\\",\\\"className\\\":\\\".widget_recent_entries ul, .wp-block-latest-posts {   list-style: none;   margin: 0;   padding: 0; }  .widget_recent_entries li, .wp-block-latest-posts__list li {   margin-bottom: 2.5em;   border: none;   padding: 0; }  .widget_recent_entries li a, .wp-block-latest-posts__list a {   font-size: 1.1em;   font-weight: 700;   color: #222;   text-decoration: none;   letter-spacing: 0.05em;   text-transform: uppercase;   display: block;   margin-bottom: 0.2em; }  .widget_recent_entries .post-date, .wp-block-latest-posts__post-date {   display: block;   font-size: 0.9em;   color: #888;   margin-bottom: 0.5em; }  .wp-block-latest-posts__featured-image img {   width: 100%;   max-width: 180px;   height: auto;   display: block;   margin-bottom: 0.7em;   border-radius: 2px; }  .wp-block-latest-posts__list {   margin: 0;   padding: 0; }  .wp-block-latest-posts__list li {   border: none;   padding: 0 0 2em 0;   margin: 0; }  .wp-block-latest-posts__post-excerpt {   color: #666;   font-size: 1em;   margin-bottom: 0.5em; }  .wp-block-latest-posts__author {   font-size: 0.9em;   color: #888;   margin-bottom: 0.5em;   display: block; }\\\"} /--></div>\\n<!-- /wp:widget-group --></div>\\n<!-- /wp:column --></div>\\n<!-- /wp:columns --></details>\\n<!-- /wp:details --></div>\\n<!-- /wp:group -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-09-24 11:02:53\"\n    },\n    \"widget_block[29]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:details -->\\n<details class=\\\"wp-block-details\\\"><summary></summary><!-- wp:columns -->\\n<div class=\\\"wp-block-columns\\\"><!-- wp:column {\\\"width\\\":\\\"100%\\\"} -->\\n<div class=\\\"wp-block-column\\\" style=\\\"flex-basis:100%\\\"><!-- wp:widget-group -->\\n<h2 class=\\\"widget-title\\\"></h2><div class=\\\"wp-widget-group__inner-blocks\\\"><!-- wp:latest-posts {\\\"postsToShow\\\":3,\\\"displayPostContent\\\":true,\\\"align\\\":\\\"left\\\",\\\"className\\\":\\\".widget_recent_entries ul, .wp-block-latest-posts {   list-style: none;   margin: 0;   padding: 0; }  .widget_recent_entries li, .wp-block-latest-posts__list li {   margin-bottom: 2.5em;   border: none;   padding: 0; }  .widget_recent_entries li a, .wp-block-latest-posts__list a {   font-size: 1.1em;   font-weight: 700;   color: #222;   text-decoration: none;   letter-spacing: 0.05em;   text-transform: uppercase;   display: block;   margin-bottom: 0.2em; }  .widget_recent_entries .post-date, .wp-block-latest-posts__post-date {   display: block;   font-size: 0.9em;   color: #888;   margin-bottom: 0.5em; }  .wp-block-latest-posts__featured-image img {   width: 100%;   max-width: 180px;   height: auto;   display: block;   margin-bottom: 0.7em;   border-radius: 2px; }  .wp-block-latest-posts__list {   margin: 0;   padding: 0; }  .wp-block-latest-posts__list li {   border: none;   padding: 0 0 2em 0;   margin: 0; }  .wp-block-latest-posts__post-excerpt {   color: #666;   font-size: 1em;   margin-bottom: 0.5em; }  .wp-block-latest-posts__author {   font-size: 0.9em;   color: #888;   margin-bottom: 0.5em;   display: block; }\\\"} /--></div>\\n<!-- /wp:widget-group --></div>\\n<!-- /wp:column --></div>\\n<!-- /wp:columns --></details>\\n<!-- /wp:details -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-09-24 11:02:53\"\n    },\n    \"widget_block[28]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:columns -->\\n<div class=\\\"wp-block-columns\\\"><!-- wp:column {\\\"width\\\":\\\"100%\\\"} -->\\n<div class=\\\"wp-block-column\\\" style=\\\"flex-basis:100%\\\"><!-- wp:widget-group -->\\n<h2 class=\\\"widget-title\\\"></h2><div class=\\\"wp-widget-group__inner-blocks\\\"><!-- wp:latest-posts {\\\"postsToShow\\\":3,\\\"displayPostContent\\\":true,\\\"displayFeaturedImage\\\":true,\\\"align\\\":\\\"left\\\",\\\"className\\\":\\\".widget_recent_entries ul, .wp-block-latest-posts {   list-style: none;   margin: 0;   padding: 0; }  .widget_recent_entries li, .wp-block-latest-posts__list li {   margin-bottom: 2.5em;   border: none;   padding: 0; }  .widget_recent_entries li a, .wp-block-latest-posts__list a {   font-size: 1.1em;   font-weight: 700;   color: #222;   text-decoration: none;   letter-spacing: 0.05em;   text-transform: uppercase;   display: block;   margin-bottom: 0.2em; }  .widget_recent_entries .post-date, .wp-block-latest-posts__post-date {   display: block;   font-size: 0.9em;   color: #888;   margin-bottom: 0.5em; }  .wp-block-latest-posts__featured-image img {   width: 100%;   max-width: 180px;   height: auto;   display: block;   margin-bottom: 0.7em;   border-radius: 2px; }  .wp-block-latest-posts__list {   margin: 0;   padding: 0; }  .wp-block-latest-posts__list li {   border: none;   padding: 0 0 2em 0;   margin: 0; }  .wp-block-latest-posts__post-excerpt {   color: #666;   font-size: 1em;   margin-bottom: 0.5em; }  .wp-block-latest-posts__author {   font-size: 0.9em;   color: #888;   margin-bottom: 0.5em;   display: block; }\\\"} /--></div>\\n<!-- /wp:widget-group --></div>\\n<!-- /wp:column --></div>\\n<!-- /wp:columns -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-09-24 11:06:45\"\n    }\n}','','','trash','closed','closed','','53f78074-0d32-41ed-a553-84a1ebfaf1a8','','','2025-09-24 11:07:45','2025-09-24 11:07:45','',0,'http://wordpress-max.local/?p=95',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2025-09-24 11:07:45','2025-09-24 11:07:45','/* ===== Sidebar layout & intro ===== */\n#sidebar{padding:3rem 2rem 0}\n#sidebar section{margin:0 0 2.25rem}\n#sidebar section:last-child{margin-bottom:0}\n\n/* \"GreenTech Solutions\" block at the top */\n#sidebar #intro header h2{\n  margin:0 0 .35rem;\n  font-size:2rem;\n  font-weight:800;\n  letter-spacing:.08em;\n  color:#2a2a2a;\n}\n#sidebar #intro header p{\n  margin:0;\n  font-size:.9rem;\n  color:#66b72f;             /* <- green accent */\n  letter-spacing:.25em;\n  text-transform:uppercase;\n}\n\n/* Widget titles */\n#sidebar .widget-title{\n  margin:0 0 1rem;\n  font-size:.85rem;\n  text-transform:uppercase;\n  letter-spacing:.35rem;\n  font-weight:800;\n  color:#333;\n}\n\n/* Divider between widgets */\n#sidebar .widget:not(:last-child)::after{\n  content:\"\"; display:block; height:1px; background:#ececec; margin-top:2rem;\n}\n\n/* ===== Mini Posts Widget =====\n   (matches your PHP: .mini-posts-widget > .mini-posts > .mini-post) */\n\n.mini-posts-widget .mini-posts{display:grid; gap:1.25rem}\n\n/* Each mini-post is a two-column media card (thumb + meta) */\n.mini-posts-widget .mini-post{\n  display:grid;\n  grid-template-columns:96px 1fr;\n  grid-template-areas: \"thumb meta\";\n  column-gap:1rem;\n  align-items:start;\n  padding:0 0 1rem;\n  border-bottom:1px solid #f0f0f0;\n}\n.mini-posts-widget .mini-post:last-child{border-bottom:0; padding-bottom:0}\n\n/* Put the image in the left column even though it comes after header in DOM */\n.mini-posts-widget .mini-post .image{grid-area:thumb; display:block; width:96px; height:96px; overflow:hidden; border-radius:3px}\n.mini-posts-widget .mini-post .image img{width:100%; height:100%; object-fit:cover; display:block}\n\n/* Header/text on the right column */\n.mini-posts-widget .mini-post header{grid-area:meta}\n.mini-posts-widget .mini-post h3{margin:0 0 .35rem; font-size:.95rem; font-weight:800; letter-spacing:.06em}\n.mini-posts-widget .mini-post h3 a{color:#2d2d2d; text-decoration:none}\n.mini-posts-widget .mini-post h3 a:hover{color:#111}\n\n/* Date + author avatar */\n.mini-posts-widget .mini-post .published{\n  display:block; margin:.15rem 0 0;\n  font-size:.75rem; color:#9a9a9a;\n  text-transform:uppercase; letter-spacing:.08em;\n}\n.mini-posts-widget .mini-post .author img{\n  width:28px; height:28px; border-radius:50%; vertical-align:middle; margin-top:.35rem;\n}\n\n/* ===== Optional: Posts List area (simple media list) ===== */\n.posts-list-widget .widget-title{margin-bottom:.75rem}\n.posts-list-widget ul{list-style:none; margin:0; padding:0; display:grid; gap:.9rem}\n.posts-list-widget li a{color:#2d2d2d; text-decoration:none}\n.posts-list-widget li a:hover{text-decoration:underline}\n\n/* ===== Responsive ===== */\n@media (max-width:760px){\n  #sidebar{padding:2rem 1rem 0}\n  .mini-posts-widget .mini-post{\n    grid-template-columns:72px 1fr;\n  }\n  .mini-posts-widget .mini-post .image{width:72px; height:72px}\n}\n','ahmadtheme-wp-loop','','publish','closed','closed','','ahmadtheme-wp-loop','','','2025-09-24 11:07:45','2025-09-24 11:07:45','',0,'http://wordpress-max.local/ahmadtheme-wp-loop/',0,'custom_css','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2025-09-24 11:07:45','2025-09-24 11:07:45','/* ===== Sidebar layout & intro ===== */\n#sidebar{padding:3rem 2rem 0}\n#sidebar section{margin:0 0 2.25rem}\n#sidebar section:last-child{margin-bottom:0}\n\n/* \"GreenTech Solutions\" block at the top */\n#sidebar #intro header h2{\n  margin:0 0 .35rem;\n  font-size:2rem;\n  font-weight:800;\n  letter-spacing:.08em;\n  color:#2a2a2a;\n}\n#sidebar #intro header p{\n  margin:0;\n  font-size:.9rem;\n  color:#66b72f;             /* <- green accent */\n  letter-spacing:.25em;\n  text-transform:uppercase;\n}\n\n/* Widget titles */\n#sidebar .widget-title{\n  margin:0 0 1rem;\n  font-size:.85rem;\n  text-transform:uppercase;\n  letter-spacing:.35rem;\n  font-weight:800;\n  color:#333;\n}\n\n/* Divider between widgets */\n#sidebar .widget:not(:last-child)::after{\n  content:\"\"; display:block; height:1px; background:#ececec; margin-top:2rem;\n}\n\n/* ===== Mini Posts Widget =====\n   (matches your PHP: .mini-posts-widget > .mini-posts > .mini-post) */\n\n.mini-posts-widget .mini-posts{display:grid; gap:1.25rem}\n\n/* Each mini-post is a two-column media card (thumb + meta) */\n.mini-posts-widget .mini-post{\n  display:grid;\n  grid-template-columns:96px 1fr;\n  grid-template-areas: \"thumb meta\";\n  column-gap:1rem;\n  align-items:start;\n  padding:0 0 1rem;\n  border-bottom:1px solid #f0f0f0;\n}\n.mini-posts-widget .mini-post:last-child{border-bottom:0; padding-bottom:0}\n\n/* Put the image in the left column even though it comes after header in DOM */\n.mini-posts-widget .mini-post .image{grid-area:thumb; display:block; width:96px; height:96px; overflow:hidden; border-radius:3px}\n.mini-posts-widget .mini-post .image img{width:100%; height:100%; object-fit:cover; display:block}\n\n/* Header/text on the right column */\n.mini-posts-widget .mini-post header{grid-area:meta}\n.mini-posts-widget .mini-post h3{margin:0 0 .35rem; font-size:.95rem; font-weight:800; letter-spacing:.06em}\n.mini-posts-widget .mini-post h3 a{color:#2d2d2d; text-decoration:none}\n.mini-posts-widget .mini-post h3 a:hover{color:#111}\n\n/* Date + author avatar */\n.mini-posts-widget .mini-post .published{\n  display:block; margin:.15rem 0 0;\n  font-size:.75rem; color:#9a9a9a;\n  text-transform:uppercase; letter-spacing:.08em;\n}\n.mini-posts-widget .mini-post .author img{\n  width:28px; height:28px; border-radius:50%; vertical-align:middle; margin-top:.35rem;\n}\n\n/* ===== Optional: Posts List area (simple media list) ===== */\n.posts-list-widget .widget-title{margin-bottom:.75rem}\n.posts-list-widget ul{list-style:none; margin:0; padding:0; display:grid; gap:.9rem}\n.posts-list-widget li a{color:#2d2d2d; text-decoration:none}\n.posts-list-widget li a:hover{text-decoration:underline}\n\n/* ===== Responsive ===== */\n@media (max-width:760px){\n  #sidebar{padding:2rem 1rem 0}\n  .mini-posts-widget .mini-post{\n    grid-template-columns:72px 1fr;\n  }\n  .mini-posts-widget .mini-post .image{width:72px; height:72px}\n}\n','ahmadtheme-wp-loop','','inherit','closed','closed','','96-revision-v1','','','2025-09-24 11:07:45','2025-09-24 11:07:45','',96,'http://wordpress-max.local/?p=97',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (6,1,0);
INSERT INTO `wp_term_relationships` VALUES (8,1,0);
INSERT INTO `wp_term_relationships` VALUES (10,1,0);
INSERT INTO `wp_term_relationships` VALUES (56,3,0);
INSERT INTO `wp_term_relationships` VALUES (57,3,0);
INSERT INTO `wp_term_relationships` VALUES (58,3,0);
INSERT INTO `wp_term_relationships` VALUES (59,3,0);
INSERT INTO `wp_term_relationships` VALUES (60,3,0);
INSERT INTO `wp_term_relationships` VALUES (61,3,0);
INSERT INTO `wp_term_relationships` VALUES (83,1,0);
INSERT INTO `wp_term_relationships` VALUES (87,1,0);
INSERT INTO `wp_term_relationships` VALUES (89,1,0);
INSERT INTO `wp_term_relationships` VALUES (91,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,6);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,6);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (3,'Primary Menu','primary-menu',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Ahmad');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','80');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:5:{s:4:\"core\";a:5:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"fixedToolbar\";b:0;s:15:\"distractionFree\";b:0;s:9:\"focusMode\";b:0;s:14:\"inactivePanels\";a:0:{}}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2025-09-24T10:59:14.996Z\";s:17:\"core/edit-widgets\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:12:\"fixedToolbar\";b:1;}s:22:\"core/customize-widgets\";a:2:{s:12:\"welcomeGuide\";b:0;s:20:\"keepCaretInsideBlock\";b:0;}}');
INSERT INTO `wp_usermeta` VALUES (20,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'nav_menu_recently_edited','3');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (24,1,'wp_user-settings-time','1757501477');
INSERT INTO `wp_usermeta` VALUES (26,1,'session_tokens','a:2:{s:64:\"ec91bace14e9e7459f58bee2fec837ab1bc6324131a02e08643ec6a67eb51183\";a:4:{s:10:\"expiration\";i:1758878515;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36\";s:5:\"login\";i:1758705715;}s:64:\"fd9d33b4f411c30a08bca03f54f5e730ee9c1e566ef162d6ca82f2e2e7c9835f\";a:4:{s:10:\"expiration\";i:1758878519;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36\";s:5:\"login\";i:1758705719;}}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'Ahmad','$wp$2y$10$CSTU0lCI5I31csZJOSsQLeV5L0GGMIJ7e6W23lesNZf./3UUtSeVi','ahmad','dev-email@wpengine.local','http://wordpress-max.local','2025-09-03 09:35:03','',0,'Ahmad');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-01 13:10:49
