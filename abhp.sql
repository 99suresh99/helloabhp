-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2016 at 01:57 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abhp`
--

-- --------------------------------------------------------

--
-- Table structure for table `ab_commentmeta`
--

CREATE TABLE `ab_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ab_comments`
--

CREATE TABLE `ab_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ab_comments`
--

INSERT INTO `ab_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-12-19 09:45:45', '2016-12-19 09:45:45', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ab_links`
--

CREATE TABLE `ab_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ab_ngg_album`
--

CREATE TABLE `ab_ngg_album` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previewpic` bigint(20) NOT NULL DEFAULT '0',
  `albumdesc` mediumtext COLLATE utf8mb4_unicode_ci,
  `sortorder` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageid` bigint(20) NOT NULL DEFAULT '0',
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ab_ngg_gallery`
--

CREATE TABLE `ab_ngg_gallery` (
  `gid` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` mediumtext COLLATE utf8mb4_unicode_ci,
  `title` mediumtext COLLATE utf8mb4_unicode_ci,
  `galdesc` mediumtext COLLATE utf8mb4_unicode_ci,
  `pageid` bigint(20) NOT NULL DEFAULT '0',
  `previewpic` bigint(20) NOT NULL DEFAULT '0',
  `author` bigint(20) NOT NULL DEFAULT '0',
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ab_ngg_gallery`
--

INSERT INTO `ab_ngg_gallery` (`gid`, `name`, `slug`, `path`, `title`, `galdesc`, `pageid`, `previewpic`, `author`, `extras_post_id`) VALUES
(1, 'swami-images', 'swami-images', '\\\\wp-content\\\\gallery\\\\swami-images', 'swami images', '', 0, 1, 1, 116),
(2, 'temple', 'temple', '\\\\wp-content\\\\gallery\\\\temple', 'temple', '', 30, 9, 1, 139),
(3, 'vijay', 'vijay', '\\\\wp-content\\\\gallery\\\\vijay', 'vijay', '', 30, 11, 1, 146);

-- --------------------------------------------------------

--
-- Table structure for table `ab_ngg_pictures`
--

CREATE TABLE `ab_ngg_pictures` (
  `pid` bigint(20) NOT NULL,
  `image_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) NOT NULL DEFAULT '0',
  `galleryid` bigint(20) NOT NULL DEFAULT '0',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `alttext` mediumtext COLLATE utf8mb4_unicode_ci,
  `imagedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `exclude` tinyint(4) DEFAULT '0',
  `sortorder` bigint(20) NOT NULL DEFAULT '0',
  `meta_data` longtext COLLATE utf8mb4_unicode_ci,
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0',
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ab_ngg_pictures`
--

INSERT INTO `ab_ngg_pictures` (`pid`, `image_slug`, `post_id`, `galleryid`, `filename`, `description`, `alttext`, `imagedate`, `exclude`, `sortorder`, `meta_data`, `extras_post_id`, `updated_at`) VALUES
(1, 'dfdf', 0, 1, 'dfdf.jpg', '', 'dfdf', '2016-12-20 11:02:28', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJkZmRmLmpwZyIsIndpZHRoIjozMDAsImhlaWdodCI6MTY4LCJnZW5lcmF0ZWQiOiIwLjI5MjY5NTAwIDE0ODIyMzE3NDgifSwid2lkdGgiOjMwMCwiaGVpZ2h0IjoxNjgsImZ1bGwiOnsid2lkdGgiOjMwMCwiaGVpZ2h0IjoxNjh9LCJ0aHVtYm5haWwiOnsid2lkdGgiOjI0MCwiaGVpZ2h0IjoxNjAsImZpbGVuYW1lIjoidGh1bWJzX2RmZGYuanBnIiwiZ2VuZXJhdGVkIjoiMC4xOTc0OTYwMCAxNDgyMjMxNzQ5In0sImFwZXJ0dXJlIjpmYWxzZSwiY3JlZGl0IjpmYWxzZSwiY2FtZXJhIjpmYWxzZSwiY2FwdGlvbiI6ZmFsc2UsImNyZWF0ZWRfdGltZXN0YW1wIjpmYWxzZSwiY29weXJpZ2h0IjpmYWxzZSwiZm9jYWxfbGVuZ3RoIjpmYWxzZSwiaXNvIjpmYWxzZSwic2h1dHRlcl9zcGVlZCI6ZmFsc2UsImZsYXNoIjpmYWxzZSwidGl0bGUiOmZhbHNlLCJrZXl3b3JkcyI6ZmFsc2UsInNhdmVkIjp0cnVlfQ==', 115, 1482232834),
(2, 'dfdfdfd', 0, 1, 'dfdfdfd.jpg', '', 'dfdfdfd', '2016-12-20 11:02:35', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJkZmRmZGZkLmpwZyIsIndpZHRoIjoyNTEsImhlaWdodCI6MjAxLCJnZW5lcmF0ZWQiOiIwLjQ4NDMwNzAwIDE0ODIyMzE3NTUifSwid2lkdGgiOjI1MSwiaGVpZ2h0IjoyMDEsImZ1bGwiOnsid2lkdGgiOjI1MSwiaGVpZ2h0IjoyMDF9LCJ0aHVtYm5haWwiOnsid2lkdGgiOjI0MCwiaGVpZ2h0IjoxNjAsImZpbGVuYW1lIjoidGh1bWJzX2RmZGZkZmQuanBnIiwiZ2VuZXJhdGVkIjoiMC44ODY3MTIwMCAxNDgyMjMxNzU3In0sImFwZXJ0dXJlIjpmYWxzZSwiY3JlZGl0IjpmYWxzZSwiY2FtZXJhIjpmYWxzZSwiY2FwdGlvbiI6ZmFsc2UsImNyZWF0ZWRfdGltZXN0YW1wIjpmYWxzZSwiY29weXJpZ2h0IjpmYWxzZSwiZm9jYWxfbGVuZ3RoIjpmYWxzZSwiaXNvIjpmYWxzZSwic2h1dHRlcl9zcGVlZCI6ZmFsc2UsImZsYXNoIjpmYWxzZSwidGl0bGUiOmZhbHNlLCJrZXl3b3JkcyI6ZmFsc2UsInNhdmVkIjp0cnVlfQ==', 118, 1482232835),
(3, 'dff', 0, 1, 'dff.jpg', '', 'dff', '2016-12-20 11:02:44', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJkZmYuanBnIiwid2lkdGgiOjE4MSwiaGVpZ2h0IjoyNzksImdlbmVyYXRlZCI6IjAuMjk4MzIzMDAgMTQ4MjIzMTc2NCJ9LCJ3aWR0aCI6MTgxLCJoZWlnaHQiOjI3OSwiZnVsbCI6eyJ3aWR0aCI6MTgxLCJoZWlnaHQiOjI3OX0sInRodW1ibmFpbCI6eyJ3aWR0aCI6MTgxLCJoZWlnaHQiOjE2MCwiZmlsZW5hbWUiOiJ0aHVtYnNfZGZmLmpwZyIsImdlbmVyYXRlZCI6IjAuMzU5MTI1MDAgMTQ4MjIzMTc2NSJ9LCJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJzYXZlZCI6dHJ1ZX0=', 120, 1482232835),
(4, 'images', 0, 1, 'images.jpg', '', 'images', '2016-12-20 11:02:48', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJpbWFnZXMuanBnIiwid2lkdGgiOjI3NSwiaGVpZ2h0IjoxODMsImdlbmVyYXRlZCI6IjAuMjEzOTMwMDAgMTQ4MjIzMTc2OCJ9LCJ3aWR0aCI6Mjc1LCJoZWlnaHQiOjE4MywiZnVsbCI6eyJ3aWR0aCI6Mjc1LCJoZWlnaHQiOjE4M30sInRodW1ibmFpbCI6eyJ3aWR0aCI6MjQwLCJoZWlnaHQiOjE2MCwiZmlsZW5hbWUiOiJ0aHVtYnNfaW1hZ2VzLmpwZyIsImdlbmVyYXRlZCI6IjAuMzY2NzM0MDAgMTQ4MjIzMTc3MCJ9LCJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJzYXZlZCI6dHJ1ZX0=', 122, 1482232835),
(5, 'index', 0, 1, 'index.jpg', '', 'index', '2016-12-20 11:02:55', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJpbmRleC5qcGciLCJ3aWR0aCI6MzA4LCJoZWlnaHQiOjE2NCwiZ2VuZXJhdGVkIjoiMC45MzU5NDMwMCAxNDgyMjMxNzc1In0sIndpZHRoIjozMDgsImhlaWdodCI6MTY0LCJmdWxsIjp7IndpZHRoIjozMDgsImhlaWdodCI6MTY0fSwidGh1bWJuYWlsIjp7IndpZHRoIjoyNDAsImhlaWdodCI6MTYwLCJmaWxlbmFtZSI6InRodW1ic19pbmRleC5qcGciLCJnZW5lcmF0ZWQiOiIwLjYzNzk0NTAwIDE0ODIyMzE3NzYifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 124, 1482232835),
(6, 'sdsds', 0, 1, 'sdsds.jpg', '', 'sdsds', '2016-12-20 11:02:58', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJzZHNkcy5qcGciLCJ3aWR0aCI6MjgwLCJoZWlnaHQiOjE4MCwiZ2VuZXJhdGVkIjoiMC42OTcxNDgwMCAxNDgyMjMxNzc4In0sIndpZHRoIjoyODAsImhlaWdodCI6MTgwLCJmdWxsIjp7IndpZHRoIjoyODAsImhlaWdodCI6MTgwfSwidGh1bWJuYWlsIjp7IndpZHRoIjoyNDAsImhlaWdodCI6MTYwLCJmaWxlbmFtZSI6InRodW1ic19zZHNkcy5qcGciLCJnZW5lcmF0ZWQiOiIwLjQ0NTk0OTAwIDE0ODIyMzE3NzkifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 126, 1482232835),
(7, 'sdsw', 0, 1, 'sdsw.jpg', '', 'sdsw', '2016-12-20 11:03:02', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJzZHN3LmpwZyIsIndpZHRoIjoyNTksImhlaWdodCI6MTk0LCJnZW5lcmF0ZWQiOiIwLjExMzU1NDAwIDE0ODIyMzE3ODIifSwid2lkdGgiOjI1OSwiaGVpZ2h0IjoxOTQsImZ1bGwiOnsid2lkdGgiOjI1OSwiaGVpZ2h0IjoxOTR9LCJ0aHVtYm5haWwiOnsid2lkdGgiOjI0MCwiaGVpZ2h0IjoxNjAsImZpbGVuYW1lIjoidGh1bWJzX3Nkc3cuanBnIiwiZ2VuZXJhdGVkIjoiMC40NDExNTUwMCAxNDgyMjMxNzgyIn0sImFwZXJ0dXJlIjpmYWxzZSwiY3JlZGl0IjpmYWxzZSwiY2FtZXJhIjpmYWxzZSwiY2FwdGlvbiI6ZmFsc2UsImNyZWF0ZWRfdGltZXN0YW1wIjpmYWxzZSwiY29weXJpZ2h0IjpmYWxzZSwiZm9jYWxfbGVuZ3RoIjpmYWxzZSwiaXNvIjpmYWxzZSwic2h1dHRlcl9zcGVlZCI6ZmFsc2UsImZsYXNoIjpmYWxzZSwidGl0bGUiOmZhbHNlLCJrZXl3b3JkcyI6ZmFsc2UsInNhdmVkIjp0cnVlfQ==', 128, 1482232836),
(8, 'wewe', 0, 1, 'wewe.jpg', '', 'wewe', '2016-12-20 11:03:03', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJ3ZXdlLmpwZyIsIndpZHRoIjoyNTksImhlaWdodCI6MTk0LCJnZW5lcmF0ZWQiOiIwLjk2OTk1NzAwIDE0ODIyMzE3ODMifSwid2lkdGgiOjI1OSwiaGVpZ2h0IjoxOTQsImZ1bGwiOnsid2lkdGgiOjI1OSwiaGVpZ2h0IjoxOTR9LCJ0aHVtYm5haWwiOnsid2lkdGgiOjI0MCwiaGVpZ2h0IjoxNjAsImZpbGVuYW1lIjoidGh1bWJzX3dld2UuanBnIiwiZ2VuZXJhdGVkIjoiMC42MDk1NTkwMCAxNDgyMjMxNzg0In0sImFwZXJ0dXJlIjpmYWxzZSwiY3JlZGl0IjpmYWxzZSwiY2FtZXJhIjpmYWxzZSwiY2FwdGlvbiI6ZmFsc2UsImNyZWF0ZWRfdGltZXN0YW1wIjpmYWxzZSwiY29weXJpZ2h0IjpmYWxzZSwiZm9jYWxfbGVuZ3RoIjpmYWxzZSwiaXNvIjpmYWxzZSwic2h1dHRlcl9zcGVlZCI6ZmFsc2UsImZsYXNoIjpmYWxzZSwidGl0bGUiOmZhbHNlLCJrZXl3b3JkcyI6ZmFsc2UsInNhdmVkIjp0cnVlfQ==', 130, 1482232836),
(9, 'dfdfdfd-1', 0, 2, 'dfdfdfd.jpg', '', 'dfdfdfd', '2016-12-20 11:12:52', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJkZmRmZGZkLmpwZyIsIndpZHRoIjoyNTEsImhlaWdodCI6MjAxLCJnZW5lcmF0ZWQiOiIwLjU3MTg4MTAwIDE0ODIyMzIzNzIifSwid2lkdGgiOjI1MSwiaGVpZ2h0IjoyMDEsImZ1bGwiOnsid2lkdGgiOjI1MSwiaGVpZ2h0IjoyMDF9LCJ0aHVtYm5haWwiOnsid2lkdGgiOjI0MCwiaGVpZ2h0IjoxNjAsImZpbGVuYW1lIjoidGh1bWJzX2RmZGZkZmQuanBnIiwiZ2VuZXJhdGVkIjoiMC44MjE0ODIwMCAxNDgyMjMyMzcyIn0sImFwZXJ0dXJlIjpmYWxzZSwiY3JlZGl0IjpmYWxzZSwiY2FtZXJhIjpmYWxzZSwiY2FwdGlvbiI6ZmFsc2UsImNyZWF0ZWRfdGltZXN0YW1wIjpmYWxzZSwiY29weXJpZ2h0IjpmYWxzZSwiZm9jYWxfbGVuZ3RoIjpmYWxzZSwiaXNvIjpmYWxzZSwic2h1dHRlcl9zcGVlZCI6ZmFsc2UsImZsYXNoIjpmYWxzZSwidGl0bGUiOmZhbHNlLCJrZXl3b3JkcyI6ZmFsc2UsInNhdmVkIjp0cnVlfQ==', 138, 1482232392),
(10, 'dff-1', 0, 2, 'dff.jpg', '', 'dff', '2016-12-20 11:12:54', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJkZmYuanBnIiwid2lkdGgiOjE4MSwiaGVpZ2h0IjoyNzksImdlbmVyYXRlZCI6IjAuMTE2Mjg0MDAgMTQ4MjIzMjM3NCJ9LCJ3aWR0aCI6MTgxLCJoZWlnaHQiOjI3OSwiZnVsbCI6eyJ3aWR0aCI6MTgxLCJoZWlnaHQiOjI3OX0sInRodW1ibmFpbCI6eyJ3aWR0aCI6MTgxLCJoZWlnaHQiOjE2MCwiZmlsZW5hbWUiOiJ0aHVtYnNfZGZmLmpwZyIsImdlbmVyYXRlZCI6IjAuNTUzMDg1MDAgMTQ4MjIzMjM3NCJ9LCJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJzYXZlZCI6dHJ1ZX0=', 141, 1482232392),
(11, 'dfdf-1', 0, 3, 'dfdf.jpg', '', 'dfdf', '2016-12-20 11:14:38', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJkZmRmLmpwZyIsIndpZHRoIjozMDAsImhlaWdodCI6MTY4LCJnZW5lcmF0ZWQiOiIwLjQ0OTI2NzAwIDE0ODIyMzI0NzgifSwid2lkdGgiOjMwMCwiaGVpZ2h0IjoxNjgsImZ1bGwiOnsid2lkdGgiOjMwMCwiaGVpZ2h0IjoxNjh9LCJ0aHVtYm5haWwiOnsid2lkdGgiOjI0MCwiaGVpZ2h0IjoxNjAsImZpbGVuYW1lIjoidGh1bWJzX2RmZGYuanBnIiwiZ2VuZXJhdGVkIjoiMC43MTQ0NjgwMCAxNDgyMjMyNDc4In0sImFwZXJ0dXJlIjpmYWxzZSwiY3JlZGl0IjpmYWxzZSwiY2FtZXJhIjpmYWxzZSwiY2FwdGlvbiI6ZmFsc2UsImNyZWF0ZWRfdGltZXN0YW1wIjpmYWxzZSwiY29weXJpZ2h0IjpmYWxzZSwiZm9jYWxfbGVuZ3RoIjpmYWxzZSwiaXNvIjpmYWxzZSwic2h1dHRlcl9zcGVlZCI6ZmFsc2UsImZsYXNoIjpmYWxzZSwidGl0bGUiOmZhbHNlLCJrZXl3b3JkcyI6ZmFsc2UsInNhdmVkIjp0cnVlfQ==', 145, 1482232598),
(12, 'dfdfdfd-2', 0, 3, 'dfdfdfd.jpg', '', 'dfdfdfd', '2016-12-20 11:14:40', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJkZmRmZGZkLmpwZyIsIndpZHRoIjoyNTEsImhlaWdodCI6MjAxLCJnZW5lcmF0ZWQiOiIwLjk5MjA3MjAwIDE0ODIyMzI0ODAifSwid2lkdGgiOjI1MSwiaGVpZ2h0IjoyMDEsImZ1bGwiOnsid2lkdGgiOjI1MSwiaGVpZ2h0IjoyMDF9LCJ0aHVtYm5haWwiOnsid2lkdGgiOjI0MCwiaGVpZ2h0IjoxNjAsImZpbGVuYW1lIjoidGh1bWJzX2RmZGZkZmQuanBnIiwiZ2VuZXJhdGVkIjoiMC45MTI0NzMwMCAxNDgyMjMyNDgxIn0sImFwZXJ0dXJlIjpmYWxzZSwiY3JlZGl0IjpmYWxzZSwiY2FtZXJhIjpmYWxzZSwiY2FwdGlvbiI6ZmFsc2UsImNyZWF0ZWRfdGltZXN0YW1wIjpmYWxzZSwiY29weXJpZ2h0IjpmYWxzZSwiZm9jYWxfbGVuZ3RoIjpmYWxzZSwiaXNvIjpmYWxzZSwic2h1dHRlcl9zcGVlZCI6ZmFsc2UsImZsYXNoIjpmYWxzZSwidGl0bGUiOmZhbHNlLCJrZXl3b3JkcyI6ZmFsc2UsInNhdmVkIjp0cnVlfQ==', 148, 1482232599),
(13, 'dff-2', 0, 3, 'dff.jpg', '', 'dff', '2016-12-20 11:14:43', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJkZmYuanBnIiwid2lkdGgiOjE4MSwiaGVpZ2h0IjoyNzksImdlbmVyYXRlZCI6IjAuNjI4NDc2MDAgMTQ4MjIzMjQ4MyJ9LCJ3aWR0aCI6MTgxLCJoZWlnaHQiOjI3OSwiZnVsbCI6eyJ3aWR0aCI6MTgxLCJoZWlnaHQiOjI3OX0sInRodW1ibmFpbCI6eyJ3aWR0aCI6MTgxLCJoZWlnaHQiOjE2MCwiZmlsZW5hbWUiOiJ0aHVtYnNfZGZmLmpwZyIsImdlbmVyYXRlZCI6IjAuODAwMDc3MDAgMTQ4MjIzMjQ4MyJ9LCJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJzYXZlZCI6dHJ1ZX0=', 150, 1482232599),
(14, 'images-1', 0, 3, 'images.jpg', '', 'images', '2016-12-20 11:14:46', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJpbWFnZXMuanBnIiwid2lkdGgiOjI3NSwiaGVpZ2h0IjoxODMsImdlbmVyYXRlZCI6IjAuMTcxMjgxMDAgMTQ4MjIzMjQ4NiJ9LCJ3aWR0aCI6Mjc1LCJoZWlnaHQiOjE4MywiZnVsbCI6eyJ3aWR0aCI6Mjc1LCJoZWlnaHQiOjE4M30sInRodW1ibmFpbCI6eyJ3aWR0aCI6MjQwLCJoZWlnaHQiOjE2MCwiZmlsZW5hbWUiOiJ0aHVtYnNfaW1hZ2VzLmpwZyIsImdlbmVyYXRlZCI6IjAuNzQ4NDgyMDAgMTQ4MjIzMjQ4NiJ9LCJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJzYXZlZCI6dHJ1ZX0=', 152, 1482232599);

-- --------------------------------------------------------

--
-- Table structure for table `ab_options`
--

CREATE TABLE `ab_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ab_options`
--

INSERT INTO `ab_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/abhp', 'yes'),
(2, 'home', 'http://localhost/abhp', 'yes'),
(3, 'blogname', 'abhp', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'vijay.punuru@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:192:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:41:"temple_update/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:51:"temple_update/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:71:"temple_update/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"temple_update/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"temple_update/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"temple_update/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:30:"temple_update/([^/]+)/embed/?$";s:46:"index.php?temple_update=$matches[1]&embed=true";s:34:"temple_update/([^/]+)/trackback/?$";s:40:"index.php?temple_update=$matches[1]&tb=1";s:42:"temple_update/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?temple_update=$matches[1]&paged=$matches[2]";s:49:"temple_update/([^/]+)/comment-page-([0-9]{1,})/?$";s:53:"index.php?temple_update=$matches[1]&cpage=$matches[2]";s:38:"temple_update/([^/]+)(?:/([0-9]+))?/?$";s:52:"index.php?temple_update=$matches[1]&page=$matches[2]";s:30:"temple_update/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:40:"temple_update/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:60:"temple_update/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"temple_update/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"temple_update/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"temple_update/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:"siddhanta_panchangam/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:58:"siddhanta_panchangam/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:78:"siddhanta_panchangam/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:73:"siddhanta_panchangam/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:73:"siddhanta_panchangam/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:54:"siddhanta_panchangam/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:37:"siddhanta_panchangam/([^/]+)/embed/?$";s:53:"index.php?siddhanta_panchangam=$matches[1]&embed=true";s:41:"siddhanta_panchangam/([^/]+)/trackback/?$";s:47:"index.php?siddhanta_panchangam=$matches[1]&tb=1";s:49:"siddhanta_panchangam/([^/]+)/page/?([0-9]{1,})/?$";s:60:"index.php?siddhanta_panchangam=$matches[1]&paged=$matches[2]";s:56:"siddhanta_panchangam/([^/]+)/comment-page-([0-9]{1,})/?$";s:60:"index.php?siddhanta_panchangam=$matches[1]&cpage=$matches[2]";s:45:"siddhanta_panchangam/([^/]+)(?:/([0-9]+))?/?$";s:59:"index.php?siddhanta_panchangam=$matches[1]&page=$matches[2]";s:37:"siddhanta_panchangam/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"siddhanta_panchangam/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"siddhanta_panchangam/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"siddhanta_panchangam/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"siddhanta_panchangam/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"siddhanta_panchangam/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:41:"day_schedules/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:51:"day_schedules/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:71:"day_schedules/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"day_schedules/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"day_schedules/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"day_schedules/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:30:"day_schedules/([^/]+)/embed/?$";s:46:"index.php?day_schedules=$matches[1]&embed=true";s:34:"day_schedules/([^/]+)/trackback/?$";s:40:"index.php?day_schedules=$matches[1]&tb=1";s:42:"day_schedules/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?day_schedules=$matches[1]&paged=$matches[2]";s:49:"day_schedules/([^/]+)/comment-page-([0-9]{1,})/?$";s:53:"index.php?day_schedules=$matches[1]&cpage=$matches[2]";s:38:"day_schedules/([^/]+)(?:/([0-9]+))?/?$";s:52:"index.php?day_schedules=$matches[1]&page=$matches[2]";s:30:"day_schedules/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:40:"day_schedules/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:60:"day_schedules/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"day_schedules/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"day_schedules/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"day_schedules/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:47:"managements_members/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"managements_members/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"managements_members/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"managements_members/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"managements_members/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"managements_members/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"managements_members/([^/]+)/embed/?$";s:52:"index.php?managements_members=$matches[1]&embed=true";s:40:"managements_members/([^/]+)/trackback/?$";s:46:"index.php?managements_members=$matches[1]&tb=1";s:48:"managements_members/([^/]+)/page/?([0-9]{1,})/?$";s:59:"index.php?managements_members=$matches[1]&paged=$matches[2]";s:55:"managements_members/([^/]+)/comment-page-([0-9]{1,})/?$";s:59:"index.php?managements_members=$matches[1]&cpage=$matches[2]";s:44:"managements_members/([^/]+)(?:/([0-9]+))?/?$";s:58:"index.php?managements_members=$matches[1]&page=$matches[2]";s:36:"managements_members/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"managements_members/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"managements_members/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"managements_members/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"managements_members/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"managements_members/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"news_events/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"news_events/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"news_events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"news_events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"news_events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"news_events/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"news_events/([^/]+)/embed/?$";s:44:"index.php?news_events=$matches[1]&embed=true";s:32:"news_events/([^/]+)/trackback/?$";s:38:"index.php?news_events=$matches[1]&tb=1";s:40:"news_events/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?news_events=$matches[1]&paged=$matches[2]";s:47:"news_events/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?news_events=$matches[1]&cpage=$matches[2]";s:36:"news_events/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?news_events=$matches[1]&page=$matches[2]";s:28:"news_events/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"news_events/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"news_events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"news_events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"news_events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"news_events/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:38:"camps_news/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"camps_news/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"camps_news/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"camps_news/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"camps_news/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"camps_news/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:27:"camps_news/([^/]+)/embed/?$";s:43:"index.php?camps_news=$matches[1]&embed=true";s:31:"camps_news/([^/]+)/trackback/?$";s:37:"index.php?camps_news=$matches[1]&tb=1";s:39:"camps_news/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?camps_news=$matches[1]&paged=$matches[2]";s:46:"camps_news/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?camps_news=$matches[1]&cpage=$matches[2]";s:35:"camps_news/([^/]+)(?:/([0-9]+))?/?$";s:49:"index.php?camps_news=$matches[1]&page=$matches[2]";s:27:"camps_news/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"camps_news/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"camps_news/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"camps_news/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"camps_news/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"camps_news/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=6&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:3;s:29:"nextgen-gallery/nggallery.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'abhp', 'yes'),
(41, 'stylesheet', 'abhp', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'ab_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:71:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:24:"NextGEN Gallery overview";b:1;s:19:"NextGEN Use TinyMCE";b:1;s:21:"NextGEN Upload images";b:1;s:22:"NextGEN Manage gallery";b:1;s:19:"NextGEN Manage tags";b:1;s:29:"NextGEN Manage others gallery";b:1;s:18:"NextGEN Edit album";b:1;s:20:"NextGEN Change style";b:1;s:22:"NextGEN Change options";b:1;s:24:"NextGEN Attach Interface";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:5:{i:1482233496;a:1:{s:29:"ngg_delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"ngg_custom";s:4:"args";a:0:{}s:8:"interval";i:900;}}}i:1482270346;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1482296053;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1482313563;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(105, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1482140781;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(109, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.7.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.7.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.7-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.7-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.7";s:7:"version";s:3:"4.7";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1482227172;s:15:"version_checked";s:3:"4.7";s:12:"translations";a:0:{}}', 'no'),
(114, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1482227191;s:7:"checked";a:5:{s:4:"abhp";s:3:"1.9";s:13:"twentyfifteen";s:3:"1.7";s:14:"twentyfourteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.0";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(115, '_site_transient_timeout_browser_00cb6228a64f759a1bb585e143526e4f', '1482745563', 'no'),
(116, '_site_transient_browser_00cb6228a64f759a1bb585e143526e4f', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"55.0.2883.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(118, 'can_compress_scripts', '1', 'no'),
(135, 'current_theme', 'Twenty Fourteen/abhp', 'yes'),
(136, 'theme_mods_abhp', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}}', 'yes'),
(137, 'theme_switched', '', 'yes'),
(138, 'widget_widget_twentyfourteen_ephemera', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(139, 'recently_activated', 'a:0:{}', 'yes'),
(144, 'wpcf7', 'a:2:{s:7:"version";s:3:"4.6";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1482140837;s:7:"version";s:3:"4.6";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(170, '_site_transient_timeout_browser_65ddcfe39392295da7949299e27f6679', '1482812670', 'no'),
(171, '_site_transient_browser_65ddcfe39392295da7949299e27f6679', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:11:"51.0.2684.0";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(172, 'acf_version', '5.3.0', 'yes'),
(176, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(183, 'options_swamigi1', '38', 'no'),
(184, '_options_swamigi1', 'field_5858c0454e8a0', 'no'),
(185, 'options_swamigi2', '39', 'no'),
(186, '_options_swamigi2', 'field_5858c05b4e8a1', 'no'),
(187, 'options_title', '40', 'no'),
(188, '_options_title', 'field_5858c0674e8a2', 'no'),
(189, 'options_swamigi3', '41', 'no'),
(190, '_options_swamigi3', 'field_5858c0744e8a3', 'no'),
(196, 'options_swami_image', '', 'no'),
(197, '_options_swami_image', 'field_5858dd40ed0a7', 'no'),
(198, 'options_slider_images_0_image', '49', 'no'),
(199, '_options_slider_images_0_image', 'field_5858dd5fed0a9', 'no'),
(200, 'options_slider_images_1_image', '50', 'no'),
(201, '_options_slider_images_1_image', 'field_5858dd5fed0a9', 'no'),
(202, 'options_slider_images_2_image', '51', 'no'),
(203, '_options_slider_images_2_image', 'field_5858dd5fed0a9', 'no'),
(204, 'options_slider_images', '3', 'no'),
(205, '_options_slider_images', 'field_5858dd51ed0a8', 'no'),
(208, 'options_sevas_0_title', 'SEVAS', 'no'),
(209, '_options_sevas_0_title', 'field_5858e02c67a06', 'no'),
(210, 'options_sevas_0_image', '60', 'no'),
(211, '_options_sevas_0_image', 'field_5858e03567a07', 'no'),
(212, 'options_sevas_0_sevas_list', '<li>Arjitha Sevas</li> 							<li>Daily Sevas</li> 							<li>Weekly Sevas</li> 							<li>Annual / Periodical Sevas</li>', 'no'),
(213, '_options_sevas_0_sevas_list', 'field_5858e04167a08', 'no'),
(214, 'options_sevas', '3', 'no'),
(215, '_options_sevas', 'field_5858e02067a05', 'no'),
(217, 'options_sevas_1_title', 'DARSHAN', 'no'),
(218, '_options_sevas_1_title', 'field_5858e02c67a06', 'no'),
(219, 'options_sevas_1_image', '60', 'no'),
(220, '_options_sevas_1_image', 'field_5858e03567a07', 'no'),
(221, 'options_sevas_1_sevas_list', '<li>Sarvadarshanam</li>\r\n							<li>Divya Darshan</li>\r\n							<li>Special Entry Darshan (Seeghra Darshan)</li>', 'no'),
(222, '_options_sevas_1_sevas_list', 'field_5858e04167a08', 'no'),
(223, 'options_sevas_2_title', 'ACCOMMODATION', 'no'),
(224, '_options_sevas_2_title', 'field_5858e02c67a06', 'no'),
(225, 'options_sevas_2_image', '60', 'no'),
(226, '_options_sevas_2_image', 'field_5858e03567a07', 'no'),
(227, 'options_sevas_2_sevas_list', '<li>Accommodation at vijayawada</li>\r\n							<li>Advance Reservation</li>\r\n							<li>Current Booking</li>\r\n							<li>Rest Houses & Tariffs </li>	', 'no'),
(228, '_options_sevas_2_sevas_list', 'field_5858e04167a08', 'no'),
(229, 'cptui_post_types', 'a:6:{s:13:"temple_update";a:28:{s:4:"name";s:13:"temple_update";s:5:"label";s:15:"temple upadates";s:14:"singular_label";s:15:"temple upadates";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:2:{i:0;s:5:"title";i:1;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:21:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";}s:15:"custom_supports";s:0:"";}s:20:"siddhanta_panchangam";a:28:{s:4:"name";s:20:"siddhanta_panchangam";s:5:"label";s:20:"Siddhanta Panchangam";s:14:"singular_label";s:20:"Siddhanta Panchangam";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:2:{i:0;s:5:"title";i:1;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:21:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";}s:15:"custom_supports";s:0:"";}s:13:"day_schedules";a:28:{s:4:"name";s:13:"day_schedules";s:5:"label";s:13:"Day Schedules";s:14:"singular_label";s:13:"Day Schedules";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:2:{i:0;s:5:"title";i:1;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:21:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";}s:15:"custom_supports";s:0:"";}s:19:"managements_members";a:28:{s:4:"name";s:19:"managements_members";s:5:"label";s:18:"Management members";s:14:"singular_label";s:18:"Management members";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:2:{i:0;s:5:"title";i:1;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:21:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";}s:15:"custom_supports";s:0:"";}s:11:"news_events";a:28:{s:4:"name";s:11:"news_events";s:5:"label";s:11:"News Events";s:14:"singular_label";s:11:"News Events";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:21:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";}s:15:"custom_supports";s:0:"";}s:10:"camps_news";a:28:{s:4:"name";s:10:"camps_news";s:5:"label";s:5:"Camps";s:14:"singular_label";s:5:"Camps";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:21:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";}s:15:"custom_supports";s:0:"";}}', 'yes'),
(248, '_site_transient_timeout_browser_f731f7616ab74b84eb6e37a4dee2a379', '1482827836', 'no'),
(249, '_site_transient_browser_f731f7616ab74b84eb6e37a4dee2a379', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"51.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(257, 'options_schemes_social_0_title', 'SCHEMES/TRUSTS', 'no'),
(258, '_options_schemes_social_0_title', 'field_5858f158b1342', 'no'),
(259, 'options_schemes_social_0_image', '79', 'no'),
(260, '_options_schemes_social_0_image', 'field_5858f172b1343', 'no'),
(261, 'options_schemes_social_0_seva_list', '<li>BIRRD Trust</li>\r\n							<li>Sri hanuman Trust</li>\r\n							<li>Sri hanuman Vidyadana Trust</li>', 'no'),
(262, '_options_schemes_social_0_seva_list', 'field_5858f17fb1344', 'no'),
(263, 'options_schemes_social_1_title', 'SOCIAL SERVICE', 'no'),
(264, '_options_schemes_social_1_title', 'field_5858f158b1342', 'no'),
(265, 'options_schemes_social_1_image', '80', 'no'),
(266, '_options_schemes_social_1_image', 'field_5858f172b1343', 'no'),
(267, 'options_schemes_social_1_seva_list', '<li>Social Activities</li>\r\n							<li>Educational Activities</li>\r\n							<li>Religious Activities</li>\r\n							<li>Publications</li>', 'no'),
(268, '_options_schemes_social_1_seva_list', 'field_5858f17fb1344', 'no'),
(269, 'options_schemes_social', '2', 'no'),
(270, '_options_schemes_social', 'field_5858f13db1341', 'no'),
(296, '_site_transient_timeout_theme_roots', '1482228978', 'no'),
(297, '_site_transient_theme_roots', 'a:5:{s:4:"abhp";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(298, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1482231655;s:7:"checked";a:6:{s:34:"advanced-custom-fields-pro/acf.php";s:5:"5.3.0";s:19:"akismet/akismet.php";s:3:"3.2";s:36:"contact-form-7/wp-contact-form-7.php";s:3:"4.6";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:5:"1.4.3";s:9:"hello.php";s:3:"1.6";s:29:"nextgen-gallery/nggallery.php";s:6:"2.1.62";}s:8:"response";a:1:{s:34:"advanced-custom-fields-pro/acf.php";O:8:"stdClass":5:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:34:"advanced-custom-fields-pro/acf.php";s:11:"new_version";s:5:"5.5.2";s:3:"url";s:37:"https://www.advancedcustomfields.com/";s:7:"package";s:0:"";}}s:12:"translations";a:0:{}s:9:"no_update";a:5:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"3.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/akismet.3.2.zip";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:3:"4.6";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/contact-form-7.4.6.zip";}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":6:{s:2:"id";s:5:"13183";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.4.3";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.4.3.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:29:"nextgen-gallery/nggallery.php";O:8:"stdClass":6:{s:2:"id";s:3:"592";s:4:"slug";s:15:"nextgen-gallery";s:6:"plugin";s:29:"nextgen-gallery/nggallery.php";s:11:"new_version";s:6:"2.1.62";s:3:"url";s:46:"https://wordpress.org/plugins/nextgen-gallery/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/nextgen-gallery.2.1.62.zip";}}}', 'no'),
(304, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1482242081', 'no');
INSERT INTO `ab_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(305, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"6110";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3747";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3738";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3244";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2869";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2546";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2229";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2155";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2104";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2089";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"2044";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"2025";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1965";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1937";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1756";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1653";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1625";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1469";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1380";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1299";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1296";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1152";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1136";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:4:"1065";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:4:"1027";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1017";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"969";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"964";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"963";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"932";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"929";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"916";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"861";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"851";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"841";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"821";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"788";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"783";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"783";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"770";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"759";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"751";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"749";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"743";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"736";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"731";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"725";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"718";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"718";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"710";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"701";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"656";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"652";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"640";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"635";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"629";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"616";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"615";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"614";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"612";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"601";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"585";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"585";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"584";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"580";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"563";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"553";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"549";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"546";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"540";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"540";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"538";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"534";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"522";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"519";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"509";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"507";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"496";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"484";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"471";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"469";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"467";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"462";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"459";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"448";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"447";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"443";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"438";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"436";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"430";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"427";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"426";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"425";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"424";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"422";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"422";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"421";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"417";}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";s:3:"414";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"413";}}', 'no'),
(306, 'ngg_run_freemius', '1', 'yes'),
(307, 'fs_active_plugins', 'O:8:"stdClass":2:{s:7:"plugins";a:1:{s:24:"nextgen-gallery/freemius";O:8:"stdClass":3:{s:7:"version";s:5:"1.2.1";s:9:"timestamp";i:1482231661;s:11:"plugin_path";s:9:"hello.php";}}s:6:"newest";O:8:"stdClass":5:{s:11:"plugin_path";s:9:"hello.php";s:8:"sdk_path";s:24:"nextgen-gallery/freemius";s:7:"version";s:5:"1.2.1";s:13:"in_activation";b:1;s:9:"timestamp";i:1482231661;}}', 'yes'),
(308, 'fs_debug_mode', '', 'yes'),
(309, 'fs_accounts', 'a:4:{s:11:"plugin_data";a:1:{s:15:"nextgen-gallery";a:15:{s:16:"plugin_main_file";O:8:"stdClass":1:{s:4:"path";s:69:"C:/xampp/htdocs/abhp/wp-content/plugins/nextgen-gallery/nggallery.php";}s:17:"install_timestamp";i:1482231662;s:16:"sdk_last_version";N;s:11:"sdk_version";s:5:"1.2.1";s:16:"sdk_upgrade_mode";b:1;s:18:"sdk_downgrade_mode";b:0;s:19:"plugin_last_version";N;s:14:"plugin_version";s:6:"2.1.62";s:19:"plugin_upgrade_mode";b:1;s:21:"plugin_downgrade_mode";b:0;s:21:"is_plugin_new_install";b:1;s:17:"connectivity_test";a:6:{s:12:"is_connected";b:1;s:4:"host";s:9:"localhost";s:9:"server_ip";s:3:"::1";s:9:"is_active";b:1;s:9:"timestamp";i:1482231662;s:7:"version";s:6:"2.1.62";}s:17:"was_plugin_loaded";b:1;s:15:"prev_is_premium";b:0;s:12:"is_anonymous";a:3:{s:2:"is";b:1;s:9:"timestamp";i:1482231688;s:7:"version";s:6:"2.1.62";}}}s:13:"file_slug_map";a:1:{s:29:"nextgen-gallery/nggallery.php";s:15:"nextgen-gallery";}s:7:"plugins";a:1:{s:15:"nextgen-gallery";O:9:"FS_Plugin":15:{s:16:"parent_plugin_id";N;s:5:"title";s:15:"NextGEN Gallery";s:4:"slug";s:15:"nextgen-gallery";s:4:"file";s:29:"nextgen-gallery/nggallery.php";s:7:"version";s:6:"2.1.62";s:11:"auto_update";N;s:4:"info";N;s:10:"is_premium";b:0;s:7:"is_live";b:1;s:10:"public_key";s:32:"pk_009356711cd548837f074e1ef60a4";s:10:"secret_key";N;s:2:"id";s:3:"266";s:7:"updated";N;s:7:"created";N;s:22:"\0FS_Entity\0_is_updated";b:0;}}s:9:"unique_id";s:32:"325477202ec031c8e65619105faa88b1";}', 'yes'),
(310, 'fs_api_cache', 'a:0:{}', 'yes'),
(312, 'widget_ngg-images', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(313, 'widget_ngg-mrssw', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(314, 'widget_slideshow', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(315, 'ngg_transient_groups', 'a:7:{s:9:"__counter";i:7;s:3:"MVC";a:2:{s:2:"id";i:2;s:7:"enabled";b:1;}s:15:"col_in_ab_posts";a:2:{s:2:"id";i:3;s:7:"enabled";b:1;}s:21:"col_in_ab_ngg_gallery";a:2:{s:2:"id";i:4;s:7:"enabled";b:1;}s:19:"col_in_ab_ngg_album";a:2:{s:2:"id";i:5;s:7:"enabled";b:1;}s:22:"col_in_ab_ngg_pictures";a:2:{s:2:"id";i:6;s:7:"enabled";b:1;}s:27:"displayed_gallery_rendering";a:2:{s:2:"id";i:7;s:7:"enabled";b:1;}}', 'yes'),
(316, 'ngg_options', 'a:70:{s:11:"gallerypath";s:19:"wp-content\\gallery\\";s:11:"wpmuCSSfile";s:13:"nggallery.css";s:9:"wpmuStyle";b:0;s:9:"wpmuRoles";b:0;s:16:"wpmuImportFolder";b:0;s:13:"wpmuZipUpload";b:0;s:14:"wpmuQuotaCheck";b:0;s:17:"datamapper_driver";s:22:"custom_post_datamapper";s:21:"gallerystorage_driver";s:25:"ngglegacy_gallery_storage";s:20:"maximum_entity_count";i:500;s:17:"router_param_slug";s:9:"nggallery";s:22:"router_param_separator";s:2:"--";s:19:"router_param_prefix";s:0:"";s:9:"deleteImg";b:1;s:9:"swfUpload";b:1;s:13:"usePermalinks";b:0;s:13:"permalinkSlug";s:9:"nggallery";s:14:"graphicLibrary";s:2:"gd";s:14:"imageMagickDir";s:15:"/usr/local/bin/";s:11:"useMediaRSS";b:0;s:18:"galleries_in_feeds";b:0;s:12:"activateTags";i:0;s:10:"appendType";s:4:"tags";s:9:"maxImages";i:7;s:14:"relatedHeading";s:24:"<h3>Related Images:</h3>";s:10:"thumbwidth";i:240;s:11:"thumbheight";i:160;s:8:"thumbfix";b:1;s:12:"thumbquality";i:100;s:8:"imgWidth";i:800;s:9:"imgHeight";i:600;s:10:"imgQuality";i:100;s:9:"imgBackup";b:1;s:13:"imgAutoResize";b:0;s:9:"galImages";s:2:"20";s:17:"galPagedGalleries";i:0;s:10:"galColumns";i:0;s:12:"galShowSlide";b:1;s:12:"galTextSlide";s:16:"[Show slideshow]";s:14:"galTextGallery";s:17:"[Show thumbnails]";s:12:"galShowOrder";s:7:"gallery";s:7:"galSort";s:9:"sortorder";s:10:"galSortDir";s:3:"ASC";s:10:"galNoPages";b:1;s:13:"galImgBrowser";i:0;s:12:"galHiddenImg";i:0;s:10:"galAjaxNav";i:0;s:11:"thumbEffect";s:8:"fancybox";s:9:"thumbCode";s:41:"class="ngg-fancybox" rel="%GALLERY_NAME%"";s:18:"thumbEffectContext";s:14:"nextgen_images";s:5:"wmPos";s:8:"botRight";s:6:"wmXpos";i:5;s:6:"wmYpos";i:5;s:6:"wmType";s:5:"image";s:6:"wmPath";s:0:"";s:6:"wmFont";s:9:"arial.ttf";s:6:"wmSize";i:10;s:6:"wmText";s:4:"abhp";s:7:"wmColor";s:6:"000000";s:8:"wmOpaque";s:3:"100";s:7:"slideFX";s:4:"fade";s:7:"irWidth";i:600;s:8:"irHeight";i:400;s:12:"irRotatetime";i:10;s:11:"activateCSS";i:1;s:7:"CSSfile";s:13:"nggallery.css";s:28:"always_enable_frontend_logic";b:0;s:22:"dynamic_thumbnail_slug";s:13:"nextgen-image";s:23:"dynamic_stylesheet_slug";s:12:"nextgen-dcss";s:11:"installDate";i:1482231691;}', 'yes'),
(318, 'photocrati_auto_update_admin_update_list', '', 'yes'),
(319, 'photocrati_auto_update_admin_check_date', '', 'yes'),
(320, 'ngg_db_version', '1.8.1', 'yes'),
(323, 'pope_module_list', 'a:34:{i:0;s:17:"photocrati-fs|0.6";i:1;s:19:"photocrati-i18n|0.3";i:2;s:25:"photocrati-validation|0.2";i:3;s:21:"photocrati-router|0.9";i:4;s:32:"photocrati-wordpress_routing|0.8";i:5;s:23:"photocrati-security|0.3";i:6;s:32:"photocrati-nextgen_settings|0.15";i:7;s:18:"photocrati-mvc|0.8";i:8;s:20:"photocrati-ajax|0.10";i:9;s:26:"photocrati-datamapper|0.10";i:10;s:30:"photocrati-nextgen-legacy|0.19";i:11;s:28:"photocrati-nextgen-data|0.14";i:12;s:33:"photocrati-dynamic_thumbnails|0.7";i:13;s:29:"photocrati-nextgen_admin|0.15";i:14;s:39:"photocrati-nextgen_gallery_display|0.16";i:15;s:34:"photocrati-frame_communication|0.5";i:16;s:30:"photocrati-attach_to_post|0.18";i:17;s:38:"photocrati-nextgen_addgallery_page|0.9";i:18;s:36:"photocrati-nextgen_other_options|0.9";i:19;s:33:"photocrati-nextgen_pagination|0.4";i:20;s:33:"photocrati-dynamic_stylesheet|0.4";i:21;s:34:"photocrati-nextgen_pro_upgrade|0.6";i:22;s:20:"photocrati-cache|0.2";i:23;s:24:"photocrati-lightbox|0.17";i:24;s:38:"photocrati-nextgen_basic_templates|0.7";i:25;s:37:"photocrati-nextgen_basic_gallery|0.16";i:26;s:42:"photocrati-nextgen_basic_imagebrowser|0.13";i:27;s:39:"photocrati-nextgen_basic_singlepic|0.14";i:28;s:38:"photocrati-nextgen_basic_tagcloud|0.15";i:29;s:35:"photocrati-nextgen_basic_album|0.17";i:30;s:21:"photocrati-widget|0.6";i:31;s:33:"photocrati-third_party_compat|0.6";i:32;s:29:"photocrati-nextgen_xmlrpc|0.6";i:33;s:20:"photocrati-wpcli|0.2";}', 'yes'),
(683, '_transient_timeout_2__536483053', '1482234656', 'no'),
(684, '_transient_2__536483053', '{"photocrati-nextgen_gallery_display#nextgen_gallery_related_images.css|0":"C:\\\\xampp\\\\htdocs\\\\abhp\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_gallery_display\\\\static\\\\nextgen_gallery_related_images.min.css","photocrati-nextgen_gallery_display#common.js|0":"C:\\\\xampp\\\\htdocs\\\\abhp\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_gallery_display\\\\static\\\\common.min.js","photocrati-nextgen_gallery_display#trigger_buttons.css|0":"C:\\\\xampp\\\\htdocs\\\\abhp\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_gallery_display\\\\static\\\\trigger_buttons.min.css","photocrati-nextgen_basic_gallery#thumbnails\\/nextgen_basic_thumbnails.js|0":"C:\\\\xampp\\\\htdocs\\\\abhp\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_basic_gallery\\\\static\\\\thumbnails\\\\nextgen_basic_thumbnails.min.js","photocrati-lightbox#lightbox_context.js|0":"C:\\\\xampp\\\\htdocs\\\\abhp\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\lightbox\\\\static\\\\lightbox_context.min.js","|photocrati-lightbox|0":"C:\\\\xampp\\\\htdocs\\\\abhp\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\lightbox\\\\static","photocrati-lightbox#fancybox\\/jquery.fancybox-1.3.4.css|0":"C:\\\\xampp\\\\htdocs\\\\abhp\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\lightbox\\\\static\\\\fancybox\\\\jquery.fancybox-1.3.4.min.css","photocrati-lightbox#fancybox\\/jquery.easing-1.3.pack.js|0":"C:\\\\xampp\\\\htdocs\\\\abhp\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\lightbox\\\\static\\\\fancybox\\\\jquery.easing-1.3.pack.js","photocrati-lightbox#fancybox\\/jquery.fancybox-1.3.4.pack.js|0":"C:\\\\xampp\\\\htdocs\\\\abhp\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\lightbox\\\\static\\\\fancybox\\\\jquery.fancybox-1.3.4.pack.js","photocrati-lightbox#fancybox\\/nextgen_fancybox_init.js|0":"C:\\\\xampp\\\\htdocs\\\\abhp\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\lightbox\\\\static\\\\fancybox\\\\nextgen_fancybox_init.min.js","photocrati-nextgen_basic_gallery#thumbnails\\/nextgen_basic_thumbnails.css|0":"C:\\\\xampp\\\\htdocs\\\\abhp\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_basic_gallery\\\\static\\\\thumbnails\\\\nextgen_basic_thumbnails.min.css","photocrati-nextgen_pagination#style.css|0":"C:\\\\xampp\\\\htdocs\\\\abhp\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_pagination\\\\static\\\\style.min.css"}', 'no'),
(727, '_transient_timeout_2__974818834', '1482235220', 'no'),
(728, '_transient_2__974818834', '{"photocrati-ajax#ajax.min.js||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/ajax\\/static\\/ajax.min.js","photocrati-nextgen_admin#gritter\\/gritter.min.js||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/gritter\\/gritter.min.js","photocrati-nextgen_admin#gritter\\/css\\/gritter.css||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/gritter\\/css\\/gritter.min.css","photocrati-nextgen_admin#ngg_progressbar.js||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/ngg_progressbar.min.js","photocrati-nextgen_admin#ngg_progressbar.css||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/ngg_progressbar.min.css","photocrati-nextgen_admin#select2\\/select2.css||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/select2\\/select2.min.css","photocrati-nextgen_admin#select2\\/select2.modded.js||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/select2\\/select2.modded.min.js","photocrati-nextgen_admin#jquery.nextgen_radio_toggle.js||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/jquery.nextgen_radio_toggle.min.js","photocrati-nextgen_admin#jquery-ui\\/jquery-ui-1.10.4.custom.css||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/jquery-ui\\/jquery-ui-1.10.4.custom.min.css","photocrati-nextgen_admin#bootstrap\\/css\\/bootstrap-tooltip.css||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/bootstrap\\/css\\/bootstrap-tooltip.min.css","photocrati-nextgen_admin#tourist\\/tourist.js||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/tourist\\/tourist.min.js","photocrati-nextgen_admin#tourist\\/tourist.css||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/tourist\\/tourist.min.css","photocrati-nextgen_admin#nextgen_wizards.js||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/nextgen_wizards.min.js","photocrati-nextgen_admin#nextgen_wizards.css||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/nextgen_wizards.min.css","photocrati-frame_communication#frame_event_publisher.js||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/frame_communication\\/static\\/frame_event_publisher.min.js","photocrati-nextgen_gallery_display#nextgen_gallery_display_settings.js||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_display_settings.min.js","photocrati-nextgen_gallery_display#nextgen_gallery_display_settings.css||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_display_settings.min.css","photocrati-nextgen_gallery_display#fontawesome\\/font-awesome.css||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/fontawesome\\/font-awesome.min.css","photocrati-attach_to_post#ngg_attach_to_post_tinymce_plugin.css||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/attach_to_post\\/static\\/ngg_attach_to_post_tinymce_plugin.min.css","photocrati-nextgen_addgallery_page#browserplus-2.4.21.min.js||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/browserplus-2.4.21.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/moxie.min.js||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/plupload-2.1.1\\/moxie.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/plupload.dev.js||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/plupload-2.1.1\\/plupload.dev.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/jquery.plupload.queue\\/jquery.plupload.queue.min.js||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/plupload-2.1.1\\/jquery.plupload.queue\\/jquery.plupload.queue.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/jquery.plupload.queue\\/css\\/jquery.plupload.queue.css||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/plupload-2.1.1\\/jquery.plupload.queue\\/css\\/jquery.plupload.queue.min.css","photocrati-nextgen_addgallery_page#styles.css||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/styles.min.css","photocrati-nextgen_addgallery_page#jquery.filetree\\/jquery.filetree.js||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/jquery.filetree\\/jquery.filetree.min.js","photocrati-nextgen_addgallery_page#jquery.filetree\\/jquery.filetree.css||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/jquery.filetree\\/jquery.filetree.min.css","photocrati-nextgen_addgallery_page#media-library-import.js||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/media-library-import.min.js","photocrati-nextgen_addgallery_page#media-library-import.css||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/media-library-import.min.css","photocrati-attach_to_post#attach_to_post_dialog.css||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/attach_to_post\\/static\\/attach_to_post_dialog.min.css","photocrati-attach_to_post#igw.js||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/attach_to_post\\/static\\/igw.min.js","photocrati-attach_to_post#atp_button.png||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/attach_to_post\\/static\\/atp_button.png","photocrati-attach_to_post#ngg_attach_to_post_tinymce_plugin.js||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/attach_to_post\\/static\\/ngg_attach_to_post_tinymce_plugin.min.js","photocrati-nextgen_gallery_display#nextgen_gallery_related_images.css||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_related_images.min.css","photocrati-nextgen_gallery_display#common.js||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/common.min.js","photocrati-nextgen_gallery_display#trigger_buttons.css||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/trigger_buttons.min.css","photocrati-nextgen_basic_gallery#thumbnails\\/nextgen_basic_thumbnails.js||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_basic_gallery\\/static\\/thumbnails\\/nextgen_basic_thumbnails.min.js","photocrati-lightbox#lightbox_context.js||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static\\/lightbox_context.min.js","|photocrati-lightbox|http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static","photocrati-lightbox#fancybox\\/jquery.fancybox-1.3.4.css||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static\\/fancybox\\/jquery.fancybox-1.3.4.min.css","photocrati-lightbox#fancybox\\/jquery.easing-1.3.pack.js||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static\\/fancybox\\/jquery.easing-1.3.pack.js","photocrati-lightbox#fancybox\\/jquery.fancybox-1.3.4.pack.js||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static\\/fancybox\\/jquery.fancybox-1.3.4.pack.js","photocrati-lightbox#fancybox\\/nextgen_fancybox_init.js||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static\\/fancybox\\/nextgen_fancybox_init.min.js","photocrati-nextgen_basic_gallery#thumbnails\\/nextgen_basic_thumbnails.css||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_basic_gallery\\/static\\/thumbnails\\/nextgen_basic_thumbnails.min.css","photocrati-nextgen_pagination#style.css||http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp|http:\\/\\/localhost\\/abhp\\/wp-content\\/themes\\/abhp":"http:\\/\\/localhost\\/abhp\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_pagination\\/static\\/style.min.css"}', 'no'),
(729, '_transient_timeout_3___1395736393', '1482234653', 'no'),
(730, '_transient_3___1395736393', '["ID","post_author","post_date","post_date_gmt","post_content","post_title","post_excerpt","post_status","comment_status","ping_status","post_password","post_name","to_ping","pinged","post_modified","post_modified_gmt","post_content_filtered","post_parent","guid","menu_order","post_type","post_mime_type","comment_count"]', 'no'),
(731, '_transient_timeout_4___1395736393', '1482234653', 'no'),
(732, '_transient_4___1395736393', '["gid","name","slug","path","title","galdesc","pageid","previewpic","author","extras_post_id"]', 'no'),
(734, '_transient_timeout_6___1395736393', '1482234656', 'no'),
(735, '_transient_6___1395736393', '["pid","image_slug","post_id","galleryid","filename","description","alttext","imagedate","exclude","sortorder","meta_data","extras_post_id","updated_at"]', 'no'),
(736, '_transient_timeout_7___942117119', '1482234656', 'no'),
(737, '_transient_7___942117119', '"[Not a valid template]"', 'no'),
(738, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `ab_postmeta`
--

CREATE TABLE `ab_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ab_postmeta`
--

INSERT INTO `ab_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]'),
(3, 4, '_mail', 'a:8:{s:7:"subject";s:21:"abhp "[your-subject]"";s:6:"sender";s:36:"[your-name] <vijay.punuru@gmail.com>";s:4:"body";s:163:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on abhp (http://localhost/abhp)";s:9:"recipient";s:22:"vijay.punuru@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(4, 4, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:21:"abhp "[your-subject]"";s:6:"sender";s:29:"abhp <vijay.punuru@gmail.com>";s:4:"body";s:105:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on abhp (http://localhost/abhp)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:32:"Reply-To: vijay.punuru@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(5, 4, '_messages', 'a:8:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";}'),
(6, 4, '_additional_settings', NULL),
(7, 4, '_locale', 'en_US'),
(8, 2, '_wp_trash_meta_status', 'publish'),
(9, 2, '_wp_trash_meta_time', '1482209651'),
(10, 2, '_wp_desired_post_slug', 'sample-page'),
(11, 6, '_edit_last', '1'),
(12, 6, '_edit_lock', '1482224343:1'),
(13, 6, '_wp_page_template', 'page-templates/home.php'),
(14, 8, '_edit_last', '1'),
(15, 8, '_edit_lock', '1482224348:1'),
(16, 8, '_wp_page_template', 'page-templates/history.php'),
(17, 10, '_edit_last', '1'),
(18, 10, '_edit_lock', '1482209872:1'),
(19, 10, '_wp_page_template', 'page-templates/management.php'),
(20, 12, '_edit_last', '1'),
(21, 12, '_edit_lock', '1482226193:1'),
(22, 12, '_wp_page_template', 'page-templates/services.php'),
(23, 14, '_edit_last', '1'),
(24, 14, '_wp_page_template', 'page-templates/news_events.php'),
(25, 14, '_edit_lock', '1482226212:1'),
(26, 16, '_edit_last', '1'),
(27, 16, '_edit_lock', '1482209928:1'),
(28, 16, '_wp_page_template', 'page-templates/camps.php'),
(29, 18, '_edit_last', '1'),
(30, 18, '_edit_lock', '1482230431:1'),
(31, 18, '_wp_page_template', 'page-templates/contact_us.php'),
(32, 20, '_edit_last', '1'),
(33, 20, '_edit_lock', '1482226903:1'),
(34, 20, '_wp_page_template', 'page-templates/general_information.php'),
(35, 22, '_menu_item_type', 'post_type'),
(36, 22, '_menu_item_menu_item_parent', '0'),
(37, 22, '_menu_item_object_id', '20'),
(38, 22, '_menu_item_object', 'page'),
(39, 22, '_menu_item_target', ''),
(40, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(41, 22, '_menu_item_xfn', ''),
(42, 22, '_menu_item_url', ''),
(44, 23, '_menu_item_type', 'post_type'),
(45, 23, '_menu_item_menu_item_parent', '0'),
(46, 23, '_menu_item_object_id', '18'),
(47, 23, '_menu_item_object', 'page'),
(48, 23, '_menu_item_target', ''),
(49, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(50, 23, '_menu_item_xfn', ''),
(51, 23, '_menu_item_url', ''),
(53, 24, '_menu_item_type', 'post_type'),
(54, 24, '_menu_item_menu_item_parent', '0'),
(55, 24, '_menu_item_object_id', '16'),
(56, 24, '_menu_item_object', 'page'),
(57, 24, '_menu_item_target', ''),
(58, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(59, 24, '_menu_item_xfn', ''),
(60, 24, '_menu_item_url', ''),
(62, 25, '_menu_item_type', 'post_type'),
(63, 25, '_menu_item_menu_item_parent', '0'),
(64, 25, '_menu_item_object_id', '14'),
(65, 25, '_menu_item_object', 'page'),
(66, 25, '_menu_item_target', ''),
(67, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(68, 25, '_menu_item_xfn', ''),
(69, 25, '_menu_item_url', ''),
(71, 26, '_menu_item_type', 'post_type'),
(72, 26, '_menu_item_menu_item_parent', '0'),
(73, 26, '_menu_item_object_id', '12'),
(74, 26, '_menu_item_object', 'page'),
(75, 26, '_menu_item_target', ''),
(76, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(77, 26, '_menu_item_xfn', ''),
(78, 26, '_menu_item_url', ''),
(80, 27, '_menu_item_type', 'post_type'),
(81, 27, '_menu_item_menu_item_parent', '0'),
(82, 27, '_menu_item_object_id', '10'),
(83, 27, '_menu_item_object', 'page'),
(84, 27, '_menu_item_target', ''),
(85, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(86, 27, '_menu_item_xfn', ''),
(87, 27, '_menu_item_url', ''),
(89, 28, '_menu_item_type', 'post_type'),
(90, 28, '_menu_item_menu_item_parent', '0'),
(91, 28, '_menu_item_object_id', '8'),
(92, 28, '_menu_item_object', 'page'),
(93, 28, '_menu_item_target', ''),
(94, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(95, 28, '_menu_item_xfn', ''),
(96, 28, '_menu_item_url', ''),
(98, 29, '_menu_item_type', 'post_type'),
(99, 29, '_menu_item_menu_item_parent', '0'),
(100, 29, '_menu_item_object_id', '6'),
(101, 29, '_menu_item_object', 'page'),
(102, 29, '_menu_item_target', ''),
(103, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(104, 29, '_menu_item_xfn', ''),
(105, 29, '_menu_item_url', ''),
(107, 30, '_edit_last', '1'),
(108, 30, '_edit_lock', '1482232728:1'),
(109, 30, '_wp_page_template', 'page-templates/gallery.php'),
(110, 32, '_menu_item_type', 'post_type'),
(111, 32, '_menu_item_menu_item_parent', '0'),
(112, 32, '_menu_item_object_id', '30'),
(113, 32, '_menu_item_object', 'page'),
(114, 32, '_menu_item_target', ''),
(115, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(116, 32, '_menu_item_xfn', ''),
(117, 32, '_menu_item_url', ''),
(119, 33, '_edit_last', '1'),
(120, 33, '_edit_lock', '1482217307:1'),
(121, 38, '_wp_attached_file', '2016/12/img.png'),
(122, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:196;s:6:"height";i:177;s:4:"file";s:15:"2016/12/img.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"img-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(123, 39, '_wp_attached_file', '2016/12/img2.png'),
(124, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:196;s:6:"height";i:177;s:4:"file";s:16:"2016/12/img2.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"img2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(125, 40, '_wp_attached_file', '2016/12/title.png'),
(126, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:489;s:6:"height";i:75;s:4:"file";s:17:"2016/12/title.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"title-150x75.png";s:5:"width";i:150;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"title-300x46.png";s:5:"width";i:300;s:6:"height";i:46;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(127, 41, '_wp_attached_file', '2016/12/swamigi.png'),
(128, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:196;s:6:"height";i:177;s:4:"file";s:19:"2016/12/swamigi.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"swamigi-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(129, 44, '_form', '<form class="form-horizontal">\n									<div class="form-group">\n										<label for="inputEmail3" class="col-sm-3 control-label">Email </label>\n										<div class="col-sm-9">\n		[email* email-280 class:form-control placeholder "enter your Email"]\n										</div>\n									</div>\n									\n									<div class="form-group">\n										<label for="Address " class="col-sm-3 control-label">Address </label>\n										<div class="col-sm-9">\n											[text* text-858 class:form-control placeholder "Enter your Address"]\n										</div>\n									</div>\n									<div class="form-group">\n										<label for="inputPassword3" class="col-sm-3 control-label">Location </label>\n										<div class="col-sm-9">\n											[text* text-858 class:form-control placeholder "Enter your Location"]\n										</div>\n									</div>\n									<div class="form-group">\n										<label for="inputPassword3" class="col-sm-3 control-label">Contact </label>\n										<div class="col-sm-9">\n											[tel* tel-404 class:form-control placeholder "Enter your Mobile Number"]\n										</div>\n									</div>\n									<div class="form-group">\n										<label for="inputPassword3" class="col-sm-3 control-label">Comment </label>\n										\n										<div class="col-sm-9">\n										\n											[textarea* textarea-411 4x3 placeholder "Enter your Comment"]\n										</div>\n									</div>\n								  <div class="form-group">\n									<div class="col-sm-12">\n									  [submit "submit "]\n									</div>\n								  </div>\n								</form>'),
(130, 44, '_mail', 'a:8:{s:7:"subject";s:21:"abhp "[your-subject]"";s:6:"sender";s:36:"[your-name] <vijay.punuru@gmail.com>";s:4:"body";s:163:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on abhp (http://localhost/abhp)";s:9:"recipient";s:22:"vijay.punuru@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(131, 44, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:21:"abhp "[your-subject]"";s:6:"sender";s:29:"abhp <vijay.punuru@gmail.com>";s:4:"body";s:105:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on abhp (http://localhost/abhp)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:32:"Reply-To: vijay.punuru@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(132, 44, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(133, 44, '_additional_settings', ''),
(134, 44, '_locale', 'en_US'),
(136, 45, '_edit_last', '1'),
(137, 45, '_edit_lock', '1482218986:1'),
(138, 49, '_wp_attached_file', '2016/12/banner1.png'),
(139, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:695;s:6:"height";i:316;s:4:"file";s:19:"2016/12/banner1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"banner1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"banner1-300x136.png";s:5:"width";i:300;s:6:"height";i:136;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:19:"banner1-672x316.png";s:5:"width";i:672;s:6:"height";i:316;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(140, 50, '_wp_attached_file', '2016/12/banner2.png'),
(141, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:695;s:6:"height";i:316;s:4:"file";s:19:"2016/12/banner2.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"banner2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"banner2-300x136.png";s:5:"width";i:300;s:6:"height";i:136;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:19:"banner2-672x316.png";s:5:"width";i:672;s:6:"height";i:316;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(142, 51, '_wp_attached_file', '2016/12/banner4.png'),
(143, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:695;s:6:"height";i:316;s:4:"file";s:19:"2016/12/banner4.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"banner4-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"banner4-300x136.png";s:5:"width";i:300;s:6:"height";i:136;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:19:"banner4-672x316.png";s:5:"width";i:672;s:6:"height";i:316;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(144, 52, '_edit_last', '1'),
(145, 52, '_edit_lock', '1482219162:1'),
(146, 54, 'marquee', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(147, 54, '_marquee', 'field_5858defd46695'),
(148, 6, 'marquee', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(149, 6, '_marquee', 'field_5858defd46695'),
(150, 55, '_edit_last', '1'),
(151, 55, '_edit_lock', '1482224452:1'),
(152, 60, '_wp_attached_file', '2016/12/Block1-Img.gif'),
(153, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:235;s:6:"height";i:82;s:4:"file";s:22:"2016/12/Block1-Img.gif";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Block1-Img-150x82.gif";s:5:"width";i:150;s:6:"height";i:82;s:9:"mime-type";s:9:"image/gif";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(154, 62, '_edit_last', '1'),
(155, 62, '_edit_lock', '1482220566:1'),
(156, 64, '_edit_last', '1'),
(157, 64, 'updates', '\r\n<p>Annaprasadam Served for 116990 pilgrims on 17-Dec-2016</p>\r\n	<p>Annaprasadam Complex 	: 67890</p>\r\n	<p>VQC I and II 	: 40000</p>\r\n<p>PAC2 :4000</p>'),
(158, 64, '_updates', 'field_5858e48a11636'),
(159, 64, '_edit_lock', '1482221429:1'),
(160, 66, '_edit_last', '1'),
(161, 66, '_edit_lock', '1482221753:1'),
(162, 66, 'updates', '\r\n							<p>Annaprasadam Served for 116990 pilgrims on 17-Dec-2016</p>\r\n							<p>Annaprasadam Complex 	: 67890</p>\r\n							<p>VQC I and II 	: 40000</p>\r\n							<p>PAC2 :4000</p>'),
(163, 66, '_updates', 'field_5858e48a11636'),
(164, 67, '_edit_last', '1'),
(165, 67, '_edit_lock', '1482223074:1'),
(166, 68, '_edit_last', '1'),
(167, 68, '_edit_lock', '1482223166:1'),
(168, 67, 'siddhanta_panchangam', '<p>NEWS & EVENTS</p>\r\n							<p>NEWS & EVENTS</p>\r\n							<p>NEWS & EVENTS</p>\r\n							<p>NEWS & EVENTS</p>\r\n							<p>NEWS & EVENTS</p>\r\n							<p>NEWS & EVENTS</p>\r\n							<p>NEWS & EVENTS</p>\r\n							<p>NEWS & EVENTS</p>'),
(169, 67, '_siddhanta_panchangam', 'field_5858e83945a07'),
(170, 67, 'panchangam', '							<p>NEWS & EVENTS</p>\r\n							<p>NEWS & EVENTS</p>\r\n							<p>NEWS & EVENTS</p>\r\n							<p>NEWS & EVENTS</p>\r\n							<p>NEWS & EVENTS</p>\r\n							<p>NEWS & EVENTS</p>\r\n							<p>NEWS & EVENTS</p>\r\n							<p>NEWS & EVENTS</p>\r\n							'),
(171, 67, '_panchangam', 'field_5858e83945a07'),
(172, 71, '_edit_last', '1'),
(173, 71, '_edit_lock', '1482223269:1'),
(174, 73, '_edit_last', '1'),
(175, 73, '_edit_lock', '1482223752:1'),
(176, 73, 'schedules', '<p>NEWS & EVENTS</p>\r\n							<p>NEWS & EVENTS</p>\r\n							<p>NEWS & EVENTS</p>\r\n							<p>NEWS & EVENTS</p>\r\n							<p>NEWS & EVENTS</p>\r\n							<p>NEWS & EVENTS</p>\r\n							<p>NEWS & EVENTS</p>\r\n							<p>NEWS & EVENTS</p>'),
(177, 73, '_schedules', 'field_5858eeec825c9'),
(178, 74, '_edit_last', '1'),
(179, 74, '_edit_lock', '1482224097:1'),
(180, 79, '_wp_attached_file', '2016/12/Block7-Img.gif'),
(181, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:234;s:6:"height";i:82;s:4:"file";s:22:"2016/12/Block7-Img.gif";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Block7-Img-150x82.gif";s:5:"width";i:150;s:6:"height";i:82;s:9:"mime-type";s:9:"image/gif";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(182, 80, '_wp_attached_file', '2016/12/Block5-Img.gif'),
(183, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:235;s:6:"height";i:82;s:4:"file";s:22:"2016/12/Block5-Img.gif";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Block5-Img-150x82.gif";s:5:"width";i:150;s:6:"height";i:82;s:9:"mime-type";s:9:"image/gif";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(184, 81, '_wp_attached_file', '2016/12/swami1111.jpg'),
(185, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:314;s:6:"height";i:319;s:4:"file";s:21:"2016/12/swami1111.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"swami1111-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"swami1111-295x300.jpg";s:5:"width";i:295;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(186, 6, '_thumbnail_id', '81'),
(187, 83, '_edit_last', '1'),
(188, 83, '_edit_lock', '1482224808:1'),
(189, 88, '_edit_last', '1'),
(190, 88, '_edit_lock', '1482224938:1'),
(191, 88, 'role', 'director'),
(192, 88, '_role', 'field_5858f4eda668b'),
(193, 88, 'image', '39'),
(194, 88, '_image', 'field_5858f4f3a668c'),
(195, 89, '_edit_last', '1'),
(196, 89, '_edit_lock', '1482225344:1'),
(197, 89, 'role', 'director'),
(198, 89, '_role', 'field_5858f4eda668b'),
(199, 89, 'image', '38'),
(200, 89, '_image', 'field_5858f4f3a668c'),
(201, 90, '_edit_last', '1'),
(202, 90, '_edit_lock', '1482225714:1'),
(203, 90, 'role', 'director'),
(204, 90, '_role', 'field_5858f4eda668b'),
(205, 90, 'image', '39'),
(206, 90, '_image', 'field_5858f4f3a668c'),
(207, 91, '_edit_last', '1'),
(208, 91, '_edit_lock', '1482225975:1'),
(209, 91, 'role', 'director'),
(210, 91, '_role', 'field_5858f4eda668b'),
(211, 91, 'image', '38'),
(212, 91, '_image', 'field_5858f4f3a668c'),
(213, 90, '_wp_trash_meta_status', 'publish'),
(214, 90, '_wp_trash_meta_time', '1482226124'),
(215, 90, '_wp_desired_post_slug', 'swami-3'),
(216, 91, '_wp_trash_meta_status', 'publish'),
(217, 91, '_wp_trash_meta_time', '1482226126'),
(218, 91, '_wp_desired_post_slug', 'sami'),
(219, 94, '_edit_last', '1'),
(220, 94, '_edit_lock', '1482226326:1'),
(221, 97, '_edit_last', '1'),
(222, 97, '_edit_lock', '1482226627:1'),
(223, 98, '_wp_attached_file', '2016/12/Gopuram.jpg'),
(224, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:314;s:6:"height";i:319;s:4:"file";s:19:"2016/12/Gopuram.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Gopuram-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"Gopuram-295x300.jpg";s:5:"width";i:295;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(225, 97, 'image', '98'),
(226, 97, '_image', 'field_5858fb01ae4f9'),
(227, 99, '_edit_last', '1'),
(228, 99, '_edit_lock', '1482226831:1'),
(229, 99, 'image', '81'),
(230, 99, '_image', 'field_5858fb01ae4f9'),
(231, 101, '_edit_last', '1'),
(232, 101, '_edit_lock', '1482227346:1'),
(233, 103, '_edit_last', '1'),
(234, 103, '_edit_lock', '1482227287:1'),
(235, 103, 'images', '98'),
(236, 103, '_images', 'field_5858fe1ba31a3'),
(237, 104, '_edit_last', '1'),
(238, 104, '_edit_lock', '1482227801:1'),
(239, 104, 'images', '81'),
(240, 104, '_images', 'field_5858fe1ba31a3'),
(241, 44, '_config_errors', 'a:1:{s:23:"mail.additional_headers";a:1:{i:0;a:2:{s:4:"code";i:102;s:4:"args";a:3:{s:7:"message";s:34:"The %name% field value is invalid.";s:6:"params";a:1:{s:4:"name";s:8:"Reply-To";}s:4:"link";s:90:"http://contactform7.com/configuration-errors/#mail.additional_headers:error_invalid_syntax";}}}}'),
(242, 106, 'title', 'NextGEN Basic Thumbnails'),
(243, 106, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_gallery\\static\\thumb_preview.jpg'),
(244, 106, 'default_source', 'galleries'),
(245, 106, 'view_order', '10000'),
(246, 106, 'name', 'photocrati-nextgen_basic_thumbnails'),
(247, 106, 'installed_at_version', '2.1.62'),
(248, 106, 'hidden_from_ui', ''),
(249, 106, 'hidden_from_igw', ''),
(250, 106, '__defaults_set', '1'),
(251, 106, 'filter', 'raw'),
(252, 106, 'entity_types', 'WyJpbWFnZSJd'),
(253, 106, 'aliases', 'WyJiYXNpY190aHVtYm5haWwiLCJiYXNpY190aHVtYm5haWxzIiwibmV4dGdlbl9iYXNpY190aHVtYm5haWxzIl0='),
(254, 106, 'id_field', 'ID'),
(255, 106, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJpbWFnZXNfcGVyX3BhZ2UiOiIyMCIsIm51bWJlcl9vZl9jb2x1bW5zIjowLCJ0aHVtYm5haWxfd2lkdGgiOjI0MCwidGh1bWJuYWlsX2hlaWdodCI6MTYwLCJzaG93X2FsbF9pbl9saWdodGJveCI6MCwiYWpheF9wYWdpbmF0aW9uIjowLCJ1c2VfaW1hZ2Vicm93c2VyX2VmZmVjdCI6MCwidGVtcGxhdGUiOiIiLCJkaXNwbGF5X25vX2ltYWdlc19lcnJvciI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJzaG93X3NsaWRlc2hvd19saW5rIjoxLCJzbGlkZXNob3dfbGlua190ZXh0IjoiW1Nob3cgc2xpZGVzaG93XSIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MCwidGh1bWJuYWlsX3F1YWxpdHkiOiIxMDAiLCJ0aHVtYm5haWxfY3JvcCI6MSwidGh1bWJuYWlsX3dhdGVybWFyayI6MCwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9'),
(256, 107, 'title', 'NextGEN Basic Slideshow'),
(257, 107, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_gallery\\static\\slideshow_preview.jpg'),
(258, 107, 'default_source', 'galleries'),
(259, 107, 'view_order', '10010'),
(260, 107, 'name', 'photocrati-nextgen_basic_slideshow'),
(261, 107, 'installed_at_version', '2.1.62'),
(262, 107, 'hidden_from_ui', ''),
(263, 107, 'hidden_from_igw', ''),
(264, 107, '__defaults_set', '1'),
(265, 107, 'filter', 'raw'),
(266, 107, 'entity_types', 'WyJpbWFnZSJd'),
(267, 107, 'aliases', 'WyJiYXNpY19zbGlkZXNob3ciLCJuZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyJd'),
(268, 107, 'id_field', 'ID'),
(269, 107, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X3dpZHRoIjo2MDAsImdhbGxlcnlfaGVpZ2h0Ijo0MDAsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsImN5Y2xlX2ludGVydmFsIjoxMCwiY3ljbGVfZWZmZWN0IjoiZmFkZSIsImVmZmVjdF9jb2RlIjoiY2xhc3M9XCJuZ2ctZmFuY3lib3hcIiByZWw9XCIlR0FMTEVSWV9OQU1FJVwiIiwic2hvd190aHVtYm5haWxfbGluayI6MSwidGh1bWJuYWlsX2xpbmtfdGV4dCI6IltTaG93IHRodW1ibmFpbHNdIiwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0='),
(270, 108, 'title', 'NextGEN Basic ImageBrowser'),
(271, 108, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_imagebrowser\\static\\preview.jpg'),
(272, 108, 'default_source', 'galleries'),
(273, 108, 'view_order', '10020'),
(274, 108, 'name', 'photocrati-nextgen_basic_imagebrowser'),
(275, 108, 'installed_at_version', '2.1.62'),
(276, 108, 'hidden_from_ui', ''),
(277, 108, 'hidden_from_igw', ''),
(278, 108, '__defaults_set', '1'),
(279, 108, 'filter', 'raw'),
(280, 108, 'entity_types', 'WyJpbWFnZSJd'),
(281, 108, 'aliases', 'WyJiYXNpY19pbWFnZWJyb3dzZXIiLCJpbWFnZWJyb3dzZXIiLCJuZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3NlciJd'),
(282, 108, 'id_field', 'ID'),
(283, 108, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ0ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifQ=='),
(284, 109, 'title', 'NextGEN Basic SinglePic'),
(285, 109, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_singlepic\\static\\preview.gif'),
(286, 109, 'default_source', 'galleries'),
(287, 109, 'view_order', '10060'),
(288, 109, 'hidden_from_ui', '1'),
(289, 109, 'hidden_from_igw', '1'),
(290, 109, 'name', 'photocrati-nextgen_basic_singlepic'),
(291, 109, 'installed_at_version', '2.1.62'),
(292, 109, '__defaults_set', '1'),
(293, 109, 'filter', 'raw'),
(294, 109, 'entity_types', 'WyJpbWFnZSJd'),
(295, 109, 'aliases', 'WyJiYXNpY19zaW5nbGVwaWMiLCJzaW5nbGVwaWMiLCJuZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpYyJd'),
(296, 109, 'id_field', 'ID'),
(297, 109, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ3aWR0aCI6IiIsImhlaWdodCI6IiIsIm1vZGUiOiIiLCJkaXNwbGF5X3dhdGVybWFyayI6MCwiZGlzcGxheV9yZWZsZWN0aW9uIjowLCJmbG9hdCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsInF1YWxpdHkiOjEwMCwiY3JvcCI6MCwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0='),
(298, 110, 'title', 'NextGEN Basic TagCloud'),
(299, 110, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_tagcloud\\static\\preview.gif'),
(300, 110, 'default_source', 'tags'),
(301, 110, 'view_order', '10100'),
(302, 110, 'name', 'photocrati-nextgen_basic_tagcloud'),
(303, 110, 'installed_at_version', '2.1.62'),
(304, 110, 'hidden_from_ui', ''),
(305, 110, 'hidden_from_igw', ''),
(306, 110, '__defaults_set', '1'),
(307, 110, 'filter', 'raw'),
(308, 110, 'entity_types', 'WyJpbWFnZSJd'),
(309, 110, 'aliases', 'WyJiYXNpY190YWdjbG91ZCIsInRhZ2Nsb3VkIiwibmV4dGdlbl9iYXNpY190YWdjbG91ZCJd'),
(310, 110, 'id_field', 'ID'),
(311, 110, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwibnVtYmVyIjo0NSwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9'),
(312, 111, 'title', 'NextGEN Basic Compact Album'),
(313, 111, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_album\\static\\compact_preview.jpg'),
(314, 111, 'default_source', 'albums'),
(315, 111, 'view_order', '10200'),
(316, 111, 'name', 'photocrati-nextgen_basic_compact_album'),
(317, 111, 'installed_at_version', '2.1.62'),
(318, 111, 'hidden_from_ui', ''),
(319, 111, 'hidden_from_igw', ''),
(320, 111, '__defaults_set', '1'),
(321, 111, 'filter', 'raw'),
(322, 111, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(323, 111, 'aliases', 'WyJiYXNpY19jb21wYWN0X2FsYnVtIiwibmV4dGdlbl9iYXNpY19hbGJ1bSIsImJhc2ljX2FsYnVtX2NvbXBhY3QiLCJjb21wYWN0X2FsYnVtIl0='),
(324, 111, 'id_field', 'ID'),
(325, 111, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOjAsImVuYWJsZV9icmVhZGNydW1icyI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJlbmFibGVfZGVzY3JpcHRpb25zIjowLCJ0ZW1wbGF0ZSI6IiIsIm9wZW5fZ2FsbGVyeV9pbl9saWdodGJveCI6MCwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifQ=='),
(326, 112, 'title', 'NextGEN Basic Extended Album'),
(327, 112, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_album\\static\\extended_preview.jpg'),
(328, 112, 'default_source', 'albums'),
(329, 112, 'view_order', '10210'),
(330, 112, 'name', 'photocrati-nextgen_basic_extended_album'),
(331, 112, 'installed_at_version', '2.1.62'),
(332, 112, 'hidden_from_ui', ''),
(333, 112, 'hidden_from_igw', ''),
(334, 112, '__defaults_set', '1'),
(335, 112, 'filter', 'raw'),
(336, 112, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(337, 112, 'aliases', 'WyJiYXNpY19leHRlbmRlZF9hbGJ1bSIsIm5leHRnZW5fYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJleHRlbmRlZF9hbGJ1bSJd'),
(338, 112, 'id_field', 'ID'),
(339, 112, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOjAsImVuYWJsZV9icmVhZGNydW1icyI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJlbmFibGVfZGVzY3JpcHRpb25zIjowLCJ0ZW1wbGF0ZSI6IiIsIm9wZW5fZ2FsbGVyeV9pbl9saWdodGJveCI6MCwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjowLCJ0aHVtYm5haWxfd2lkdGgiOjI0MCwidGh1bWJuYWlsX2hlaWdodCI6MTYwLCJ0aHVtYm5haWxfcXVhbGl0eSI6MTAwLCJ0aHVtYm5haWxfY3JvcCI6dHJ1ZSwidGh1bWJuYWlsX3dhdGVybWFyayI6MCwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifQ=='),
(340, 113, '__defaults_set', '1'),
(341, 113, 'filter', 'raw'),
(342, 113, 'id_field', 'ID'),
(343, 114, '__defaults_set', '1'),
(344, 114, 'filter', 'raw'),
(345, 114, 'id_field', 'ID'),
(355, 117, '__defaults_set', '1'),
(356, 117, 'filter', 'raw'),
(357, 117, 'id_field', 'ID'),
(364, 119, '__defaults_set', '1'),
(365, 119, 'filter', 'raw'),
(366, 119, 'id_field', 'ID'),
(373, 121, '__defaults_set', '1'),
(374, 121, 'filter', 'raw'),
(375, 121, 'id_field', 'ID'),
(382, 123, '__defaults_set', '1'),
(383, 123, 'filter', 'raw'),
(384, 123, 'id_field', 'ID'),
(391, 125, '__defaults_set', '1'),
(392, 125, 'filter', 'raw'),
(393, 125, 'id_field', 'ID'),
(400, 127, '__defaults_set', '1'),
(401, 127, 'filter', 'raw'),
(402, 127, 'id_field', 'ID'),
(409, 129, '__defaults_set', '1'),
(410, 129, 'filter', 'raw'),
(411, 129, 'id_field', 'ID'),
(499, 136, '__defaults_set', '1'),
(500, 136, 'filter', 'raw'),
(501, 136, 'id_field', 'ID'),
(502, 137, '__defaults_set', '1'),
(503, 137, 'filter', 'raw'),
(504, 137, 'id_field', 'ID'),
(514, 140, '__defaults_set', '1'),
(515, 140, 'filter', 'raw'),
(516, 140, 'id_field', 'ID'),
(523, 139, '__defaults_set', '1'),
(524, 139, 'filter', 'raw'),
(525, 139, 'id_field', 'ID'),
(526, 138, '__defaults_set', '1'),
(527, 138, 'filter', 'raw'),
(528, 138, 'id_field', 'ID'),
(529, 141, '__defaults_set', '1'),
(530, 141, 'filter', 'raw'),
(531, 141, 'id_field', 'ID'),
(532, 143, '__defaults_set', '1'),
(533, 143, 'filter', 'raw'),
(534, 143, 'id_field', 'ID'),
(535, 144, '__defaults_set', '1'),
(536, 144, 'filter', 'raw'),
(537, 144, 'id_field', 'ID'),
(547, 147, '__defaults_set', '1'),
(548, 147, 'filter', 'raw'),
(549, 147, 'id_field', 'ID'),
(556, 149, '__defaults_set', '1'),
(557, 149, 'filter', 'raw'),
(558, 149, 'id_field', 'ID'),
(565, 151, '__defaults_set', '1'),
(566, 151, 'filter', 'raw'),
(567, 151, 'id_field', 'ID'),
(574, 146, '__defaults_set', '1'),
(575, 146, 'filter', 'raw'),
(576, 146, 'id_field', 'ID'),
(577, 145, '__defaults_set', '1'),
(578, 145, 'filter', 'raw'),
(579, 145, 'id_field', 'ID'),
(580, 148, '__defaults_set', '1'),
(581, 148, 'filter', 'raw'),
(582, 148, 'id_field', 'ID'),
(583, 150, '__defaults_set', '1'),
(584, 150, 'filter', 'raw'),
(585, 150, 'id_field', 'ID'),
(586, 152, '__defaults_set', '1'),
(587, 152, 'filter', 'raw'),
(588, 152, 'id_field', 'ID'),
(643, 116, '__defaults_set', '1'),
(644, 116, 'filter', 'raw'),
(645, 116, 'id_field', 'ID'),
(646, 115, '__defaults_set', '1'),
(647, 115, 'filter', 'raw'),
(648, 115, 'id_field', 'ID'),
(649, 118, '__defaults_set', '1'),
(650, 118, 'filter', 'raw'),
(651, 118, 'id_field', 'ID'),
(652, 120, '__defaults_set', '1'),
(653, 120, 'filter', 'raw'),
(654, 120, 'id_field', 'ID'),
(655, 122, '__defaults_set', '1'),
(656, 122, 'filter', 'raw'),
(657, 122, 'id_field', 'ID'),
(658, 124, '__defaults_set', '1'),
(659, 124, 'filter', 'raw'),
(660, 124, 'id_field', 'ID'),
(661, 126, '__defaults_set', '1'),
(662, 126, 'filter', 'raw'),
(663, 126, 'id_field', 'ID'),
(664, 128, '__defaults_set', '1'),
(665, 128, 'filter', 'raw'),
(666, 128, 'id_field', 'ID'),
(667, 130, '__defaults_set', '1'),
(668, 130, 'filter', 'raw'),
(669, 130, 'id_field', 'ID');

-- --------------------------------------------------------

--
-- Table structure for table `ab_posts`
--

CREATE TABLE `ab_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ab_posts`
--

INSERT INTO `ab_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-12-19 09:45:45', '2016-12-19 09:45:45', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-12-19 09:45:45', '2016-12-19 09:45:45', '', 0, 'http://localhost/abhp/?p=1', 0, 'post', '', 1),
(2, 1, '2016-12-19 09:45:45', '2016-12-19 09:45:45', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/abhp/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2016-12-20 04:54:11', '2016-12-20 04:54:11', '', 0, 'http://localhost/abhp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-12-19 09:46:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-12-19 09:46:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/abhp/?p=3', 0, 'post', '', 0),
(4, 1, '2016-12-19 09:47:17', '2016-12-19 09:47:17', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]\nabhp "[your-subject]"\n[your-name] <vijay.punuru@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on abhp (http://localhost/abhp)\nvijay.punuru@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nabhp "[your-subject]"\nabhp <vijay.punuru@gmail.com>\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on abhp (http://localhost/abhp)\n[your-email]\nReply-To: vijay.punuru@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2016-12-19 09:47:17', '2016-12-19 09:47:17', '', 0, 'http://localhost/abhp/?post_type=wpcf7_contact_form&p=4', 0, 'wpcf7_contact_form', '', 0),
(5, 1, '2016-12-20 04:54:11', '2016-12-20 04:54:11', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/abhp/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-12-20 04:54:11', '2016-12-20 04:54:11', '', 2, 'http://localhost/abhp/2016/12/20/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2016-12-20 04:54:26', '2016-12-20 04:54:26', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-12-20 08:57:38', '2016-12-20 08:57:38', '', 0, 'http://localhost/abhp/?page_id=6', 0, 'page', '', 0),
(7, 1, '2016-12-20 04:54:26', '2016-12-20 04:54:26', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-12-20 04:54:26', '2016-12-20 04:54:26', '', 6, 'http://localhost/abhp/2016/12/20/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2016-12-20 04:59:56', '2016-12-20 04:59:56', '<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>', 'History', '', 'publish', 'closed', 'closed', '', 'history', '', '', '2016-12-20 06:32:52', '2016-12-20 06:32:52', '', 0, 'http://localhost/abhp/?page_id=8', 0, 'page', '', 0),
(9, 1, '2016-12-20 04:59:56', '2016-12-20 04:59:56', '', 'History', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-12-20 04:59:56', '2016-12-20 04:59:56', '', 8, 'http://localhost/abhp/2016/12/20/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2016-12-20 05:00:11', '2016-12-20 05:00:11', '', 'Management', '', 'publish', 'closed', 'closed', '', 'management', '', '', '2016-12-20 05:00:11', '2016-12-20 05:00:11', '', 0, 'http://localhost/abhp/?page_id=10', 0, 'page', '', 0),
(11, 1, '2016-12-20 05:00:11', '2016-12-20 05:00:11', '', 'Management', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-12-20 05:00:11', '2016-12-20 05:00:11', '', 10, 'http://localhost/abhp/2016/12/20/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2016-12-20 05:00:25', '2016-12-20 05:00:25', '<div class="services-1">\r\n<div class="row">\r\n<div class="col-xs-12 col-sm-6 col-md-6">\r\n<div class="services-1"><figure><img src="http://localhost/abhp/wp-content/themes/abhp/images/Gopuram.jpg" alt="Gopuram " /></figure>\r\n<h4>What is Lorem Ipsum?</h4>\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n</div>\r\n<div class="col-xs-12 col-sm-6 col-md-6">\r\n<div class="services-1"><figure><img src="http://localhost/abhp/wp-content/themes/abhp/images/swami1111.jpg" alt="swami1111 " /></figure>\r\n<h4>What is Lorem Ipsum?</h4>\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-xs-12 col-sm-6 col-md-6">\r\n<div class="services-1"><figure><img src="http://localhost/abhp/wp-content/themes/abhp/images/Gopuram.jpg" alt="Gopuram " /></figure>\r\n<h4>What is Lorem Ipsum?</h4>\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n</div>\r\n<div class="col-xs-12 col-sm-6 col-md-6">\r\n<div class="services-1"><figure><img src="http://localhost/abhp/wp-content/themes/abhp/images/swami1111.jpg" alt="swami1111 " /></figure>\r\n<h4>What is Lorem Ipsum?</h4>\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2016-12-20 09:31:34', '2016-12-20 09:31:34', '', 0, 'http://localhost/abhp/?page_id=12', 0, 'page', '', 0),
(13, 1, '2016-12-20 05:00:25', '2016-12-20 05:00:25', '', 'Services', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-12-20 05:00:25', '2016-12-20 05:00:25', '', 12, 'http://localhost/abhp/2016/12/20/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2016-12-20 05:00:40', '2016-12-20 05:00:40', '', 'News & Events', '', 'publish', 'closed', 'closed', '', 'news-events', '', '', '2016-12-20 09:32:25', '2016-12-20 09:32:25', '', 0, 'http://localhost/abhp/?page_id=14', 0, 'page', '', 0),
(15, 1, '2016-12-20 05:00:40', '2016-12-20 05:00:40', '', 'News & Events', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2016-12-20 05:00:40', '2016-12-20 05:00:40', '', 14, 'http://localhost/abhp/2016/12/20/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2016-12-20 05:01:05', '2016-12-20 05:01:05', '', 'Camps', '', 'publish', 'closed', 'closed', '', 'camps', '', '', '2016-12-20 05:01:05', '2016-12-20 05:01:05', '', 0, 'http://localhost/abhp/?page_id=16', 0, 'page', '', 0),
(17, 1, '2016-12-20 05:01:05', '2016-12-20 05:01:05', '', 'Camps', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-12-20 05:01:05', '2016-12-20 05:01:05', '', 16, 'http://localhost/abhp/2016/12/20/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2016-12-20 05:01:21', '2016-12-20 05:01:21', '<div class="address">\r\n<h5>TEMPLE CONTACT ADDRESS :</h5>\r\nSRI HANUMADDEKSHA PEETAM TRUST\r\n\r\nAKHILA BHARATHA SRI HANUMADDEKSHA SEVA SAMITHI\r\n\r\nD.NO: 4-1-163\r\n\r\nNEAR SYED APPALASWAMY COLLEGE\r\n\r\nOPPOSITE : MILK PROJECT\r\n\r\nVIJAYAWADA - 520 009.\r\n\r\n</div>', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2016-12-20 09:59:16', '2016-12-20 09:59:16', '', 0, 'http://localhost/abhp/?page_id=18', 0, 'page', '', 0),
(19, 1, '2016-12-20 05:01:21', '2016-12-20 05:01:21', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2016-12-20 05:01:21', '2016-12-20 05:01:21', '', 18, 'http://localhost/abhp/2016/12/20/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2016-12-20 05:01:41', '2016-12-20 05:01:41', '<section class="history">\r\n<div class="container">\r\n<div class="row">\r\n<div class="history_title">\r\n<h3>TEMPLE HISTORY :</h3>\r\n</div>\r\n</div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n</div>\r\n</section>', 'General Information', '', 'publish', 'closed', 'closed', '', 'general-information', '', '', '2016-12-20 09:43:40', '2016-12-20 09:43:40', '', 0, 'http://localhost/abhp/?page_id=20', 0, 'page', '', 0),
(21, 1, '2016-12-20 05:01:41', '2016-12-20 05:01:41', '', 'General Information', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2016-12-20 05:01:41', '2016-12-20 05:01:41', '', 20, 'http://localhost/abhp/2016/12/20/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2016-12-20 05:02:56', '2016-12-20 05:02:56', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2016-12-20 05:12:04', '2016-12-20 05:12:04', '', 0, 'http://localhost/abhp/?p=22', 9, 'nav_menu_item', '', 0),
(23, 1, '2016-12-20 05:02:56', '2016-12-20 05:02:56', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2016-12-20 05:12:04', '2016-12-20 05:12:04', '', 0, 'http://localhost/abhp/?p=23', 8, 'nav_menu_item', '', 0),
(24, 1, '2016-12-20 05:02:55', '2016-12-20 05:02:55', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2016-12-20 05:12:04', '2016-12-20 05:12:04', '', 0, 'http://localhost/abhp/?p=24', 7, 'nav_menu_item', '', 0),
(25, 1, '2016-12-20 05:02:55', '2016-12-20 05:02:55', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2016-12-20 05:12:04', '2016-12-20 05:12:04', '', 0, 'http://localhost/abhp/?p=25', 5, 'nav_menu_item', '', 0),
(26, 1, '2016-12-20 05:02:54', '2016-12-20 05:02:54', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2016-12-20 05:12:04', '2016-12-20 05:12:04', '', 0, 'http://localhost/abhp/?p=26', 4, 'nav_menu_item', '', 0),
(27, 1, '2016-12-20 05:02:54', '2016-12-20 05:02:54', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2016-12-20 05:12:04', '2016-12-20 05:12:04', '', 0, 'http://localhost/abhp/?p=27', 3, 'nav_menu_item', '', 0),
(28, 1, '2016-12-20 05:02:54', '2016-12-20 05:02:54', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2016-12-20 05:12:04', '2016-12-20 05:12:04', '', 0, 'http://localhost/abhp/?p=28', 2, 'nav_menu_item', '', 0),
(29, 1, '2016-12-20 05:02:54', '2016-12-20 05:02:54', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2016-12-20 05:12:04', '2016-12-20 05:12:04', '', 0, 'http://localhost/abhp/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2016-12-20 05:11:43', '2016-12-20 05:11:43', '[ngg_images source="galleries" container_ids="1" display_type="photocrati-nextgen_basic_thumbnails" override_thumbnail_settings="0" thumbnail_width="240" thumbnail_height="160" thumbnail_crop="1" images_per_page="20" number_of_columns="0" ajax_pagination="0" show_all_in_lightbox="0" use_imagebrowser_effect="0" show_slideshow_link="0" slideshow_link_text="[Show slideshow]" template="C:\\xampp\\htdocs\\abhp\\wp-content\\plugins\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\ngglegacy\\view\\gallery.php" order_by="sortorder" order_direction="ASC" returns="included" maximum_entity_count="500"]', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2016-12-20 11:20:54', '2016-12-20 11:20:54', '', 0, 'http://localhost/abhp/?page_id=30', 0, 'page', '', 0),
(31, 1, '2016-12-20 05:11:43', '2016-12-20 05:11:43', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-12-20 05:11:43', '2016-12-20 05:11:43', '', 30, 'http://localhost/abhp/2016/12/20/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2016-12-20 05:12:04', '2016-12-20 05:12:04', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2016-12-20 05:12:04', '2016-12-20 05:12:04', '', 0, 'http://localhost/abhp/?p=32', 6, 'nav_menu_item', '', 0),
(33, 1, '2016-12-20 05:24:28', '2016-12-20 05:24:28', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:18:"acf-options-header";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'header', 'header', 'publish', 'closed', 'closed', '', 'group_5858c03f6bcac', '', '', '2016-12-20 05:24:28', '2016-12-20 05:24:28', '', 0, 'http://localhost/abhp/?post_type=acf-field-group&#038;p=33', 0, 'acf-field-group', '', 0),
(34, 1, '2016-12-20 05:24:28', '2016-12-20 05:24:28', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'swamigi1', 'swamigi1', 'publish', 'closed', 'closed', '', 'field_5858c0454e8a0', '', '', '2016-12-20 05:24:28', '2016-12-20 05:24:28', '', 33, 'http://localhost/abhp/?post_type=acf-field&p=34', 0, 'acf-field', '', 0),
(35, 1, '2016-12-20 05:24:28', '2016-12-20 05:24:28', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'swamigi2', 'swamigi2', 'publish', 'closed', 'closed', '', 'field_5858c05b4e8a1', '', '', '2016-12-20 05:24:28', '2016-12-20 05:24:28', '', 33, 'http://localhost/abhp/?post_type=acf-field&p=35', 1, 'acf-field', '', 0),
(36, 1, '2016-12-20 05:24:28', '2016-12-20 05:24:28', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_5858c0674e8a2', '', '', '2016-12-20 05:24:28', '2016-12-20 05:24:28', '', 33, 'http://localhost/abhp/?post_type=acf-field&p=36', 2, 'acf-field', '', 0),
(37, 1, '2016-12-20 05:24:28', '2016-12-20 05:24:28', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'swamigi3', 'swamigi3', 'publish', 'closed', 'closed', '', 'field_5858c0744e8a3', '', '', '2016-12-20 05:24:28', '2016-12-20 05:24:28', '', 33, 'http://localhost/abhp/?post_type=acf-field&p=37', 3, 'acf-field', '', 0),
(38, 1, '2016-12-20 05:24:51', '2016-12-20 05:24:51', '', 'img', '', 'inherit', 'open', 'closed', '', 'img', '', '', '2016-12-20 05:24:51', '2016-12-20 05:24:51', '', 0, 'http://localhost/abhp/wp-content/uploads/2016/12/img.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2016-12-20 05:25:04', '2016-12-20 05:25:04', '', 'img2', '', 'inherit', 'open', 'closed', '', 'img2', '', '', '2016-12-20 05:25:04', '2016-12-20 05:25:04', '', 0, 'http://localhost/abhp/wp-content/uploads/2016/12/img2.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2016-12-20 05:25:17', '2016-12-20 05:25:17', '', 'title', '', 'inherit', 'open', 'closed', '', 'title', '', '', '2016-12-20 05:25:17', '2016-12-20 05:25:17', '', 0, 'http://localhost/abhp/wp-content/uploads/2016/12/title.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2016-12-20 05:25:28', '2016-12-20 05:25:28', '', 'swamigi', '', 'inherit', 'open', 'closed', '', 'swamigi', '', '', '2016-12-20 05:25:28', '2016-12-20 05:25:28', '', 0, 'http://localhost/abhp/wp-content/uploads/2016/12/swamigi.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2016-12-20 06:32:47', '2016-12-20 06:32:47', '<div class="title1">\n		<article>\n			<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\n			<ul>\n			<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\n			<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\n			</ul>\n		</article>\n		\n		</div>\n		<div class="title1">\n		<article>\n			<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\n			<ul>\n			<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\n			<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\n			</ul>\n		</article>\n		\n		</div>\n		<div class="title1">\n		<article>\n			<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\n			<ul>\n			<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\n			<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\n			</ul>\n		</article>\n		</div>\n		<div class="title1">\n		<article>\n			<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\n			<ul>\n			<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\n			<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\n			</ul>\n		</article>\n		</div>\n		<div class="title1">\n		<article>\n			<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\n			<ul>\n			<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\n			<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\n			</ul>\n		</article>\n		</div>\n		<div class="title1">\n		<article>\n			<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\n			<ul>\n			<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\n			<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\n			</ul>\n		</article>\n		</div>\n		<div class="title1">\n		<article>\n			<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\n			<ul>\n			<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\n			<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\n			</ul>\n		</article>\n		</div>\n	</div>', 'History', '', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2016-12-20 06:32:47', '2016-12-20 06:32:47', '', 8, 'http://localhost/abhp/2016/12/20/8-autosave-v1/', 0, 'revision', '', 0),
(43, 1, '2016-12-20 06:32:52', '2016-12-20 06:32:52', '<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>', 'History', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-12-20 06:32:52', '2016-12-20 06:32:52', '', 8, 'http://localhost/abhp/2016/12/20/8-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2016-12-20 06:40:37', '2016-12-20 06:40:37', '<form class="form-horizontal">\r\n									<div class="form-group">\r\n										<label for="inputEmail3" class="col-sm-3 control-label">Email </label>\r\n										<div class="col-sm-9">\r\n		[email* email-280 class:form-control placeholder "enter your Email"]\r\n										</div>\r\n									</div>\r\n									\r\n									<div class="form-group">\r\n										<label for="Address " class="col-sm-3 control-label">Address </label>\r\n										<div class="col-sm-9">\r\n											[text* text-858 class:form-control placeholder "Enter your Address"]\r\n										</div>\r\n									</div>\r\n									<div class="form-group">\r\n										<label for="inputPassword3" class="col-sm-3 control-label">Location </label>\r\n										<div class="col-sm-9">\r\n											[text* text-858 class:form-control placeholder "Enter your Location"]\r\n										</div>\r\n									</div>\r\n									<div class="form-group">\r\n										<label for="inputPassword3" class="col-sm-3 control-label">Contact </label>\r\n										<div class="col-sm-9">\r\n											[tel* tel-404 class:form-control placeholder "Enter your Mobile Number"]\r\n										</div>\r\n									</div>\r\n									<div class="form-group">\r\n										<label for="inputPassword3" class="col-sm-3 control-label">Comment </label>\r\n										\r\n										<div class="col-sm-9">\r\n										\r\n											[textarea* textarea-411 4x3 placeholder "Enter your Comment"]\r\n										</div>\r\n									</div>\r\n								  <div class="form-group">\r\n									<div class="col-sm-12">\r\n									  [submit "submit "]\r\n									</div>\r\n								  </div>\r\n								</form>\nabhp "[your-subject]"\n[your-name] <vijay.punuru@gmail.com>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on abhp (http://localhost/abhp)\nvijay.punuru@gmail.com\nReply-To: [your-email]\n\n\n\n\nabhp "[your-subject]"\nabhp <vijay.punuru@gmail.com>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on abhp (http://localhost/abhp)\n[your-email]\nReply-To: vijay.punuru@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Enquiry form', '', 'publish', 'closed', 'closed', '', 'enquiry-form', '', '', '2016-12-20 10:43:07', '2016-12-20 10:43:07', '', 0, 'http://localhost/abhp/?post_type=wpcf7_contact_form&#038;p=44', 0, 'wpcf7_contact_form', '', 0),
(45, 1, '2016-12-20 07:27:47', '2016-12-20 07:27:47', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:23:"acf-options-home-slider";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'home slider', 'home-slider', 'publish', 'closed', 'closed', '', 'group_5858dd397d1d3', '', '', '2016-12-20 07:27:48', '2016-12-20 07:27:48', '', 0, 'http://localhost/abhp/?post_type=acf-field-group&#038;p=45', 0, 'acf-field-group', '', 0),
(46, 1, '2016-12-20 07:27:47', '2016-12-20 07:27:47', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'swami image', 'swami_image', 'publish', 'closed', 'closed', '', 'field_5858dd40ed0a7', '', '', '2016-12-20 07:27:47', '2016-12-20 07:27:47', '', 45, 'http://localhost/abhp/?post_type=acf-field&p=46', 0, 'acf-field', '', 0),
(47, 1, '2016-12-20 07:27:48', '2016-12-20 07:27:48', 'a:9:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";}', 'slider images', 'slider_images', 'publish', 'closed', 'closed', '', 'field_5858dd51ed0a8', '', '', '2016-12-20 07:27:48', '2016-12-20 07:27:48', '', 45, 'http://localhost/abhp/?post_type=acf-field&p=47', 1, 'acf-field', '', 0),
(48, 1, '2016-12-20 07:27:48', '2016-12-20 07:27:48', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_5858dd5fed0a9', '', '', '2016-12-20 07:27:48', '2016-12-20 07:27:48', '', 47, 'http://localhost/abhp/?post_type=acf-field&p=48', 0, 'acf-field', '', 0),
(49, 1, '2016-12-20 07:32:24', '2016-12-20 07:32:24', '', 'banner1', '', 'inherit', 'open', 'closed', '', 'banner1', '', '', '2016-12-20 07:32:24', '2016-12-20 07:32:24', '', 0, 'http://localhost/abhp/wp-content/uploads/2016/12/banner1.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2016-12-20 07:32:33', '2016-12-20 07:32:33', '', 'banner2', '', 'inherit', 'open', 'closed', '', 'banner2', '', '', '2016-12-20 07:32:33', '2016-12-20 07:32:33', '', 0, 'http://localhost/abhp/wp-content/uploads/2016/12/banner2.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2016-12-20 07:32:44', '2016-12-20 07:32:44', '', 'banner4', '', 'inherit', 'open', 'closed', '', 'banner4', '', '', '2016-12-20 07:32:44', '2016-12-20 07:32:44', '', 0, 'http://localhost/abhp/wp-content/uploads/2016/12/banner4.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2016-12-20 07:34:56', '2016-12-20 07:34:56', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"6";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'marquee', 'marquee', 'publish', 'closed', 'closed', '', 'group_5858def36f440', '', '', '2016-12-20 07:34:57', '2016-12-20 07:34:57', '', 0, 'http://localhost/abhp/?post_type=acf-field-group&#038;p=52', 0, 'acf-field-group', '', 0),
(53, 1, '2016-12-20 07:34:56', '2016-12-20 07:34:56', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'marquee', 'marquee', 'publish', 'closed', 'closed', '', 'field_5858defd46695', '', '', '2016-12-20 07:34:56', '2016-12-20 07:34:56', '', 52, 'http://localhost/abhp/?post_type=acf-field&p=53', 0, 'acf-field', '', 0),
(54, 1, '2016-12-20 07:36:08', '2016-12-20 07:36:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-12-20 07:36:08', '2016-12-20 07:36:08', '', 6, 'http://localhost/abhp/2016/12/20/6-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2016-12-20 07:40:33', '2016-12-20 07:40:33', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:17:"acf-options-sevas";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'sevas', 'sevas', 'publish', 'closed', 'closed', '', 'group_5858e01ac6e2e', '', '', '2016-12-20 07:44:58', '2016-12-20 07:44:58', '', 0, 'http://localhost/abhp/?post_type=acf-field-group&#038;p=55', 0, 'acf-field-group', '', 0),
(56, 1, '2016-12-20 07:40:33', '2016-12-20 07:40:33', 'a:9:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";}', 'sevas', 'sevas', 'publish', 'closed', 'closed', '', 'field_5858e02067a05', '', '', '2016-12-20 07:44:58', '2016-12-20 07:44:58', '', 55, 'http://localhost/abhp/?post_type=acf-field&#038;p=56', 0, 'acf-field', '', 0),
(57, 1, '2016-12-20 07:40:33', '2016-12-20 07:40:33', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_5858e02c67a06', '', '', '2016-12-20 07:40:33', '2016-12-20 07:40:33', '', 56, 'http://localhost/abhp/?post_type=acf-field&p=57', 0, 'acf-field', '', 0),
(58, 1, '2016-12-20 07:40:33', '2016-12-20 07:40:33', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_5858e03567a07', '', '', '2016-12-20 07:40:33', '2016-12-20 07:40:33', '', 56, 'http://localhost/abhp/?post_type=acf-field&p=58', 1, 'acf-field', '', 0),
(59, 1, '2016-12-20 07:40:33', '2016-12-20 07:40:33', 'a:12:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:7:"wpautop";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'sevas list', 'sevas_list', 'publish', 'closed', 'closed', '', 'field_5858e04167a08', '', '', '2016-12-20 07:44:58', '2016-12-20 07:44:58', '', 56, 'http://localhost/abhp/?post_type=acf-field&#038;p=59', 2, 'acf-field', '', 0),
(60, 1, '2016-12-20 07:41:20', '2016-12-20 07:41:20', '', 'Block1-Img', '', 'inherit', 'open', 'closed', '', 'block1-img', '', '', '2016-12-20 07:41:20', '2016-12-20 07:41:20', '', 0, 'http://localhost/abhp/wp-content/uploads/2016/12/Block1-Img.gif', 0, 'attachment', 'image/gif', 0),
(61, 1, '2016-12-20 07:56:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-12-20 07:56:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/abhp/?post_type=acf-field-group&p=61', 0, 'acf-field-group', '', 0),
(62, 1, '2016-12-20 07:58:27', '2016-12-20 07:58:27', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:13:"temple_update";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'temple updates', 'temple-updates', 'publish', 'closed', 'closed', '', 'group_5858e475b2c48', '', '', '2016-12-20 07:58:27', '2016-12-20 07:58:27', '', 0, 'http://localhost/abhp/?post_type=acf-field-group&#038;p=62', 0, 'acf-field-group', '', 0),
(63, 1, '2016-12-20 07:58:27', '2016-12-20 07:58:27', 'a:12:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:7:"wpautop";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'updates', 'updates', 'publish', 'closed', 'closed', '', 'field_5858e48a11636', '', '', '2016-12-20 07:58:27', '2016-12-20 07:58:27', '', 62, 'http://localhost/abhp/?post_type=acf-field&p=63', 0, 'acf-field', '', 0),
(64, 1, '2016-12-20 07:59:11', '2016-12-20 07:59:11', '', 'Annaprasadam', '', 'publish', 'closed', 'closed', '', '64', '', '', '2016-12-20 08:04:24', '2016-12-20 08:04:24', '', 0, 'http://localhost/abhp/?post_type=temple_update&#038;p=64', 0, 'temple_update', '', 0),
(65, 1, '2016-12-20 08:02:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-12-20 08:02:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/abhp/?post_type=temple_update&p=65', 0, 'temple_update', '', 0),
(66, 1, '2016-12-20 08:05:31', '2016-12-20 08:05:31', '', 'Darshanam', '', 'publish', 'closed', 'closed', '', 'darshanam', '', '', '2016-12-20 08:05:53', '2016-12-20 08:05:53', '', 0, 'http://localhost/abhp/?post_type=temple_update&#038;p=66', 0, 'temple_update', '', 0),
(67, 1, '2016-12-20 08:10:27', '2016-12-20 08:10:27', 'NEWS &amp; EVENTS\r\n\r\nNEWS &amp; EVENTS\r\n\r\nNEWS &amp; EVENTS\r\n\r\nNEWS &amp; EVENTS\r\n\r\nNEWS &amp; EVENTS\r\n\r\nNEWS &amp; EVENTS\r\n\r\nNEWS &amp; EVENTS\r\n\r\nNEWS &amp; EVENTS', 'Panchangam', '', 'publish', 'closed', 'closed', '', '67', '', '', '2016-12-20 08:38:35', '2016-12-20 08:38:35', '', 0, 'http://localhost/abhp/?post_type=siddhanta_panchangam&#038;p=67', 0, 'siddhanta_panchangam', '', 0),
(68, 1, '2016-12-20 08:14:08', '2016-12-20 08:14:08', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:20:"siddhanta_panchangam";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Siddhanta Panchangam', 'siddhanta-panchangam', 'publish', 'closed', 'closed', '', 'group_5858e82f92109', '', '', '2016-12-20 08:40:35', '2016-12-20 08:40:35', '', 0, 'http://localhost/abhp/?post_type=acf-field-group&#038;p=68', 0, 'acf-field-group', '', 0);
INSERT INTO `ab_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(69, 1, '2016-12-20 08:14:08', '2016-12-20 08:14:08', 'a:12:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:7:"wpautop";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Panchangam', 'panchangam', 'publish', 'closed', 'closed', '', 'field_5858e83945a07', '', '', '2016-12-20 08:40:35', '2016-12-20 08:40:35', '', 68, 'http://localhost/abhp/?post_type=acf-field&#038;p=69', 0, 'acf-field', '', 0),
(70, 1, '2016-12-20 08:18:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-12-20 08:18:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/abhp/?post_type=siddhanta_panchangam&p=70', 0, 'siddhanta_panchangam', '', 0),
(71, 1, '2016-12-20 08:42:39', '2016-12-20 08:42:39', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:13:"day_schedules";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Day Schedules', 'day-schedules', 'publish', 'closed', 'closed', '', 'group_5858eee5e0ad2', '', '', '2016-12-20 08:42:39', '2016-12-20 08:42:39', '', 0, 'http://localhost/abhp/?post_type=acf-field-group&#038;p=71', 0, 'acf-field-group', '', 0),
(72, 1, '2016-12-20 08:42:39', '2016-12-20 08:42:39', 'a:12:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:7:"wpautop";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Schedules', 'schedules', 'publish', 'closed', 'closed', '', 'field_5858eeec825c9', '', '', '2016-12-20 08:42:39', '2016-12-20 08:42:39', '', 71, 'http://localhost/abhp/?post_type=acf-field&p=72', 0, 'acf-field', '', 0),
(73, 1, '2016-12-20 08:45:14', '2016-12-20 08:45:14', '', 'Day Schedules', '', 'publish', 'closed', 'closed', '', 'day-schedules', '', '', '2016-12-20 08:45:14', '2016-12-20 08:45:14', '', 0, 'http://localhost/abhp/?post_type=day_schedules&#038;p=73', 0, 'day_schedules', '', 0),
(74, 1, '2016-12-20 08:53:55', '2016-12-20 08:53:55', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:25:"acf-options-schemessocial";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'SCHEMES/SOCIAL', 'schemessocial', 'publish', 'closed', 'closed', '', 'group_5858f12999eb4', '', '', '2016-12-20 08:53:56', '2016-12-20 08:53:56', '', 0, 'http://localhost/abhp/?post_type=acf-field-group&#038;p=74', 0, 'acf-field-group', '', 0),
(75, 1, '2016-12-20 08:53:55', '2016-12-20 08:53:55', 'a:9:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";}', 'schemes social', 'schemes_social', 'publish', 'closed', 'closed', '', 'field_5858f13db1341', '', '', '2016-12-20 08:53:55', '2016-12-20 08:53:55', '', 74, 'http://localhost/abhp/?post_type=acf-field&p=75', 0, 'acf-field', '', 0),
(76, 1, '2016-12-20 08:53:55', '2016-12-20 08:53:55', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_5858f158b1342', '', '', '2016-12-20 08:53:55', '2016-12-20 08:53:55', '', 75, 'http://localhost/abhp/?post_type=acf-field&p=76', 0, 'acf-field', '', 0),
(77, 1, '2016-12-20 08:53:55', '2016-12-20 08:53:55', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_5858f172b1343', '', '', '2016-12-20 08:53:55', '2016-12-20 08:53:55', '', 75, 'http://localhost/abhp/?post_type=acf-field&p=77', 1, 'acf-field', '', 0),
(78, 1, '2016-12-20 08:53:56', '2016-12-20 08:53:56', 'a:12:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:7:"wpautop";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'sevas list', 'seva_list', 'publish', 'closed', 'closed', '', 'field_5858f17fb1344', '', '', '2016-12-20 08:53:56', '2016-12-20 08:53:56', '', 75, 'http://localhost/abhp/?post_type=acf-field&p=78', 2, 'acf-field', '', 0),
(79, 1, '2016-12-20 08:54:59', '2016-12-20 08:54:59', '', 'Block7-Img', '', 'inherit', 'open', 'closed', '', 'block7-img', '', '', '2016-12-20 08:54:59', '2016-12-20 08:54:59', '', 0, 'http://localhost/abhp/wp-content/uploads/2016/12/Block7-Img.gif', 0, 'attachment', 'image/gif', 0),
(80, 1, '2016-12-20 08:55:43', '2016-12-20 08:55:43', '', 'Block5-Img', '', 'inherit', 'open', 'closed', '', 'block5-img', '', '', '2016-12-20 08:55:43', '2016-12-20 08:55:43', '', 0, 'http://localhost/abhp/wp-content/uploads/2016/12/Block5-Img.gif', 0, 'attachment', 'image/gif', 0),
(81, 1, '2016-12-20 08:57:35', '2016-12-20 08:57:35', '', 'swami1111', '', 'inherit', 'open', 'closed', '', 'swami1111', '', '', '2016-12-20 08:57:35', '2016-12-20 08:57:35', '', 6, 'http://localhost/abhp/wp-content/uploads/2016/12/swami1111.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2016-12-20 09:04:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-12-20 09:04:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/abhp/?post_type=managements_members&p=82', 0, 'managements_members', '', 0),
(83, 1, '2016-12-20 09:08:21', '2016-12-20 09:08:21', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:19:"managements_members";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Managements members', 'managements-members', 'publish', 'closed', 'closed', '', 'group_5858f42d9783f', '', '', '2016-12-20 09:09:03', '2016-12-20 09:09:03', '', 0, 'http://localhost/abhp/?post_type=acf-field-group&#038;p=83', 0, 'acf-field-group', '', 0),
(85, 1, '2016-12-20 09:08:21', '2016-12-20 09:08:21', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'role', 'role', 'publish', 'closed', 'closed', '', 'field_5858f4eda668b', '', '', '2016-12-20 09:09:03', '2016-12-20 09:09:03', '', 83, 'http://localhost/abhp/?post_type=acf-field&#038;p=85', 0, 'acf-field', '', 0),
(86, 1, '2016-12-20 09:08:21', '2016-12-20 09:08:21', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_5858f4f3a668c', '', '', '2016-12-20 09:09:03', '2016-12-20 09:09:03', '', 83, 'http://localhost/abhp/?post_type=acf-field&#038;p=86', 1, 'acf-field', '', 0),
(87, 1, '2016-12-20 09:08:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-12-20 09:08:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/abhp/?post_type=managements_members&p=87', 0, 'managements_members', '', 0),
(88, 1, '2016-12-20 09:09:38', '2016-12-20 09:09:38', '', 'swami', '', 'publish', 'closed', 'closed', '', 'swami', '', '', '2016-12-20 09:09:38', '2016-12-20 09:09:38', '', 0, 'http://localhost/abhp/?post_type=managements_members&#038;p=88', 0, 'managements_members', '', 0),
(89, 1, '2016-12-20 09:14:09', '2016-12-20 09:14:09', '', 'swami', '', 'publish', 'closed', 'closed', '', 'swami-2', '', '', '2016-12-20 09:14:09', '2016-12-20 09:14:09', '', 0, 'http://localhost/abhp/?post_type=managements_members&#038;p=89', 0, 'managements_members', '', 0),
(90, 1, '2016-12-20 09:24:16', '2016-12-20 09:24:16', '', 'swami', '', 'trash', 'closed', 'closed', '', 'swami-3__trashed', '', '', '2016-12-20 09:28:44', '2016-12-20 09:28:44', '', 0, 'http://localhost/abhp/?post_type=managements_members&#038;p=90', 0, 'managements_members', '', 0),
(91, 1, '2016-12-20 09:24:31', '2016-12-20 09:24:31', '', 'sami', '', 'trash', 'closed', 'closed', '', 'sami__trashed', '', '', '2016-12-20 09:28:46', '2016-12-20 09:28:46', '', 0, 'http://localhost/abhp/?post_type=managements_members&#038;p=91', 0, 'managements_members', '', 0),
(92, 1, '2016-12-20 09:30:38', '2016-12-20 09:30:38', '<section class="services">\n<div class="container-fluid">\n<div class="services-1">\n<div class="row">\n<div class="col-xs-12 col-sm-6 col-md-6">\n<div class="services-1"><figure><img src="http://localhost/abhp/wp-content/themes/abhp/images/Gopuram.jpg" alt="Gopuram " /></figure>\n<h4>What is Lorem Ipsum?</h4>\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n</div>\n</div>\n<div class="col-xs-12 col-sm-6 col-md-6">\n<div class="services-1"><figure><img src="http://localhost/abhp/wp-content/themes/abhp/images/swami1111.jpg" alt="swami1111 " /></figure>\n<h4>What is Lorem Ipsum?</h4>\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n</div>\n</div>\n</div>\n<div class="row">\n<div class="col-xs-12 col-sm-6 col-md-6">\n<div class="services-1"><figure><img src="http://localhost/abhp/wp-content/themes/abhp/images/Gopuram.jpg" alt="Gopuram " /></figure>\n<h4>What is Lorem Ipsum?</h4>\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n</div>\n</div>\n<div class="col-xs-12 col-sm-6 col-md-6">\n<div class="services-1"><figure><img src="http://localhost/abhp/wp-content/themes/abhp/images/swami1111.jpg" alt="swami1111 " /></figure>\n<h4>What is Lorem Ipsum?</h4>\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>', 'Services', '', 'inherit', 'closed', 'closed', '', '12-autosave-v1', '', '', '2016-12-20 09:30:38', '2016-12-20 09:30:38', '', 12, 'http://localhost/abhp/2016/12/20/12-autosave-v1/', 0, 'revision', '', 0),
(93, 1, '2016-12-20 09:31:34', '2016-12-20 09:31:34', '<div class="services-1">\r\n<div class="row">\r\n<div class="col-xs-12 col-sm-6 col-md-6">\r\n<div class="services-1"><figure><img src="http://localhost/abhp/wp-content/themes/abhp/images/Gopuram.jpg" alt="Gopuram " /></figure>\r\n<h4>What is Lorem Ipsum?</h4>\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n</div>\r\n<div class="col-xs-12 col-sm-6 col-md-6">\r\n<div class="services-1"><figure><img src="http://localhost/abhp/wp-content/themes/abhp/images/swami1111.jpg" alt="swami1111 " /></figure>\r\n<h4>What is Lorem Ipsum?</h4>\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-xs-12 col-sm-6 col-md-6">\r\n<div class="services-1"><figure><img src="http://localhost/abhp/wp-content/themes/abhp/images/Gopuram.jpg" alt="Gopuram " /></figure>\r\n<h4>What is Lorem Ipsum?</h4>\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n</div>\r\n<div class="col-xs-12 col-sm-6 col-md-6">\r\n<div class="services-1"><figure><img src="http://localhost/abhp/wp-content/themes/abhp/images/swami1111.jpg" alt="swami1111 " /></figure>\r\n<h4>What is Lorem Ipsum?</h4>\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Services', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-12-20 09:31:34', '2016-12-20 09:31:34', '', 12, 'http://localhost/abhp/2016/12/20/12-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2016-12-20 09:34:24', '2016-12-20 09:34:24', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:11:"news_events";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'News and Events', 'news-and-events', 'publish', 'closed', 'closed', '', 'group_5858faf392eb9', '', '', '2016-12-20 09:34:29', '2016-12-20 09:34:29', '', 0, 'http://localhost/abhp/?post_type=acf-field-group&#038;p=94', 0, 'acf-field-group', '', 0),
(95, 1, '2016-12-20 09:34:24', '2016-12-20 09:34:24', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_5858fb01ae4f9', '', '', '2016-12-20 09:34:24', '2016-12-20 09:34:24', '', 94, 'http://localhost/abhp/?post_type=acf-field&p=95', 0, 'acf-field', '', 0),
(97, 1, '2016-12-20 09:35:13', '2016-12-20 09:35:13', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into', 'What is Lorem Ipsum?', '', 'publish', 'closed', 'closed', '', 'what-is-lorem-ipsum', '', '', '2016-12-20 09:38:49', '2016-12-20 09:38:49', '', 0, 'http://localhost/abhp/?post_type=news_events&#038;p=97', 0, 'news_events', '', 0),
(98, 1, '2016-12-20 09:35:10', '2016-12-20 09:35:10', '', 'Gopuram', '', 'inherit', 'open', 'closed', '', 'gopuram', '', '', '2016-12-20 09:35:10', '2016-12-20 09:35:10', '', 97, 'http://localhost/abhp/wp-content/uploads/2016/12/Gopuram.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2016-12-20 09:39:49', '2016-12-20 09:39:49', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into', 'What is Lorem Ipsum?', '', 'publish', 'closed', 'closed', '', 'what-is-lorem-ipsum-2', '', '', '2016-12-20 09:42:24', '2016-12-20 09:42:24', '', 0, 'http://localhost/abhp/?post_type=news_events&#038;p=99', 0, 'news_events', '', 0),
(100, 1, '2016-12-20 09:43:40', '2016-12-20 09:43:40', '<section class="history">\r\n<div class="container">\r\n<div class="row">\r\n<div class="history_title">\r\n<h3>TEMPLE HISTORY :</h3>\r\n</div>\r\n</div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n<div class="title1"><article>\r\n<h4>THE DIVINE STRUCTURE OF THE TIRUMALA MAIN TEMPLE</h4>\r\n<ul>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n 	<li>Lord Sri Venkateswara, also known as Srinivasa, Balaji, and Veṅkaṭachalapati, made Tirumala his abode five thousand years ago. Even before him, it was Lord Varahaswam</li>\r\n</ul>\r\n</article></div>\r\n</div>\r\n</section>', 'General Information', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2016-12-20 09:43:40', '2016-12-20 09:43:40', '', 20, 'http://localhost/abhp/2016/12/20/20-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2016-12-20 09:47:15', '2016-12-20 09:47:15', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:10:"camps_news";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Camps', 'camps', 'publish', 'closed', 'closed', '', 'group_5858fe15797f3', '', '', '2016-12-20 09:47:20', '2016-12-20 09:47:20', '', 0, 'http://localhost/abhp/?post_type=acf-field-group&#038;p=101', 0, 'acf-field-group', '', 0),
(102, 1, '2016-12-20 09:47:15', '2016-12-20 09:47:15', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'images', 'images', 'publish', 'closed', 'closed', '', 'field_5858fe1ba31a3', '', '', '2016-12-20 09:47:15', '2016-12-20 09:47:15', '', 101, 'http://localhost/abhp/?post_type=acf-field&p=102', 0, 'acf-field', '', 0),
(103, 1, '2016-12-20 09:48:09', '2016-12-20 09:48:09', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into', 'What is Lorem Ipsum?', '', 'publish', 'closed', 'closed', '', 'what-is-lorem-ipsum', '', '', '2016-12-20 09:48:09', '2016-12-20 09:48:09', '', 0, 'http://localhost/abhp/?post_type=camps_news&#038;p=103', 0, 'camps_news', '', 0),
(104, 1, '2016-12-20 09:51:54', '2016-12-20 09:51:54', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into', 'What is Lorem Ipsum?', '', 'publish', 'closed', 'closed', '', 'what-is-lorem-ipsum-2', '', '', '2016-12-20 09:52:41', '2016-12-20 09:52:41', '', 0, 'http://localhost/abhp/?post_type=camps_news&#038;p=104', 0, 'camps_news', '', 0),
(105, 1, '2016-12-20 09:59:16', '2016-12-20 09:59:16', '<div class="address">\r\n<h5>TEMPLE CONTACT ADDRESS :</h5>\r\nSRI HANUMADDEKSHA PEETAM TRUST\r\n\r\nAKHILA BHARATHA SRI HANUMADDEKSHA SEVA SAMITHI\r\n\r\nD.NO: 4-1-163\r\n\r\nNEAR SYED APPALASWAMY COLLEGE\r\n\r\nOPPOSITE : MILK PROJECT\r\n\r\nVIJAYAWADA - 520 009.\r\n\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2016-12-20 09:59:16', '2016-12-20 09:59:16', '', 18, 'http://localhost/abhp/2016/12/20/18-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2016-12-20 11:01:17', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGh1bWJuYWlscyIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcXG5leHRnZW4tZ2FsbGVyeVxccHJvZHVjdHNcXHBob3RvY3JhdGlfbmV4dGdlblxcbW9kdWxlc1xcbmV4dGdlbl9iYXNpY19nYWxsZXJ5XFxzdGF0aWNcXHRodW1iX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAwMCwiYWxpYXNlcyI6WyJiYXNpY190aHVtYm5haWwiLCJiYXNpY190aHVtYm5haWxzIiwibmV4dGdlbl9iYXNpY190aHVtYm5haWxzIl0sIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjYyIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImltYWdlc19wZXJfcGFnZSI6IjIwIiwibnVtYmVyX29mX2NvbHVtbnMiOjAsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsInNob3dfYWxsX2luX2xpZ2h0Ym94IjowLCJhamF4X3BhZ2luYXRpb24iOjAsInVzZV9pbWFnZWJyb3dzZXJfZWZmZWN0IjowLCJ0ZW1wbGF0ZSI6IiIsImRpc3BsYXlfbm9faW1hZ2VzX2Vycm9yIjoxLCJkaXNhYmxlX3BhZ2luYXRpb24iOjAsInNob3dfc2xpZGVzaG93X2xpbmsiOjEsInNsaWRlc2hvd19saW5rX3RleHQiOiJbU2hvdyBzbGlkZXNob3ddIiwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6IjEwMCIsInRodW1ibmFpbF9jcm9wIjoxLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic Thumbnails', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-20 11:01:17', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGh1bWJuYWlscyIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcXG5leHRnZW4tZ2FsbGVyeVxccHJvZHVjdHNcXHBob3RvY3JhdGlfbmV4dGdlblxcbW9kdWxlc1xcbmV4dGdlbl9iYXNpY19nYWxsZXJ5XFxzdGF0aWNcXHRodW1iX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAwMCwiYWxpYXNlcyI6WyJiYXNpY190aHVtYm5haWwiLCJiYXNpY190aHVtYm5haWxzIiwibmV4dGdlbl9iYXNpY190aHVtYm5haWxzIl0sIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjYyIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImltYWdlc19wZXJfcGFnZSI6IjIwIiwibnVtYmVyX29mX2NvbHVtbnMiOjAsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsInNob3dfYWxsX2luX2xpZ2h0Ym94IjowLCJhamF4X3BhZ2luYXRpb24iOjAsInVzZV9pbWFnZWJyb3dzZXJfZWZmZWN0IjowLCJ0ZW1wbGF0ZSI6IiIsImRpc3BsYXlfbm9faW1hZ2VzX2Vycm9yIjoxLCJkaXNhYmxlX3BhZ2luYXRpb24iOjAsInNob3dfc2xpZGVzaG93X2xpbmsiOjEsInNsaWRlc2hvd19saW5rX3RleHQiOiJbU2hvdyBzbGlkZXNob3ddIiwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6IjEwMCIsInRodW1ibmFpbF9jcm9wIjoxLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?post_type=display_type&p=106', 0, 'display_type', '', 0),
(107, 1, '2016-12-20 11:01:18', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2xpZGVzaG93IiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2dhbGxlcnlcXHN0YXRpY1xcc2xpZGVzaG93X3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAxMCwiYWxpYXNlcyI6WyJiYXNpY19zbGlkZXNob3ciLCJuZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjYyIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImdhbGxlcnlfd2lkdGgiOjYwMCwiZ2FsbGVyeV9oZWlnaHQiOjQwMCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwiY3ljbGVfaW50ZXJ2YWwiOjEwLCJjeWNsZV9lZmZlY3QiOiJmYWRlIiwiZWZmZWN0X2NvZGUiOiJjbGFzcz1cIm5nZy1mYW5jeWJveFwiIHJlbD1cIiVHQUxMRVJZX05BTUUlXCIiLCJzaG93X3RodW1ibmFpbF9saW5rIjoxLCJ0aHVtYm5haWxfbGlua190ZXh0IjoiW1Nob3cgdGh1bWJuYWlsc10iLCJ0ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJoaWRkZW5fZnJvbV9pZ3ciOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 'NextGEN Basic Slideshow', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-20 11:01:18', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2xpZGVzaG93IiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2dhbGxlcnlcXHN0YXRpY1xcc2xpZGVzaG93X3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAxMCwiYWxpYXNlcyI6WyJiYXNpY19zbGlkZXNob3ciLCJuZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjYyIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImdhbGxlcnlfd2lkdGgiOjYwMCwiZ2FsbGVyeV9oZWlnaHQiOjQwMCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwiY3ljbGVfaW50ZXJ2YWwiOjEwLCJjeWNsZV9lZmZlY3QiOiJmYWRlIiwiZWZmZWN0X2NvZGUiOiJjbGFzcz1cIm5nZy1mYW5jeWJveFwiIHJlbD1cIiVHQUxMRVJZX05BTUUlXCIiLCJzaG93X3RodW1ibmFpbF9saW5rIjoxLCJ0aHVtYm5haWxfbGlua190ZXh0IjoiW1Nob3cgdGh1bWJuYWlsc10iLCJ0ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJoaWRkZW5fZnJvbV9pZ3ciOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 0, 'http://localhost/abhp/?post_type=display_type&p=107', 0, 'display_type', '', 0),
(108, 1, '2016-12-20 11:01:19', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgSW1hZ2VCcm93c2VyIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3Nlclxcc3RhdGljXFxwcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwMjAsImFsaWFzZXMiOlsiYmFzaWNfaW1hZ2Vicm93c2VyIiwiaW1hZ2Vicm93c2VyIiwibmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXIiXSwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXIiLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS42MiIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ0ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJoaWRkZW5fZnJvbV9pZ3ciOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 'NextGEN Basic ImageBrowser', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-20 11:01:19', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgSW1hZ2VCcm93c2VyIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3Nlclxcc3RhdGljXFxwcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwMjAsImFsaWFzZXMiOlsiYmFzaWNfaW1hZ2Vicm93c2VyIiwiaW1hZ2Vicm93c2VyIiwibmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXIiXSwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXIiLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS42MiIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ0ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJoaWRkZW5fZnJvbV9pZ3ciOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 0, 'http://localhost/abhp/?post_type=display_type&p=108', 0, 'display_type', '', 0),
(109, 1, '2016-12-20 11:01:20', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2luZ2xlUGljIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpY1xcc3RhdGljXFxwcmV2aWV3LmdpZiIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwNjAsImhpZGRlbl9mcm9tX3VpIjp0cnVlLCJoaWRkZW5fZnJvbV9pZ3ciOnRydWUsImFsaWFzZXMiOlsiYmFzaWNfc2luZ2xlcGljIiwic2luZ2xlcGljIiwibmV4dGdlbl9iYXNpY19zaW5nbGVwaWMiXSwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19zaW5nbGVwaWMiLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS42MiIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ3aWR0aCI6IiIsImhlaWdodCI6IiIsIm1vZGUiOiIiLCJkaXNwbGF5X3dhdGVybWFyayI6MCwiZGlzcGxheV9yZWZsZWN0aW9uIjowLCJmbG9hdCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsInF1YWxpdHkiOjEwMCwiY3JvcCI6MCwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN Basic SinglePic', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-20 11:01:20', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2luZ2xlUGljIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpY1xcc3RhdGljXFxwcmV2aWV3LmdpZiIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwNjAsImhpZGRlbl9mcm9tX3VpIjp0cnVlLCJoaWRkZW5fZnJvbV9pZ3ciOnRydWUsImFsaWFzZXMiOlsiYmFzaWNfc2luZ2xlcGljIiwic2luZ2xlcGljIiwibmV4dGdlbl9iYXNpY19zaW5nbGVwaWMiXSwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19zaW5nbGVwaWMiLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS42MiIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ3aWR0aCI6IiIsImhlaWdodCI6IiIsIm1vZGUiOiIiLCJkaXNwbGF5X3dhdGVybWFyayI6MCwiZGlzcGxheV9yZWZsZWN0aW9uIjowLCJmbG9hdCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsInF1YWxpdHkiOjEwMCwiY3JvcCI6MCwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, 'http://localhost/abhp/?post_type=display_type&p=109', 0, 'display_type', '', 0),
(110, 1, '2016-12-20 11:01:20', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGFnQ2xvdWQiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5leHRnZW5fYmFzaWNfdGFnY2xvdWRcXHN0YXRpY1xccHJldmlldy5naWYiLCJkZWZhdWx0X3NvdXJjZSI6InRhZ3MiLCJ2aWV3X29yZGVyIjoxMDEwMCwiYWxpYXNlcyI6WyJiYXNpY190YWdjbG91ZCIsInRhZ2Nsb3VkIiwibmV4dGdlbl9iYXNpY190YWdjbG91ZCJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RhZ2Nsb3VkIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuNjIiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsIm51bWJlciI6NDUsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJoaWRkZW5fZnJvbV9pZ3ciOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 'NextGEN Basic TagCloud', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-20 11:01:20', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGFnQ2xvdWQiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5leHRnZW5fYmFzaWNfdGFnY2xvdWRcXHN0YXRpY1xccHJldmlldy5naWYiLCJkZWZhdWx0X3NvdXJjZSI6InRhZ3MiLCJ2aWV3X29yZGVyIjoxMDEwMCwiYWxpYXNlcyI6WyJiYXNpY190YWdjbG91ZCIsInRhZ2Nsb3VkIiwibmV4dGdlbl9iYXNpY190YWdjbG91ZCJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RhZ2Nsb3VkIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuNjIiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsIm51bWJlciI6NDUsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJoaWRkZW5fZnJvbV9pZ3ciOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 0, 'http://localhost/abhp/?post_type=display_type&p=110', 0, 'display_type', '', 0),
(111, 1, '2016-12-20 11:01:20', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgQ29tcGFjdCBBbGJ1bSIsImVudGl0eV90eXBlcyI6WyJhbGJ1bSIsImdhbGxlcnkiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5leHRnZW5fYmFzaWNfYWxidW1cXHN0YXRpY1xcY29tcGFjdF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMDAsImFsaWFzZXMiOlsiYmFzaWNfY29tcGFjdF9hbGJ1bSIsIm5leHRnZW5fYmFzaWNfYWxidW0iLCJiYXNpY19hbGJ1bV9jb21wYWN0IiwiY29tcGFjdF9hbGJ1bSJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2NvbXBhY3RfYWxidW0iLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS42MiIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOjAsImVuYWJsZV9icmVhZGNydW1icyI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJlbmFibGVfZGVzY3JpcHRpb25zIjowLCJ0ZW1wbGF0ZSI6IiIsIm9wZW5fZ2FsbGVyeV9pbl9saWdodGJveCI6MCwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJoaWRkZW5fZnJvbV9pZ3ciOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 'NextGEN Basic Compact Album', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-20 11:01:20', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgQ29tcGFjdCBBbGJ1bSIsImVudGl0eV90eXBlcyI6WyJhbGJ1bSIsImdhbGxlcnkiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5leHRnZW5fYmFzaWNfYWxidW1cXHN0YXRpY1xcY29tcGFjdF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMDAsImFsaWFzZXMiOlsiYmFzaWNfY29tcGFjdF9hbGJ1bSIsIm5leHRnZW5fYmFzaWNfYWxidW0iLCJiYXNpY19hbGJ1bV9jb21wYWN0IiwiY29tcGFjdF9hbGJ1bSJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2NvbXBhY3RfYWxidW0iLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS42MiIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOjAsImVuYWJsZV9icmVhZGNydW1icyI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJlbmFibGVfZGVzY3JpcHRpb25zIjowLCJ0ZW1wbGF0ZSI6IiIsIm9wZW5fZ2FsbGVyeV9pbl9saWdodGJveCI6MCwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJoaWRkZW5fZnJvbV9pZ3ciOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 0, 'http://localhost/abhp/?post_type=display_type&p=111', 0, 'display_type', '', 0),
(112, 1, '2016-12-20 11:01:21', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgRXh0ZW5kZWQgQWxidW0iLCJlbnRpdHlfdHlwZXMiOlsiYWxidW0iLCJnYWxsZXJ5Il0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2FsYnVtXFxzdGF0aWNcXGV4dGVuZGVkX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJhbGJ1bXMiLCJ2aWV3X29yZGVyIjoxMDIxMCwiYWxpYXNlcyI6WyJiYXNpY19leHRlbmRlZF9hbGJ1bSIsIm5leHRnZW5fYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJleHRlbmRlZF9hbGJ1bSJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2V4dGVuZGVkX2FsYnVtIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuNjIiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZ2FsbGVyaWVzX3Blcl9wYWdlIjowLCJlbmFibGVfYnJlYWRjcnVtYnMiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwiZW5hYmxlX2Rlc2NyaXB0aW9ucyI6MCwidGVtcGxhdGUiOiIiLCJvcGVuX2dhbGxlcnlfaW5fbGlnaHRib3giOjAsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwidGh1bWJuYWlsX3F1YWxpdHkiOjEwMCwidGh1bWJuYWlsX2Nyb3AiOnRydWUsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic Extended Album', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-20 11:01:21', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgRXh0ZW5kZWQgQWxidW0iLCJlbnRpdHlfdHlwZXMiOlsiYWxidW0iLCJnYWxsZXJ5Il0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2FsYnVtXFxzdGF0aWNcXGV4dGVuZGVkX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJhbGJ1bXMiLCJ2aWV3X29yZGVyIjoxMDIxMCwiYWxpYXNlcyI6WyJiYXNpY19leHRlbmRlZF9hbGJ1bSIsIm5leHRnZW5fYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJleHRlbmRlZF9hbGJ1bSJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2V4dGVuZGVkX2FsYnVtIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuNjIiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZ2FsbGVyaWVzX3Blcl9wYWdlIjowLCJlbmFibGVfYnJlYWRjcnVtYnMiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwiZW5hYmxlX2Rlc2NyaXB0aW9ucyI6MCwidGVtcGxhdGUiOiIiLCJvcGVuX2dhbGxlcnlfaW5fbGlnaHRib3giOjAsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwidGh1bWJuYWlsX3F1YWxpdHkiOjEwMCwidGh1bWJuYWlsX2Nyb3AiOnRydWUsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?post_type=display_type&p=112', 0, 'display_type', '', 0),
(113, 1, '2016-12-20 11:02:22', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:02:22', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=113', 0, 'ngg_gallery', '', 0),
(114, 1, '2016-12-20 11:02:26', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:02:26', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=114', 0, 'ngg_pictures', '', 0),
(115, 1, '2016-12-20 11:20:34', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:20:34', '2016-12-20 11:20:34', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=115', 0, 'ngg_pictures', '', 0),
(116, 1, '2016-12-20 11:20:34', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:20:34', '2016-12-20 11:20:34', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=116', 0, 'ngg_gallery', '', 0),
(117, 1, '2016-12-20 11:02:33', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:02:33', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=117', 0, 'ngg_pictures', '', 0),
(118, 1, '2016-12-20 11:20:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:20:35', '2016-12-20 11:20:35', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=118', 0, 'ngg_pictures', '', 0),
(119, 1, '2016-12-20 11:02:42', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:02:42', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=119', 0, 'ngg_pictures', '', 0),
(120, 1, '2016-12-20 11:20:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:20:35', '2016-12-20 11:20:35', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=120', 0, 'ngg_pictures', '', 0),
(121, 1, '2016-12-20 11:02:47', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:02:47', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=121', 0, 'ngg_pictures', '', 0),
(122, 1, '2016-12-20 11:20:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:20:35', '2016-12-20 11:20:35', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=122', 0, 'ngg_pictures', '', 0);
INSERT INTO `ab_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(123, 1, '2016-12-20 11:02:54', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:02:54', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=123', 0, 'ngg_pictures', '', 0),
(124, 1, '2016-12-20 11:20:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:20:35', '2016-12-20 11:20:35', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=124', 0, 'ngg_pictures', '', 0),
(125, 1, '2016-12-20 11:02:58', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:02:58', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=125', 0, 'ngg_pictures', '', 0),
(126, 1, '2016-12-20 11:20:35', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:20:35', '2016-12-20 11:20:35', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=126', 0, 'ngg_pictures', '', 0),
(127, 1, '2016-12-20 11:03:01', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:03:01', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=127', 0, 'ngg_pictures', '', 0),
(128, 1, '2016-12-20 11:20:36', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:20:36', '2016-12-20 11:20:36', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=128', 0, 'ngg_pictures', '', 0),
(129, 1, '2016-12-20 11:03:03', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:03:03', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=129', 0, 'ngg_pictures', '', 0),
(130, 1, '2016-12-20 11:20:36', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:20:36', '2016-12-20 11:20:36', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=130', 0, 'ngg_pictures', '', 0),
(131, 1, '2016-12-20 11:14:33', '2016-12-20 11:14:33', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '30-autosave-v1', '', '', '2016-12-20 11:14:33', '2016-12-20 11:14:33', '', 30, 'http://localhost/abhp/2016/12/20/30-autosave-v1/', 0, 'revision', '', 0),
(132, 1, '2016-12-20 11:07:30', '2016-12-20 11:07:30', '[ngg_images source="galleries" container_ids="1" display_type="photocrati-nextgen_basic_thumbnails" override_thumbnail_settings="0" thumbnail_width="240" thumbnail_height="160" thumbnail_crop="1" images_per_page="20" number_of_columns="0" ajax_pagination="0" show_all_in_lightbox="0" use_imagebrowser_effect="0" show_slideshow_link="1" slideshow_link_text="[Show slideshow]" template="C:\\xampp\\htdocs\\abhp\\wp-content\\plugins\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\ngglegacy\\view\\gallery.php" order_by="sortorder" order_direction="ASC" returns="included" maximum_entity_count="500"]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-12-20 11:07:30', '2016-12-20 11:07:30', '', 30, 'http://localhost/abhp/2016/12/20/30-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2016-12-20 11:07:57', '2016-12-20 11:07:57', '[ngg_images source="galleries" container_ids="1" display_type="photocrati-nextgen_basic_thumbnails" override_thumbnail_settings="0" thumbnail_width="240" thumbnail_height="160" thumbnail_crop="1" images_per_page="20" number_of_columns="0" ajax_pagination="0" show_all_in_lightbox="0" use_imagebrowser_effect="0" show_slideshow_link="1" slideshow_link_text="[Show slideshow]" template="C:\\xampp\\htdocs\\abhp\\wp-content\\plugins\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\ngglegacy\\view\\gallery-carousel.php" order_by="sortorder" order_direction="ASC" returns="included" maximum_entity_count="500"]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-12-20 11:07:57', '2016-12-20 11:07:57', '', 30, 'http://localhost/abhp/2016/12/20/30-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2016-12-20 11:08:52', '2016-12-20 11:08:52', '[ngg_images source="galleries" container_ids="1" display_type="photocrati-nextgen_basic_thumbnails" override_thumbnail_settings="0" thumbnail_width="240" thumbnail_height="160" thumbnail_crop="1" images_per_page="20" number_of_columns="0" ajax_pagination="0" show_all_in_lightbox="0" use_imagebrowser_effect="0" show_slideshow_link="1" slideshow_link_text="[Show slideshow]" template="C:\\xampp\\htdocs\\abhp\\wp-content\\plugins\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\ngglegacy\\view\\gallery.php" order_by="sortorder" order_direction="ASC" returns="included" maximum_entity_count="500"]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-12-20 11:08:52', '2016-12-20 11:08:52', '', 30, 'http://localhost/abhp/2016/12/20/30-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2016-12-20 11:12:01', '2016-12-20 11:12:01', '[ngg_images source="galleries" container_ids="1" display_type="photocrati-nextgen_basic_thumbnails" override_thumbnail_settings="0" thumbnail_width="240" thumbnail_height="160" thumbnail_crop="1" images_per_page="20" number_of_columns="0" ajax_pagination="0" show_all_in_lightbox="0" use_imagebrowser_effect="0" show_slideshow_link="1" slideshow_link_text="[Show slideshow]" template="default" order_by="sortorder" order_direction="ASC" returns="included" maximum_entity_count="500"]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-12-20 11:12:01', '2016-12-20 11:12:01', '', 30, 'http://localhost/abhp/2016/12/20/30-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2016-12-20 11:12:51', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:12:51', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=136', 0, 'ngg_gallery', '', 0),
(137, 1, '2016-12-20 11:12:52', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:12:52', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=137', 0, 'ngg_pictures', '', 0),
(138, 1, '2016-12-20 11:13:12', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:13:12', '2016-12-20 11:13:12', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=138', 0, 'ngg_pictures', '', 0),
(139, 1, '2016-12-20 11:13:12', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:13:12', '2016-12-20 11:13:12', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=139', 0, 'ngg_gallery', '', 0),
(140, 1, '2016-12-20 11:12:53', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:12:53', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=140', 0, 'ngg_pictures', '', 0),
(141, 1, '2016-12-20 11:13:12', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:13:12', '2016-12-20 11:13:12', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=141', 0, 'ngg_pictures', '', 0),
(142, 1, '2016-12-20 11:13:31', '2016-12-20 11:13:31', '[ngg_images source="galleries" container_ids="2" display_type="photocrati-nextgen_basic_thumbnails" override_thumbnail_settings="0" thumbnail_width="240" thumbnail_height="160" thumbnail_crop="1" images_per_page="20" number_of_columns="0" ajax_pagination="0" show_all_in_lightbox="0" use_imagebrowser_effect="0" show_slideshow_link="1" slideshow_link_text="[Show slideshow]" template="C:\\xampp\\htdocs\\abhp\\wp-content\\plugins\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\ngglegacy\\view\\gallery.php" order_by="sortorder" order_direction="ASC" returns="included" maximum_entity_count="500"]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-12-20 11:13:31', '2016-12-20 11:13:31', '', 30, 'http://localhost/abhp/2016/12/20/30-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2016-12-20 11:14:37', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:14:37', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=143', 0, 'ngg_gallery', '', 0),
(144, 1, '2016-12-20 11:14:38', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:14:38', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=144', 0, 'ngg_pictures', '', 0),
(145, 1, '2016-12-20 11:16:38', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:16:38', '2016-12-20 11:16:38', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=145', 0, 'ngg_pictures', '', 0),
(146, 1, '2016-12-20 11:16:38', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:16:38', '2016-12-20 11:16:38', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=146', 0, 'ngg_gallery', '', 0),
(147, 1, '2016-12-20 11:14:40', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:14:40', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=147', 0, 'ngg_pictures', '', 0),
(148, 1, '2016-12-20 11:16:39', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:16:39', '2016-12-20 11:16:39', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=148', 0, 'ngg_pictures', '', 0),
(149, 1, '2016-12-20 11:14:43', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:14:43', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=149', 0, 'ngg_pictures', '', 0),
(150, 1, '2016-12-20 11:16:39', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:16:39', '2016-12-20 11:16:39', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=150', 0, 'ngg_pictures', '', 0),
(151, 1, '2016-12-20 11:14:45', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:14:45', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=151', 0, 'ngg_pictures', '', 0),
(152, 1, '2016-12-20 11:16:39', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-20 11:16:39', '2016-12-20 11:16:39', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/abhp/?p=152', 0, 'ngg_pictures', '', 0),
(153, 1, '2016-12-20 11:15:34', '2016-12-20 11:15:34', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-12-20 11:15:34', '2016-12-20 11:15:34', '', 30, 'http://localhost/abhp/2016/12/20/30-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2016-12-20 11:15:57', '2016-12-20 11:15:57', '[ngg_images source="galleries" container_ids="3" display_type="photocrati-nextgen_basic_thumbnails" override_thumbnail_settings="0" thumbnail_width="240" thumbnail_height="160" thumbnail_crop="1" images_per_page="20" number_of_columns="0" ajax_pagination="0" show_all_in_lightbox="0" use_imagebrowser_effect="0" show_slideshow_link="1" slideshow_link_text="[Show slideshow]" template="C:\\xampp\\htdocs\\abhp\\wp-content\\plugins\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\ngglegacy\\view\\gallery.php" order_by="sortorder" order_direction="ASC" returns="included" maximum_entity_count="500"]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-12-20 11:15:57', '2016-12-20 11:15:57', '', 30, 'http://localhost/abhp/2016/12/20/30-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2016-12-20 11:18:01', '2016-12-20 11:18:01', '[ngg_images source="galleries" container_ids="3" display_type="photocrati-nextgen_basic_thumbnails" override_thumbnail_settings="0" thumbnail_width="240" thumbnail_height="160" thumbnail_crop="1" images_per_page="20" number_of_columns="0" ajax_pagination="0" show_all_in_lightbox="0" use_imagebrowser_effect="0" show_slideshow_link="1" slideshow_link_text="[Show slideshow]" order_by="sortorder" order_direction="ASC" returns="included" maximum_entity_count="500"]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-12-20 11:18:01', '2016-12-20 11:18:01', '', 30, 'http://localhost/abhp/2016/12/20/30-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2016-12-20 11:18:49', '2016-12-20 11:18:49', '[ngg_images source="galleries" container_ids="3" display_type="photocrati-nextgen_basic_thumbnails" override_thumbnail_settings="0" thumbnail_width="240" thumbnail_height="160" thumbnail_crop="1" images_per_page="20" number_of_columns="0" ajax_pagination="0" show_all_in_lightbox="0" use_imagebrowser_effect="0" show_slideshow_link="0" slideshow_link_text="[Show slideshow]" order_by="sortorder" order_direction="ASC" returns="included" maximum_entity_count="500"]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-12-20 11:18:49', '2016-12-20 11:18:49', '', 30, 'http://localhost/abhp/2016/12/20/30-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2016-12-20 11:19:27', '2016-12-20 11:19:27', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-12-20 11:19:27', '2016-12-20 11:19:27', '', 30, 'http://localhost/abhp/2016/12/20/30-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2016-12-20 11:20:54', '2016-12-20 11:20:54', '[ngg_images source="galleries" container_ids="1" display_type="photocrati-nextgen_basic_thumbnails" override_thumbnail_settings="0" thumbnail_width="240" thumbnail_height="160" thumbnail_crop="1" images_per_page="20" number_of_columns="0" ajax_pagination="0" show_all_in_lightbox="0" use_imagebrowser_effect="0" show_slideshow_link="0" slideshow_link_text="[Show slideshow]" template="C:\\xampp\\htdocs\\abhp\\wp-content\\plugins\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\ngglegacy\\view\\gallery.php" order_by="sortorder" order_direction="ASC" returns="included" maximum_entity_count="500"]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-12-20 11:20:54', '2016-12-20 11:20:54', '', 30, 'http://localhost/abhp/2016/12/20/30-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2016-12-20 11:21:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-12-20 11:21:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/abhp/?post_type=acf-field-group&p=159', 0, 'acf-field-group', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ab_termmeta`
--

CREATE TABLE `ab_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ab_terms`
--

CREATE TABLE `ab_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ab_terms`
--

INSERT INTO `ab_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'main', 'main', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ab_term_relationships`
--

CREATE TABLE `ab_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ab_term_relationships`
--

INSERT INTO `ab_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(26, 2, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(32, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ab_term_taxonomy`
--

CREATE TABLE `ab_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ab_term_taxonomy`
--

INSERT INTO `ab_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `ab_usermeta`
--

CREATE TABLE `ab_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ab_usermeta`
--

INSERT INTO `ab_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'ab_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'ab_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:6:{s:64:"85a6423afeb8d8c185ee0d863d19785bc4840d15021ae75ee0c194cad8eca111";a:4:{s:10:"expiration";i:1483350347;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36";s:5:"login";i:1482140747;}s:64:"eeddb146f730792cb26a78e199490e6f5d17acb631d36df3c7bd80c3d0f4a644";a:4:{s:10:"expiration";i:1482313562;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36";s:5:"login";i:1482140762;}s:64:"01c652c42505d22316794e4cb5106eefb0a41df9e6b8107f514f325e515c81da";a:4:{s:10:"expiration";i:1482380417;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36";s:5:"login";i:1482207617;}s:64:"57168d5a2d62c6f0dc0eede553d7caa4037520d412eeffea9d552d7b91776f44";a:4:{s:10:"expiration";i:1482380669;s:2:"ip";s:3:"::1";s:2:"ua";s:107:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2684.0 Safari/537.36";s:5:"login";i:1482207869;}s:64:"ed560450ab89b1b23328b18d8f1cb8791ae36a3db44e088f4defaa2150866007";a:4:{s:10:"expiration";i:1482384009;s:2:"ip";s:3:"::1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0";s:5:"login";i:1482211209;}s:64:"4ea42fadc3d8a9e1408b91cee47ed68d9094d3d947f7c6ce3cc533b965ef41e0";a:4:{s:10:"expiration";i:1482395834;s:2:"ip";s:3:"::1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0";s:5:"login";i:1482223034;}}'),
(16, 1, 'ab_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(19, 1, 'nav_menu_recently_edited', '2'),
(20, 1, 'ab_user-settings', 'libraryContent=browse&editor=tinymce'),
(21, 1, 'ab_user-settings-time', '1482232000');

-- --------------------------------------------------------

--
-- Table structure for table `ab_users`
--

CREATE TABLE `ab_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ab_users`
--

INSERT INTO `ab_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BIBgWDTp1aWAkmtr0ieR/JmTyQI2kM1', 'admin', 'vijay.punuru@gmail.com', '', '2016-12-19 09:45:44', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ab_commentmeta`
--
ALTER TABLE `ab_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ab_comments`
--
ALTER TABLE `ab_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `ab_links`
--
ALTER TABLE `ab_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `ab_ngg_album`
--
ALTER TABLE `ab_ngg_album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extras_post_id_key` (`extras_post_id`);

--
-- Indexes for table `ab_ngg_gallery`
--
ALTER TABLE `ab_ngg_gallery`
  ADD PRIMARY KEY (`gid`),
  ADD KEY `extras_post_id_key` (`extras_post_id`);

--
-- Indexes for table `ab_ngg_pictures`
--
ALTER TABLE `ab_ngg_pictures`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `extras_post_id_key` (`extras_post_id`);

--
-- Indexes for table `ab_options`
--
ALTER TABLE `ab_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `ab_postmeta`
--
ALTER TABLE `ab_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ab_posts`
--
ALTER TABLE `ab_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `ab_termmeta`
--
ALTER TABLE `ab_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ab_terms`
--
ALTER TABLE `ab_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `ab_term_relationships`
--
ALTER TABLE `ab_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `ab_term_taxonomy`
--
ALTER TABLE `ab_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `ab_usermeta`
--
ALTER TABLE `ab_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ab_users`
--
ALTER TABLE `ab_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ab_commentmeta`
--
ALTER TABLE `ab_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ab_comments`
--
ALTER TABLE `ab_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ab_links`
--
ALTER TABLE `ab_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ab_ngg_album`
--
ALTER TABLE `ab_ngg_album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ab_ngg_gallery`
--
ALTER TABLE `ab_ngg_gallery`
  MODIFY `gid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ab_ngg_pictures`
--
ALTER TABLE `ab_ngg_pictures`
  MODIFY `pid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `ab_options`
--
ALTER TABLE `ab_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=739;
--
-- AUTO_INCREMENT for table `ab_postmeta`
--
ALTER TABLE `ab_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=670;
--
-- AUTO_INCREMENT for table `ab_posts`
--
ALTER TABLE `ab_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT for table `ab_termmeta`
--
ALTER TABLE `ab_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ab_terms`
--
ALTER TABLE `ab_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ab_term_taxonomy`
--
ALTER TABLE `ab_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ab_usermeta`
--
ALTER TABLE `ab_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `ab_users`
--
ALTER TABLE `ab_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
