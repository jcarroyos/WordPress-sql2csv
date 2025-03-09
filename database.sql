/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.8-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: u666555369_owKGH
-- ------------------------------------------------------
-- Server version	10.11.8-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES
(1,1,'Un comentarista de WordPress','wapuu@wordpress.example','https://es-co.wordpress.org/','','2024-05-25 16:55:20','2024-05-25 21:55:20','Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita en el escritorio la pantalla de comentarios.\nLos avatares de los comentaristas provienen de <a href=\"https://es.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;

--
-- Table structure for table `wp_litespeed_url`
--

DROP TABLE IF EXISTS `wp_litespeed_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_litespeed_url` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(500) NOT NULL,
  `cache_tags` varchar(1000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`(191)),
  KEY `cache_tags` (`cache_tags`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_litespeed_url`
--

/*!40000 ALTER TABLE `wp_litespeed_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_litespeed_url` ENABLE KEYS */;

--
-- Table structure for table `wp_litespeed_url_file`
--

DROP TABLE IF EXISTS `wp_litespeed_url_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_litespeed_url_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url_id` bigint(20) NOT NULL,
  `vary` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'md5 of final vary',
  `filename` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'md5 of file content',
  `type` tinyint(4) NOT NULL COMMENT 'css=1,js=2,ccss=3,ucss=4',
  `mobile` tinyint(4) NOT NULL COMMENT 'mobile=1',
  `webp` tinyint(4) NOT NULL COMMENT 'webp=1',
  `expired` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `filename` (`filename`),
  KEY `type` (`type`),
  KEY `url_id_2` (`url_id`,`vary`,`type`),
  KEY `filename_2` (`filename`,`expired`),
  KEY `url_id` (`url_id`,`expired`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_litespeed_url_file`
--

/*!40000 ALTER TABLE `wp_litespeed_url_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_litespeed_url_file` ENABLE KEYS */;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1672 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES
(1,'siteurl','https://artineverydaypeace.com','yes'),
(2,'home','https://artineverydaypeace.com','yes'),
(3,'blogname','artineverydaypeace.com','yes'),
(4,'blogdescription','','yes'),
(5,'users_can_register','0','yes'),
(6,'admin_email','luciaquijano@gmail.com','yes'),
(7,'start_of_week','1','yes'),
(8,'use_balanceTags','0','yes'),
(9,'use_smilies','1','yes'),
(10,'require_name_email','1','yes'),
(11,'comments_notify','1','yes'),
(12,'posts_per_rss','10','yes'),
(13,'rss_use_excerpt','0','yes'),
(14,'mailserver_url','mail.example.com','yes'),
(15,'mailserver_login','login@example.com','yes'),
(16,'mailserver_pass','password','yes'),
(17,'mailserver_port','110','yes'),
(18,'default_category','1','yes'),
(19,'default_comment_status','open','yes'),
(20,'default_ping_status','open','yes'),
(21,'default_pingback_flag','1','yes'),
(22,'posts_per_page','10','yes'),
(23,'date_format','j F, Y','yes'),
(24,'time_format','g:i a','yes'),
(25,'links_updated_date_format','j F, Y g:i a','yes'),
(26,'comment_moderation','0','yes'),
(27,'moderation_notify','1','yes'),
(28,'permalink_structure','/%postname%/','yes'),
(29,'rewrite_rules','a:93:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes'),
(30,'hack_file','0','yes'),
(31,'blog_charset','UTF-8','yes'),
(32,'moderation_keys','','no'),
(33,'active_plugins','a:3:{i:0;s:35:\"google-site-kit/google-site-kit.php\";i:1;s:23:\"hostinger/hostinger.php\";i:2;s:35:\"litespeed-cache/litespeed-cache.php\";}','yes'),
(34,'category_base','','yes'),
(35,'ping_sites','http://rpc.pingomatic.com/','yes'),
(36,'comment_max_links','2','yes'),
(37,'gmt_offset','-5','yes'),
(38,'default_email_category','1','yes'),
(39,'recently_edited','','no'),
(40,'template','twentytwentyfour','yes'),
(41,'stylesheet','twentytwentyfour','yes'),
(42,'comment_registration','0','yes'),
(43,'html_type','text/html','yes'),
(44,'use_trackback','0','yes'),
(45,'default_role','subscriber','yes'),
(46,'db_version','57155','yes'),
(47,'uploads_use_yearmonth_folders','1','yes'),
(48,'upload_path','','yes'),
(49,'blog_public','0','yes'),
(50,'default_link_category','2','yes'),
(51,'show_on_front','posts','yes'),
(52,'tag_base','','yes'),
(53,'show_avatars','1','yes'),
(54,'avatar_rating','G','yes'),
(55,'upload_url_path','','yes'),
(56,'thumbnail_size_w','150','yes'),
(57,'thumbnail_size_h','150','yes'),
(58,'thumbnail_crop','1','yes'),
(59,'medium_size_w','300','yes'),
(60,'medium_size_h','300','yes'),
(61,'avatar_default','mystery','yes'),
(62,'large_size_w','1024','yes'),
(63,'large_size_h','1024','yes'),
(64,'image_default_link_type','none','yes'),
(65,'image_default_size','','yes'),
(66,'image_default_align','','yes'),
(67,'close_comments_for_old_posts','0','yes'),
(68,'close_comments_days_old','14','yes'),
(69,'thread_comments','1','yes'),
(70,'thread_comments_depth','5','yes'),
(71,'page_comments','0','yes'),
(72,'comments_per_page','50','yes'),
(73,'default_comments_page','newest','yes'),
(74,'comment_order','asc','yes'),
(75,'sticky_posts','a:0:{}','yes'),
(76,'widget_categories','a:0:{}','yes'),
(77,'widget_text','a:0:{}','yes'),
(78,'widget_rss','a:0:{}','yes'),
(79,'uninstall_plugins','a:1:{s:35:\"litespeed-cache/litespeed-cache.php\";s:47:\"LiteSpeed\\Activation::uninstall_litespeed_cache\";}','no'),
(80,'timezone_string','','yes'),
(81,'page_for_posts','0','yes'),
(82,'page_on_front','0','yes'),
(83,'default_post_format','0','yes'),
(84,'link_manager_enabled','0','yes'),
(85,'finished_splitting_shared_terms','1','yes'),
(86,'site_icon','0','yes'),
(87,'medium_large_size_w','768','yes'),
(88,'medium_large_size_h','0','yes'),
(89,'wp_page_for_privacy_policy','3','yes'),
(90,'show_comments_cookies_opt_in','1','yes'),
(91,'admin_email_lifespan','1732226120','yes'),
(92,'disallowed_keys','','no'),
(93,'comment_previously_approved','1','yes'),
(94,'auto_plugin_theme_update_emails','a:0:{}','no'),
(95,'auto_update_core_dev','enabled','yes'),
(96,'auto_update_core_minor','enabled','yes'),
(97,'auto_update_core_major','enabled','yes'),
(98,'wp_force_deactivated_plugins','a:0:{}','yes'),
(99,'wp_attachment_pages_enabled','0','yes'),
(100,'initial_db_version','57155','yes'),
(101,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),
(102,'fresh_site','0','yes'),
(103,'user_count','1','no'),
(104,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:160:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Entradas recientes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentarios recientes</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorías</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes'),
(105,'sidebars_widgets','a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"blog-sidebar\";a:0:{}s:12:\"shop-sidebar\";a:0:{}s:18:\"footer-one-widgets\";a:0:{}s:18:\"footer-two-widgets\";a:0:{}s:20:\"footer-three-widgets\";a:0:{}s:19:\"footer-four-widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes'),
(106,'cron','a:10:{i:1720614635;a:2:{s:19:\"litespeed_task_lqip\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:16:\"litespeed_filter\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}s:27:\"litespeed_task_imgoptm_pull\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:16:\"litespeed_filter\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1720616121;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1720628733;a:1:{s:46:\"googlesitekit_cron_synchronize_ads_linked_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1720648521;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1720648541;a:1:{s:41:\"googlesitekit_cron_update_remote_features\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1720648772;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1720648773;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1720907723;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1720994121;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes'),
(107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.5.5\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:27:\"post-content/editor-rtl.css\";i:281;s:31:\"post-content/editor-rtl.min.css\";i:282;s:23:\"post-content/editor.css\";i:283;s:27:\"post-content/editor.min.css\";i:284;s:23:\"post-date/style-rtl.css\";i:285;s:27:\"post-date/style-rtl.min.css\";i:286;s:19:\"post-date/style.css\";i:287;s:23:\"post-date/style.min.css\";i:288;s:27:\"post-excerpt/editor-rtl.css\";i:289;s:31:\"post-excerpt/editor-rtl.min.css\";i:290;s:23:\"post-excerpt/editor.css\";i:291;s:27:\"post-excerpt/editor.min.css\";i:292;s:26:\"post-excerpt/style-rtl.css\";i:293;s:30:\"post-excerpt/style-rtl.min.css\";i:294;s:22:\"post-excerpt/style.css\";i:295;s:26:\"post-excerpt/style.min.css\";i:296;s:34:\"post-featured-image/editor-rtl.css\";i:297;s:38:\"post-featured-image/editor-rtl.min.css\";i:298;s:30:\"post-featured-image/editor.css\";i:299;s:34:\"post-featured-image/editor.min.css\";i:300;s:33:\"post-featured-image/style-rtl.css\";i:301;s:37:\"post-featured-image/style-rtl.min.css\";i:302;s:29:\"post-featured-image/style.css\";i:303;s:33:\"post-featured-image/style.min.css\";i:304;s:34:\"post-navigation-link/style-rtl.css\";i:305;s:38:\"post-navigation-link/style-rtl.min.css\";i:306;s:30:\"post-navigation-link/style.css\";i:307;s:34:\"post-navigation-link/style.min.css\";i:308;s:28:\"post-template/editor-rtl.css\";i:309;s:32:\"post-template/editor-rtl.min.css\";i:310;s:24:\"post-template/editor.css\";i:311;s:28:\"post-template/editor.min.css\";i:312;s:27:\"post-template/style-rtl.css\";i:313;s:31:\"post-template/style-rtl.min.css\";i:314;s:23:\"post-template/style.css\";i:315;s:27:\"post-template/style.min.css\";i:316;s:24:\"post-terms/style-rtl.css\";i:317;s:28:\"post-terms/style-rtl.min.css\";i:318;s:20:\"post-terms/style.css\";i:319;s:24:\"post-terms/style.min.css\";i:320;s:24:\"post-title/style-rtl.css\";i:321;s:28:\"post-title/style-rtl.min.css\";i:322;s:20:\"post-title/style.css\";i:323;s:24:\"post-title/style.min.css\";i:324;s:26:\"preformatted/style-rtl.css\";i:325;s:30:\"preformatted/style-rtl.min.css\";i:326;s:22:\"preformatted/style.css\";i:327;s:26:\"preformatted/style.min.css\";i:328;s:24:\"pullquote/editor-rtl.css\";i:329;s:28:\"pullquote/editor-rtl.min.css\";i:330;s:20:\"pullquote/editor.css\";i:331;s:24:\"pullquote/editor.min.css\";i:332;s:23:\"pullquote/style-rtl.css\";i:333;s:27:\"pullquote/style-rtl.min.css\";i:334;s:19:\"pullquote/style.css\";i:335;s:23:\"pullquote/style.min.css\";i:336;s:23:\"pullquote/theme-rtl.css\";i:337;s:27:\"pullquote/theme-rtl.min.css\";i:338;s:19:\"pullquote/theme.css\";i:339;s:23:\"pullquote/theme.min.css\";i:340;s:39:\"query-pagination-numbers/editor-rtl.css\";i:341;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:342;s:35:\"query-pagination-numbers/editor.css\";i:343;s:39:\"query-pagination-numbers/editor.min.css\";i:344;s:31:\"query-pagination/editor-rtl.css\";i:345;s:35:\"query-pagination/editor-rtl.min.css\";i:346;s:27:\"query-pagination/editor.css\";i:347;s:31:\"query-pagination/editor.min.css\";i:348;s:30:\"query-pagination/style-rtl.css\";i:349;s:34:\"query-pagination/style-rtl.min.css\";i:350;s:26:\"query-pagination/style.css\";i:351;s:30:\"query-pagination/style.min.css\";i:352;s:25:\"query-title/style-rtl.css\";i:353;s:29:\"query-title/style-rtl.min.css\";i:354;s:21:\"query-title/style.css\";i:355;s:25:\"query-title/style.min.css\";i:356;s:20:\"query/editor-rtl.css\";i:357;s:24:\"query/editor-rtl.min.css\";i:358;s:16:\"query/editor.css\";i:359;s:20:\"query/editor.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}','yes'),
(123,'recovery_keys','a:0:{}','yes'),
(125,'theme_mods_twentytwentyfour','a:4:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1716674133;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:19:\"wp_classic_sidebars\";a:6:{s:12:\"blog-sidebar\";a:11:{s:4:\"name\";s:7:\"Sidebar\";s:2:\"id\";s:12:\"blog-sidebar\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:35:\"<div id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:6:\"</div>\";s:12:\"before_title\";s:24:\"<p class=\"widget-title\">\";s:11:\"after_title\";s:4:\"</p>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:12:\"shop-sidebar\";a:11:{s:4:\"name\";s:12:\"Shop Sidebar\";s:2:\"id\";s:12:\"shop-sidebar\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:35:\"<div id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:6:\"</div>\";s:12:\"before_title\";s:24:\"<p class=\"widget-title\">\";s:11:\"after_title\";s:4:\"</p>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:18:\"footer-one-widgets\";a:11:{s:4:\"name\";s:10:\"Footer One\";s:2:\"id\";s:18:\"footer-one-widgets\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:35:\"<div id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:6:\"</div>\";s:12:\"before_title\";s:24:\"<p class=\"widget-title\">\";s:11:\"after_title\";s:4:\"</p>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:18:\"footer-two-widgets\";a:11:{s:4:\"name\";s:10:\"Footer Two\";s:2:\"id\";s:18:\"footer-two-widgets\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:35:\"<div id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:6:\"</div>\";s:12:\"before_title\";s:24:\"<p class=\"widget-title\">\";s:11:\"after_title\";s:4:\"</p>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:20:\"footer-three-widgets\";a:11:{s:4:\"name\";s:12:\"Footer Three\";s:2:\"id\";s:20:\"footer-three-widgets\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:35:\"<div id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:6:\"</div>\";s:12:\"before_title\";s:24:\"<p class=\"widget-title\">\";s:11:\"after_title\";s:4:\"</p>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:19:\"footer-four-widgets\";a:11:{s:4:\"name\";s:11:\"Footer Four\";s:2:\"id\";s:19:\"footer-four-widgets\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:35:\"<div id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:6:\"</div>\";s:12:\"before_title\";s:24:\"<p class=\"widget-title\">\";s:11:\"after_title\";s:4:\"</p>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}}s:18:\"nav_menu_locations\";a:0:{}}','yes'),
(131,'category_children','a:0:{}','yes'),
(135,'hostinger_show_onboarding','1','yes'),
(137,'optin_monster_api_activation_redirect_disabled','true','yes'),
(138,'wpforms_activation_redirect','true','yes'),
(139,'aioseo_activation_redirect','false','yes'),
(140,'hts_new_installation','new','yes'),
(144,'litespeed.conf.__activation','-1','yes'),
(145,'recently_activated','a:1:{s:35:\"litespeed-cache/litespeed-cache.php\";i:1716674132;}','yes'),
(146,'current_theme','Twenty Twenty-Four','yes'),
(147,'theme_switched','','yes'),
(148,'theme_mods_neve','a:8:{s:18:\"nav_menu_locations\";a:0:{}s:30:\"neve_auto_migrated_to_new_skin\";b:1;s:19:\"neve_ran_migrations\";b:1;s:22:\"neve_migrated_builders\";b:1;s:13:\"neve_new_skin\";s:3:\"new\";s:24:\"neve_migrated_hfg_colors\";b:1;s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1716674432;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','no'),
(149,'litespeed.cloud._summary','{\"curr_request.ver\":0,\"last_request.ver\":1716674134,\"news.utime\":1716678727,\"curr_request.news\":0,\"last_request.news\":1716678727}','yes'),
(150,'hostinger_hosting_plan','hostinger_premium','yes'),
(151,'litespeed.conf._version','6.2.0.1','yes'),
(152,'litespeed.conf.hash','umg9q6ehgYASkEmpOWD7ozEcdb4M2Tbe','yes'),
(153,'litespeed.conf.auto_upgrade','','yes'),
(154,'litespeed.conf.api_key','','yes'),
(155,'litespeed.conf.server_ip','','yes'),
(156,'litespeed.conf.guest','','yes'),
(157,'litespeed.conf.guest_optm','','yes'),
(158,'litespeed.conf.news','1','yes'),
(159,'litespeed.conf.guest_uas','[\"Lighthouse\",\"GTmetrix\",\"Google\",\"Pingdom\",\"bot\",\"spider\",\"PTST\",\"HeadlessChrome\"]','yes'),
(160,'litespeed.conf.guest_ips','[\"208.70.247.157\",\"172.255.48.130\",\"172.255.48.131\",\"172.255.48.132\",\"172.255.48.133\",\"172.255.48.134\",\"172.255.48.135\",\"172.255.48.136\",\"172.255.48.137\",\"172.255.48.138\",\"172.255.48.139\",\"172.255.48.140\",\"172.255.48.141\",\"172.255.48.142\",\"172.255.48.143\",\"172.255.48.144\",\"172.255.48.145\",\"172.255.48.146\",\"172.255.48.147\",\"52.229.122.240\",\"104.214.72.101\",\"13.66.7.11\",\"13.85.24.83\",\"13.85.24.90\",\"13.85.82.26\",\"40.74.242.253\",\"40.74.243.13\",\"40.74.243.176\",\"104.214.48.247\",\"157.55.189.189\",\"104.214.110.135\",\"70.37.83.240\",\"65.52.36.250\",\"13.78.216.56\",\"52.162.212.163\",\"23.96.34.105\",\"65.52.113.236\",\"172.255.61.34\",\"172.255.61.35\",\"172.255.61.36\",\"172.255.61.37\",\"172.255.61.38\",\"172.255.61.39\",\"172.255.61.40\",\"104.41.2.19\",\"191.235.98.164\",\"191.235.99.221\",\"191.232.194.51\",\"52.237.235.185\",\"52.237.250.73\",\"52.237.236.145\",\"104.211.143.8\",\"104.211.165.53\",\"52.172.14.87\",\"40.83.89.214\",\"52.175.57.81\",\"20.188.63.151\",\"20.52.36.49\",\"52.246.165.153\",\"51.144.102.233\",\"13.76.97.224\",\"102.133.169.66\",\"52.231.199.170\",\"13.53.162.7\",\"40.123.218.94\"]','yes'),
(161,'litespeed.conf.cache','1','yes'),
(162,'litespeed.conf.cache-priv','1','yes'),
(163,'litespeed.conf.cache-commenter','1','yes'),
(164,'litespeed.conf.cache-rest','1','yes'),
(165,'litespeed.conf.cache-page_login','1','yes'),
(166,'litespeed.conf.cache-resources','1','yes'),
(167,'litespeed.conf.cache-mobile','','yes'),
(168,'litespeed.conf.cache-mobile_rules','[\"Mobile\",\"Android\",\"Silk\\/\",\"Kindle\",\"BlackBerry\",\"Opera Mini\",\"Opera Mobi\"]','yes'),
(169,'litespeed.conf.cache-browser','','yes'),
(170,'litespeed.conf.cache-exc_useragents','[]','yes'),
(171,'litespeed.conf.cache-exc_cookies','[]','yes'),
(172,'litespeed.conf.cache-exc_qs','[]','yes'),
(173,'litespeed.conf.cache-exc_cat','[]','yes'),
(174,'litespeed.conf.cache-exc_tag','[]','yes'),
(175,'litespeed.conf.cache-force_uri','[]','yes'),
(176,'litespeed.conf.cache-force_pub_uri','[]','yes'),
(177,'litespeed.conf.cache-priv_uri','[]','yes'),
(178,'litespeed.conf.cache-exc','[]','yes'),
(179,'litespeed.conf.cache-exc_roles','[]','yes'),
(180,'litespeed.conf.cache-drop_qs','[\"fbclid\",\"gclid\",\"utm*\",\"_ga\"]','yes'),
(181,'litespeed.conf.cache-ttl_pub','604800','yes'),
(182,'litespeed.conf.cache-ttl_priv','1800','yes'),
(183,'litespeed.conf.cache-ttl_frontpage','604800','yes'),
(184,'litespeed.conf.cache-ttl_feed','604800','yes'),
(185,'litespeed.conf.cache-ttl_rest','604800','yes'),
(186,'litespeed.conf.cache-ttl_browser','31557600','yes'),
(187,'litespeed.conf.cache-ttl_status','[\"404 3600\",\"500 600\"]','yes'),
(188,'litespeed.conf.cache-login_cookie','','yes'),
(189,'litespeed.conf.cache-vary_cookies','[]','yes'),
(190,'litespeed.conf.cache-vary_group','[]','yes'),
(191,'litespeed.conf.purge-upgrade','1','yes'),
(192,'litespeed.conf.purge-stale','','yes'),
(193,'litespeed.conf.purge-post_all','','yes'),
(194,'litespeed.conf.purge-post_f','1','yes'),
(195,'litespeed.conf.purge-post_h','1','yes'),
(196,'litespeed.conf.purge-post_p','1','yes'),
(197,'litespeed.conf.purge-post_pwrp','1','yes'),
(198,'litespeed.conf.purge-post_a','1','yes'),
(199,'litespeed.conf.purge-post_y','','yes'),
(200,'litespeed.conf.purge-post_m','1','yes'),
(201,'litespeed.conf.purge-post_d','','yes'),
(202,'litespeed.conf.purge-post_t','1','yes'),
(203,'litespeed.conf.purge-post_pt','1','yes'),
(204,'litespeed.conf.purge-timed_urls','[]','yes'),
(205,'litespeed.conf.purge-timed_urls_time','','yes'),
(206,'litespeed.conf.purge-hook_all','[\"switch_theme\",\"wp_create_nav_menu\",\"wp_update_nav_menu\",\"wp_delete_nav_menu\",\"create_term\",\"edit_terms\",\"delete_term\",\"add_link\",\"edit_link\",\"delete_link\"]','yes'),
(207,'litespeed.conf.esi','','yes'),
(208,'litespeed.conf.esi-cache_admbar','1','yes'),
(209,'litespeed.conf.esi-cache_commform','1','yes'),
(210,'litespeed.conf.esi-nonce','[\"stats_nonce\",\"subscribe_nonce\"]','yes'),
(211,'litespeed.conf.util-instant_click','','yes'),
(212,'litespeed.conf.util-no_https_vary','','yes'),
(213,'litespeed.conf.debug-disable_all','','yes'),
(214,'litespeed.conf.debug','','yes'),
(215,'litespeed.conf.debug-ips','[\"127.0.0.1\"]','yes'),
(216,'litespeed.conf.debug-level','','yes'),
(217,'litespeed.conf.debug-filesize','3','yes'),
(218,'litespeed.conf.debug-cookie','','yes'),
(219,'litespeed.conf.debug-collaps_qs','','yes'),
(220,'litespeed.conf.debug-inc','[]','yes'),
(221,'litespeed.conf.debug-exc','[]','yes'),
(222,'litespeed.conf.debug-exc_strings','[]','yes'),
(223,'litespeed.conf.db_optm-revisions_max','0','yes'),
(224,'litespeed.conf.db_optm-revisions_age','0','yes'),
(225,'litespeed.conf.optm-css_min','','yes'),
(226,'litespeed.conf.optm-css_comb','','yes'),
(227,'litespeed.conf.optm-css_comb_ext_inl','1','yes'),
(228,'litespeed.conf.optm-ucss','','yes'),
(229,'litespeed.conf.optm-ucss_inline','','yes'),
(230,'litespeed.conf.optm-ucss_whitelist','[]','yes'),
(231,'litespeed.conf.optm-ucss_file_exc_inline','[]','yes'),
(232,'litespeed.conf.optm-ucss_exc','[]','yes'),
(233,'litespeed.conf.optm-css_exc','[]','yes'),
(234,'litespeed.conf.optm-js_min','','yes'),
(235,'litespeed.conf.optm-js_comb','','yes'),
(236,'litespeed.conf.optm-js_comb_ext_inl','1','yes'),
(237,'litespeed.conf.optm-js_delay_inc','[]','yes'),
(238,'litespeed.conf.optm-js_exc','[\"jquery.js\",\"jquery.min.js\"]','yes'),
(239,'litespeed.conf.optm-html_min','','yes'),
(240,'litespeed.conf.optm-html_lazy','[]','yes'),
(241,'litespeed.conf.optm-qs_rm','','yes'),
(242,'litespeed.conf.optm-ggfonts_rm','','yes'),
(243,'litespeed.conf.optm-css_async','','yes'),
(244,'litespeed.conf.optm-ccss_per_url','','yes'),
(245,'litespeed.conf.optm-ccss_sep_posttype','[\"page\"]','yes'),
(246,'litespeed.conf.optm-ccss_sep_uri','[]','yes'),
(247,'litespeed.conf.optm-css_async_inline','1','yes'),
(248,'litespeed.conf.optm-css_font_display','','yes'),
(249,'litespeed.conf.optm-js_defer','','yes'),
(250,'litespeed.conf.optm-emoji_rm','','yes'),
(251,'litespeed.conf.optm-noscript_rm','','yes'),
(252,'litespeed.conf.optm-ggfonts_async','','yes'),
(253,'litespeed.conf.optm-exc_roles','[]','yes'),
(254,'litespeed.conf.optm-ccss_con','','yes'),
(255,'litespeed.conf.optm-js_defer_exc','[\"jquery.js\",\"jquery.min.js\",\"gtm.js\",\"analytics.js\"]','yes'),
(256,'litespeed.conf.optm-gm_js_exc','[]','yes'),
(257,'litespeed.conf.optm-dns_prefetch','[]','yes'),
(258,'litespeed.conf.optm-dns_prefetch_ctrl','','yes'),
(259,'litespeed.conf.optm-dns_preconnect','[]','yes'),
(260,'litespeed.conf.optm-exc','[]','yes'),
(261,'litespeed.conf.optm-guest_only','1','yes'),
(262,'litespeed.conf.object','','yes'),
(263,'litespeed.conf.object-kind','','yes'),
(264,'litespeed.conf.object-host','localhost','yes'),
(265,'litespeed.conf.object-port','11211','yes'),
(266,'litespeed.conf.object-life','360','yes'),
(267,'litespeed.conf.object-persistent','1','yes'),
(268,'litespeed.conf.object-admin','1','yes'),
(269,'litespeed.conf.object-transients','1','yes'),
(270,'litespeed.conf.object-db_id','0','yes'),
(271,'litespeed.conf.object-user','','yes'),
(272,'litespeed.conf.object-pswd','','yes'),
(273,'litespeed.conf.object-global_groups','[\"users\",\"userlogins\",\"useremail\",\"userslugs\",\"usermeta\",\"user_meta\",\"site-transient\",\"site-options\",\"site-lookup\",\"site-details\",\"blog-lookup\",\"blog-details\",\"blog-id-cache\",\"rss\",\"global-posts\",\"global-cache-test\"]','yes'),
(274,'litespeed.conf.object-non_persistent_groups','[\"comment\",\"counts\",\"plugins\",\"wc_session_id\"]','yes'),
(275,'litespeed.conf.discuss-avatar_cache','','yes'),
(276,'litespeed.conf.discuss-avatar_cron','','yes'),
(277,'litespeed.conf.discuss-avatar_cache_ttl','604800','yes'),
(278,'litespeed.conf.optm-localize','','yes'),
(279,'litespeed.conf.optm-localize_domains','[\"### Popular scripts ###\",\"https:\\/\\/platform.twitter.com\\/widgets.js\",\"https:\\/\\/connect.facebook.net\\/en_US\\/fbevents.js\"]','yes'),
(280,'litespeed.conf.media-lazy','','yes'),
(281,'litespeed.conf.media-lazy_placeholder','','yes'),
(282,'litespeed.conf.media-placeholder_resp','','yes'),
(283,'litespeed.conf.media-placeholder_resp_color','#cfd4db','yes'),
(284,'litespeed.conf.media-placeholder_resp_svg','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"{width}\" height=\"{height}\" viewBox=\"0 0 {width} {height}\"><rect width=\"100%\" height=\"100%\" style=\"fill:{color};fill-opacity: 0.1;\"/></svg>','yes'),
(285,'litespeed.conf.media-lqip','','yes'),
(286,'litespeed.conf.media-lqip_qual','4','yes'),
(287,'litespeed.conf.media-lqip_min_w','150','yes'),
(288,'litespeed.conf.media-lqip_min_h','150','yes'),
(289,'litespeed.conf.media-placeholder_resp_async','1','yes'),
(290,'litespeed.conf.media-iframe_lazy','','yes'),
(291,'litespeed.conf.media-add_missing_sizes','','yes'),
(292,'litespeed.conf.media-lazy_exc','[]','yes'),
(293,'litespeed.conf.media-lazy_cls_exc','[\"wmu-preview-img\"]','yes'),
(294,'litespeed.conf.media-lazy_parent_cls_exc','[]','yes'),
(295,'litespeed.conf.media-iframe_lazy_cls_exc','[]','yes'),
(296,'litespeed.conf.media-iframe_lazy_parent_cls_exc','[]','yes'),
(297,'litespeed.conf.media-lazy_uri_exc','[]','yes'),
(298,'litespeed.conf.media-lqip_exc','[]','yes'),
(299,'litespeed.conf.media-vpi','','yes'),
(300,'litespeed.conf.media-vpi_cron','','yes'),
(301,'litespeed.conf.img_optm-auto','','yes'),
(302,'litespeed.conf.img_optm-cron','1','yes'),
(303,'litespeed.conf.img_optm-ori','1','yes'),
(304,'litespeed.conf.img_optm-rm_bkup','','yes'),
(305,'litespeed.conf.img_optm-webp','','yes'),
(306,'litespeed.conf.img_optm-lossless','','yes'),
(307,'litespeed.conf.img_optm-exif','1','yes'),
(308,'litespeed.conf.img_optm-webp_attr','[\"img.src\",\"div.data-thumb\",\"img.data-src\",\"img.data-lazyload\",\"div.data-large_image\",\"img.retina_logo_url\",\"div.data-parallax-image\",\"div.data-vc-parallax-image\",\"video.poster\"]','yes'),
(309,'litespeed.conf.img_optm-webp_replace_srcset','','yes'),
(310,'litespeed.conf.img_optm-jpg_quality','82','yes'),
(311,'litespeed.conf.crawler','','yes'),
(312,'litespeed.conf.crawler-usleep','500','yes'),
(313,'litespeed.conf.crawler-run_duration','400','yes'),
(314,'litespeed.conf.crawler-run_interval','600','yes'),
(315,'litespeed.conf.crawler-crawl_interval','302400','yes'),
(316,'litespeed.conf.crawler-threads','3','yes'),
(317,'litespeed.conf.crawler-timeout','30','yes'),
(318,'litespeed.conf.crawler-load_limit','1','yes'),
(319,'litespeed.conf.crawler-sitemap','','yes'),
(320,'litespeed.conf.crawler-drop_domain','1','yes'),
(321,'litespeed.conf.crawler-map_timeout','120','yes'),
(322,'litespeed.conf.crawler-roles','[]','yes'),
(323,'litespeed.conf.crawler-cookies','[]','yes'),
(324,'litespeed.conf.misc-heartbeat_front','','yes'),
(325,'litespeed.conf.misc-heartbeat_front_ttl','60','yes'),
(326,'litespeed.conf.misc-heartbeat_back','','yes'),
(327,'litespeed.conf.misc-heartbeat_back_ttl','60','yes'),
(328,'litespeed.conf.misc-heartbeat_editor','','yes'),
(329,'litespeed.conf.misc-heartbeat_editor_ttl','15','yes'),
(330,'litespeed.conf.cdn','','yes'),
(331,'litespeed.conf.cdn-ori','[]','yes'),
(332,'litespeed.conf.cdn-ori_dir','[\"wp-content\",\"wp-includes\"]','yes'),
(333,'litespeed.conf.cdn-exc','[]','yes'),
(334,'litespeed.conf.cdn-quic','','yes'),
(335,'litespeed.conf.cdn-cloudflare','','yes'),
(336,'litespeed.conf.cdn-cloudflare_email','','yes'),
(337,'litespeed.conf.cdn-cloudflare_key','','yes'),
(338,'litespeed.conf.cdn-cloudflare_name','','yes'),
(339,'litespeed.conf.cdn-cloudflare_zone','','yes'),
(340,'litespeed.conf.cdn-mapping','[{\"url\":\"\",\"inc_img\":\"1\",\"inc_css\":\"1\",\"inc_js\":\"1\",\"filetype\":[\".aac\",\".css\",\".eot\",\".gif\",\".jpeg\",\".jpg\",\".js\",\".less\",\".mp3\",\".mp4\",\".ogg\",\".otf\",\".pdf\",\".png\",\".svg\",\".ttf\",\".webp\",\".woff\",\".woff2\"]}]','yes'),
(341,'litespeed.conf.cdn-attr','[\".src\",\".data-src\",\".href\",\".poster\",\"source.srcset\"]','yes'),
(342,'litespeed.conf.qc-token','','yes'),
(343,'litespeed.conf.qc-nameservers','','yes'),
(344,'neve_install','1716674135','yes'),
(353,'litespeed.purge.queue','-1','yes'),
(354,'litespeed.purge.queue2','-1','yes'),
(355,'hostinger_first_login_at','2024-05-25 21:55:35','yes'),
(356,'litespeed.admin_display.thirdparty_litespeed_check','1','yes'),
(357,'litespeed.optimize.timestamp_purge_css','1716674784','yes'),
(358,'litespeed.admin_display.messages','-1','yes'),
(363,'_transient_googlesitekit_verification_meta_tags','a:0:{}','yes'),
(365,'googlesitekit_db_version','1.123.0','yes'),
(384,'litespeed.gui.lscwp_whm_install','-1','yes'),
(385,'litespeed.gui.dismiss','-1','yes'),
(386,'litespeed.gui._summary','{\"new_version\":1717279173,\"score\":1717883973}','yes'),
(387,'litespeed.data.upgrading','-1','yes'),
(389,'can_compress_scripts','0','yes'),
(407,'finished_updating_comment_type','1','yes'),
(442,'hostinger_onboarding_steps','a:2:{i:0;a:2:{s:6:\"action\";s:8:\"add_page\";s:4:\"date\";s:19:\"2024-05-25 22:31:04\";}i:1;a:2:{s:6:\"action\";s:14:\"connect_domain\";s:4:\"date\";s:19:\"2024-05-28 15:51:37\";}}','yes'),
(484,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','no'),
(485,'googlesitekit_has_connected_admins','1','yes'),
(489,'googlesitekit_active_modules','a:2:{i:0;s:18:\"pagespeed-insights\";i:1;s:11:\"analytics-4\";}','yes'),
(490,'googlesitekit_credentials','Cl8/F+LWYEJGRTSetyirKlZqam9XVHJmTjFVNG5OM2F6L2JDbDlybm93c1ROUmE1dU9jOUtjbkZvalBkNmxjWjVEay9Rc29EQnN2Um9QZjJ4NnFydXhXSERQaGpna3VIUmtlb2VwZ2F0MEVHcTB0blBaWlhRdW5JZWlmUWprVmtlN2cxeVhCbjltUVA1cExLSDYzUDFIR3VibzNDaEN6NjVTa1d1a0QwOHVJRFZOQjhYaWhjNXVJQkQxUVZIVVMrQnh1cDVlRVFUNEVCSFVPTjdPbDQ2bmZYaGxxRkk4M0NGY2hRNE5oUlJGSnJCTk92Q0llOFpXaG84VnM5SEhPN2pFejhaSmwra0k3U3J5VHY1c3hxNFBhMEdxYjhTNCtLRWtJY1M5VlhqSHc5Q3hnT1dhR1RqOTByMXphVkhPZUVPOG5tdkpuTU1nPT0=','yes'),
(491,'googlesitekitpersistent_remote_features','a:18:{s:18:\"adBlockerDetection\";a:1:{s:7:\"enabled\";b:1;}s:9:\"adsModule\";a:1:{s:7:\"enabled\";b:1;}s:14:\"adsenseSetupV2\";a:1:{s:7:\"enabled\";b:1;}s:16:\"dashboardSharing\";a:1:{s:7:\"enabled\";b:1;}s:19:\"enhancedMeasurement\";a:1:{s:7:\"enabled\";b:1;}s:19:\"ga4ActivationBanner\";a:1:{s:7:\"enabled\";b:0;}s:12:\"ga4Reporting\";a:1:{s:7:\"enabled\";b:1;}s:8:\"ga4setup\";a:1:{s:7:\"enabled\";b:1;}s:10:\"gteSupport\";a:1:{s:7:\"enabled\";b:1;}s:14:\"helpVisibility\";a:1:{s:7:\"enabled\";b:1;}s:13:\"ideaHubModule\";a:1:{s:7:\"enabled\";b:0;}s:10:\"keyMetrics\";a:1:{s:7:\"enabled\";b:1;}s:14:\"serviceSetupV2\";a:1:{s:7:\"enabled\";b:1;}s:16:\"unifiedDashboard\";a:1:{s:7:\"enabled\";b:1;}s:12:\"userFeedback\";a:1:{s:7:\"enabled\";b:1;}s:17:\"widgets.dashboard\";a:1:{s:7:\"enabled\";b:1;}s:21:\"widgets.pageDashboard\";a:1:{s:7:\"enabled\";b:1;}s:14:\"zeroDataStates\";a:1:{s:7:\"enabled\";b:1;}}','yes'),
(492,'googlesitekit_connected_proxy_url','https://artineverydaypeace.com/','yes'),
(493,'googlesitekit_search-console_settings','a:2:{s:10:\"propertyID\";s:31:\"https://artineverydaypeace.com/\";s:7:\"ownerID\";i:1;}','yes'),
(494,'googlesitekit_owner_id','1','yes'),
(498,'googlesitekit_analytics-4_settings','a:22:{s:7:\"ownerID\";i:1;s:9:\"accountID\";s:9:\"315495845\";s:15:\"adsConversionID\";s:0:\"\";s:10:\"propertyID\";s:9:\"442964135\";s:15:\"webDataStreamID\";s:10:\"8192331633\";s:13:\"measurementID\";s:12:\"G-0YNTSEE41H\";s:16:\"trackingDisabled\";a:1:{i:0;s:13:\"loggedinUsers\";}s:10:\"useSnippet\";b:1;s:11:\"googleTagID\";s:11:\"GT-55NXTLL2\";s:18:\"googleTagAccountID\";s:10:\"6232621578\";s:20:\"googleTagContainerID\";s:9:\"186065094\";s:32:\"googleTagContainerDestinationIDs\";a:1:{i:0;s:12:\"G-0YNTSEE41H\";}s:23:\"googleTagLastSyncedAtMs\";i:1716678877866;s:25:\"availableCustomDimensions\";a:0:{}s:18:\"propertyCreateTime\";i:1716678867000;s:13:\"adSenseLinked\";b:0;s:25:\"adSenseLinkedLastSyncedAt\";i:0;s:27:\"adsConversionIDMigratedAtMs\";i:0;s:9:\"adsLinked\";b:0;s:21:\"adsLinkedLastSyncedAt\";i:1720541823;s:18:\"availableAudiences\";N;s:30:\"availableAudiencesLastSyncedAt\";i:0;}','yes'),
(536,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1720614581;s:7:\"checked\";a:1:{s:16:\"twentytwentyfour\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.1.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}}s:12:\"translations\";a:0:{}}','no'),
(558,'_transient_health-check-site-status-result','{\"good\":22,\"recommended\":1,\"critical\":1}','yes'),
(1066,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:22:\"luciaquijano@gmail.com\";s:7:\"version\";s:5:\"6.5.5\";s:9:\"timestamp\";i:1719301669;}','no'),
(1408,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_CO/wordpress-6.5.5.zip\";s:6:\"locale\";s:5:\"es_CO\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_CO/wordpress-6.5.5.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.5\";s:7:\"version\";s:5:\"6.5.5\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1720614580;s:15:\"version_checked\";s:5:\"6.5.5\";s:12:\"translations\";a:0:{}}','no'),
(1635,'_site_transient_timeout_php_check_990bfacb848fa087bcfc06850f5e4447','1720994350','no'),
(1636,'_site_transient_php_check_990bfacb848fa087bcfc06850f5e4447','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no'),
(1669,'_site_transient_timeout_theme_roots','1720616381','no'),
(1670,'_site_transient_theme_roots','a:1:{s:16:\"twentytwentyfour\";s:7:\"/themes\";}','no'),
(1671,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1720614582;s:8:\"response\";a:2:{s:23:\"hostinger/hostinger.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:23:\"w.org/plugins/hostinger\";s:4:\"slug\";s:9:\"hostinger\";s:6:\"plugin\";s:23:\"hostinger/hostinger.php\";s:11:\"new_version\";s:5:\"3.0.2\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/hostinger/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hostinger.3.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:54:\"https://ps.w.org/hostinger/assets/icon.svg?rev=3097386\";s:3:\"svg\";s:54:\"https://ps.w.org/hostinger/assets/icon.svg?rev=3097386\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/hostinger/assets/banner-1544x500.png?rev=3097370\";s:2:\"1x\";s:64:\"https://ps.w.org/hostinger/assets/banner-772x250.png?rev=3097370\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";s:6:\"tested\";s:5:\"6.5.5\";s:12:\"requires_php\";s:3:\"8.0\";s:16:\"requires_plugins\";a:0:{}}s:35:\"google-site-kit/google-site-kit.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:29:\"w.org/plugins/google-site-kit\";s:4:\"slug\";s:15:\"google-site-kit\";s:6:\"plugin\";s:35:\"google-site-kit/google-site-kit.php\";s:11:\"new_version\";s:7:\"1.130.0\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/google-site-kit/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/google-site-kit.1.130.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/google-site-kit/assets/icon-256x256.png?rev=3096969\";s:2:\"1x\";s:68:\"https://ps.w.org/google-site-kit/assets/icon-128x128.png?rev=3096969\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/google-site-kit/assets/banner-1544x500.png?rev=3096969\";s:2:\"1x\";s:70:\"https://ps.w.org/google-site-kit/assets/banner-772x250.png?rev=3096969\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";s:6:\"tested\";s:5:\"6.5.5\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:35:\"litespeed-cache/litespeed-cache.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/litespeed-cache\";s:4:\"slug\";s:15:\"litespeed-cache\";s:6:\"plugin\";s:35:\"litespeed-cache/litespeed-cache.php\";s:11:\"new_version\";s:7:\"6.2.0.1\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/litespeed-cache/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/litespeed-cache.6.2.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-256x256.png?rev=2554181\";s:2:\"1x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-128x128.png?rev=2554181\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/litespeed-cache/assets/banner-1544x500.png?rev=2554181\";s:2:\"1x\";s:70:\"https://ps.w.org/litespeed-cache/assets/banner-772x250.png?rev=2554181\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}}s:7:\"checked\";a:3:{s:23:\"hostinger/hostinger.php\";s:5:\"2.2.4\";s:35:\"litespeed-cache/litespeed-cache.php\";s:7:\"6.2.0.1\";s:35:\"google-site-kit/google-site-kit.php\";s:7:\"1.127.0\";}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES
(2,3,'_wp_page_template','default'),
(6,7,'_edit_lock','1716678432:1'),
(7,9,'_wp_attached_file','2024/05/Lucia-Q.png'),
(8,9,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:976;s:6:\"height\";i:870;s:4:\"file\";s:19:\"2024/05/Lucia-Q.png\";s:8:\"filesize\";i:1271358;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"Lucia-Q-300x267.png\";s:5:\"width\";i:300;s:6:\"height\";i:267;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:116803;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"Lucia-Q-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:36192;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"Lucia-Q-768x685.png\";s:5:\"width\";i:768;s:6:\"height\";i:685;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:611568;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9,7,'_edit_last','1'),
(11,14,'_edit_lock','1716678585:1'),
(12,16,'_edit_lock','1716911273:1'),
(13,18,'origin','theme'),
(14,19,'_wp_attached_file','2024/05/IMG_3662-scaled.jpg'),
(15,19,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1920;s:4:\"file\";s:27:\"2024/05/IMG_3662-scaled.jpg\";s:8:\"filesize\";i:338463;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"IMG_3662-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20291;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"IMG_3662-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:75730;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"IMG_3662-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14763;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"IMG_3662-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:51913;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"IMG_3662-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:135892;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:22:\"IMG_3662-2048x1536.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:222747;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"iPhone 7 Plus\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1594575380\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"3.99\";s:3:\"iso\";s:2:\"32\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_3662.jpg\";}'),
(16,21,'_edit_lock','1716908501:1'),
(17,23,'footnotes',''),
(18,25,'_edit_lock','1716911320:1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES
(1,1,'2024-05-25 16:55:20','2024-05-25 21:55:20','<!-- wp:paragraph -->\n<p>Bienvenido(a) a WordPress. Esta es tu primera entrada. Edítala o bórrala ¡y comienza a publicar!</p>\n<!-- /wp:paragraph -->','¡Hola mundo!','','publish','open','open','','hola-mundo','','','2024-05-25 16:55:20','2024-05-25 21:55:20','',0,'http://artineverydaypeace.com/?p=1',0,'post','',1),
(3,1,'2024-05-25 16:55:20','2024-05-25 21:55:20','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Quiénes somos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Nuestra dirección de sitio web es: http://artineverydaypeace.com.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comentarios</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Cuando los visitantes dejan comentarios en el sitio recopilamos los datos mostrados en el formulario de comentarios, y también la dirección IP del visitante y la cadena del agente de usuario del navegador para ayudar a la detección de spam.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Se puede proporcionar una cadena anónima creada a partir de su dirección de correo electrónico (también denominada hash) al servicio gravatar para ver si la está utilizando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, su imagen de perfil será visible para el público en el contexto de tu comentario.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Medios</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si subes imágenes al sitio web, debes evitar cargar imágenes con datos de ubicación incrustados (EXIF GPS). Los visitantes del sitio web pueden descargar y extraer los datos de la ubicación de las imágenes en el sitio Web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si deja un comentario en nuestro sitio, puedes optar por guardar tu nombre, dirección de correo electrónico y sitio web en cookies. Estos es para tu comodidad y no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán un año de duración.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Si visitas nuestra página de Acceso, se instalará una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Cuando inicies sesión, se instalarán varias cookies para guardar tu información de acceso y opciones de visualización de pantalla. Las cookies de acceso permanecerán por dos días y las cookies de opciones de pantalla se guardarán por un año. Si seleccionas «Recuérdarme» en tu inicio de sesión, estas se guardarán por dos semanas. Si cierra la sesión de tu cuenta, las cookies de acceso se eliminarán.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contenido incrustado de otros sitios web</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras webs se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Con quién compartimos tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si solicitas un restablecimiento de contraseña, tu dirección IP será incluida en el correo electrónico de restablecimiento.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cuánto tiempo conservamos tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar automáticamente cualquier comentario de seguimiento en lugar de mantenerlos en una cola de moderación.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Para los usuarios que se registren en nuestro sitio web (si los hay), se almacenarán todos sus datos de información personal que proporcionen. Cualquier usuario puede ver, editar o eliminar su información personal cuando lo desee (a excepción del nombre de usuario que no se puede editar). Los administradores de sitios web, también pueden ver y editar dicha información. </p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Qué derechos tienes sobre tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si tienes una cuenta en este sitio, o ha dejado comentarios, puedes solicitar la exportación de un archivo con tus datos personales recopilados, incluyendo cualquier otro dato que nos haya proporcionado. También puede solicitar la eliminación de cualquier dato personal que guardemos sobre ti. Esto no incluye los datos que estamos obligados a consevar para fines administrativos, legales o de seguridad.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Dónde se envían tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Puede que los comentarios de los visitantes sean validados por un servicio automatico de detección de spam.</p>\n<!-- /wp:paragraph -->\n','Política de privacidad','','draft','closed','open','','política-privacidad','','','2024-05-25 16:55:20','2024-05-25 21:55:20','',0,'http://artineverydaypeace.com/?page_id=3',0,'page','',0),
(4,0,'2024-05-25 16:55:21','2024-05-25 21:55:21','<!-- wp:page-list /-->','Navegación','','publish','closed','closed','','navigation','','','2024-05-25 16:55:21','2024-05-25 21:55:21','',0,'http://artineverydaypeace.com/index.php/2024/05/25/navigation/',0,'wp_navigation','',0),
(7,1,'2024-05-25 17:31:04','2024-05-25 22:31:04','<!-- wp:image {\"id\":9,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"https://artineverydaypeace.com/wp-content/uploads/2024/05/Lucia-Q.png\" alt=\"\" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Soy una mujer colombiana, artista, gestora cultural, experta en proyectos socioculturales dirigidos a comunidades vulnerables con un enfoque en transformación social y construcción de paz. Cuento con más de 15 años de experiencia en gerencia, coordinación, asesoría, evaluación e investigación de políticas y programas artístico-culturales. He trabajado como tallerista, docente, monitora académica y mentora en áreas de arte, gestión cultural y conflictos. He contribuido a políticas públicas nacionales y locales, promoviendo el cambio social a través del arte y la cultura ciudadana. Mi experiencia incluye ser jurado-evaluadora en convocatorias culturales, con un enfoque en procesos de formación, transformación territorial, y el reconocimiento de saberes y prácticas de diversas comunidades.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ESTUDIOS </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Candidata a Doctora en Relaciones Internacionales</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pontifícia Universidad Católica de Río de Janeiro (PUC-Rio), Rio de Janeiro, Brasil</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tema de investigación: \"El papel del arte en la construcción de paz cotidiana: un estudio de caso colombiano\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Becaria de la Bolsa PUC-Rio y Agencia CAPES TAXAS (matrícula)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Inicio de estudios: II – 2021 (en curso)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Magister en Gerencia y Práctica del Desarrollo</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Universidad de los Andes, Bogotá, Colombia</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pasantías de grado:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p class=\"has-text-align-left\">(i) Turismo de experiencias afectivas – Propuesta para turismo comunitario en zonas de postconflicto, (ii) Análisis de la intervención socioambiental con la comunidad Comarca Nägbe Bugle (Panamá)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Becaria de la Fundación John D. and Catherine T. MacArthur (1er y 2do semestre)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fecha de graduación: 12 de octubre de 2018</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maestra en Artes Plásticas</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Universidad Nacional de Colombia, Bogotá, Colombia</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Monitorias: (i) Museo de Arte con procesos de educación artística, (ii) Docente de artes para quinto de primaria en el colegio IPARM de la Universidad.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fecha de graduación: 27 de marzo de 2007</p>\n<!-- /wp:paragraph -->','Bio','','publish','closed','closed','','bio','','','2024-05-25 18:07:12','2024-05-25 23:07:12','',0,'https://artineverydaypeace.com/?page_id=7',0,'page','',0),
(8,1,'2024-05-25 17:06:24','2024-05-25 22:06:24','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-twentytwentyfour','','','2024-05-25 17:06:24','2024-05-25 22:06:24','',0,'https://artineverydaypeace.com/wp-global-styles-twentytwentyfour/',0,'wp_global_styles','',0),
(9,1,'2024-05-25 17:30:47','2024-05-25 22:30:47','','Lucia-Q','','inherit','open','closed','','lucia-q','','','2024-05-25 17:30:47','2024-05-25 22:30:47','',7,'https://artineverydaypeace.com/wp-content/uploads/2024/05/Lucia-Q.png',0,'attachment','image/png',0),
(10,1,'2024-05-25 17:31:04','2024-05-25 22:31:04','<!-- wp:paragraph -->\n<p>Soy una mujer colombiana, experta en proyectos socioculturales dirigidos a comunidades vulnerables con un enfoque en transformación social y construcción de paz. Cuento con más de 15 años de experiencia en gerencia, coordinación, asesoría, evaluación e investigación de políticas y programas artístico-culturales. He trabajado como tallerista, docente, monitora académica y mentora en áreas de arte, gestión cultural y conflictos. He contribuido a políticas públicas nacionales y locales, promoviendo el cambio social a través del arte y la cultura ciudadana. Mi experiencia incluye ser jurado-evaluadora en convocatorias culturales, con un enfoque en procesos de formación, transformación territorial, y el reconocimiento de saberes y prácticas de diversas comunidades.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":9,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"https://artineverydaypeace.com/wp-content/uploads/2024/05/Lucia-Q.png\" alt=\"\" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>ESTUDIOS </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Candidata a Doctora en Relaciones Internacionales</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pontifícia Universidad Católica de Río de Janeiro (PUC-Rio), Rio de Janeiro, Brasil</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tema de investigación: \"El papel del arte en la construcción de paz cotidiana: un estudio de caso colombiano\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Becaria de la Bolsa PUC-Rio y Agencia CAPES TAXAS (matrícula)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Inicio de estudios: II – 2021 (en curso)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Magister en Gerencia y Práctica del Desarrollo</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Universidad de los Andes, Bogotá, Colombia</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pasantías de grado:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>(i) Turismo de experiencias afectivas – Propuesta para turismo comunitario en zonas de postconflicto, (ii) Análisis de la intervención socioambiental con la comunidad Comarca Nägbe Bugle (Panamá)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Becaria de la Fundación John D. and Catherine T. MacArthur (1er y 2do semestre)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fecha de graduación: 12 de octubre de 2018</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maestra en Artes Plásticas</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Universidad Nacional de Colombia, Bogotá, Colombia</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Monitorias: (i) Museo de Arte con procesos de educación artística, (ii) Docente de artes para quinto de primaria en el colegio IPARM de la Universidad.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fecha de graduación: 27 de marzo de 2007</p>\n<!-- /wp:paragraph -->','Bio','','inherit','closed','closed','','7-revision-v1','','','2024-05-25 17:31:04','2024-05-25 22:31:04','',7,'https://artineverydaypeace.com/?p=10',0,'revision','',0),
(12,1,'2024-05-25 17:33:22','2024-05-25 22:33:22','<!-- wp:paragraph -->\n<p>Soy una mujer colombiana, artista, gestora cultural, experta en proyectos socioculturales dirigidos a comunidades vulnerables con un enfoque en transformación social y construcción de paz. Cuento con más de 15 años de experiencia en gerencia, coordinación, asesoría, evaluación e investigación de políticas y programas artístico-culturales. He trabajado como tallerista, docente, monitora académica y mentora en áreas de arte, gestión cultural y conflictos. He contribuido a políticas públicas nacionales y locales, promoviendo el cambio social a través del arte y la cultura ciudadana. Mi experiencia incluye ser jurado-evaluadora en convocatorias culturales, con un enfoque en procesos de formación, transformación territorial, y el reconocimiento de saberes y prácticas de diversas comunidades.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":9,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"https://artineverydaypeace.com/wp-content/uploads/2024/05/Lucia-Q.png\" alt=\"\" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>ESTUDIOS </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Candidata a Doctora en Relaciones Internacionales</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pontifícia Universidad Católica de Río de Janeiro (PUC-Rio), Rio de Janeiro, Brasil</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tema de investigación: \"El papel del arte en la construcción de paz cotidiana: un estudio de caso colombiano\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Becaria de la Bolsa PUC-Rio y Agencia CAPES TAXAS (matrícula)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Inicio de estudios: II – 2021 (en curso)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Magister en Gerencia y Práctica del Desarrollo</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Universidad de los Andes, Bogotá, Colombia</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pasantías de grado:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>(i) Turismo de experiencias afectivas – Propuesta para turismo comunitario en zonas de postconflicto, (ii) Análisis de la intervención socioambiental con la comunidad Comarca Nägbe Bugle (Panamá)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Becaria de la Fundación John D. and Catherine T. MacArthur (1er y 2do semestre)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fecha de graduación: 12 de octubre de 2018</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maestra en Artes Plásticas</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Universidad Nacional de Colombia, Bogotá, Colombia</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Monitorias: (i) Museo de Arte con procesos de educación artística, (ii) Docente de artes para quinto de primaria en el colegio IPARM de la Universidad.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fecha de graduación: 27 de marzo de 2007</p>\n<!-- /wp:paragraph -->','Bio','','inherit','closed','closed','','7-revision-v1','','','2024-05-25 17:33:22','2024-05-25 22:33:22','',7,'https://artineverydaypeace.com/?p=12',0,'revision','',0),
(13,1,'2024-05-25 18:07:11','2024-05-25 23:07:11','<!-- wp:image {\"id\":9,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"https://artineverydaypeace.com/wp-content/uploads/2024/05/Lucia-Q.png\" alt=\"\" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Soy una mujer colombiana, artista, gestora cultural, experta en proyectos socioculturales dirigidos a comunidades vulnerables con un enfoque en transformación social y construcción de paz. Cuento con más de 15 años de experiencia en gerencia, coordinación, asesoría, evaluación e investigación de políticas y programas artístico-culturales. He trabajado como tallerista, docente, monitora académica y mentora en áreas de arte, gestión cultural y conflictos. He contribuido a políticas públicas nacionales y locales, promoviendo el cambio social a través del arte y la cultura ciudadana. Mi experiencia incluye ser jurado-evaluadora en convocatorias culturales, con un enfoque en procesos de formación, transformación territorial, y el reconocimiento de saberes y prácticas de diversas comunidades.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ESTUDIOS </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Candidata a Doctora en Relaciones Internacionales</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pontifícia Universidad Católica de Río de Janeiro (PUC-Rio), Rio de Janeiro, Brasil</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tema de investigación: \"El papel del arte en la construcción de paz cotidiana: un estudio de caso colombiano\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Becaria de la Bolsa PUC-Rio y Agencia CAPES TAXAS (matrícula)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Inicio de estudios: II – 2021 (en curso)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Magister en Gerencia y Práctica del Desarrollo</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Universidad de los Andes, Bogotá, Colombia</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pasantías de grado:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p class=\"has-text-align-left\">(i) Turismo de experiencias afectivas – Propuesta para turismo comunitario en zonas de postconflicto, (ii) Análisis de la intervención socioambiental con la comunidad Comarca Nägbe Bugle (Panamá)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Becaria de la Fundación John D. and Catherine T. MacArthur (1er y 2do semestre)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fecha de graduación: 12 de octubre de 2018</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maestra en Artes Plásticas</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Universidad Nacional de Colombia, Bogotá, Colombia</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Monitorias: (i) Museo de Arte con procesos de educación artística, (ii) Docente de artes para quinto de primaria en el colegio IPARM de la Universidad.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fecha de graduación: 27 de marzo de 2007</p>\n<!-- /wp:paragraph -->','Bio','','inherit','closed','closed','','7-revision-v1','','','2024-05-25 18:07:11','2024-05-25 23:07:11','',7,'https://artineverydaypeace.com/?p=13',0,'revision','',0),
(14,1,'2024-05-25 18:10:08','2024-05-25 23:10:08','','Parceiros','','publish','closed','closed','','parceiros','','','2024-05-25 18:10:08','2024-05-25 23:10:08','',0,'https://artineverydaypeace.com/?page_id=14',0,'page','',0),
(15,1,'2024-05-25 18:10:08','2024-05-25 23:10:08','','Parceiros','','inherit','closed','closed','','14-revision-v1','','','2024-05-25 18:10:08','2024-05-25 23:10:08','',14,'https://artineverydaypeace.com/?p=15',0,'revision','',0),
(16,1,'2024-05-25 18:11:58','2024-05-25 23:11:58','<!-- wp:paragraph -->\n<p><em>No dia 17 de março de 2020, às 4 da manhã, cheguei ao Brasil muito assustada. Não falava uma palavra de português, não conhecia ninguém e tinha passado duas fronteiras em poucas horas. Estava tentando atravessar o país para chegar à Colômbia, no início de uma pandemia que ninguém previa. Esse dia marcou um antes e um depois em minha vida, pois o que inicialmente seria uma aventura de várias semanas para descansar e reencontrar velhos amigos da Argentina, Uruguai, Paraguai e Chile (pais ao qual não consegui chegar), transformou-se em um processo de migração. De certo modo, essa experiência também me fez refletir sobre o meu próprio caminho e o que me colocou em um novo começo, como estudante de doutorado.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>Sem saber e sem planejar, me tornei uma migrante naquele dia – presa pela pandemia por mais de um ano -. E foi nesse momento que comecei a compreender, até certo ponto, as dificuldades que as pessoas enfrentam quando são obrigadas a se deslocar, como deslocados, refugiados, migrantes forçados, e que precisam confrontar diariamente. O medo do desconhecido, a incerteza sobre o futuro, a solidão, a angústia de recomeçar do zero, as dificuldades em entender a burocracia e a documentação necessária, as dúvidas ao experimentar uma nova culinária, descobrir os lugares cotidianos como o mercado, o transporte, o médico ou simplesmente conseguir se comunicar com alguém sem conhecer a língua. Nesse processo, uma infinidade de emoções, sentimentos e tristezas que podem ser vivenciados.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>De forma alguma pretendo equiparar minha experiência à história de milhares de pessoas que precisam deixar seus territórios porque seus direitos foram violados e, na maioria das vezes, com menos opções do que eu tinha. No entanto, para mim, esses meses representaram uma nova maneira de enxergar os imigrantes, de admirar sua coragem, capacidade de adaptação e criatividade, além de buscar compreender melhor as questões relacionadas ao acolhimento de populações migrantes e, em última instância, compreender o deslocamento, a construção da paz e refletir sobre como minha paixão pela arte e cultura pode contribuir para melhorar a situação de milhares de pessoas em situações semelhantes.</em></p>\n<!-- /wp:paragraph -->','Diário de campo','','publish','closed','closed','','diario-de-campo','','','2024-05-28 10:50:12','2024-05-28 15:50:12','',0,'https://artineverydaypeace.com/?page_id=16',0,'page','',0),
(17,1,'2024-05-25 18:11:58','2024-05-25 23:11:58','','Diário de campo','','inherit','closed','closed','','16-revision-v1','','','2024-05-25 18:11:58','2024-05-25 23:11:58','',16,'https://artineverydaypeace.com/?p=17',0,'revision','',0),
(18,1,'2024-05-25 18:16:28','2024-05-25 23:16:28','<!-- wp:template-part {\"slug\":\"header\",\"theme\":\"twentytwentyfour\",\"tagName\":\"header\",\"area\":\"header\"} /-->\n\n<!-- wp:cover {\"url\":\"https://artineverydaypeace.com/wp-content/uploads/2024/05/IMG_3662-scaled.jpg\",\"id\":19,\"hasParallax\":true,\"dimRatio\":0,\"customOverlayColor\":\"#8f7879\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-cover has-parallax\" style=\"min-height:100vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-0 has-background-dim\" style=\"background-color:#8f7879\"></span><div class=\"wp-block-cover__image-background wp-image-19 has-parallax\" style=\"background-position:50% 50%;background-image:url(https://artineverydaypeace.com/wp-content/uploads/2024/05/IMG_3662-scaled.jpg)\"></div><div class=\"wp-block-cover__inner-container\"></div></div>\n<!-- /wp:cover -->','Inicio del blog','Muestra las entradas más recientes, así como la página de inicio del sitio o una página personalizada definida en los ajustes de lectura. Si existe, la plantilla de página de inicio sobreescribirá a esta plantilla cuando se muestren las entradas en dicha página de inicio.','publish','closed','closed','','home','','','2024-05-25 18:19:55','2024-05-25 23:19:55','',0,'https://artineverydaypeace.com/home/',0,'wp_template','',0),
(19,1,'2024-05-25 18:18:15','2024-05-25 23:18:15','','IMG_3662','','inherit','open','closed','','img_3662','','','2024-05-25 18:18:15','2024-05-25 23:18:15','',18,'https://artineverydaypeace.com/wp-content/uploads/2024/05/IMG_3662.jpg',0,'attachment','image/jpeg',0),
(20,1,'2024-05-25 18:19:55','2024-05-25 23:19:55','<!-- wp:template-part {\"slug\":\"header\",\"theme\":\"twentytwentyfour\",\"tagName\":\"header\",\"area\":\"header\"} /-->\n\n<!-- wp:cover {\"url\":\"https://artineverydaypeace.com/wp-content/uploads/2024/05/IMG_3662-scaled.jpg\",\"id\":19,\"hasParallax\":true,\"dimRatio\":0,\"customOverlayColor\":\"#8f7879\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-cover has-parallax\" style=\"min-height:100vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-0 has-background-dim\" style=\"background-color:#8f7879\"></span><div class=\"wp-block-cover__image-background wp-image-19 has-parallax\" style=\"background-position:50% 50%;background-image:url(https://artineverydaypeace.com/wp-content/uploads/2024/05/IMG_3662-scaled.jpg)\"></div><div class=\"wp-block-cover__inner-container\"></div></div>\n<!-- /wp:cover -->','Inicio del blog','Muestra las entradas más recientes, así como la página de inicio del sitio o una página personalizada definida en los ajustes de lectura. Si existe, la plantilla de página de inicio sobreescribirá a esta plantilla cuando se muestren las entradas en dicha página de inicio.','inherit','closed','closed','','18-revision-v1','','','2024-05-25 18:19:55','2024-05-25 23:19:55','',18,'https://artineverydaypeace.com/?p=20',0,'revision','',0),
(21,1,'2024-05-28 10:02:07','2024-05-28 15:02:07','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"></h2>\n<!-- /wp:heading -->','Programas comunitarios','','publish','closed','closed','','programas-comunitarios','','','2024-05-28 10:02:07','2024-05-28 15:02:07','',0,'https://artineverydaypeace.com/?page_id=21',0,'page','',0),
(22,1,'2024-05-28 10:02:07','2024-05-28 15:02:07','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"></h2>\n<!-- /wp:heading -->','Programas comunitarios','','inherit','closed','closed','','21-revision-v1','','','2024-05-28 10:02:07','2024-05-28 15:02:07','',21,'https://artineverydaypeace.com/?p=22',0,'revision','',0),
(23,1,'2024-05-28 10:25:12','2024-05-28 15:25:12','<!-- wp:paragraph -->\n<p><em>No dia 17 de março de 2020, às 4 da manhã, cheguei ao Brasil muito assustada. Não falava uma palavra de português, não conhecia ninguém e tinha passado duas fronteiras em poucas horas. Estava tentando atravessar o país para chegar à Colômbia, no início de uma pandemia que ninguém previa. Esse dia marcou um antes e um depois em minha vida, pois o que inicialmente seria uma aventura de várias semanas para descansar e reencontrar velhos amigos da Argentina, Uruguai, Paraguai e Chile (pais ao qual não consegui chegar), transformou-se em um processo de migração. De certo modo, essa experiência também me fez refletir sobre o meu próprio caminho e o que me colocou em um novo começo, como estudante de doutorado.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>Sem saber e sem planejar, me tornei uma migrante naquele dia – presa pela pandemia por mais de um ano -. E foi nesse momento que comecei a compreender, até certo ponto, as dificuldades que as pessoas enfrentam quando são obrigadas a se deslocar, como deslocados, refugiados, migrantes forçados, e que precisam confrontar diariamente. O medo do desconhecido, a incerteza sobre o futuro, a solidão, a angústia de recomeçar do zero, as dificuldades em entender a burocracia e a documentação necessária, as dúvidas ao experimentar uma nova culinária, descobrir os lugares cotidianos como o mercado, o transporte, o médico ou simplesmente conseguir se comunicar com alguém sem conhecer a língua. Nesse processo, uma infinidade de emoções, sentimentos e tristezas que podem ser vivenciados.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>De forma alguma pretendo equiparar minha experiência à história de milhares de pessoas que precisam deixar seus territórios porque seus direitos foram violados e, na maioria das vezes, com menos opções do que eu tinha. No entanto, para mim, esses meses representaram uma nova maneira de enxergar os imigrantes, de admirar sua coragem, capacidade de adaptação e criatividade, além de buscar compreender melhor as questões relacionadas ao acolhimento de populações migrantes e, em última instância, compreender o deslocamento, a construção da paz e refletir sobre como minha paixão pela arte e cultura pode contribuir para melhorar a situação de milhares de pessoas em situações semelhantes.</em></p>\n<!-- /wp:paragraph -->','Diário de campo','','inherit','closed','closed','','16-autosave-v1','','','2024-05-28 10:25:12','2024-05-28 15:25:12','',16,'https://artineverydaypeace.com/?p=23',0,'revision','',0),
(24,1,'2024-05-28 10:50:12','2024-05-28 15:50:12','<!-- wp:paragraph -->\n<p><em>No dia 17 de março de 2020, às 4 da manhã, cheguei ao Brasil muito assustada. Não falava uma palavra de português, não conhecia ninguém e tinha passado duas fronteiras em poucas horas. Estava tentando atravessar o país para chegar à Colômbia, no início de uma pandemia que ninguém previa. Esse dia marcou um antes e um depois em minha vida, pois o que inicialmente seria uma aventura de várias semanas para descansar e reencontrar velhos amigos da Argentina, Uruguai, Paraguai e Chile (pais ao qual não consegui chegar), transformou-se em um processo de migração. De certo modo, essa experiência também me fez refletir sobre o meu próprio caminho e o que me colocou em um novo começo, como estudante de doutorado.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>Sem saber e sem planejar, me tornei uma migrante naquele dia – presa pela pandemia por mais de um ano -. E foi nesse momento que comecei a compreender, até certo ponto, as dificuldades que as pessoas enfrentam quando são obrigadas a se deslocar, como deslocados, refugiados, migrantes forçados, e que precisam confrontar diariamente. O medo do desconhecido, a incerteza sobre o futuro, a solidão, a angústia de recomeçar do zero, as dificuldades em entender a burocracia e a documentação necessária, as dúvidas ao experimentar uma nova culinária, descobrir os lugares cotidianos como o mercado, o transporte, o médico ou simplesmente conseguir se comunicar com alguém sem conhecer a língua. Nesse processo, uma infinidade de emoções, sentimentos e tristezas que podem ser vivenciados.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>De forma alguma pretendo equiparar minha experiência à história de milhares de pessoas que precisam deixar seus territórios porque seus direitos foram violados e, na maioria das vezes, com menos opções do que eu tinha. No entanto, para mim, esses meses representaram uma nova maneira de enxergar os imigrantes, de admirar sua coragem, capacidade de adaptação e criatividade, além de buscar compreender melhor as questões relacionadas ao acolhimento de populações migrantes e, em última instância, compreender o deslocamento, a construção da paz e refletir sobre como minha paixão pela arte e cultura pode contribuir para melhorar a situação de milhares de pessoas em situações semelhantes.</em></p>\n<!-- /wp:paragraph -->','Diário de campo','','inherit','closed','closed','','16-revision-v1','','','2024-05-28 10:50:12','2024-05-28 15:50:12','',16,'https://artineverydaypeace.com/?p=24',0,'revision','',0),
(25,1,'2024-05-28 10:51:00','2024-05-28 15:51:00','<!-- wp:paragraph -->\n<p>luciaquijano@gmail.com</p>\n<!-- /wp:paragraph -->','Contacto','','publish','closed','closed','','contacto','','','2024-05-28 10:51:00','2024-05-28 15:51:00','',0,'https://artineverydaypeace.com/?page_id=25',0,'page','',0),
(26,1,'2024-05-28 10:51:00','2024-05-28 15:51:00','<!-- wp:paragraph -->\n<p>luciaquijano@gmail.com</p>\n<!-- /wp:paragraph -->','Contacto','','inherit','closed','closed','','25-revision-v1','','','2024-05-28 10:51:00','2024-05-28 15:51:00','',25,'https://artineverydaypeace.com/?p=26',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES
(1,1,0),
(8,2,0),
(18,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES
(1,1,'category','Your blog category',0,1),
(2,2,'wp_theme','',0,2);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES
(1,'Blog','blog',0),
(2,'twentytwentyfour','twentytwentyfour',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES
(1,1,'nickname','artineverydaypeace.com'),
(2,1,'first_name',''),
(3,1,'last_name',''),
(4,1,'description',''),
(5,1,'rich_editing','true'),
(6,1,'syntax_highlighting','true'),
(7,1,'comment_shortcuts','false'),
(8,1,'admin_color','modern'),
(9,1,'use_ssl','0'),
(10,1,'show_admin_bar_front','true'),
(11,1,'locale',''),
(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
(13,1,'wp_user_level','10'),
(14,1,'dismissed_wp_pointers',''),
(15,1,'show_welcome_panel','1'),
(16,1,'session_tokens','a:2:{s:64:\"eeee6f172add9b2c9a69b33b93c1393bbf8cc1e50c325928a0c96e08c7cb0202\";a:4:{s:10:\"expiration\";i:1717883972;s:2:\"ip\";s:14:\"190.24.108.239\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36\";s:5:\"login\";i:1716674372;}s:64:\"beca8c2adf9c75b4abe77d3e6d2f502ab2cb7bb59bc46dda402d277eca9d3cee\";a:4:{s:10:\"expiration\";i:1717081174;s:2:\"ip\";s:13:\"186.86.32.241\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36\";s:5:\"login\";i:1716908374;}}'),
(17,1,'wp_dashboard_quick_press_last_post_id','5'),
(18,1,'community-events-location','a:1:{s:2:\"ip\";s:11:\"186.86.32.0\";}'),
(19,1,'wp_persisted_preferences','a:3:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:0;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-05-25T23:18:30.530Z\";s:14:\"core/edit-site\";a:2:{s:12:\"welcomeGuide\";b:0;s:26:\"isComplementaryAreaVisible\";b:1;}}'),
(20,1,'wp_googlesitekit_tracking_optin',''),
(22,1,'wp_googlesitekit_site_verification_file','66c6d45960e6cd28'),
(23,1,'wp_googlesitekit_access_token','HO3WO1QTmHAph+56KgrBNUFvRDZQbmlvTU1ORkV6bW5XTXRxSklway9WWmMxblpreHAxN3Q0VlNUM3Fxc3Vyd0dnL0dYRGJFcTJHZnpWRzQxVWtFZVp5R0NsSUg1MWhqMHFWbGJsVWFQbE50eU5GK3lXZ1pVU280ZVE4WnhENlZFb3lBT1dGeUtHRGZBcEo4QVlFZmxoOUs5SXk2Tk9NZi9wV2JIeko3NDdMN1hQZm11VHF6bnEreFpGZGRQRHRWblR4UXI3eGRwTEw4Y1JNRjlSbHpNZHRTb2FucHhPUjhYUndCdmdTRytkNUh6M0xVc0pDcWVMZWtKUkJnczRBaWEzQkdBNUlYcE4yWWhaamp0SldrVzhDRmV5NjZwWnY1NHNGVjVLNHFqaEszZVB4dzM3RXhsUUZJallHQ0ttdDRKSkk0MXF0SlZJbm9WV3ZPdWJ1STBtamcrWWhoNzhvV2ZOR2RuQWNSS25DczY0eGUrdU4wV3VrV1lHQVZXRlB6TE4zRVJrdmFFeTdJ'),
(24,1,'wp_googlesitekit_access_token_expires_in','3599'),
(25,1,'wp_googlesitekit_access_token_created_at','1720541822'),
(26,1,'wp_googlesitekit_refresh_token','jDhZtYPFXmrt3Oy6QE6U5mF2bWdlbmVJMmREdmlrenZ1ek5uSzl0NTlSbXpjREFTUFdENE8ycVJJRE1NeVJsbkplOWRDVUk5NnY2dUx5RHhaTUFZcThTYUluZys3TlJuUlQ0TmdYQk9YcjNTVjJFOVpKRnVvWmdBRWE2V0xGcmdVTUlwZnRmdW1EbWt4dDZUUVFhM1lDMU5mbHd1bHdMR0dNY05PeVFGNEl6SDJ6eHlHSHQ5S1gxWUFkSnVlTTkyMmVHV3FsNHQrNzVmSnl4RXBsbGt5TXFvVEhvRG1FbzJxNktpQWJUMWNMWU1oWEFEN3p6MkdIalA5bUdxWVBTWDVvTzZYZElKMHFJeGk5R1VoSE1PMFIyTTNNbXg3YSsyT0tQa3p3LzJFZGhnMEdMeUxnb2NxZU5xUCttcE0wQnVTU1NwY25DTXZMZ2FqYWdu'),
(27,1,'wp_googlesitekit_auth_scopes','a:7:{i:0;s:50:\"https://www.googleapis.com/auth/analytics.readonly\";i:1;s:46:\"https://www.googleapis.com/auth/userinfo.email\";i:2;s:51:\"https://www.googleapis.com/auth/tagmanager.readonly\";i:3;s:48:\"https://www.googleapis.com/auth/userinfo.profile\";i:4;s:42:\"https://www.googleapis.com/auth/webmasters\";i:5;s:6:\"openid\";i:6;s:48:\"https://www.googleapis.com/auth/siteverification\";}'),
(28,1,'wp_googlesitekit_additional_auth_scopes','a:1:{i:0;s:46:\"https://www.googleapis.com/auth/analytics.edit\";}'),
(29,1,'wp_googlesitekit_profile','a:4:{s:5:\"email\";s:22:\"luciaquijano@gmail.com\";s:5:\"photo\";s:97:\"https://lh3.googleusercontent.com/a/ACg8ocJo5WmUAR6Mt3Hya8U-_8TSju64xtdm41hT76DHHN62YyXI1l36=s100\";s:9:\"full_name\";s:14:\"Lucía Quijano\";s:12:\"last_updated\";i:1720541822;}'),
(30,1,'wp_googlesitekitpersistent_initial_version','1.127.0'),
(31,1,'wp_googlesitekit_site_verified_meta','verified'),
(33,1,'wp_googlesitekit_survey_timeouts','a:2:{s:18:\"view_ga4_dashboard\";i:1716765276;s:14:\"view_dashboard\";i:1716765278;}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES
(1,'artineverydaypeace.com','$P$Bwdsav3FOq9XBYEKenwgcn26xsQLx50','artineverydaypeace-com','luciaquijano@gmail.com','http://artineverydaypeace.com','2024-05-25 21:55:20','',0,'artineverydaypeace.com');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;

--
-- Dumping routines for database 'u666555369_owKGH'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-10 14:59:01
