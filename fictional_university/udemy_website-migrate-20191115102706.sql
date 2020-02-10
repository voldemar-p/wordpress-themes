# WordPress MySQL database migration
#
# Generated: Friday 15. November 2019 10:27 UTC
# Hostname: localhost
# Database: `udemy_website`
# URL: //voldemarp.sgedu.site/
# Path: C:\\xampp\\htdocs\\udemy_website
# Tables: wp_commentmeta, wp_comments, wp_links, wp_options, wp_postmeta, wp_posts, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users
# Table Prefix: wp_
# Post Types: revision, acf-field, acf-field-group, attachment, campus, event, like, note, page, post, professor, program
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-10-28 10:43:57', '2019-10-28 10:43:57', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=545 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://voldemarp.sgedu.site/', 'yes'),
(2, 'home', 'http://voldemarp.sgedu.site/', 'yes'),
(3, 'blogname', 'Fictional University', 'yes'),
(4, 'blogdescription', 'Udemy wordpress developer course', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'voldemar.pungar@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:210:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:9:"events/?$";s:25:"index.php?post_type=event";s:39:"events/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=event&feed=$matches[1]";s:34:"events/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=event&feed=$matches[1]";s:26:"events/page/([0-9]{1,})/?$";s:43:"index.php?post_type=event&paged=$matches[1]";s:11:"programs/?$";s:27:"index.php?post_type=program";s:41:"programs/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=program&feed=$matches[1]";s:36:"programs/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=program&feed=$matches[1]";s:28:"programs/page/([0-9]{1,})/?$";s:45:"index.php?post_type=program&paged=$matches[1]";s:11:"campuses/?$";s:26:"index.php?post_type=campus";s:41:"campuses/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=campus&feed=$matches[1]";s:36:"campuses/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=campus&feed=$matches[1]";s:28:"campuses/page/([0-9]{1,})/?$";s:44:"index.php?post_type=campus&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:34:"events/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"events/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"events/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"events/([^/]+)/embed/?$";s:38:"index.php?event=$matches[1]&embed=true";s:27:"events/([^/]+)/trackback/?$";s:32:"index.php?event=$matches[1]&tb=1";s:47:"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?event=$matches[1]&feed=$matches[2]";s:42:"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?event=$matches[1]&feed=$matches[2]";s:35:"events/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?event=$matches[1]&paged=$matches[2]";s:42:"events/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?event=$matches[1]&cpage=$matches[2]";s:31:"events/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?event=$matches[1]&page=$matches[2]";s:23:"events/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"events/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"events/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"programs/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"programs/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"programs/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"programs/([^/]+)/embed/?$";s:40:"index.php?program=$matches[1]&embed=true";s:29:"programs/([^/]+)/trackback/?$";s:34:"index.php?program=$matches[1]&tb=1";s:49:"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?program=$matches[1]&feed=$matches[2]";s:44:"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?program=$matches[1]&feed=$matches[2]";s:37:"programs/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?program=$matches[1]&paged=$matches[2]";s:44:"programs/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?program=$matches[1]&cpage=$matches[2]";s:33:"programs/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?program=$matches[1]&page=$matches[2]";s:25:"programs/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"programs/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"programs/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:37:"professor/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"professor/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"professor/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"professor/([^/]+)/embed/?$";s:42:"index.php?professor=$matches[1]&embed=true";s:30:"professor/([^/]+)/trackback/?$";s:36:"index.php?professor=$matches[1]&tb=1";s:38:"professor/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?professor=$matches[1]&paged=$matches[2]";s:45:"professor/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?professor=$matches[1]&cpage=$matches[2]";s:34:"professor/([^/]+)(?:/([0-9]+))?/?$";s:48:"index.php?professor=$matches[1]&page=$matches[2]";s:26:"professor/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"professor/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"professor/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"campuses/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"campuses/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"campuses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"campuses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"campuses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"campuses/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"campuses/([^/]+)/embed/?$";s:39:"index.php?campus=$matches[1]&embed=true";s:29:"campuses/([^/]+)/trackback/?$";s:33:"index.php?campus=$matches[1]&tb=1";s:49:"campuses/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?campus=$matches[1]&feed=$matches[2]";s:44:"campuses/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?campus=$matches[1]&feed=$matches[2]";s:37:"campuses/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?campus=$matches[1]&paged=$matches[2]";s:44:"campuses/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?campus=$matches[1]&cpage=$matches[2]";s:33:"campuses/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?campus=$matches[1]&page=$matches[2]";s:25:"campuses/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"campuses/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"campuses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"campuses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"campuses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"campuses/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:32:"note/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"note/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"note/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"note/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"note/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"note/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:21:"note/([^/]+)/embed/?$";s:37:"index.php?note=$matches[1]&embed=true";s:25:"note/([^/]+)/trackback/?$";s:31:"index.php?note=$matches[1]&tb=1";s:33:"note/([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?note=$matches[1]&paged=$matches[2]";s:40:"note/([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?note=$matches[1]&cpage=$matches[2]";s:29:"note/([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?note=$matches[1]&page=$matches[2]";s:21:"note/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:31:"note/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:51:"note/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"note/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"note/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"note/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:32:"like/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"like/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"like/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"like/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"like/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"like/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:21:"like/([^/]+)/embed/?$";s:37:"index.php?like=$matches[1]&embed=true";s:25:"like/([^/]+)/trackback/?$";s:31:"index.php?like=$matches[1]&tb=1";s:33:"like/([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?like=$matches[1]&paged=$matches[2]";s:40:"like/([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?like=$matches[1]&cpage=$matches[2]";s:29:"like/([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?like=$matches[1]&page=$matches[2]";s:21:"like/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:31:"like/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:51:"like/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"like/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"like/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"like/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=20&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";i:2;s:19:"members/members.php";i:3;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:4;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'fictional-university-theme', 'yes'),
(41, 'stylesheet', 'fictional-university-theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '22', 'yes'),
(84, 'page_on_front', '20', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:96:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:16:"restrict_content";b:1;s:10:"list_roles";b:1;s:12:"create_roles";b:1;s:12:"delete_roles";b:1;s:10:"edit_roles";b:1;s:13:"delete_events";b:1;s:20:"delete_others_events";b:1;s:21:"delete_private_events";b:1;s:23:"delete_published_events";b:1;s:11:"edit_events";b:1;s:18:"edit_others_events";b:1;s:19:"edit_private_events";b:1;s:21:"edit_published_events";b:1;s:14:"publish_events";b:1;s:19:"read_private_events";b:1;s:12:"edit_campuss";b:1;s:19:"edit_others_campuss";b:1;s:15:"publish_campuss";b:1;s:20:"read_private_campuss";b:1;s:14:"delete_campuss";b:1;s:22:"delete_private_campuss";b:1;s:24:"delete_published_campuss";b:1;s:21:"delete_others_campuss";b:1;s:20:"edit_private_campuss";b:1;s:22:"edit_published_campuss";b:1;s:10:"edit_notes";b:1;s:17:"edit_others_notes";b:1;s:13:"publish_notes";b:1;s:18:"read_private_notes";b:1;s:12:"delete_notes";b:1;s:20:"delete_private_notes";b:1;s:22:"delete_published_notes";b:1;s:19:"delete_others_notes";b:1;s:18:"edit_private_notes";b:1;s:20:"edit_published_notes";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:5:{s:4:"read";b:1;s:7:"level_0";b:1;s:12:"delete_notes";b:1;s:10:"edit_notes";b:1;s:13:"publish_notes";b:1;}}s:13:"event_planner";a:2:{s:4:"name";s:13:"Event planner";s:12:"capabilities";a:11:{s:4:"read";b:1;s:11:"edit_events";b:1;s:18:"edit_others_events";b:1;s:14:"publish_events";b:1;s:19:"read_private_events";b:1;s:13:"delete_events";b:1;s:21:"delete_private_events";b:1;s:23:"delete_published_events";b:1;s:20:"delete_others_events";b:1;s:19:"edit_private_events";b:1;s:21:"edit_published_events";b:1;}}s:14:"campus_manager";a:2:{s:4:"name";s:14:"Campus manager";s:12:"capabilities";a:11:{s:14:"delete_campuss";b:1;s:21:"delete_others_campuss";b:1;s:22:"delete_private_campuss";b:1;s:24:"delete_published_campuss";b:1;s:12:"edit_campuss";b:1;s:19:"edit_others_campuss";b:1;s:20:"edit_private_campuss";b:1;s:22:"edit_published_campuss";b:1;s:15:"publish_campuss";b:1;s:4:"read";b:1;s:20:"read_private_campuss";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(102, 'cron', 'a:6:{i:1573814638;a:3:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1573814639;a:4:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1573814648;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1573814650;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1573896804;a:1:{s:21:"ai1wm_storage_cleanup";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentynineteen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1572260186;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(123, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:25:"voldemar.pungar@gmail.com";s:7:"version";s:5:"5.2.4";s:9:"timestamp";i:1572259445;}', 'no'),
(130, 'can_compress_scripts', '1', 'no'),
(147, 'category_children', 'a:0:{}', 'yes'),
(149, 'current_theme', '', 'yes'),
(150, 'theme_mods_fictional-university-theme', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(154, 'WPLANG', '', 'yes'),
(155, 'new_admin_email', 'voldemar.pungar@gmail.com', 'yes'),
(199, 'recently_activated', 'a:0:{}', 'yes'),
(206, 'acf_version', '5.8.6', 'yes'),
(209, 'recovery_mode_email_last_sent', '1573639540', 'yes'),
(248, 'mic_make2x', 'true', 'yes'),
(530, 'ai1wm_secret_key', 'rgRhCUgeysE2', 'yes'),
(533, 'ai1wm_status', 'a:2:{s:4:"type";s:8:"download";s:7:"message";s:315:"<a href="http://voldemarp.sgedu.site//wp-content/ai1wm-backups/localhost-udemy_website-20191115-094617-275.wpress" class="ai1wm-button-green ai1wm-emphasize ai1wm-button-download" title="localhost" download="localhost-udemy_website-20191115-094617-275.wpress"><span>Download localhost</span><em>Size: 17 MB</em></a>";}', 'yes'),
(539, 'ai1wm_updater', 'a:0:{}', 'yes'),
(542, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1573813626;}', 'no') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=318 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1572259563:1'),
(5, 7, '_edit_lock', '1572259581:1'),
(7, 9, '_edit_lock', '1572351273:1'),
(9, 3, '_edit_lock', '1572260524:1'),
(10, 2, '_edit_lock', '1572520739:1'),
(11, 1, '_edit_lock', '1572274892:1'),
(13, 14, '_edit_last', '1'),
(14, 14, '_edit_lock', '1572357666:1'),
(15, 15, '_edit_last', '1'),
(16, 15, '_edit_lock', '1572437331:1'),
(17, 16, '_edit_last', '1'),
(18, 16, '_edit_lock', '1573212618:1'),
(21, 20, '_edit_lock', '1572351872:1'),
(22, 22, '_edit_lock', '1572351885:1'),
(23, 24, '_edit_last', '1'),
(24, 24, '_edit_lock', '1572356965:1'),
(25, 16, 'event_date', '20191016'),
(26, 16, '_event_date', 'field_5db8336bfc196'),
(27, 15, 'event_date', '20201008'),
(28, 15, '_event_date', 'field_5db8336bfc196'),
(29, 14, 'event_date', '20191011'),
(30, 14, '_event_date', 'field_5db8336bfc196'),
(31, 27, '_edit_last', '1'),
(32, 27, '_edit_lock', '1572360529:1'),
(33, 27, 'event_date', '20191213'),
(34, 27, '_event_date', 'field_5db8336bfc196'),
(35, 28, '_edit_last', '1'),
(36, 28, '_edit_lock', '1572423668:1'),
(37, 29, '_edit_lock', '1572423573:1'),
(38, 28, '_wp_trash_meta_status', 'draft'),
(39, 28, '_wp_trash_meta_time', '1572423724'),
(40, 28, '_wp_desired_post_slug', ''),
(41, 31, '_edit_lock', '1572425242:1'),
(42, 33, '_edit_lock', '1572425263:1'),
(43, 35, '_edit_last', '1'),
(44, 35, '_edit_lock', '1572525497:1'),
(45, 36, '_edit_last', '1'),
(46, 36, '_edit_lock', '1573212116:1'),
(47, 37, '_edit_last', '1'),
(48, 37, '_edit_lock', '1572426481:1'),
(49, 38, '_edit_last', '1'),
(50, 38, '_edit_lock', '1572429103:1'),
(51, 39, '_edit_last', '1'),
(52, 39, '_edit_lock', '1572437894:1'),
(53, 15, 'related_program', 'a:1:{i:0;s:2:"36";}'),
(54, 15, '_related_program', 'field_5db95dc85ec9b'),
(55, 15, 'related_programs', 'a:2:{i:0;s:2:"36";i:1;s:2:"35";}'),
(56, 15, '_related_programs', 'field_5db95dc85ec9b'),
(57, 41, '_edit_last', '1'),
(58, 41, '_edit_lock', '1573635082:1'),
(59, 42, '_edit_last', '1'),
(60, 42, '_edit_lock', '1573561046:1'),
(61, 42, 'related_programs', 'a:1:{i:0;s:2:"36";}'),
(62, 42, '_related_programs', 'field_5db95dc85ec9b'),
(63, 44, '_wp_attached_file', '2019/10/barksalot.jpg'),
(64, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:260;s:4:"file";s:21:"2019/10/barksalot.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"barksalot-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"barksalot-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(65, 42, '_thumbnail_id', '44'),
(66, 45, '_wp_attached_file', '2019/10/meowsalot.jpg'),
(67, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:260;s:4:"file";s:21:"2019/10/meowsalot.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"meowsalot-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"meowsalot-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(68, 41, '_thumbnail_id', '45'),
(69, 41, 'related_programs', 'a:1:{i:0;s:2:"36";}'),
(70, 41, '_related_programs', 'field_5db95dc85ec9b'),
(71, 46, '_edit_last', '1'),
(72, 46, '_edit_lock', '1573475312:1'),
(73, 46, 'related_programs', 'a:1:{i:0;s:2:"35";}'),
(74, 46, '_related_programs', 'field_5db95dc85ec9b'),
(75, 47, '_wp_attached_file', '2019/10/froggerson.jpg'),
(76, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:267;s:4:"file";s:22:"2019/10/froggerson.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"froggerson-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"froggerson-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:22:"froggerson-400x260.jpg";s:5:"width";i:400;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(77, 46, '_thumbnail_id', '47'),
(78, 44, '_edit_lock', '1572444399:1'),
(79, 48, '_edit_last', '1'),
(80, 48, '_edit_lock', '1572446661:1'),
(83, 42, 'page_banner_subtitle', 'The leading voice on barking and biology'),
(84, 42, '_page_banner_subtitle', 'field_5db99f41e45c8'),
(85, 42, 'page_banner_background_image', '51'),
(86, 42, '_page_banner_background_image', 'field_5db99f55e45c9'),
(87, 2, '_edit_last', '1'),
(88, 2, 'page_banner_subtitle', 'About us page page page page'),
(89, 2, '_page_banner_subtitle', 'field_5db99f41e45c8'),
(90, 2, 'page_banner_background_image', '53'),
(91, 2, '_page_banner_background_image', 'field_5db99f55e45c9'),
(92, 52, 'page_banner_subtitle', 'About us page subtitle'),
(93, 52, '_page_banner_subtitle', 'field_5db99f41e45c8'),
(94, 52, 'page_banner_background_image', ''),
(95, 52, '_page_banner_background_image', 'field_5db99f55e45c9'),
(98, 54, 'page_banner_subtitle', 'About us page subtitle'),
(99, 54, '_page_banner_subtitle', 'field_5db99f41e45c8'),
(100, 54, 'page_banner_background_image', '53'),
(101, 54, '_page_banner_background_image', 'field_5db99f55e45c9'),
(102, 55, 'page_banner_subtitle', 'About us page page page page'),
(103, 55, '_page_banner_subtitle', 'field_5db99f41e45c8'),
(104, 55, 'page_banner_background_image', '53'),
(105, 55, '_page_banner_background_image', 'field_5db99f55e45c9'),
(106, 56, '_edit_last', '1'),
(107, 56, '_edit_lock', '1572521759:1'),
(108, 56, 'page_banner_subtitle', 'A beautiful campus in teh heart of downtown'),
(109, 56, '_page_banner_subtitle', 'field_5db99f41e45c8'),
(110, 56, 'page_banner_background_image', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(111, 56, '_page_banner_background_image', 'field_5db99f55e45c9'),
(112, 57, '_edit_last', '1'),
(113, 57, '_edit_lock', '1573475323:1'),
(114, 57, 'page_banner_subtitle', 'Downtown East Campus subtitle'),
(115, 57, '_page_banner_subtitle', 'field_5db99f41e45c8'),
(116, 57, 'page_banner_background_image', ''),
(117, 57, '_page_banner_background_image', 'field_5db99f55e45c9'),
(118, 58, '_edit_last', '1'),
(119, 58, '_edit_lock', '1572523815:1'),
(120, 60, '_edit_last', '1'),
(121, 60, '_edit_lock', '1572523987:1'),
(122, 35, 'page_banner_subtitle', ''),
(123, 35, '_page_banner_subtitle', 'field_5db99f41e45c8'),
(124, 35, 'page_banner_background_image', ''),
(125, 35, '_page_banner_background_image', 'field_5db99f55e45c9'),
(126, 35, 'related_campus', 'a:1:{i:0;s:2:"57";}'),
(127, 35, '_related_campus', 'field_5dbacfde55e5c'),
(128, 46, 'page_banner_subtitle', ''),
(129, 46, '_page_banner_subtitle', 'field_5db99f41e45c8'),
(130, 46, 'page_banner_background_image', ''),
(131, 46, '_page_banner_background_image', 'field_5db99f55e45c9'),
(132, 58, '_wp_trash_meta_status', 'publish'),
(133, 58, '_wp_trash_meta_time', '1572869738'),
(134, 58, '_wp_desired_post_slug', 'group_5dbac444a108e'),
(135, 59, '_wp_trash_meta_status', 'publish'),
(136, 59, '_wp_trash_meta_time', '1572869738'),
(137, 59, '_wp_desired_post_slug', 'field_5dbac44fa95d2'),
(138, 63, '_edit_lock', '1573039469:1'),
(140, 63, '_edit_last', '1'),
(141, 63, '_encloseme', '1'),
(142, 63, 'page_banner_subtitle', ''),
(143, 63, '_page_banner_subtitle', 'field_5db99f41e45c8'),
(144, 63, 'page_banner_background_image', ''),
(145, 63, '_page_banner_background_image', 'field_5db99f55e45c9'),
(146, 64, 'page_banner_subtitle', ''),
(147, 64, '_page_banner_subtitle', 'field_5db99f41e45c8'),
(148, 64, 'page_banner_background_image', ''),
(149, 64, '_page_banner_background_image', 'field_5db99f55e45c9'),
(150, 65, '_edit_last', '1'),
(151, 65, '_edit_lock', '1573207743:1'),
(152, 36, 'main_body_content', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(153, 36, '_main_body_content', 'field_5dc53f0fe3586'),
(154, 36, 'page_banner_subtitle', ''),
(155, 36, '_page_banner_subtitle', 'field_5db99f41e45c8'),
(156, 36, 'page_banner_background_image', ''),
(157, 36, '_page_banner_background_image', 'field_5db99f55e45c9'),
(158, 36, 'related_campus', ''),
(159, 36, '_related_campus', 'field_5dbacfde55e5c'),
(160, 16, 'page_banner_subtitle', ''),
(161, 16, '_page_banner_subtitle', 'field_5db99f41e45c8'),
(162, 16, 'page_banner_background_image', ''),
(163, 16, '_page_banner_background_image', 'field_5db99f55e45c9'),
(164, 16, 'related_programs', 'a:1:{i:0;s:2:"37";}'),
(165, 16, '_related_programs', 'field_5db95dc85ec9b'),
(166, 67, '_edit_lock', '1573215121:1'),
(167, 67, '_edit_last', '1'),
(168, 67, 'page_banner_subtitle', ''),
(169, 67, '_page_banner_subtitle', 'field_5db99f41e45c8'),
(170, 67, 'page_banner_background_image', ''),
(171, 67, '_page_banner_background_image', 'field_5db99f55e45c9'),
(172, 68, 'page_banner_subtitle', ''),
(173, 68, '_page_banner_subtitle', 'field_5db99f41e45c8'),
(174, 68, 'page_banner_background_image', ''),
(175, 68, '_page_banner_background_image', 'field_5db99f55e45c9'),
(176, 73, '_edit_lock', '1573464553:2'),
(177, 73, '_edit_last', '2'),
(178, 73, 'event_date', '20190410'),
(179, 73, '_event_date', 'field_5db8336bfc196'),
(180, 73, 'page_banner_subtitle', ''),
(181, 73, '_page_banner_subtitle', 'field_5db99f41e45c8'),
(182, 73, 'page_banner_background_image', ''),
(183, 73, '_page_banner_background_image', 'field_5db99f55e45c9'),
(184, 73, 'related_programs', 'a:1:{i:0;s:2:"35";}'),
(185, 73, '_related_programs', 'field_5db95dc85ec9b'),
(186, 74, '_edit_lock', '1573475617:1'),
(187, 74, '_edit_last', '1'),
(188, 74, 'page_banner_subtitle', ''),
(189, 74, '_page_banner_subtitle', 'field_5db99f41e45c8'),
(190, 74, 'page_banner_background_image', ''),
(191, 74, '_page_banner_background_image', 'field_5db99f55e45c9'),
(192, 75, 'page_banner_subtitle', ''),
(193, 75, '_page_banner_subtitle', 'field_5db99f41e45c8'),
(194, 75, 'page_banner_background_image', ''),
(195, 75, '_page_banner_background_image', 'field_5db99f55e45c9'),
(196, 77, 'page_banner_subtitle', ''),
(197, 77, '_page_banner_subtitle', 'field_5db99f41e45c8'),
(198, 77, 'page_banner_background_image', ''),
(199, 77, '_page_banner_background_image', 'field_5db99f55e45c9'),
(200, 78, '_edit_lock', '1573476307:1'),
(201, 78, '_edit_last', '1'),
(202, 78, 'page_banner_subtitle', ''),
(203, 78, '_page_banner_subtitle', 'field_5db99f41e45c8'),
(204, 78, 'page_banner_background_image', ''),
(205, 78, '_page_banner_background_image', 'field_5db99f55e45c9'),
(206, 79, '_edit_lock', '1573547444:1'),
(207, 79, '_edit_last', '1'),
(208, 79, 'page_banner_subtitle', ''),
(209, 79, '_page_banner_subtitle', 'field_5db99f41e45c8'),
(210, 79, 'page_banner_background_image', ''),
(211, 79, '_page_banner_background_image', 'field_5db99f55e45c9') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(215, 79, '_wp_old_slug', 'math-lecture-1__trashed'),
(219, 78, '_wp_old_slug', 'biology-lecture-nr-4__trashed'),
(223, 84, '_edit_lock', '1573549660:1'),
(224, 84, '_edit_last', '1'),
(225, 84, 'page_banner_subtitle', ''),
(226, 84, '_page_banner_subtitle', 'field_5db99f41e45c8'),
(227, 84, 'page_banner_background_image', ''),
(228, 84, '_page_banner_background_image', 'field_5db99f55e45c9'),
(229, 87, '_wp_trash_meta_status', 'publish'),
(230, 87, '_wp_trash_meta_time', '1573551146'),
(231, 87, '_wp_desired_post_slug', 'crud-create-valmis'),
(232, 88, '_wp_trash_meta_status', 'publish'),
(233, 88, '_wp_trash_meta_time', '1573552256'),
(234, 88, '_wp_desired_post_slug', 'uus-subscriberi-m2rkus'),
(235, 89, '_edit_lock', '1573552450:1'),
(236, 89, '_edit_last', '1'),
(237, 89, 'page_banner_subtitle', ''),
(238, 89, '_page_banner_subtitle', 'field_5db99f41e45c8'),
(239, 89, 'page_banner_background_image', ''),
(240, 89, '_page_banner_background_image', 'field_5db99f55e45c9'),
(241, 83, '_wp_trash_meta_status', 'private'),
(242, 83, '_wp_trash_meta_time', '1573554269'),
(243, 83, '_wp_desired_post_slug', '83'),
(244, 90, '_wp_trash_meta_status', 'private'),
(245, 90, '_wp_trash_meta_time', '1573554814'),
(246, 90, '_wp_desired_post_slug', 'new-privacy-test'),
(247, 95, '_wp_trash_meta_status', 'private'),
(248, 95, '_wp_trash_meta_time', '1573556327'),
(249, 95, '_wp_desired_post_slug', 'user-note-5'),
(250, 94, '_wp_trash_meta_status', 'private'),
(251, 94, '_wp_trash_meta_time', '1573556720'),
(252, 94, '_wp_desired_post_slug', 'user-note-4'),
(253, 96, '_wp_trash_meta_status', 'private'),
(254, 96, '_wp_trash_meta_time', '1573557142'),
(255, 96, '_wp_desired_post_slug', 'notenotenote'),
(256, 97, '_wp_trash_meta_status', 'private'),
(257, 97, '_wp_trash_meta_time', '1573557839'),
(258, 97, '_wp_desired_post_slug', 'dwdd'),
(259, 99, '_edit_lock', '1573560582:1'),
(260, 100, '_edit_lock', '1573560527:1'),
(261, 100, '_edit_last', '1'),
(262, 102, '_edit_lock', '1573560704:1'),
(263, 104, '_edit_lock', '1573567615:1'),
(264, 104, '_edit_last', '1'),
(265, 104, 'liked_professor_id', '42'),
(266, 104, '_liked_professor_id', 'field_5dcaa11e2e9d4'),
(267, 104, 'page_banner_subtitle', ''),
(268, 104, '_page_banner_subtitle', 'field_5db99f41e45c8'),
(269, 104, 'page_banner_background_image', ''),
(270, 104, '_page_banner_background_image', 'field_5db99f55e45c9'),
(271, 107, 'liked_professor_id', '12345'),
(272, 107, '_edit_lock', '1573639636:1'),
(273, 108, 'liked_professor_id', '789'),
(274, 108, '_edit_lock', '1573639981:1'),
(275, 109, 'liked_professor_id', '41'),
(276, 109, '_edit_lock', '1573646256:1'),
(277, 109, '_wp_trash_meta_status', 'publish'),
(278, 109, '_wp_trash_meta_time', '1573810702'),
(279, 109, '_wp_desired_post_slug', '2nd-php-test-3'),
(280, 108, '_wp_trash_meta_status', 'publish'),
(281, 108, '_wp_trash_meta_time', '1573810702'),
(282, 108, '_wp_desired_post_slug', '2nd-php-test-2'),
(283, 107, '_wp_trash_meta_status', 'publish'),
(284, 107, '_wp_trash_meta_time', '1573810702'),
(285, 107, '_wp_desired_post_slug', '2nd-php-test'),
(286, 106, '_wp_trash_meta_status', 'publish'),
(287, 106, '_wp_trash_meta_time', '1573810702'),
(288, 106, '_wp_desired_post_slug', 'our-php-create-post-test'),
(289, 104, '_wp_trash_meta_status', 'publish'),
(290, 104, '_wp_trash_meta_time', '1573810702'),
(291, 104, '_wp_desired_post_slug', '104'),
(292, 98, '_wp_trash_meta_status', 'private'),
(293, 98, '_wp_trash_meta_time', '1573810789'),
(294, 98, '_wp_desired_post_slug', 'dwdw'),
(295, 95, '_wp_trash_meta_status', 'private'),
(296, 95, '_wp_trash_meta_time', '1573810789'),
(297, 93, '_wp_trash_meta_status', 'private'),
(298, 93, '_wp_trash_meta_time', '1573810789'),
(299, 93, '_wp_desired_post_slug', 'user-note-3'),
(300, 92, '_wp_trash_meta_status', 'private'),
(301, 92, '_wp_trash_meta_time', '1573810789'),
(302, 92, '_wp_desired_post_slug', 'user-note-2'),
(303, 91, '_wp_trash_meta_status', 'private'),
(304, 91, '_wp_trash_meta_time', '1573810789'),
(305, 91, '_wp_desired_post_slug', 'user-2-note-1'),
(306, 89, '_wp_trash_meta_status', 'private'),
(307, 89, '_wp_trash_meta_time', '1573810789'),
(308, 89, '_wp_desired_post_slug', 'uus-note-teiselt-kasutajalt'),
(309, 86, '_wp_trash_meta_status', 'private'),
(310, 86, '_wp_trash_meta_time', '1573810789'),
(311, 86, '_wp_desired_post_slug', 'uus-m2rkus'),
(312, 85, '_wp_trash_meta_status', 'private'),
(313, 85, '_wp_trash_meta_time', '1573810789'),
(314, 85, '_wp_desired_post_slug', 'testing-2'),
(315, 84, '_wp_trash_meta_status', 'private'),
(316, 84, '_wp_trash_meta_time', '1573810789'),
(317, 84, '_wp_desired_post_slug', 'frontend-test') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-10-28 10:43:57', '2019-10-28 10:43:57', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'We won an award', 'Our school has won another award this year', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-10-28 15:01:57', '2019-10-28 15:01:57', '', 0, 'http://voldemarp.sgedu.site//?p=1', 0, 'post', '', 1),
(2, 1, '2019-10-28 10:43:57', '2019-10-28 10:43:57', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->', 'About us', '', 'publish', 'closed', 'open', '', 'about-us', '', '', '2019-10-31 09:04:21', '2019-10-31 09:04:21', '', 0, 'http://voldemarp.sgedu.site//?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-10-28 10:43:57', '2019-10-28 10:43:57', '<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->', 'Privacy Policy', '', 'publish', 'closed', 'open', '', 'privacy-policy', '', '', '2019-10-28 10:50:59', '2019-10-28 10:50:59', '', 0, 'http://voldemarp.sgedu.site//?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-10-28 10:48:26', '2019-10-28 10:48:26', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Test post 1', '', 'publish', 'open', 'open', '', 'test-post-1', '', '', '2019-10-28 10:48:26', '2019-10-28 10:48:26', '', 0, 'http://voldemarp.sgedu.site//?p=5', 0, 'post', '', 0),
(6, 1, '2019-10-28 10:48:26', '2019-10-28 10:48:26', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Test post 1', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-10-28 10:48:26', '2019-10-28 10:48:26', '', 5, 'http://voldemarp.sgedu.site//2019/10/28/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-10-28 10:48:43', '2019-10-28 10:48:43', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'test post 2', '', 'publish', 'open', 'open', '', 'test-post-2', '', '', '2019-10-28 10:48:43', '2019-10-28 10:48:43', '', 0, 'http://voldemarp.sgedu.site//?p=7', 0, 'post', '', 0),
(8, 1, '2019-10-28 10:48:43', '2019-10-28 10:48:43', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'test post 2', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-10-28 10:48:43', '2019-10-28 10:48:43', '', 7, 'http://voldemarp.sgedu.site//2019/10/28/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-10-28 10:49:03', '2019-10-28 10:49:03', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Test post 3', 'Testimise postitus number 3.', 'publish', 'open', 'open', '', 'test-post-3', '', '', '2019-10-28 15:04:13', '2019-10-28 15:04:13', '', 0, 'http://voldemarp.sgedu.site//?p=9', 0, 'post', '', 0),
(10, 1, '2019-10-28 10:49:03', '2019-10-28 10:49:03', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Test post 3', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-10-28 10:49:03', '2019-10-28 10:49:03', '', 9, 'http://voldemarp.sgedu.site//2019/10/28/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-10-28 10:50:59', '2019-10-28 10:50:59', '<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-10-28 10:50:59', '2019-10-28 10:50:59', '', 3, 'http://voldemarp.sgedu.site//2019/10/28/3-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-10-28 10:51:24', '2019-10-28 10:51:24', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-10-28 10:51:24', '2019-10-28 10:51:24', '', 2, 'http://voldemarp.sgedu.site//2019/10/28/2-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-10-28 10:53:17', '2019-10-28 10:53:17', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'We won an award', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-10-28 10:53:17', '2019-10-28 10:53:17', '', 1, 'http://voldemarp.sgedu.site//2019/10/28/1-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2019-10-28 14:23:24', '2019-10-28 14:23:24', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Math meetups', '', 'publish', 'closed', 'closed', '', 'math-meetups', '', '', '2019-10-29 13:54:20', '2019-10-29 13:54:20', '', 0, 'http://voldemarp.sgedu.site//?post_type=event&#038;p=14', 0, 'event', '', 0),
(15, 1, '2019-10-28 14:24:01', '2019-10-28 14:24:01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'The science of cats', '', 'publish', 'closed', 'closed', '', 'the-science-of-cats', '', '', '2019-10-30 10:21:51', '2019-10-30 10:21:51', '', 0, 'http://voldemarp.sgedu.site//?post_type=event&#038;p=15', 0, 'event', '', 0),
(16, 1, '2019-10-28 14:24:17', '2019-10-28 14:24:17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Poetry day', 'Poetry day is going to be amazing.', 'publish', 'closed', 'closed', '', 'poetry-day', '', '', '2019-11-08 11:24:34', '2019-11-08 11:24:34', '', 0, 'http://voldemarp.sgedu.site//?post_type=event&#038;p=16', 0, 'event', '', 0),
(18, 1, '2019-10-28 15:01:57', '2019-10-28 15:01:57', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'We won an award', 'Our school has won another award this year', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-10-28 15:01:57', '2019-10-28 15:01:57', '', 1, 'http://voldemarp.sgedu.site//2019/10/28/1-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-10-28 15:04:13', '2019-10-28 15:04:13', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Test post 3', 'Testimise postitus number 3.', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-10-28 15:04:13', '2019-10-28 15:04:13', '', 9, 'http://voldemarp.sgedu.site//2019/10/28/9-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2019-10-29 12:26:50', '2019-10-29 12:26:50', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-10-29 12:26:50', '2019-10-29 12:26:50', '', 0, 'http://voldemarp.sgedu.site//?page_id=20', 0, 'page', '', 0),
(21, 1, '2019-10-29 12:26:50', '2019-10-29 12:26:50', '', 'Home', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2019-10-29 12:26:50', '2019-10-29 12:26:50', '', 20, 'http://voldemarp.sgedu.site//2019/10/29/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-10-29 12:27:06', '2019-10-29 12:27:06', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-10-29 12:27:06', '2019-10-29 12:27:06', '', 0, 'http://voldemarp.sgedu.site//?page_id=22', 0, 'page', '', 0),
(23, 1, '2019-10-29 12:27:06', '2019-10-29 12:27:06', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-10-29 12:27:06', '2019-10-29 12:27:06', '', 22, 'http://voldemarp.sgedu.site//2019/10/29/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2019-10-29 12:43:04', '2019-10-29 12:43:04', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:5:"event";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Event Date', 'event-date', 'publish', 'closed', 'closed', '', 'group_5db833584741f', '', '', '2019-10-29 12:59:13', '2019-10-29 12:59:13', '', 0, 'http://voldemarp.sgedu.site//?post_type=acf-field-group&#038;p=24', 0, 'acf-field-group', '', 0),
(25, 1, '2019-10-29 12:43:04', '2019-10-29 12:43:04', 'a:8:{s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:14:"display_format";s:5:"d/m/Y";s:13:"return_format";s:5:"d/m/Y";s:9:"first_day";i:1;}', 'Event Date', 'event_date', 'publish', 'closed', 'closed', '', 'field_5db8336bfc196', '', '', '2019-10-29 12:58:18', '2019-10-29 12:58:18', '', 24, 'http://voldemarp.sgedu.site//?post_type=acf-field&#038;p=25', 0, 'acf-field', '', 0),
(27, 1, '2019-10-29 14:51:10', '2019-10-29 14:51:10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Winter study night', '', 'publish', 'closed', 'closed', '', 'winter-study-night', '', '', '2019-10-29 14:51:10', '2019-10-29 14:51:10', '', 0, 'http://voldemarp.sgedu.site//?post_type=event&#038;p=27', 0, 'event', '', 0),
(28, 1, '2019-10-30 08:22:04', '2019-10-30 08:22:04', '', 'Past Events', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2019-10-30 08:22:04', '2019-10-30 08:22:04', '', 0, 'http://voldemarp.sgedu.site//?post_type=event&#038;p=28', 0, 'event', '', 0),
(29, 1, '2019-10-30 08:21:52', '2019-10-30 08:21:52', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Past Events', '', 'publish', 'closed', 'closed', '', 'past-events', '', '', '2019-10-30 08:21:52', '2019-10-30 08:21:52', '', 0, 'http://voldemarp.sgedu.site//?page_id=29', 0, 'page', '', 0),
(30, 1, '2019-10-30 08:21:52', '2019-10-30 08:21:52', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Past Events', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-10-30 08:21:52', '2019-10-30 08:21:52', '', 29, 'http://voldemarp.sgedu.site//2019/10/30/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2019-10-30 08:49:41', '2019-10-30 08:49:41', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Our Goals', '', 'publish', 'closed', 'closed', '', 'our-goals', '', '', '2019-10-30 08:49:41', '2019-10-30 08:49:41', '', 2, 'http://voldemarp.sgedu.site//?page_id=31', 0, 'page', '', 0),
(32, 1, '2019-10-30 08:49:41', '2019-10-30 08:49:41', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Our Goals', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-10-30 08:49:41', '2019-10-30 08:49:41', '', 31, 'http://voldemarp.sgedu.site//2019/10/30/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2019-10-30 08:50:06', '2019-10-30 08:50:06', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Our Team', '', 'publish', 'closed', 'closed', '', 'our-team', '', '', '2019-10-30 08:50:06', '2019-10-30 08:50:06', '', 2, 'http://voldemarp.sgedu.site//?page_id=33', 0, 'page', '', 0),
(34, 1, '2019-10-30 08:50:06', '2019-10-30 08:50:06', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Our Team', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2019-10-30 08:50:06', '2019-10-30 08:50:06', '', 33, 'http://voldemarp.sgedu.site//2019/10/30/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-10-30 09:10:02', '2019-10-30 09:10:02', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Math', '', 'publish', 'closed', 'closed', '', 'math', '', '', '2019-10-31 12:22:28', '2019-10-31 12:22:28', '', 0, 'http://voldemarp.sgedu.site//?post_type=program&#038;p=35', 0, 'program', '', 0),
(36, 1, '2019-10-30 09:10:14', '2019-10-30 09:10:14', '', 'Biology', '', 'publish', 'closed', 'closed', '', 'biology', '', '', '2019-11-08 10:13:57', '2019-11-08 10:13:57', '', 0, 'http://voldemarp.sgedu.site//?post_type=program&#038;p=36', 0, 'program', '', 0),
(37, 1, '2019-10-30 09:10:23', '2019-10-30 09:10:23', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'English', '', 'publish', 'closed', 'closed', '', 'english', '', '', '2019-10-30 09:10:23', '2019-10-30 09:10:23', '', 0, 'http://voldemarp.sgedu.site//?post_type=program&#038;p=37', 0, 'program', '', 0),
(38, 1, '2019-10-30 09:39:50', '2019-10-30 09:39:50', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Algebra', '', 'publish', 'closed', 'closed', '', 'algebra', '', '', '2019-10-30 09:39:50', '2019-10-30 09:39:50', '', 0, 'http://voldemarp.sgedu.site//?post_type=program&#038;p=38', 0, 'program', '', 0),
(39, 1, '2019-10-30 09:56:00', '2019-10-30 09:56:00', 'a:7:{s:8:"location";a:2:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:5:"event";}}i:1;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:9:"professor";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Related Program', 'related-program', 'publish', 'closed', 'closed', '', 'group_5db95dc053eb3', '', '', '2019-10-30 12:20:36', '2019-10-30 12:20:36', '', 0, 'http://voldemarp.sgedu.site//?post_type=acf-field-group&#038;p=39', 0, 'acf-field-group', '', 0),
(40, 1, '2019-10-30 09:56:00', '2019-10-30 09:56:00', 'a:12:{s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"post_type";a:1:{i:0;s:7:"program";}s:8:"taxonomy";s:0:"";s:7:"filters";a:3:{i:0;s:6:"search";i:1;s:9:"post_type";i:2;s:8:"taxonomy";}s:8:"elements";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:13:"return_format";s:6:"object";}', 'Related Program(s)', 'related_programs', 'publish', 'closed', 'closed', '', 'field_5db95dc85ec9b', '', '', '2019-10-30 10:02:55', '2019-10-30 10:02:55', '', 39, 'http://voldemarp.sgedu.site//?post_type=acf-field&#038;p=40', 0, 'acf-field', '', 0),
(41, 1, '2019-10-30 12:11:43', '2019-10-30 12:11:43', '<p id="output" class="page-generator__lorem">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'Dr Meowsalot', '', 'publish', 'closed', 'closed', '', 'dr-meowsalot', '', '', '2019-10-30 13:13:16', '2019-10-30 13:13:16', '', 0, 'http://voldemarp.sgedu.site//?post_type=professor&#038;p=41', 0, 'professor', '', 0),
(42, 1, '2019-10-30 12:11:56', '2019-10-30 12:11:56', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Dr Barksalot', '', 'publish', 'closed', 'closed', '', 'dr-barksalot', '', '', '2019-10-30 14:39:52', '2019-10-30 14:39:52', '', 0, 'http://voldemarp.sgedu.site//?post_type=professor&#038;p=42', 0, 'professor', '', 0),
(44, 1, '2019-10-30 13:12:18', '2019-10-30 13:12:18', '', 'barksalot', '', 'inherit', 'open', 'closed', '', 'barksalot', '', '', '2019-10-30 13:12:18', '2019-10-30 13:12:18', '', 42, 'http://voldemarp.sgedu.site//wp-content/uploads/2019/10/barksalot.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2019-10-30 13:13:12', '2019-10-30 13:13:12', '', 'meowsalot', '', 'inherit', 'open', 'closed', '', 'meowsalot', '', '', '2019-10-30 13:13:12', '2019-10-30 13:13:12', '', 41, 'http://voldemarp.sgedu.site//wp-content/uploads/2019/10/meowsalot.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2019-10-30 13:51:38', '2019-10-30 13:51:38', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Dr Froggerson', '', 'publish', 'closed', 'closed', '', 'dr-froggerson', '', '', '2019-10-31 12:40:50', '2019-10-31 12:40:50', '', 0, 'http://voldemarp.sgedu.site//?post_type=professor&#038;p=46', 0, 'professor', '', 0),
(47, 1, '2019-10-30 13:58:56', '2019-10-30 13:58:56', '', 'froggerson', '', 'inherit', 'open', 'closed', '', 'froggerson', '', '', '2019-10-30 13:58:56', '2019-10-30 13:58:56', '', 46, 'http://voldemarp.sgedu.site//wp-content/uploads/2019/10/froggerson.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2019-10-30 14:35:08', '2019-10-30 14:35:08', 'a:7:{s:8:"location";a:2:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";}}i:1;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"!=";s:5:"value";s:4:"post";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Page Banner', 'page-banner', 'publish', 'closed', 'closed', '', 'group_5db99f3c6702a', '', '', '2019-10-30 14:35:09', '2019-10-30 14:35:09', '', 0, 'http://voldemarp.sgedu.site//?post_type=acf-field-group&#038;p=48', 0, 'acf-field-group', '', 0),
(49, 1, '2019-10-30 14:35:08', '2019-10-30 14:35:08', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Page Banner Subtitle', 'page_banner_subtitle', 'publish', 'closed', 'closed', '', 'field_5db99f41e45c8', '', '', '2019-10-30 14:35:08', '2019-10-30 14:35:08', '', 48, 'http://voldemarp.sgedu.site//?post_type=acf-field&p=49', 0, 'acf-field', '', 0),
(50, 1, '2019-10-30 14:35:09', '2019-10-30 14:35:09', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Page Banner Background Image', 'page_banner_background_image', 'publish', 'closed', 'closed', '', 'field_5db99f55e45c9', '', '', '2019-10-30 14:35:09', '2019-10-30 14:35:09', '', 48, 'http://voldemarp.sgedu.site//?post_type=acf-field&p=50', 1, 'acf-field', '', 0),
(52, 1, '2019-10-31 08:42:28', '2019-10-31 08:42:28', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-10-31 08:42:28', '2019-10-31 08:42:28', '', 2, 'http://voldemarp.sgedu.site//2019/10/31/2-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-10-31 08:44:35', '2019-10-31 08:44:35', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-10-31 08:44:35', '2019-10-31 08:44:35', '', 2, 'http://voldemarp.sgedu.site//2019/10/31/2-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-10-31 09:04:21', '2019-10-31 09:04:21', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-10-31 09:04:21', '2019-10-31 09:04:21', '', 2, 'http://voldemarp.sgedu.site//2019/10/31/2-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-10-31 11:22:05', '2019-10-31 11:22:05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Downtown West', '', 'publish', 'closed', 'closed', '', 'downtown-west', '', '', '2019-10-31 11:22:05', '2019-10-31 11:22:05', '', 0, 'http://voldemarp.sgedu.site//?post_type=campus&#038;p=56', 0, 'campus', '', 0),
(57, 1, '2019-10-31 11:22:31', '2019-10-31 11:22:31', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Downtown East', '', 'publish', 'closed', 'closed', '', 'downtown-east', '', '', '2019-10-31 11:22:31', '2019-10-31 11:22:31', '', 0, 'http://voldemarp.sgedu.site//?post_type=campus&#038;p=57', 0, 'campus', '', 0),
(58, 1, '2019-10-31 11:24:47', '2019-10-31 11:24:47', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:6:"campus";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Map Location', 'map-location', 'trash', 'closed', 'closed', '', 'group_5dbac444a108e__trashed', '', '', '2019-11-04 12:15:38', '2019-11-04 12:15:38', '', 0, 'http://voldemarp.sgedu.site//?post_type=acf-field-group&#038;p=58', 0, 'acf-field-group', '', 0),
(59, 1, '2019-10-31 11:24:47', '2019-10-31 11:24:47', 'a:9:{s:4:"type";s:10:"google_map";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:10:"center_lat";s:0:"";s:10:"center_lng";s:0:"";s:4:"zoom";s:0:"";s:6:"height";s:0:"";}', 'Map Location', 'map_location', 'trash', 'closed', 'closed', '', 'field_5dbac44fa95d2__trashed', '', '', '2019-11-04 12:15:38', '2019-11-04 12:15:38', '', 58, 'http://voldemarp.sgedu.site//?post_type=acf-field&#038;p=59', 0, 'acf-field', '', 0),
(60, 1, '2019-10-31 12:15:26', '2019-10-31 12:15:26', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"program";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Related Campus(es)', 'related-campuses', 'publish', 'closed', 'closed', '', 'group_5dbacfc7226ff', '', '', '2019-10-31 12:15:26', '2019-10-31 12:15:26', '', 0, 'http://voldemarp.sgedu.site//?post_type=acf-field-group&#038;p=60', 0, 'acf-field-group', '', 0),
(61, 1, '2019-10-31 12:15:26', '2019-10-31 12:15:26', 'a:12:{s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"post_type";a:1:{i:0;s:6:"campus";}s:8:"taxonomy";s:0:"";s:7:"filters";a:3:{i:0;s:6:"search";i:1;s:9:"post_type";i:2;s:8:"taxonomy";}s:8:"elements";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:13:"return_format";s:6:"object";}', 'Related Campus(es)', 'related_campus', 'publish', 'closed', 'closed', '', 'field_5dbacfde55e5c', '', '', '2019-10-31 12:15:26', '2019-10-31 12:15:26', '', 60, 'http://voldemarp.sgedu.site//?post_type=acf-field&p=61', 0, 'acf-field', '', 0),
(63, 1, '2019-11-06 11:19:31', '2019-11-06 11:19:31', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Biology is cool', '', 'publish', 'open', 'open', '', 'biology-is-cool', '', '', '2019-11-06 11:19:32', '2019-11-06 11:19:32', '', 0, 'http://voldemarp.sgedu.site//?p=63', 0, 'post', '', 0),
(64, 1, '2019-11-06 11:19:31', '2019-11-06 11:19:31', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Biology is cool', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2019-11-06 11:19:31', '2019-11-06 11:19:31', '', 63, 'http://voldemarp.sgedu.site//2019/11/06/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2019-11-08 10:11:22', '2019-11-08 10:11:22', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"program";}}}s:8:"position";s:15:"acf_after_title";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Main Body Content', 'main-body-content', 'publish', 'closed', 'closed', '', 'group_5dc53f057269c', '', '', '2019-11-08 10:11:23', '2019-11-08 10:11:23', '', 0, 'http://voldemarp.sgedu.site//?post_type=acf-field-group&#038;p=65', 0, 'acf-field-group', '', 0),
(66, 1, '2019-11-08 10:11:23', '2019-11-08 10:11:23', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;}', 'Main Body Content', 'main_body_content', 'publish', 'closed', 'closed', '', 'field_5dc53f0fe3586', '', '', '2019-11-08 10:11:23', '2019-11-08 10:11:23', '', 65, 'http://voldemarp.sgedu.site//?post_type=acf-field&p=66', 0, 'acf-field', '', 0),
(67, 1, '2019-11-08 11:43:10', '2019-11-08 11:43:10', '', 'Search', '', 'publish', 'closed', 'closed', '', 'search', '', '', '2019-11-08 12:02:55', '2019-11-08 12:02:55', '', 0, 'http://voldemarp.sgedu.site//?page_id=67', 0, 'page', '', 0),
(68, 1, '2019-11-08 11:43:10', '2019-11-08 11:43:10', '', 'Search', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2019-11-08 11:43:10', '2019-11-08 11:43:10', '', 67, 'http://voldemarp.sgedu.site//2019/11/08/67-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2019-11-11 09:03:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-11-11 09:03:20', '0000-00-00 00:00:00', '', 0, 'http://voldemarp.sgedu.site//?p=72', 0, 'post', '', 0),
(73, 1, '2019-11-11 09:16:52', '2019-11-11 09:16:52', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', 'Math party', '', 'publish', 'closed', 'closed', '', 'math-party', '', '', '2019-11-11 09:16:52', '2019-11-11 09:16:52', '', 0, 'http://voldemarp.sgedu.site//?post_type=event&#038;p=73', 0, 'event', '', 0),
(74, 1, '2019-11-11 11:23:16', '2019-11-11 11:23:16', '', 'My notes', '', 'publish', 'closed', 'closed', '', 'my-notes', '', '', '2019-11-11 11:36:14', '2019-11-11 11:36:14', '', 0, 'http://voldemarp.sgedu.site//?page_id=74', 0, 'page', '', 0),
(75, 1, '2019-11-11 11:23:16', '2019-11-11 11:23:16', '', 'Add new', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2019-11-11 11:23:16', '2019-11-11 11:23:16', '', 74, 'http://voldemarp.sgedu.site//2019/11/11/74-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2019-11-11 11:35:50', '2019-11-11 11:35:50', '', 'My notes', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2019-11-11 11:35:50', '2019-11-11 11:35:50', '', 74, 'http://voldemarp.sgedu.site//2019/11/11/74-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2019-11-11 11:49:05', '2019-11-11 11:49:05', '<!-- wp:paragraph -->\n<p>Biology lecture nr 4 Biology lecture nr 4 Biology lecture nr 4 Biology lecture nr 4</p>\n<!-- /wp:paragraph -->', 'Biology lecture nr 4', '', 'private', 'closed', 'closed', '', 'biology-lecture-nr-4', '', '', '2019-11-12 09:54:50', '2019-11-12 09:54:50', '', 0, 'http://voldemarp.sgedu.site//?post_type=note&#038;p=78', 0, 'note', '', 0),
(79, 1, '2019-11-11 11:50:23', '2019-11-11 11:50:23', 'Math lecture #1', 'Math lecture', '', 'private', 'closed', 'closed', '', 'math-lecture-1', '', '', '2019-11-12 09:54:50', '2019-11-12 09:54:50', '', 0, 'http://voldemarp.sgedu.site//?post_type=note&#038;p=79', 0, 'note', '', 0),
(80, 1, '2019-11-11 12:06:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-11-11 12:06:27', '0000-00-00 00:00:00', '', 0, 'http://voldemarp.sgedu.site//?p=80', 0, 'post', '', 0),
(82, 1, '2019-11-11 12:33:55', '2019-11-11 12:33:55', '', 'My notes', '', 'inherit', 'closed', 'closed', '', '74-autosave-v1', '', '', '2019-11-11 12:33:55', '2019-11-11 12:33:55', '', 74, 'http://voldemarp.sgedu.site//2019/11/11/74-autosave-v1/', 0, 'revision', '', 0),
(83, 1, '2019-11-12 09:54:50', '2019-11-12 09:54:50', '', '', '', 'trash', 'closed', 'closed', '', '83__trashed', '', '', '2019-11-12 10:24:29', '2019-11-12 10:24:29', '', 0, 'http://voldemarp.sgedu.site//?post_type=note&#038;p=83', 0, 'note', '', 0),
(84, 1, '2019-11-12 09:07:39', '2019-11-12 09:07:39', 'lorem ipsum', 'Frontend test', '', 'trash', 'closed', 'closed', '', 'frontend-test__trashed', '', '', '2019-11-15 09:39:49', '2019-11-15 09:39:49', '', 0, 'http://voldemarp.sgedu.site//?post_type=note&#038;p=84', 0, 'note', '', 0),
(85, 1, '2019-11-12 09:10:43', '2019-11-12 09:10:43', 'note two', 'testing 2', '', 'trash', 'closed', 'closed', '', 'testing-2__trashed', '', '', '2019-11-15 09:39:49', '2019-11-15 09:39:49', '', 0, 'http://voldemarp.sgedu.site//note/testing-2/', 0, 'note', '', 0),
(86, 1, '2019-11-12 09:20:19', '2019-11-12 09:20:19', 'k6ige uuem tehtud m2rkus', 'Uus m2rkus', '', 'trash', 'closed', 'closed', '', 'uus-m2rkus__trashed', '', '', '2019-11-15 09:39:49', '2019-11-15 09:39:49', '', 0, 'http://voldemarp.sgedu.site//note/uus-m2rkus/', 0, 'note', '', 0),
(87, 1, '2019-11-12 09:32:17', '2019-11-12 09:32:17', 'lorem ipsum', 'CRUD Valmis', '', 'trash', 'closed', 'closed', '', 'crud-create-valmis__trashed', '', '', '2019-11-12 09:32:26', '2019-11-12 09:32:26', '', 0, 'http://voldemarp.sgedu.site//note/crud-create-valmis/', 0, 'note', '', 0),
(88, 3, '2019-11-12 09:50:25', '2019-11-12 09:50:25', 'essa m2rkus', 'Uus subscriberi m2rkus uus', '', 'trash', 'closed', 'closed', '', 'uus-subscriberi-m2rkus__trashed', '', '', '2019-11-12 09:50:56', '2019-11-12 09:50:56', '', 0, 'http://voldemarp.sgedu.site//note/uus-subscriberi-m2rkus/', 0, 'note', '', 0),
(89, 0, '2019-11-12 09:51:34', '2019-11-12 09:51:34', 'lorem ipsum x10', 'Uus note teiselt kasutajalt', '', 'trash', 'closed', 'closed', '', 'uus-note-teiselt-kasutajalt__trashed', '', '', '2019-11-15 09:39:49', '2019-11-15 09:39:49', '', 0, 'http://voldemarp.sgedu.site//note/uus-note-teiselt-kasutajalt/', 0, 'note', '', 0),
(90, 3, '2019-11-12 10:24:11', '2019-11-12 10:24:11', 'test 123', 'privacy test', '', 'trash', 'closed', 'closed', '', 'new-privacy-test__trashed', '', '', '2019-11-12 10:33:34', '2019-11-12 10:33:34', '', 0, 'http://voldemarp.sgedu.site//note/new-privacy-test/', 0, 'note', '', 0),
(91, 3, '2019-11-12 10:51:21', '2019-11-12 10:51:21', 'lorem ipsum', 'User 2 note 1', '', 'trash', 'closed', 'closed', '', 'user-2-note-1__trashed', '', '', '2019-11-15 09:39:49', '2019-11-15 09:39:49', '', 0, 'http://voldemarp.sgedu.site//note/user-2-note-1/', 0, 'note', '', 0),
(92, 3, '2019-11-12 10:57:26', '2019-11-12 10:57:26', 'lorem ipsum', 'User note 2', '', 'trash', 'closed', 'closed', '', 'user-note-2__trashed', '', '', '2019-11-15 09:39:49', '2019-11-15 09:39:49', '', 0, 'http://voldemarp.sgedu.site//note/user-note-2/', 0, 'note', '', 0),
(93, 3, '2019-11-12 10:57:33', '2019-11-12 10:57:33', 'lorem ipsum', 'User note 3', '', 'trash', 'closed', 'closed', '', 'user-note-3__trashed', '', '', '2019-11-15 09:39:49', '2019-11-15 09:39:49', '', 0, 'http://voldemarp.sgedu.site//note/user-note-3/', 0, 'note', '', 0),
(94, 3, '2019-11-12 10:57:39', '2019-11-12 10:57:39', 'lorem ipsum', 'User note 4', '', 'trash', 'closed', 'closed', '', 'user-note-4__trashed', '', '', '2019-11-12 11:05:20', '2019-11-12 11:05:20', '', 0, 'http://voldemarp.sgedu.site//note/user-note-4/', 0, 'note', '', 0),
(95, 3, '2019-11-12 10:57:46', '2019-11-12 10:57:46', 'lorem ipsum', 'User note 89', '', 'trash', 'closed', 'closed', '', 'user-note-5__trashed', '', '', '2019-11-15 09:39:49', '2019-11-15 09:39:49', '', 0, 'http://voldemarp.sgedu.site//note/user-note-5/', 0, 'note', '', 0),
(96, 3, '2019-11-12 11:05:26', '2019-11-12 11:05:26', '', 'notenotenote', '', 'trash', 'closed', 'closed', '', 'notenotenote__trashed', '', '', '2019-11-12 11:12:22', '2019-11-12 11:12:22', '', 0, 'http://voldemarp.sgedu.site//note/notenotenote/', 0, 'note', '', 0),
(97, 3, '2019-11-12 11:12:24', '2019-11-12 11:12:24', 'dwwdwd', 'dwdd', '', 'trash', 'closed', 'closed', '', 'dwdd__trashed', '', '', '2019-11-12 11:23:59', '2019-11-12 11:23:59', '', 0, 'http://voldemarp.sgedu.site//note/dwdd/', 0, 'note', '', 0),
(98, 3, '2019-11-12 11:24:00', '2019-11-12 11:24:00', 'dwddwdw', 'dwdw', '', 'trash', 'closed', 'closed', '', 'dwdw__trashed', '', '', '2019-11-15 09:39:49', '2019-11-15 09:39:49', '', 0, 'http://voldemarp.sgedu.site//note/dwdw/', 0, 'note', '', 0),
(99, 1, '2019-11-12 12:09:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-11-12 12:09:26', '0000-00-00 00:00:00', '', 0, 'http://voldemarp.sgedu.site//?post_type=like&p=99', 0, 'like', '', 0),
(100, 1, '2019-11-12 12:11:06', '2019-11-12 12:11:06', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"like";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Liked professor id', 'liked-professor-id', 'publish', 'closed', 'closed', '', 'group_5dcaa11728994', '', '', '2019-11-12 12:11:06', '2019-11-12 12:11:06', '', 0, 'http://voldemarp.sgedu.site//?post_type=acf-field-group&#038;p=100', 0, 'acf-field-group', '', 0),
(101, 1, '2019-11-12 12:11:06', '2019-11-12 12:11:06', 'a:12:{s:4:"type";s:6:"number";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";}', 'Liked Professor ID', 'liked_professor_id', 'publish', 'closed', 'closed', '', 'field_5dcaa11e2e9d4', '', '', '2019-11-12 12:11:06', '2019-11-12 12:11:06', '', 100, 'http://voldemarp.sgedu.site//?post_type=acf-field&p=101', 0, 'acf-field', '', 0),
(102, 1, '2019-11-12 12:11:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-11-12 12:11:13', '0000-00-00 00:00:00', '', 0, 'http://voldemarp.sgedu.site//?post_type=like&p=102', 0, 'like', '', 0),
(103, 1, '2019-11-12 12:11:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-11-12 12:11:34', '0000-00-00 00:00:00', '', 0, 'http://voldemarp.sgedu.site//?post_type=like&p=103', 0, 'like', '', 0),
(104, 1, '2019-11-12 12:12:35', '2019-11-12 12:12:35', '', '', '', 'trash', 'closed', 'closed', '', '104__trashed', '', '', '2019-11-15 09:38:22', '2019-11-15 09:38:22', '', 0, 'http://voldemarp.sgedu.site//?post_type=like&#038;p=104', 0, 'like', '', 0),
(105, 1, '2019-11-13 08:53:06', '2019-11-13 08:53:06', '<p id="output" class="page-generator__lorem">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'Dr Meowsalot', '', 'inherit', 'closed', 'closed', '', '41-autosave-v1', '', '', '2019-11-13 08:53:06', '2019-11-13 08:53:06', '', 41, 'http://voldemarp.sgedu.site//2019/11/13/41-autosave-v1/', 0, 'revision', '', 0),
(106, 0, '2019-11-13 09:53:19', '2019-11-13 09:53:19', 'Hello world', 'Our PHP Create Post Test', '', 'trash', 'closed', 'closed', '', 'our-php-create-post-test__trashed', '', '', '2019-11-15 09:38:22', '2019-11-15 09:38:22', '', 0, 'http://voldemarp.sgedu.site//like/our-php-create-post-test/', 0, 'like', '', 0),
(107, 0, '2019-11-13 09:58:42', '2019-11-13 09:58:42', '', '2nd php test', '', 'trash', 'closed', 'closed', '', '2nd-php-test__trashed', '', '', '2019-11-15 09:38:22', '2019-11-15 09:38:22', '', 0, 'http://voldemarp.sgedu.site//like/2nd-php-test/', 0, 'like', '', 0),
(108, 0, '2019-11-13 10:09:49', '2019-11-13 10:09:49', '', '2nd php test', '', 'trash', 'closed', 'closed', '', '2nd-php-test-2__trashed', '', '', '2019-11-15 09:38:22', '2019-11-15 09:38:22', '', 0, 'http://voldemarp.sgedu.site//like/2nd-php-test-2/', 0, 'like', '', 0),
(109, 0, '2019-11-13 10:15:34', '2019-11-13 10:15:34', '', '2nd php test', '', 'trash', 'closed', 'closed', '', '2nd-php-test-3__trashed', '', '', '2019-11-15 09:38:22', '2019-11-15 09:38:22', '', 0, 'http://voldemarp.sgedu.site//like/2nd-php-test-3/', 0, 'like', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 2, 0),
(5, 1, 0),
(7, 1, 0),
(9, 1, 0),
(63, 1, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'category', '', 0, 1) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Awards', 'awards', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'voldemar'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '80'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'closedpostboxes_event', 'a:1:{i:0;s:7:"slugdiv";}'),
(20, 1, 'metaboxhidden_event', 'a:0:{}'),
(23, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse'),
(24, 1, 'wp_user-settings-time', '1572441167'),
(26, 1, 'meta-box-order_event', 'a:3:{s:4:"side";s:9:"submitdiv";s:6:"normal";s:7:"slugdiv";s:8:"advanced";s:0:"";}'),
(27, 1, 'screen_layout_event', '2'),
(28, 1, 'closedpostboxes_professor', 'a:0:{}'),
(29, 1, 'metaboxhidden_professor', 'a:1:{i:0;s:7:"slugdiv";}'),
(30, 1, 'session_tokens', 'a:1:{s:64:"d03ff5553a9a081912c8532e18b115d33062bfa06c707f38067e6931f84645e5";a:4:{s:10:"expiration";i:1573982966;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36";s:5:"login";i:1573810166;}}'),
(31, 1, 'closedpostboxes_campus', 'a:0:{}'),
(32, 1, 'metaboxhidden_campus', 'a:1:{i:0;s:7:"slugdiv";}'),
(49, 1, 'closedpostboxes_users_page_role-new', 'a:0:{}'),
(50, 1, 'metaboxhidden_users_page_role-new', 'a:0:{}'),
(51, 3, 'nickname', 'wp-admin_2'),
(52, 3, 'first_name', ''),
(53, 3, 'last_name', ''),
(54, 3, 'description', ''),
(55, 3, 'rich_editing', 'true'),
(56, 3, 'syntax_highlighting', 'true'),
(57, 3, 'comment_shortcuts', 'false'),
(58, 3, 'admin_color', 'fresh'),
(59, 3, 'use_ssl', '0'),
(60, 3, 'show_admin_bar_front', 'true'),
(61, 3, 'locale', ''),
(62, 3, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(63, 3, 'wp_user_level', '0'),
(64, 3, 'default_password_nag', ''),
(66, 1, 'closedpostboxes_note', 'a:0:{}'),
(67, 1, 'metaboxhidden_note', 'a:0:{}'),
(68, 3, 'session_tokens', 'a:1:{s:64:"0f30f760c08d830d4088e6046d7babd3c2a0f6d28b882717757d4cb0cc97042e";a:4:{s:10:"expiration";i:1573724399;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36";s:5:"login";i:1573551599;}}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'volly-p', '$P$BAJIxok72a7t/UwZTPVGSLedwuIiZR/', 'volly-p', 'voldemar.pungar@gmail.com', '', '2019-10-28 10:43:57', '', 0, 'voldemar'),
(3, 'wp-admin_2', '$P$BNv8StOwG4gz8ixSC.gfvafTW57wLZ.', 'wp-admin_2', 'woltz44@gmail.com', '', '2019-11-11 09:38:37', '1573465119:$P$BDPns1E6kOT2ZFjbLAXrH8A0Xm0ITX0', 0, 'wp-admin_2') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

