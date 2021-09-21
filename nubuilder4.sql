-- phpMyAdmin SQL Dump
-- version 5.1.2-dev+20210713.aae0630b78
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2021 at 08:37 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nubuilder4`
--

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_access`
--

CREATE TABLE `zzzzsys_access` (
  `zzzzsys_access_id` varchar(25) NOT NULL DEFAULT '',
  `sal_code` varchar(50) DEFAULT NULL,
  `sal_description` varchar(200) DEFAULT NULL,
  `sal_zzzzsys_form_id` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_access_form`
--

CREATE TABLE `zzzzsys_access_form` (
  `zzzzsys_access_form_id` varchar(25) NOT NULL DEFAULT '',
  `slf_zzzzsys_access_id` varchar(25) DEFAULT NULL,
  `slf_zzzzsys_form_id` varchar(25) DEFAULT NULL,
  `slf_add_button` varchar(1) DEFAULT NULL,
  `slf_save_button` varchar(1) DEFAULT NULL,
  `slf_delete_button` varchar(1) DEFAULT NULL,
  `slf_clone_button` varchar(1) DEFAULT NULL,
  `slf_new_button` varchar(1) DEFAULT NULL,
  `slf_print_button` varchar(1) DEFAULT NULL,
  `slf_data_mode` varchar(2) DEFAULT NULL,
  `slf_form_type` varchar(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_access_php`
--

CREATE TABLE `zzzzsys_access_php` (
  `zzzzsys_access_php_id` varchar(25) NOT NULL,
  `slp_zzzzsys_access_id` varchar(25) DEFAULT NULL,
  `slp_zzzzsys_php_id` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_access_report`
--

CREATE TABLE `zzzzsys_access_report` (
  `zzzzsys_access_report_id` varchar(25) NOT NULL,
  `sre_zzzzsys_access_id` varchar(25) DEFAULT NULL,
  `sre_zzzzsys_report_id` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_browse`
--

CREATE TABLE `zzzzsys_browse` (
  `zzzzsys_browse_id` varchar(25) NOT NULL DEFAULT '',
  `sbr_zzzzsys_form_id` varchar(25) DEFAULT NULL,
  `sbr_title` varchar(100) DEFAULT NULL,
  `sbr_display` varchar(512) DEFAULT NULL,
  `sbr_align` char(1) DEFAULT NULL,
  `sbr_format` varchar(300) DEFAULT NULL,
  `sbr_order` int(11) DEFAULT NULL,
  `sbr_width` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_browse`
--

INSERT INTO `zzzzsys_browse` (`zzzzsys_browse_id`, `sbr_zzzzsys_form_id`, `sbr_title`, `sbr_display`, `sbr_align`, `sbr_format`, `sbr_order`, `sbr_width`) VALUES
('nu5bad6cb374ca5aa', 'nuform', 'Code', 'sfo_code', 'l', '', 30, 250),
('nu5bad6cb374d3dbc', 'nuform', 'Description', 'sfo_description', 'l', '', 40, 440),
('nu5bad6cb374dd13c', 'nutab', 'Form', 'sfo_description', 'l', '', 20, 150),
('nu5bad6cb374f3729', 'nutab', 'Tab', 'syt_title', 'l', '', 10, 200),
('nu5bad6cb37505eea', 'nuobject', 'Form', 'sfo_description', 'l', '', 60, 220),
('nu5bad6cb37547640', 'nuobject', 'Tab', 'syt_title', 'l', '', 70, 135),
('nu5bad6cb375a3782', 'nuobject', 'Object', 'sob_all_id', 'l', '', 30, 235),
('nu5bad6cb375afa75', 'nuobject', 'Type', 'sob_all_type', 'l', '', 10, 65),
('nu5bad6cb375bd72e', 'nuobject', 'Label', 'sob_all_label', 'l', '', 50, 240),
('nu5bad6cb375c8f2a', 'nutab', 'Type', 'sfo_type', 'l', '', 40, 100),
('nu5bad6cb375f8259', 'nuaccess', 'Description', 'sal_description', 'l', '', 20, 350),
('nu5bad6cb375eeb8e', 'nuaccess', 'Code', 'sal_code', 'l', '', 10, 285),
('nu5bad6cb375d23fd', 'nunonsystemform', 'Code', 'sfo_code', 'l', '', 20, 150),
('nu5bad6cb375dbd9c', 'nunonsystemform', 'Description', 'sfo_description', 'l', '', 30, 250),
('nu5bad6cb375e5588', 'nunonsystemform', 'Type', 'sfo_type', 'l', '', 10, 100),
('nu5bad6cb376017c8', 'nuuser', 'Name', 'sus_name', 'l', '', 10, 150),
('nu5bad6cb3760ae9a', 'nuuser', 'Email', 'sus_email', 'l', '', 30, 225),
('nu5bad6cb376141d0', 'nuuser', 'Access Level', 'CONCAT(sal_code,\' : \',sal_description) ', 'l', '', 40, 260),
('nu5bad6cb3761e561', 'nuphp', 'Code', 'sph_code', 'l', '', 10, 245),
('nu5bad6cb37627eb1', 'nuphp', 'Description', 'sph_description', 'l', '', 20, 585),
('nu5bad6cb37631164', 'nubuildreport', 'Code', 'sre_code', 'l', '', 10, 150),
('nu5bad6cb3763a5b4', 'nubuildreport', 'Description', 'sre_description', 'l', '', 20, 345),
('nu5bad6cb3771115d', 'nuobject', 'i', 'zzzzsys_form_id', 'l', '', 40, 0),
('nu5bad6cb3764389f', 'nuform', 'Type', 'sfo_type', 'l', '', 20, 80),
('nu5bad6cb3768dd0c', 'nudebug', 'Message', 'deb_message', 'l', '', 10, 700),
('nu5bad6cb3764cb3b', 'nubuildreport', 'Launch From', 'CONCAT(sfo_code, \' - \', sfo_description)', 'l', '', 40, 300),
('nu5bad6cb376560e0', 'nurun', 'Type', 'type', 'l', '', 10, 100),
('nu5bad6cb3765f712', 'nurun', 'Code', 'code', 'l', '', 20, 100),
('nu5bad6cb37668ca4', 'nurun', 'Description', 'description', 'l', '', 30, 100),
('nu5bad6cb37672072', 'nurunlist', 'Type', 'run', 'l', '', 10, 100),
('nu5bad6cb3767b4d5', 'nurunlist', 'Code', 'code', 'l', '', 20, 150),
('nu5bad6cb376849b6', 'nurunlist', 'Description', 'description', 'l', '', 30, 250),
('nu5bad6cb37697a01', 'nuaccesslevelreport', '1', '1', 'l', '', 10, 1),
('nu5bad6cb376a1655', 'nutab', 'Code', 'sfo_code', 'l', '', 30, 100),
('nu5bad6cb376aaab5', 'nubrowse', 'Title', 'sbr_title', 'l', '', 20, 240),
('nu5bad6cb376b3dd7', 'nubuildreport', 'Group', 'sre_group', 'l', '', 30, 150),
('nu5bad6cb376bd159', 'nuphp', 'Group', 'sph_group', 'l', '', 30, 150),
('nu5bad6cb376c65d3', 'nurunreport', 'Code', 'sre_code', 'l', '', 20, 150),
('nu5bad6cb376cf902', 'nurunreport', 'Description', 'sre_description', 'l', '', 30, 250),
('nu5bad6cb376d900a', 'nurunreport', 'Group', 'sre_group', 'l', '', 40, 150),
('nu5bad6cb376fe259', 'nurunreport', 'Form', 'sre_zzzzsys_form_id', 'l', '', 10, 0),
('nu5bad6cb376e2688', 'nurunphp', 'Code', 'sph_code', 'l', '', 20, 205),
('nu5bad6cb376eb9d6', 'nurunphp', 'Description', 'sph_description', 'l', '', 30, 420),
('nu5bad6cb376f4f5f', 'nurunphp', 'Group', 'sph_group', 'l', '', 40, 150),
('nu5bad6cb37707660', 'nurunphp', 'PHP', 'sph_zzzzsys_form_id', 'l', '', 10, 0),
('nu5bad6cb3771b003', 'nuphp', 'Launch From', 'CONCAT(sfo_code, \' - \', sfo_description)', 'l', '', 40, 300),
('nu5bad6cb37724836', 'nutimezone', 'Time Zone', 'stz_timezone', 'l', '', 10, 350),
('nu5bad6cb3772dd22', 'nutranslate', 'Language', 'trl_language', 'l', '', 10, 100),
('nu5bad6cb37737185', 'nutranslate', 'English', 'trl_english', 'l', '', 20, 345),
('nu5bad6cb377406bb', 'nutranslate', 'Translation', 'trl_translation', 'l', '', 30, 430),
('nu5bad6cb37749ba7', 'nucalcobjects', 'object.subform', 'CONCAT(thechild,IF(theparent = \'\',\'\',\'.\'),theparent)', 'c', '', 10, 200),
('nu5bad6cb377531c6', 'nucalcobjects', ' ', 'theform', 'l', '', 30, 0),
('nu5bad6cb37765e82', 'nucalcobjects', ' ', 'thevalue', 'l', '', 40, 2),
('nu5bad6cb3777c5ee', 'nucalcobjects', 'Object', 'thechild', 'l', '', 20, 0),
('nu5bad6cb377899bf', 'nuformat', 'Type', 'srm_type', 'l', '', 20, 150),
('nu5bad6cb3779593d', 'nuformat', 'Format', 'srm_format', 'l', '', 10, 190),
('nu5bad6cb377a01b0', 'nuobject', 'Input Type', 'sob_input_type', 'l', '', 20, 100),
('nu5bad6cb377a9e19', 'nubrowse', 'join', 'sbr_zzzzsys_form_id', 'l', '', 10, 0),
('nu5bad6cb377b6a58', 'nuform', 'Table', 'sfo_table', 'l', '', 50, 270),
('nu5bad6cb377d2981', 'nufile', 'Description', 'sfi_description', 'l', '', 20, 350),
('nu5bad6cb3781d394', 'nufile', 'JSON', 'sfi_json', 'l', '', 30, 0),
('nu5bad6cb3783715c', 'nufile', 'Image', 'NULL', 'l', '', 40, 150),
('nu5bad6cb377c33ea', 'nufile', 'Code', 'sfi_code', 'l', '', 10, 200),
('nu5bad6cb37849637', 'nufile', 'Group', 'sfi_group', 'l', '', 50, 150),
('nu5bad6cb378cf278', 'nubuildtable', 'Description', 'description', 'l', '', 20, 300),
('nu5bad6cb3786de92', 'nuselect', 'Description', 'sse_description', 'l', '', 20, 350),
('nu5bad6cb378b79f4', 'nudebug', 'When', 'deb_added', 'l', '', 20, 130),
('nu5bad6cb3787ca71', 'nulaunchable', 'Type', 'sfo_type', 'l', '', 10, 80),
('nu5bad6cb37889036', 'nulaunchable', 'Code', 'sfo_code', 'l', '', 20, 100),
('nu5bad6cb3789662e', 'nulaunchable', 'Description', 'sfo_description', 'l', '', 30, 400),
('nu5bad6cb378aa4cf', 'nulaunchable', 'Table', 'sfo_table', 'l', '', 40, 200),
('nu5bad6cb378c316b', 'nubuildtable', 'Code', 'code', 'l', '', 10, 100),
('nu5bad6cb37487772', 'nulaunchform', 'Type', 'sfo_type', 'l', '', 10, 100),
('nu5bad6cb3749102a', 'nulaunchform', 'Code', 'sfo_code', 'l', '', 20, 150),
('nu5bad6cb3749a37d', 'nulaunchform', 'Description', 'sfo_description', 'l', '', 30, 250),
('nu5bad6cb374a3c61', 'nutablookup', 'Tab', 'syt_title', 'l', '', 10, 200),
('nu5bad6cb374ae1fc', 'nutablookup', 'Form', 'sfo_description', 'l', '', 20, 150),
('nu5bad6cb374b7c3b', 'nutablookup', 'Code', 'sfo_code', 'l', '', 30, 160),
('nu5bad6cb374c102f', 'nutablookup', 'Type', 'sfo_type', 'l', '', 40, 100),
('nu5bad6cb3747d41c', 'nuuser', 'Username', 'sus_login_name', 'l', '', 20, 120),
('nu5bad6cb3746cc1b', 'nuuser', 'Language', 'sus_language', 'l', '', 50, 95),
('nu5fd29810a628f4f', 'nunotes', 'Notes', 'not_title', 'l', '', 20, 720),
('nu5fd29810a62a421', 'nunotes', 'Category', 'noc_name', 'l', '', 10, 150),
('nu5fd3b22fa460a12', 'nunotescategroy', 'Category', 'noc_name', 'l', '', 10, 310),
('nu5fd3bb4dc0d2841', 'nunotes', 'Updated on', 'not_updated_on', 'l', '', 30, 145),
('nu5fd5b7fc8c163a3', 'nuuser', 'Code', 'sus_code', 'l', '', 60, 55),
('nu5fd5b7fc8de0c57', 'nuuser', 'Position', 'sus_position', 'l', '', 70, 125),
('nu5fd5b7fc8fad224', 'nuuser', 'Team', 'sus_team', 'l', '', 90, 100),
('nu5fd8d2459834722', 'nutranslate', 'Added by User', 'IF(zzzzsys_translate_id like \'nu%\',\'\',\'✔\')', 'l', '', 40, 140),
('nu5fd8ed3051616cd', 'nusession', 'Login Name', 'login', 'l', '', 20, 150),
('nu5fd8ed305162c77', 'nusession', 'Username', 'user', 'l', '', 30, 150),
('nu5fd8ed3051639e7', 'nusession', 'Login Time', 'login_time', 'l', '', 10, 150),
('nu5fdb1b5b3fd1be7', 'nucodesnippet', 'Code', 'cot_code', 'l', '', 20, 215),
('nu5fdb1b5b407a6f1', 'nucodesnippet', 'Description', 'cot_description', 'l', '', 30, 700),
('nu5fdb1b5b408a860', 'nucodesnippet', 'Language', 'cot_language', 'l', '', 10, 85),
('nu5f9aaac971fc30c', 'nucloner', 'Include Objects', 'REPLACE(REPLACE(clo_objects,1,\'✔\'),0,\'\')', 'l', '', 40, 130),
('nu5f9aaac971ec977', 'nucloner', 'Dump SQL', 'REPLACE(REPLACE(clo_dump,1,\'✔\'),0,\'\')', 'l', '', 30, 110),
('nu5f9c04dbab4da92', 'nucloner', 'Notes', 'clo_notes', 'l', '', 50, 350),
('nu5f9aaac971c84e2', 'nucloner', 'Destination Form', 'clo_form_dest', 'l', '', 20, 190),
('nu5f9aaac9719b88c', 'nucloner', 'Source Form', 'clo_form_source', 'l', '', 10, 120),
('nu5fdb668a2947958', 'nuobject', 'Access', 'REPLACE(REPLACE(REPLACE(REPLACE(sob_all_access,0,\'Editable\'),1,\'Readonly\'),2,\'Hidden\'),3,\'Hidden (User)\')', 'l', '', 80, 75),
('nu5fdb67accbbfa6d', 'nuobject', 'Validation', 'REPLACE(REPLACE(REPLACE(REPLACE(sob_all_validate, 0,\'None\'),1,\'No Blanks\'),2,\'No Duplicates\'),3,\'No Duplicates/Blanks\')', 'l', '', 90, 150),
('nu5fdb689731ed0db', 'nuobject', 'Align', 'sob_all_align', 'l', '', 100, 60),
('nu5fdcc69ceb26325', 'nucodesnippet', 'Changed On', 'cot_updated_on', 'l', '', 40, 130),
('nu5fdfd91ab3a0d63', 'nusession', 'IP Address', 'ip', 'l', '', 40, 120),
('nu5fe0352637b2e4f', 'nuuser', 'Expires On', 'sus_expires_on', 'l', 'D|yyyy-mm-dd', 100, 90),
('nu5fe035b0d058339', 'nuuser', 'Department', 'sus_department', 'l', '', 80, 90),
('nu5fe179294648601', 'nuform', 'Preview', 'null', 'l', '', 10, 65),
('nu5fed7ae8d82586a', 'nuobjectgrid', 'Code', 'sfo_code', 'l', '', 10, 250),
('nu5ff0df492665285', 'nuaccess', 'Home', 'sfo_code', 'l', '', 30, 300),
('nu60fd004179b7f95', 'nuselect', 'Code', 'sse_code', 'l', NULL, 10, 150);

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_cloner`
--

CREATE TABLE `zzzzsys_cloner` (
  `zzzzsys_cloner_id` varchar(25) NOT NULL,
  `clo_form_source` varchar(25) DEFAULT NULL,
  `clo_form_dest` varchar(25) DEFAULT NULL,
  `clo_tabs` varchar(1000) DEFAULT NULL,
  `clo_dump` tinyint(1) DEFAULT NULL,
  `clo_objects` tinyint(1) DEFAULT NULL,
  `clo_subforms_include` tinyint(1) DEFAULT NULL,
  `clo_subforms` varchar(1000) DEFAULT NULL,
  `clo_iframe_forms_include` tinyint(1) DEFAULT NULL,
  `clo_iframe_forms` text DEFAULT NULL,
  `clo_new_pks` tinyint(1) DEFAULT NULL,
  `clo_notes` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_code_snippet`
--

CREATE TABLE `zzzzsys_code_snippet` (
  `zzzzsys_code_snippet_id` varchar(25) NOT NULL,
  `cot_code` varchar(50) DEFAULT NULL,
  `cot_description` text DEFAULT NULL,
  `cot_url` varchar(500) DEFAULT NULL,
  `cot_source_code` text DEFAULT NULL,
  `cot_language` varchar(20) DEFAULT NULL,
  `cot_scope` varchar(50) DEFAULT NULL,
  `cot_updated_on` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_code_snippet`
--

INSERT INTO `zzzzsys_code_snippet` (`zzzzsys_code_snippet_id`, `cot_code`, `cot_description`, `cot_url`, `cot_source_code`, `cot_language`, `cot_scope`, `cot_updated_on`) VALUES
('nu5fdb1a7c5b3d3b2', 'nuBeforeSave', 'Before a record is saved, nuBuilder checks for the existance of a function called nuBeforeSave().\nIf this exists it will use its return value to decide whether to continue saving the record.', 'https://wiki.nubuilder.net/nubuilderforte/index.php/Javascript#nuBeforeSave', 'function nuBeforeSave(){\n\n    if( $(\'#cus_name\').val() === \'something\' ){ /* condition(s) here */ \n        \n        nuMessage([\'Message here.\']);\n\n        // Cancel saving         \n        return false;\n\n    }\n\n    // Continue Saving\n    return true;\n    \n} ', 'JavaScript', '[\"0\"]', '2020-12-15 21:23:13');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_debug`
--

CREATE TABLE `zzzzsys_debug` (
  `zzzzsys_debug_id` varchar(25) NOT NULL,
  `deb_message` longtext DEFAULT NULL,
  `deb_added` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_event`
--

CREATE TABLE `zzzzsys_event` (
  `zzzzsys_event_id` varchar(25) NOT NULL,
  `sev_zzzzsys_object_id` varchar(25) DEFAULT NULL,
  `sev_event` varchar(100) DEFAULT NULL,
  `sev_javascript` varchar(3000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_event`
--

INSERT INTO `zzzzsys_event` (`zzzzsys_event_id`, `sev_zzzzsys_object_id`, `sev_event`, `sev_javascript`) VALUES
('nu5bad6cb3798ef56', 'nu5bad6cb3263f2a8', 'onchange', 'nuTypeChanged();'),
('nu5bad6cb3797b0a7', 'nu5bad6cb32930450', 'onclick', 'window.open(\'core/nureportdesigner.php?tt=\' + $(\"#sre_zzzzsys_php_id\").val() + \'&launch=\' + $(\"#sre_zzzzsys_form_id\").val());'),
('nu5bad6cb3798566b', 'nu5bad6cb329fdf13', 'onchange', 'nuTypeChanged();'),
('nu5bad6cb37b1b592', 'nu5bad6cb32812c21', 'onclick', 'nuPopPHP(event, \'BB\');'),
('nu5bad6cb37b853f4', 'nu5bad6cb35a52325', 'onchange', 'nuAddSQLTable(event);'),
('nu5bad6cb37b274c5', 'nu5bad6cb325c8954', 'afterinsertrow', '$(\"[id$=\'sev_javascript\']\").addClass(\'js\')'),
('nu5bad6cb379988c5', 'nu5bad6cb34c005d7', 'onclick', 'nuPopPHP(event, \'BE\');'),
('nu5bad6cb379a3d0a', 'nu5bad6cb34c4775c', 'onclick', 'nuPopPHP(event, \'BS\');'),
('nu5bad6cb379b055d', 'nu5bad6cb34d23de5', 'onclick', 'nuPopPHP(event, \'AS\');'),
('nu5bad6cb379bcdcc', 'nu5bad6cb34d7e1db', 'onclick', 'nuPopPHP(event, \'BD\');'),
('nu5bad6cb379ec280', 'nu5bad6cb34e2eaec', 'onclick', 'nuPopPHP(event, \'AD\');'),
('nu5bad6cb37a13d93', 'nu5bad6cb329136ba', 'onclick', 'nuPopPHP(event, \'BB\');'),
('nu5bad6cb37a4de1d', 'nu5bad6cb34b050a0', 'onclick', 'nuPopPHP(event, \'AB\');'),
('nu5bad6cb37a6a213', 'nu5bad6cb34e5cc53', 'onclick', 'nuPreview()'),
('nu5bad6cb37add513', 'nu5bad6cb326ddb36', 'onkeydo', 'nuFORM.scrollList(event, nuFORM.tableFields($(\'#sfo_table\').val()))'),
('nu5bad6cb37b75849', 'nu5bad6cb35a0a29e', 'onclick', 'nuResizeSQL();'),
('nu5bad6cb37af380e', 'nu5bad6cb34fa79c0', 'onchange', 'nuSetFormatType(1)'),
('nu5bad6cb37b0e5e5', 'nu5bad6cb3518a9c0', 'onclick', 'nuPreview(1)'),
('nu5bad6cb37b6ab21', 'nu5bad6cb3568c736', 'onclick', 'nuPopup(\'nusample\',\'-1\');'),
('nu5bad6cb37b01a0f', 'nu5bad6cb32c4d9de', 'onchange', 'nuInputTypeChanged(this.value)'),
('nu5bad6cb37b32126', 'nu5bad6cb32b77005', 'onclick', 'nuPopPHP(event, \'BB\');'),
('nu5bad6cb37b42053', 'nu5bad6cb32b9715a', 'onclick', 'nuPopPHP(event, \'BB\');'),
('nu5bad6cb37b5e79f', 'nu5bad6cb35304ffd', 'onkeydown', 'nuFORM.scrollList(event, window.nuObjectFields);'),
('nu5bad6cb37b91ff1', 'nu5bad6cb35b23983', 'onchange', '$(\'#sqlframe\').contents().find(\'body\').css(\'zoom\', this.value / 100)'),
('nu5bad6cb37ba5b09', 'nu5bad6cb35ab1f0a', 'onchange', 'nuWhereClauses();$(\'#sqlframe\')[0].contentWindow.nuSQL.buildSQL()'),
('nu5bad6cb37bb54ac', 'nu5bad6cb35afa1d0', 'onchange', '$(\'#sqlframe\')[0].contentWindow.nuSQL.buildSQL()'),
('nu5bad6cb37bc1b7a', 'nu5bad6cb35ad7f0a', 'onchange', '$(\'#sqlframe\')[0].contentWindow.nuSQL.buildSQL()'),
('nu5bad6cb37bcc8fb', 'nu5bad6cb35b860e2', 'onchange', '$(\'#sqlframe\')[0].contentWindow.nuSQL.buildSQL()'),
('nu5bad6cb37bd72d2', 'nu5bad6cb35a8885a', 'onchange', '$(\'#sqlframe\')[0].contentWindow.nuSQL.buildSQL()'),
('nu5bad6cb37beca3a', 'nu5bad6cb34ebf5bd', 'onfocus', 'onColumnPicker(event);\n$(\'#available_columns\').prop(\'selectedIndex\',-1);\nnuShowAvailableFields(true);'),
('nu5bad6cb37c0be93', 'nu5bad6cb34f0470a', 'afterinsertrow', 'nuSetFFTable();\nnuDisableLastFFRow();\n\nlet l = nuSubformObject(\'obj_sf\').rows.length;\n\nvar rowPrefix = \'obj_sf\' + nuPad3(l == 1 ? 0 : l - 1);\nnuSetFFTypeOptionsColor(rowPrefix + \'ff_type\');\nnuSelectRemoveEmpty(rowPrefix + \'ff_type\',\'-1\');\n'),
('nu5bad6cb37c22211', 'nu5bad6cb35cf61c0', 'onclick', 'nuPopSQL(event, \'BR\');'),
('nu5bad6cb37c317ec', 'nu5bad6cb35d26e8f', 'onclick', 'nuPopSQL(event, \'DI\');'),
('nu5bad6cb37c45b5b', 'nu5bad6cb35d48819', 'onclick', 'nuPopSQL(event, \'SE\');'),
('nu5bad6cb37c5a112', 'nu5bad6cb35d6b273', 'onfocus', 'nuFocusFFObject(event);'),
('nu5bad6cb37c67eb0', 'nu5a2f31a336db937', 'onclick', 'alert(\'Do Something!\')'),
('nu5bad6cb37c73e80', 'nu5bad6cb35dadfc5', 'onchange', 'nuFormColor(); \r\nif (this.value == \'launch\') { \r\n    nuSetValue(\'fastform_table\',\'\');\r\n    nuShowAvailableFields(false);\r\n}    '),
('nu5bad6cb37ca3577', 'nu5bad6cb35b23983', 'afterinsertrow', 'nuSetSFCB();'),
('nu5bad6cb37cba151', 'nu5bad6cb35ebbc60', 'onclick', 'nuGetCSV();'),
('nu5bad6cb37ccc397', 'nu5bad6cb35ff457a', 'onclick', 'nuPopPHP(event, \'BB\');'),
('nu5bad6cb37966261', 'nu5bad6cb35cce14b', 'onclick', 'nuStartDatabaseAdmin();'),
('nu5bad6cb37947239', 'nu5bad6cb3625fd05', 'onclick', 'window.open(\"http://wiki.nubuilder.net/nubuilderforte/index.php/\" + window.nuHelp);'),
('nu5bad6cb37957561', 'nu5bad6cb36283501', 'onclick', 'window.open(\"http://wiki.nubuilder.net/nubuilderforte/index.php/\" + window.nuHelp);'),
('nu5bad6cb3793d45a', 'nu5bad6cb328be090', 'afterinsertrow', '$(\"[id$=\'syt_help\']\").addClass(\'js\')'),
('nu5bad6cb37904b65', 'nu5bad6cb366576fb', 'afterinsertrow', 'nuTestChart();'),
('nu5bad6cb37911d4e', 'nu5bad6cb363bb5b7', 'onchange', 'nuTestChart();'),
('nu5bad6cb3791fc33', 'nu5bad6cb3647b4cb', 'onchange', 'nuTestChart();'),
('nu5bad6cb3792a2a1', 'nu5bad6cb364add63', 'onchange', 'nuTestChart();'),
('nu5bad6cb37933f0c', 'nu5bad6cb36568f2b', 'onchange', 'nuTestChart();'),
('nu5bad6cb378ec061', 'nu5a3e518de1c9d39', 'afterinsertrow', 'nuChart(\'chart\', \'ComboChart\', \'nuSubformObject(\"sfa\").chartData\', \'1\', \'44\', \'\', \'bars\', false);'),
('nu5bad6cb378f8a07', 'nu5a441af14f14218', 'afterinsertrow', 'nuChart(\'chart\', \'ComboChart\', \'nuSubformObject(\"sfa\").chartData\', \'1\', \'44\', \'\', \'bars\', false);'),
('nu5bad6cb37cda28d', 'nu5bad6cb366e865e', 'onchange', 'nuSetFFTable();'),
('nu5bad6cb37ce6dae', 'nu5bad6cb3670b7db', 'onclick', 'nuPickTableType();'),
('nu5bd8f419d886e17', 'nu5bad6cb327ab3b8', 'afterinsertrow', 'default_description();\n\nlet l = nuSubformObject(\'zzzzsys_browse_sf\').rows.length;\nvar rowPrefix = \'zzzzsys_browse_sf\' + nuPad3(l == 1 ? 0 : l - 1);\nnuUpdateDisplayDatalists(rowPrefix + \'sbr_display\');'),
('nu5f7129d5424e73c', 'nu5f711b9351ae752', 'onchange', 'nuCSVTransfer(this.value)'),
('nu5fab41c055475d8', 'nu5bad6cb3513b16c', 'onchange', 'nuAddToFormat();'),
('nu5fab41d07a80c9b', 'nu5fab2f8952634e4', 'onchange', 'nuAddToFormat();'),
('nu5fab41e0265f1e4', 'nu5fab2fa48a504e4', 'onchange', 'nuAddToFormat();'),
('nu5fab41f0d3d7845', 'nu5fab2fb6e66f19b', 'onchange', 'nuAddToFormat();'),
('nu5fd6f92d9463a40', 'nu5fd6f828a1e42b1', 'onclick', 'nuSetSelectIndex(\'sob_all_cloneable\',1)'),
('nu5fd6f95baab794b', 'nu5fd6f7819d659bc', 'onclick', 'nuSetSelectIndex(\'sob_all_cloneable\',2);'),
('nu5fd6fa042a999b1', 'nu5fd6fa0428adcd3', 'onclick', 'nuSetSelectIndex(\'sob_all_align\',1);'),
('nu5fd6fbe95e24346', 'nu5fd6fbe95c2c61d', 'onclick', 'nuSetSelectIndex(\'sob_all_align\',2);'),
('nu5fd6fc4a7f52ae6', 'nu5fd6fc4a7ccf484', 'onclick', 'nuSetSelectIndex(\'sob_all_align\',3);'),
('nu5fd6fdad3ae76f5', 'nu5fd6fdad38e8f5d', 'onclick', 'nuSetSelectIndex(\'sob_all_validate\',2);'),
('nu5fd6fddaeb44cc3', 'nu5fd6fddae953fd3', 'onclick', 'nuSetSelectIndex(\'sob_all_access\',3);'),
('nu5fd6ff14af381f2', 'nu5fd6ff14ad0870d', 'onclick', 'nuSetSelectIndex(\'sob_all_access\',1);'),
('nu5fd6ff6a110d480', 'nu5fd6ff6a0ef6017', 'onclick', 'nuSetSelectIndex(\'sob_all_access\',2);'),
('nu5fd757f92870577', 'nu5fd757f9266ea99', 'onclick', 'nuSetSelectIndex(\'sob_all_validate\',1);'),
('nu5fd7583fbf9bde0', 'nu5fd7583fbdb0750', 'onclick', 'nuSetSelectIndex(\'sob_all_validate\',3);'),
('nu5fdbe04a014fa', 'nu5fdbe049f365a', 'onclick', 'if (nuIsSaved()) {   var fid = nuSubformRowId(this); nuPopup(\'nuObject\', fid);} else {  nuMessage([\"Please save any changes before leaving this form.\"])}    '),
('nu5fed986754a8a23', 'nu5fed8c73e475b16', 'onclick', 'nuForm(\"nuobjectgrid\",nuCurrentProperties().record_id,\"\", \"\", 2)'),
('nu5fdcde23d59bc7a', 'nu5fdcde23d2db265', 'onchange', 'nuFormColor();'),
('nu5fddb7fc8b5b539', 'nu5bad6cb32a1c004', 'oninput', 'nuShowDataType();'),
('nu5fdf83039b7f6d6', 'nu5fee9ff762770', 'afterinsertrow', 'nuUpdateAclCount();();'),
('nu5fe039482957fb0', 'nu5fe038d847fbb70', 'onchange', 'nuTogglePasswordVisibility();'),
('nu5fe06a07c9e9567', 'nu5fe0547b841fb32', 'onclick', 'nu2FAVerify();'),
('nu5fe1b140081ce8c', 'nu5fe1aeac3363ae7', 'onclick', 'inDBVersion();'),
('nu5fe1b155b2648e4', 'nu5fe1b155aed9e46', 'onclick', 'inFilesVersion();'),
('nu5fecdc0b9678ebf', 'nu5fa249be5df47ad', 'onclick', 'cloSubformsChecked();'),
('nu5fecde321f82513', 'nu5fa959f97244564', 'onclick', 'cloIframeFormsChecked();'),
('nu5ff0364d11e7498', 'nu5ff0352f501ba8c', 'onclick', 'if ($(this).prop(\'checked\')) { nuEnable(\'sob_calc_formula\'); $(\'#sob_calc_formula\').focus(); } else { nuDisable(\'sob_calc_formula\'); }'),
('nu5ff0b31354688aa', 'nu5bad6cb32e1a66a', 'onchange', 'nuSetLookupWidth()'),
('nu5ff0b329e242e25', 'nu5bad6cb32e47d18', 'onchange', 'nuSetLookupWidth()'),
('nu5ff32fdade879d8', 'nu5ff32fdadb8f46f', 'onclick', 'var form_id =  $(\'#sob_lookup_zzzzsys_form_id\').val(); if (form_id !== \'\') { 	nuForm(\'nuform\',form_id,\'\',\'\',2);} else { nuMessage([nuTranslate(\'Select a (Lookup) Form first.\')]); }'),
('nu5ff4a8cb2258088', 'nu5ff4a82b76d96d6', 'onclick', 'nuPopup(\'nuemailtest\',\'-1\')'),
('nu5ff4b6479adf58a', 'nu5ff4b5f53f85f69', 'onclick', 'loadDatafromLS();'),
('nu5ff4b67643ec503', 'nu5ff4b56934a1973', 'onclick', 'saveDatatoLS();'),
('nu5ff5b7b1bb92f1a', 'nu5ff5b7b1b918a4b', 'onclick', 'var form_id =  $(\'#sob_run_zzzzsys_form_id\').val(); if (form_id !== \'\') { 	nuForm(\'nuform\',form_id,\'\',\'\',2);} else { nuMessage([nuTranslate(\'Select a (Run) Form first.\')]); }'),
('nu5ff727ad73226b8', 'nu5ff727ad6f17b85', 'onclick', 'var id =  $(\'#sus_zzzzsys_access_id\').val(); if (id !== \'\') { 	nuForm(\'nuaccess\',id,\'\',\'\',2);} else { nuMessage([nuTranslate(\'Select an Access Level first.\')]); }'),
('nu60013e0629f72ae', 'nu60013e0626d80ce', 'onclick', 'var form_id =  $(\'#sob_subform_zzzzsys_form_id\').val(); if (form_id !== \'\') { 	nuForm(\'nuform\',form_id,\'\',\'\',2);} else { nuMessage([nuTranslate(\'Select a Form (Subform) first.\')]); }'),
('nu60028804f2e662b', 'nu60028804f043b86', 'onclick', 'var objType =  $(\"#sob_all_type option:selected\").text(); \nif (objType !== \'\') { \n    nuSelectTabByTitle(objType); \n} else { \n    nuMessage([nuTranslate(\'Select a Type first.\')]); \n}'),
('nu60510d8a0a1478a', 'nu60510d8a0496fd5', 'onclick', 'nu2FASendToken();'),
('nu6065ae6429db0bd', 'nu5bad6cb32a1c004', 'onblur', '$(this).val($(this).val().replace(/\\s/g,\"\"));'),
('nu605b66293122778', 'nu605b522d65c642a', 'onclick', 'nuSetSelectIndex(\'sob_all_validate\',4);'),
('nu606590a77f7de08', 'nu5bad6cb32d8ec39', 'onchange', 'runMethodChanged();'),
('nu6065aed581aba95', 'nu5bad6cb326a4367', 'onblur', '$(this).val($(this).val().replace(/\\s/g,\"\"));'),
('nu6065aef2109aaa4', 'nu5bad6cb326ddb36', 'onblur', '$(this).val($(this).val().replace(/\\s/g,\"\"));'),
('nu6067332158fd9bb', 'nu5bad6cb32a36c23', 'onblur', 'if (this.value == \'\') $(this).val(\' \').change();'),
('nu606acbb9c729da3', 'nu5bad6cb327ca554', 'onchange', 'default_description();\nonTitleDisplayChanged(event);'),
('nu606ad5daa5324de', 'nu5bad6cb327ee8dc', 'onchange', 'onTitleDisplayChanged(event);'),
('nu606adc62e50275d', 'nu5bad6cb327ee8dc', 'onblur', 'onDisplayBlur(event);'),
('nu606c4b2a1170912', 'nu606c448e53cd465', 'onclick', 'nuAvailableFieldsOnClick(event, this);'),
('nu606f29e74fa90bc', 'nu5bad6cb34ee220e', 'onblur', 'nuOnBlurFFLabel(this, event);'),
('nu606c7f4b120254f', 'nu606c448e53cd465', 'onblur', 'nuShowAvailableFields(false);'),
('nu606c9e7a0af15b3', 'nu5bad6cb34ebf5bd', 'onkeyup', 'nuShowAvailableFields(true);\r\nnuSetDataUserModified(this, event);\r\nif (nuFFHandleUpDownArrows(window.event)) window.event.preventDefault(); \r\n'),
('nu606eec916480f6b', 'nu5bad6cb34ebf5bd', 'onblur', 'nuOnBlurFFField(this, event);'),
('nu606f64f83b36dbd', 'nu5bad6cb34ee220e', 'onkeydown', 'nuSetDataUserModified(this, event);'),
('nu60758a15ecc02aa', 'nu5bad6cb34f0470a', 'clickdelete', 'nuClickDelete(event);'),
('nu606f7854568b337', 'nu606f399ea7b558f', 'onchange', 'nuChangePrefix($(\'#fastform_prefix\').val());\n'),
('nu6072b7075d65a8e', 'nu5bad6cb34ee220e', 'onkeyup', 'if (nuFFHandleUpDownArrows(window.event)) {\n   window.event.preventDefault(); \n}'),
('nu607459b941be49a', 'nu60741457ef6f315', 'onchange', 'nuOnChangeFFType(this, event);'),
('nu607eae9f18b8597', 'nu5bad6cb32a1c004', 'onchange', 'nuShowDataType();'),
('nu60dc7ad44f85974', 'nu5bad6cb328dde63', 'onchange', 'onTabsTitleChanged(event) '),
('nu60e4d4c999e5e4a', 'nu5bad6cb3278653c', 'onchange', 'nuUpdateDisplayDatalists();'),
('nu60e61e9c56651ae', 'nu5bad6cb327ee8dc', 'ondblclick', 'nuOpenAce(\'SQL\', this.id);'),
('nu60e96ee3e5dcc3f', 'nu60e96ee3e51e1bb', 'onclick', 'var n = Number(sob_all_top.value) + (event.ctrlKey ? -27 : 27);\n$(\'#sob_all_top\').val(n < 0 ? 0 : n).change();'),
('nu60e9719f5e49e66', 'nu60e9719f5d9bc8b', 'onclick', '$(\'#sob_all_height\').val(100).change();'),
('nu60e971e1683aaa1', 'nu60e971e1676ca2d', 'onclick', '$(\'#sob_all_height\').val(200).change();'),
('nu60e97221bc52ce0', 'nu60e97221bb95958', 'onclick', '$(\'#sob_all_height\').val(300).change();'),
('nu60e9724c20900a9', 'nu60e9724c1fdd7c5', 'onclick', '$(\'#sob_all_height\').val(400).change();'),
('nu60e9732db35a7f1', 'nu60e9732db2a4125', 'onclick', '$(\'#sob_all_width\').val(100).change();'),
('nu60e973518b05887', 'nu60e973518a26f21', 'onclick', '$(\'#sob_all_width\').val(200).change();'),
('nu60e97365095aa8c', 'nu60e9736508a9b31', 'onclick', '$(\'#sob_all_width\').val(300).change();'),
('nu60e973b671d891a', 'nu60e973b6711a030', 'onclick', '$(\'#sob_all_width\').val(400).change();'),
('nu60e974dd2eac661', 'nu60e974dd2df427c', 'onclick', '$(\'#sob_all_width\').val(700).change();'),
('nu60e97510251557f', 'nu60e975102462aff', 'onclick', '$(\'#sob_all_height\').val(700).change();'),
('nu60e9756969dff71', 'nu60e97569692fac5', 'onclick', '$(\'#sob_all_width\').val(1000).change();'),
('nu60e975e9337f224', 'nu60e975e932d74ef', 'onclick', 'var n = Number(sob_all_left.value) + (event.ctrlKey ? -50 : 50);\n$(\'#sob_all_left\').val(n < 0 ? 0 : n).change();'),
('nu60f12beaa7107fe', 'nu60f12beaa64b371', 'onclick', 'nuMessage(nuTranslate(\'Backup is running\') + \'...\');\nnuRunPHPHidden(\'nuBackup\',0);'),
('nu60f3f95b6727658', 'nu60f3f95b66732d1', 'onclick', 'nuRunPHPHidden(\'nusetrefreshcache\', 0);'),
('nu60f901bdb3a8e1c', 'nu60f8fd56e325e76', 'onclick', 'var n = Number(sob_all_top.value) + (event.ctrlKey ? -50 : 50);\n$(\'#sob_all_top\').val(n < 0 ? 0 : n).change();'),
('nu610a662e2f1de1c', 'nu610a662e2e599c2', 'onclick', 'nuJSSelectCustomCode(this,\'sfo_javascript\');'),
('nu610a6655102c6ab', 'nu610a66550f61129', 'onclick', 'nuJSSelectCustomCode(this,\'sfo_browse_javascript\');'),
('nu610a667b9cc7d66', 'nu610a667b9beba56', 'onclick', 'nuJSSelectCustomCode(this,\'sfo_edit_javascript\');');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_file`
--

CREATE TABLE `zzzzsys_file` (
  `zzzzsys_file_id` varchar(25) NOT NULL,
  `sfi_code` varchar(300) DEFAULT NULL,
  `sfi_description` varchar(300) DEFAULT NULL,
  `sfi_group` varchar(300) DEFAULT NULL,
  `sfi_json` longtext DEFAULT NULL,
  `sfi_system` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_file`
--

INSERT INTO `zzzzsys_file` (`zzzzsys_file_id`, `sfi_code`, `sfi_description`, `sfi_group`, `sfi_json`, `sfi_system`) VALUES
('nu5bad6cb37d02d01', 'nubuilder', 'Logo', 'nubuilder', '{\"file\":\"ZGF0YTppbWFnZS9wbmc7YmFzZTY0LGlWQk9SdzBLR2dvQUFBQU5TVWhFVWdBQUFLc0FBQUErQ0FZQUFBQlVRK3ZwQUFBQUNYQklXWE1BQUJZbEFBQVdKUUZKVWlUd0FBQUFCM1JKVFVVSDRRa2FGaklXSW5lSjd3QUFEaU5KUkVGVWVOcnRuWHQwVmRXZHh6Ky9jMjRTREkvY1JHUUVIL1d4ckFwVDYyUFZCMUt4dGVPcWRvb1FHclNEdFlJSWdWbXVsclpNeHlrelZNZDIydFdwenVCQURRWE1XTmU0SkNhcHNUaUY2Um9meXlxMkkzMkF1S3d3Z3c5SUVEQTNQQkx1NDV6Zi9ISE92ZmZrNXB4N0UvSzg1SHl6ZHU2OVorK3p6MzU4OTIvLzltOC9qcWdxSVVJVUE0eXdDRUtFWkEwUklpUnJpSkNzSVVLTWNFUUNmZXJsUmt4bVlISm1qMUEyWUNGWVlMdWZKQkVTUUJ4SUlDUVFrb0RTYVJqczRoaFBzMXFQcEtPNHJWbm1Zek94VzhzUnVrVDR1U3EzV2pERlVNb1JmbTladlBaY2plNERxRzZXMHkyYk8zT1Rxd1p2dE16UlYyWTF5YWRFbWQ0am84S214bXB0bFliMmN6SGxpUUxsWWlQU2h0cnZnL0VPWlRUcUZ5cmFCNk1DcExIOVI0aDh5dGZUaXQ2RTJiRUE5RTUvZjN1WjFsVHRLdmlNaG8rbVlocHJnMnBhcTZQMXhVdldmNWUvb1pUWm1DaW1LMys5TXRoeTcweUJZVGtrVlVXd2tReVJEY1Q5UTJFR1k2bVdsYktJaHh6U2lYS2pDaGQwSTV5aU5ud0pNQVZRQWVBNncyVHBiVTN5WXBuRjkxTXdRVXhtNVNiWlZMcUFWeFF1RXVucG4xUitCYlJpMk9WZ3ppeFlNcXFBQUFweGVWU2FZMCtUc3I2ak5hZnZHK0MrN1RLVWZPazVId0w4amNqNFhqM0RaRUpnSFBCQzhhb0JUOGpWbERLYkVwUVNvQlIxdjJ2bWUvWWFSRkJLWGZLbXlaMzk3V25lVExSdHZwMlhINExrM09YRmpWM0NqY05UVERvRzVhdVk1Z3ZTY21oSzJDR1BGTEthWEVQRUpWMEpTZ1F5cEhSK3AwbnFYSE5KS3FiN1BRSVlLQ2FLUVRjanJpaFg4WUJFVGpheHBuREpNSmZYUmFRaXpTRnRSZ3BaRFNaaWRDZWlLMDNKa0RGTjVyVDBkTDlMbXFDRzUzbzN0bElLUkFOMUswVWpjS2R0ODQrKzhnM0tCcjFFUko0Q1hzNFQ0bXBwT0ZJMWNFSmJPb0dqQVM1RVhwMjFCTWtRemNnUWxveVVORnk5RkJSRlhISm1QMDBQVWRPNnJ1MkpQNDRFMWh0ME5GWnI2N3dHMGZod2xZaHRQNGxkdVFVenRoczR6NytKVzljQ3p3OElWNnVqYy9LMm5hYVFwUGtIV09KS3g2elRqSlJVbkpHSG5ia3VwTnl4aU5lbDViYjBQVkh4TXBUVThCV0sxbUJKTTYrZ0FXUVZZNHBEcFBZZmdwemhJNTBQNkp5Sys1MHdzZThDNS9xVThSR2RFLzI2Tk1XK0NVenpmYzZPNkNJKzBjc09vZVhRZUZLUmUwQ3ZCVGtIbFE0TWJjWG1aZFI0dHk5R1NtazVOQVVyY2pzMjV5Rk1BYzVFaUtPMEFXM0FUcXprTTFwenhyRnU5elczejBmbHBvQSsvRUVzbllISVRGVE9RblE4OEM3SWk1eFc4VE85aGZqSmtqWDdLVDZrRTFlSzVpb1Q0aE5Ic1VMcHhhSUorUkowdDJpNGxvUjNnUHZkZUc1RHVOd24vZ1BBMXhHOUdaV2JmYU9meXIyOUl0ZlBPNjdDam13RnFqSUZMNG9yVmhZaXhIdE4wcFQ1TUVUbUFwRnVkWmhiR21iSmFtbUsxV05GdjZVMUpGeVY1aHBnUVlBeGNEWWlsWm0wT1pnQk9wK3UyRXBwa3M5cWRjWC85azFuOVNaTVBYWlY3ZWFrVzlkdUIyUW94T0NyMkM4U3dkYm5IYUlHb3FDdUx3MEh4NUdLL0FMa2R2TFozN01ZRDl4SHBLTmVIdWlWM0s3TTQvY3gwSmErRDdEd2tOR3htWUx0R3Y0ZEp4bnkycDd2ZnM0T0NUem9PQno3QkRDcC93cGg1QitBSy9yZUErbVh1U3cyZXdCeU1rMmFZaC9yRzFsVEdWTGlNZktuWjZ5OHY4a1FXblBDcGovMVZDWHI4STMvZXRhZ1RNd2pMOTlDNVhiZ3VjSlpNbVlFRFNGQTdrWDFuL1BjZkczaExrQzNJbndOcEMzUDZIWnkzOGhxWjV3emNFcGxQaDJYY0srbHAxblQvaGFvN2M1aVdSNUNGeTlaeS9PWW05NHFqaXpZVCtyY2lrMElQODdMb3djd1FDOFA4SDVWcXl2V1UxNjUwbVdBWDNsY1hyZ3htQ3QxVG5RMW9rK2ZkTHYwbGF4WkFqcnoreW1FcE92UzF4eVhEZWNsdEkyZ2J0aGkxQU1iRHA0SjNCTGcvUVoyeGUrS0l5UFM1UkRGenQ4VHpNUUFUZ3RRQ1k4RHVLUDFaRUFNcFlYSm11cDBFM1Zzd0V4WGRoSXhzbU4remRoVnhaV1JYbjAyVGRRRXFFUHd0TFROcWhORngxUlppMWx5anI4K0w5dXdqTHUxcGloelZ2U0krRWxXQlJGRnNaR01uZFZycXJKYzBycWsxTFRrVGJuU051MktFMzVLL241VXY4M082SC9vcW01MmtCRERTdGE0SXpsZC9SUEp6bEIxTjJPbGRWU3YycEJ3cFd1eVNLVnFNRjRIUG1KcTBWdVBpeG85dTdvRTJmV29jZEFFb25GRVQ3Z3VrWFVrTXBJVWQvMnF1SnBOTVZmcVFaOXJjeERaakJsN1dSbzZ6ZzlwTTFJa2F5S2psMmJuK3IxVHFHUWxhMmJ0YXNwRDJtU1JTeC9WdXpHTnQ3SFpDVG9teDNjNkpzOUwvZDRyOU83elRvd0toZ2dYdTFQRzRLeS82MmY1SnRjZ2tRWmZ2MlBKM1gwbHEyVE1WdWtGS2VJWllLVUhXWDVrUFVXNmZwMWRzVWVhWXY4SitDd3kwVXVZRUwwRHFCOGxBdTBpWU5XQWxXMzF4RmFnZFdBa2E5TFZPM05YVHVXMk55dEh1ZzZ6UGRWU3hnSVl5dGdCa3UzSDhraWJ5d2t4QXRRQW0rTUlqcTAwU1hZUlMzYzFRRTVxS2xWUnloeTczWUQzVnNKTnN4dWxIT0hxSVNpM2FFaWRFVUJXUTNoVFliYUh2Rmw1MG4vczVidmEyWjhJVXVQWVg5S0ZSYytsM2FlcDhObXdTZ2NjT3hGZGsxOEl5Zjdoa2F5SDJheFYzQ0hDaFFNdS9VeFc5emVPNTIvUitHMk4wb0J3Ujhpam9WRGcyYXZWbFk4QlNIUHNWNmp2Q3E3ZkF5MURUOVk2VFJwL0swdHNXQzdDcDRFSi9WY24yVzNBR2g3UzE3S0RidDVTaU9WMDVjY0FyR01rakRLMjkyekF2QWZRTXBmMVgyeGloeWpUUlppdU1FR2h6WUJmbyt5MzRZYmNlMDF6Y05TUFVVYmM2ZmhQeXc3SjBOcC8zZUlQdE1NQXgxeXhRc1l5cmg4cXdIN2lVcWM5NXBTZm5hc1BCOTN5aTcvU2RtQkZIdFZYcVdZYnNFMlFSMm9hTURiVnFMZkFuZ3VaTlJvR1dMbjRrUjRmMlkxZGxYQ3VmbFFnUEQ0b0dHUHl0SkJEWWZHRVpCMFJrTTBkbFFRdkVRVFZOM3BOZEpHeVljdUl1ak53dGpFbWI3aVhzRUg4WitURVdkY3JEWlFTUElPVkdCbHF3T2hydmc4VDEvUEp0MGJUam13dkVNczUwaHhianNweDBFc0htWkY1aUNMenBUbjJOZ1pmelJ2REtteHA0bmZBZFQ1eFRKZkdqbm1ZZW1rZ1gxVC9FSkxWQjh0azR5ejdKSXp5SmllYTF1aXl3Z3QvVlM0dUVPSlJyUm4vdHZ2OUVINjdXeDFWNGVFaDJTWmhwcmFUaXZqWm5RR21vVFQya3ZTditwTlZ4eUFVV04xdmJBdko2aWZVME84QmY5N25ycDJ5bDhnM2hkcTdDdDFDVmVVM1BKSCtFdTNuak5tWEc5OC9ONTdzY1RoYUVxeldUVXNMcDJqV3hLUFMyTDRSa1h2N3g0VFVBNlFpbndNKzJiZUMxVTNzaURZek55VHJTTUdicUR6SXp1Z3ozUlpmSDR3K3hNVFlWSnlURC8zd29hdm5CVzVEbmhaUG5ET0Rzcy9rWHUvQ092cEVyMXR3NVZMTVdCeW9EYTVUMlFaNkRRRXprVHByNGxGcCt1Z3Z3WGdFWndHUFdlQ3B4MEdlWUV4MCtWQXRTRC9GeUtyYlFaN3g4MGxpT1JNUVJ1bEJzRmNVanNydXhEWjJZN0NiSFJWN2RSVjJydlRReFNTRjZEeWFZcDlHOVU1RUxuVExkQzhpT3pDVGRWaVJPU0NUZk9NSHp2YWMrTkM5WXNSa0Y4bzArNWVZUnNEWnNJbjN3RGxCQnFMM1NjdWhmeUpwTGtEa1Vwd2REMTBvZjBKbzFPcUtGNlN4WXg1R3p1a3dsdlZxSmtuVlZSOEFOZEwwMGRtSWVRZTJ1aWV5eUdSRVQ2RFNCdG9HOGlaZDFpYWRYM1drZTZPUlp6R2RpWnNlS0NrNTBPK0JiN0c5cmFWV051eklvd2JVUDZiM0xPaHRYRXRrWGJsQjZTU3dLa0VyRlV6RlBGeUNmZmdNUHRpM1NsZWxmTzZaREtXKzI1L0hNblkzUUNmSHpqZXdUbGUwSEl3UFN4aXpaN1hPUCtLSjQwSW9kVWJacE9wQnJ2U0p6bExNSzdMcVQ2cjlwN3JvZzl4QWQ4blB4cFlSbjFRQ1ZTbk1Tb2ZvVnJ1RkhZdVFPdEFyUGIxSU1PclVnTCtXdGVOc3lwYUIzaXFZMXl0V0pLMkFPdjl0VWtBclp4K3RsUTB2SzdvWjdQVjF1ampwK0J2THdmS1Z6SjBjZVFXNEVpaTNQVXZWRXB4STFNcUdMWXExdkU0WDd4SE1lckJtZUovck4zUVNyRDltQjRqRzQ4QkNnSHRrNC9nSTNDZm9yZVZ3SFlqaEhEMW11OFFXQkJNTDA2NlZEYjhWWkt0SjVGLy9UZTg2WE55R21sR0VKYkx1UW91eTF4VitxTWpNQW8xMVBQQUZRZGFDK1Q5TFpGMXZ6b2FkZ2Y5NUE2WEFGd1h6dDB0a1hYay9yU0VYUk5EWHhSbG9YbCtnRGczZ0drWC9Qa1Z5K3pKWmYxa29XWXNHNWdwZ2FwQUtBWklBWGR6VGtzQmxZTndQK2UyVndCOFV0b2t6NERyZHg3L1N4TGpLUnVzVU5ydXgxNHIvamxwYjBlOTRmdTl3TEdMNkxZRUEyNjA4RHBvQzN3UGR6cldSRmNCWFFySVdCM3lQWTFSNHQ4N1ZkV3RsNHcyZ1BsTFUrSHd2aGdCTDYzVGhhMHRsL1dGRi9zNHZSQXJUV0tjTG52VG80TGZpVDFhclRoZjlvR2RhNVRNQjl0di9lMHdYTG5Uam5BbDgzQ2ZNRGFGa0hUbTRybFkyclBHcDRHZnFkT0VMRWpEZkwzaVBoQXc2eDBvTGxwVWljVWRuNU1UZzdaclVnS2xUeWNtRCtEWEtTRWpXa1lPTFhaZERSdjBUUmZSV2toRGhBQ3RFa2VOVW14VFlaQkw1V3U3Vm81aEhoMVlDbEc2MHNiYjYrWTJoZEpCT0lOUXphMlc5dTIxSXpnckpPdUlobld2MDdyYmhUc1ZQOUs1OXdMNGhmbXdVNUw1UURRZ1JJcFNzSVFZUWUwcVFHd0FTNkYrQVZ2UWNhQnJIUTdLR0dBa3FVUEpSWGJnZm9GYldmeE9reDB1SkZOMFBiQWpWZ0JBaFFyS2UraEl4d0tOa3NmejA0Mkg1akY0MTRBUGdiSi9yazViSXV2SjJLbE5WeU9TQTZjeEJXckZrdHdhdHZESXduMTBxRzdjcWVoQjB6Mk82NkNuWHluQmV6OUQ2WjkrUWh0TlN0TmxRSHZUV2swTWhXWXNFaWpTSi8ydHdvb0o1b0lvak5nRW4wQWpTTWpocE1uWUZIOEdvbHlqcE40SExPOEJUenR0YzlYcWZ3SldkSFBrUXlnUHpZQ0RQaG1wQWtXQUs3LzlZMEpYZ3V3MWpYRkFsSzlTZHdGZzVHR2t5aWY4RUFsYlgrMkF5Ny84THpubXAyc2M4UEhLWThRK0ZrblVvTlR4a2kyTHZDcWlRMytTN2Q1V3Vzb0h2TFpUSDE1V2hOK09ZZU01U3BCSm5uMVNKUXJ1QnRpc2NBSGxKc2JiVTZlSTlubWorQ0xySm4zZ2E2MnQrMXVyUzlublNjRUVsUjI4QyswcEJvdXJzM3EwUTFDTk1wTldUaHdmdmxmVjFCdko1Z2M4Qms0RXFoU3B4U053T3hBUmFGZmx2SmZWZmRicjR2V0lYTmtXM3JTVkVhQTBJRVNJa2E0Z1FJVmxEaEdRTkVXS2s0djhCd2cxQWNlSk1iSU1BQUFBQVNVVk9SSzVDWUlJPQ==\",\"name\":\"logo.png\",\"size\":3716,\"type\":\"image/png\"}', '');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_form`
--

CREATE TABLE `zzzzsys_form` (
  `zzzzsys_form_id` varchar(25) NOT NULL,
  `sfo_type` varchar(300) DEFAULT NULL,
  `sfo_code` varchar(300) DEFAULT NULL,
  `sfo_description` varchar(300) DEFAULT NULL,
  `sfo_breadcrumb_title` varchar(100) DEFAULT NULL,
  `sfo_table` varchar(300) DEFAULT NULL,
  `sfo_primary_key` varchar(300) DEFAULT NULL,
  `sfo_browse_redirect_form_id` varchar(300) DEFAULT NULL,
  `sfo_browse_row_height` int(11) DEFAULT NULL,
  `sfo_browse_rows_per_page` int(11) DEFAULT NULL,
  `sfo_browse_title_multiline` varchar(1) DEFAULT '0',
  `sfo_browse_sql` text DEFAULT NULL,
  `sfo_javascript` longtext DEFAULT NULL,
  `sfo_browse_javascript` mediumtext DEFAULT NULL,
  `sfo_edit_javascript` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_form`
--

INSERT INTO `zzzzsys_form` (`zzzzsys_form_id`, `sfo_type`, `sfo_code`, `sfo_description`, `sfo_breadcrumb_title`, `sfo_table`, `sfo_primary_key`, `sfo_browse_redirect_form_id`, `sfo_browse_row_height`, `sfo_browse_rows_per_page`, `sfo_browse_title_multiline`, `sfo_browse_sql`, `sfo_javascript`, `sfo_browse_javascript`, `sfo_edit_javascript`) VALUES
('nuhome', 'launch', 'nuhome', 'Home', NULL, '', '', '', 0, 0, '0', '', 'nuAttachFontAwesome(\'user_home\',\'fa fa-home\');\nnuAttachFontAwesome(\'run_access\',\'fa fa-unlock\');\nnuAttachFontAwesome(\'object_button\',\'fa fa-align-center\');\nnuAttachFontAwesome(\'form_button\',\'fa fa-align-justify\');\nnuAttachFontAwesome(\'run_user\',\'fa fa fa-user\');\nnuAttachFontAwesome(\'edit_php\',\'fa fa-code\');\nnuAttachFontAwesome(\'edit_report\',\'fa fa-file-text-o\');\nnuAttachFontAwesome(\'run_report\',\'fa fa-file-pdf-o\');\nnuAttachFontAwesome(\'run_php\',\'fa fa-play\');\nnuAttachFontAwesome(\'run_setup\',\'fa fa-cogs\');\nnuAttachFontAwesome(\'run_lang\',\'fa fa-globe\');\nnuAttachFontAwesome(\'run_fast_form\',\'fa fa-bolt\');\nnuAttachFontAwesome(\'run_format\',\'fa fa-calendar\');\nnuAttachFontAwesome(\'run_file\',\'fa fa-picture-o\');\nnuAttachFontAwesome(\'run_note\',\'fa fa-sticky-note-o\');\nnuAttachFontAwesome(\'run_sql\',\'fa fa-table\');\nnuAttachFontAwesome(\'open_database\',\'fa fa-database\');\nnuAttachFontAwesome(\'run_fast_report\',\'fa fa-bolt\');\nnuAttachFontAwesome(\'system_update\',\'fa fa-cloud-download\');\nnuAttachFontAwesome(\'run_csvtransfer\',\'fa fa-table\');\nnuAttachFontAwesome(\'run_session\',\'fa fa-key\');\nnuAttachFontAwesome(\'run_nucodesnippets\',\'fa fa-file-code-o\');\nnuAttachFontAwesome(\'run_cloner\',\'fa fa-clone\');\nnuAttachFontAwesome(\'run_backup\',\'fa fa-hdd-o\');\nnuAttachFontAwesome(\'run_refresh_cache\',\'fa fa-refresh\');\n\n\n$(\'#user_home\').addClass(\'nuUserHomeButton\');\n$(\'.nuActionButton\').hide();\n\n$(\'#open_database\').attr(\'title\', \'PHPMyAdmin\')\n\nnuGetStartingTab();\n\n// Change the button height to 45px for certain languages:\n\nvar l = nuTranslate(\'Language\');\n// Vietnamese, Armenian, Tamil\nif (l == \'Ngôn ngữ\' || l == \'Լեզու\' || l == \'மொழி\' ) {\n   $(\'.nuButton\').css(\'height\',\'45\');\n}\n\n\nif (nuSERVERRESPONSE.is_demo) {\n    $(\'#run_session\').remove();\n}', '', ''),
('nubrowse', 'subform', 'nubrowse', 'Browse Columns', NULL, 'zzzzsys_browse', 'zzzzsys_browse_id', '', 0, 5, '0', 'SELECT * FROM zzzzsys_browse\nORDER BY sbr_order\n', '$(\'#nuSearchButton\').remove();\n$(\'#nuSearchField\').remove();\n$(\'#nuPrintButton\').remove();\n\nnuSetTitle($(\'#sbr_title\').val());\n\nvar pid = parent.nuFORM.getCurrent().record_id;\n\nif(nuFORM.getCurrent().record_id == -1){\n    $(\'#sbr_zzzzsys_form_id\').val(pid).change();\n}\n', NULL, NULL),
('nutab', 'browse', 'nutab', 'Form Tab', NULL, 'zzzzsys_tab', 'zzzzsys_tab_id', '', 0, 0, '0', 'SELECT * FROM zzzzsys_tab\nJOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id\nORDER BY syt_order', '\n$(\"[data-nu-column=\'3\']\").each(function() {\n    $(this).addClass(\'nu_\'+this.textContent);\n});\n\n', NULL, NULL),
('nuobject', 'browseedit', 'nuobject', 'Object', '#sob_all_id#|New', 'zzzzsys_object', 'zzzzsys_object_id', '', 0, 18, '0', 'SELECT * FROM zzzzsys_object\nJOIN #TABLE_ID# ON zzzzsys_object_id = theid\nJOIN zzzzsys_tab ON zzzzsys_tab_id = sob_all_zzzzsys_tab_id\nJOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id \nORDER BY sfo_description, sob_input_type, sob_all_id', '// Code Snippets form\nnuSetSnippetFormFilter(0,0, 1, 0); // SQL\nnuHide(\'sob_code_snippet_display_lookupcode\');\nnuHide(\'sob_code_snippet_select_lookupcode\');\n\nif(nuFormType() == \'edit\'){\n    \n    nuHide(\'label_zzzzsys_event_sf\');\n    nuDisable(\'sob_calc_formula\');\n    $(\'#add_total\').css(\'overflow-y\',\'scroll\').css(\'background-color\',\'#ebebeb\');\n    \n    $(\'#zzzzsys_event_sfsev_javascript\').attr(\'id\',\'jsfuntitle\');\n    $(\'#sob_calc_formula\').addClass(\'nuCalculatorCurrency\').css(\'font-size\', 12);\n    $(\'#sob_all_display_condition\').addClass(\'sql\');\n    $(\'#sob_all_default_value_sql\').addClass(\'sql\');\n    $(\'#sob_display_sql\').addClass(\'sql\');\n    $(\'#sob_input_datalist\').addClass(\'sql\');\n    $(\'#sob_select_sql\').addClass(\'sql\');\n    $(\'#sob_lookup_php\').addClass(\'php\');\n    $(\'#sob_lookup_javascript\').addClass(\'js\');\n    $(\'#sob_input_javascript\').addClass(\'js\');\n    $(\'#sob_html_javascript\').addClass(\'js\');\n    $(\'#sob_html_code\').addClass(\'html\');\n    $(\"[id$=\'sev_javascript\']\").addClass(\'js\');\n    $(\"#title_zzzzsys_event_sfsev_javascript\").removeClass(\'js\');\n    \n    // $(\'#sob_input_type\').attr(\'size\', \'5\');\n    \n    $(\'#sob_run_zzzzsys_form_open_button\').toggleClass(\'input_button nuButton nuLookupButton\');\n    $(\'#sob_lookup_zzzzsys_form_open_button\').toggleClass(\'input_button nuButton nuLookupButton\');\n    $(\'#sob_subform_zzzzsys_form_open_button\').toggleClass(\'input_button nuButton nuLookupButton\');\n    $(\'#sob_all_type_open_button\').toggleClass(\'input_button nuButton nuLookupButton\');\n\n    $(\'#nuTab8\').click(function(){nuTestChart();});\n        \n    nuAttachButtonImage(\'icon\', \'LUJS\');\n    nuAttachButtonImage(\'ab_event\',\'AB\');\n    nuAttachButtonImage(\'di_sql\',\'SQL\');\n    nuAttachButtonImage(\'se_sql\',\'SQL\');\n    \n    $(\'#sob_lookup_javascript\')\n	.css(\'padding\', \'3px 3px 3px 3px\')\n    \n    $(\'#viewflowchart\')\n    .css(\'padding\', \'46px 0px 0px 3px\')\n    .css(\'text-align\', \'left\')\n    .css(\'background-size\', \'75px\')\n    \n    \n    if($(\'#zzzzsys_event_sf000sev_event\').val() !== \'\'){\n        $(\'#nuTab10\').css(\'font-weight\', \'bold\');\n    }\n\n    nuSetToolTip(\'sob_all_id_create_button\',nuTranslate(\'Add database column\'));\n\n    if(nuIsNewRecord()){\n            \n        $(\'#sob_all_top\').val(0).change();\n        $(\'#sob_all_left\').val(60).change();\n        $(\'#sob_all_height\').val(22).change();\n        $(\'#sob_all_width\').val(100).change();\n        $(\'#sob_all_validate\').val(0).change();\n        $(\'#sob_all_access\').val(0).change();\n        $(\'#sob_all_align\').val(\'left\').change();\n        $(\'#sob_all_cloneable\').val(1).change();\n        \n        nuHide(\'sob_all_id_create_button\');\n        \n        if (nuIsIframe()) {\n           nuGetLookupId(nuSelectedTabId(parent),\'sob_all_zzzzsys_tab_id\', false);\n           $(\'#sob_all_label\').focus();\n           nuSetValue(\'sob_all_type\',\'input\');\n           nuSetValue(\'sob_input_type\',\'text\');	\n        }        \n        \n    } \n\n    nuUpdateIdDatalist();\n    runMethodChanged();\n    nuHasNotBeenEdited();\n}\n\nfunction nuColumnDataType(table, id) {\n\n    var s = nuFORM.tableSchema[table];\n    var i = -1;\n    if (typeof s!== \"undefined\") {\n        var n = s.names;\n        i = n.indexOf(id.val());\n    }\n    \n    return i > -1 ? s.types[i] : \'\';\n    \n}\n\njQuery.fn.cssNumber = function (prop) {\n    var v = parseInt(this.css(prop), 10);\n    return isNaN(v) ? 0 : v;\n};\n\nfunction nuShowDataType() {\n	\n    var id = $(\'#sob_all_id\');\n    var iDataType =   $(\'#sob_all_id_datatype\');\n \n    var table = $(\"#sob_all_table\").val();\n    var dataType = \'\';\n    \n    if (table !== \'\' && id.val() !== \'\') {\n        dataType = nuColumnDataType(table, id);\n	    \n    }\n\n    iDataType.val(dataType);\n    nuDisplayCreateButton();\n    \n}\n\nfunction nuObjectNoId() {\n    return [\'word\', \'html\', \'button\', \'run\', \'subform\',\'contentbox\'].indexOf(nuGetValue(\'sob_all_type\')) !== -1;\n}\n\nfunction nuDisplayCreateButton() {\n    \n    var dataType = nuColumnDataType($(\"#sob_all_table\").val(), $(\'#sob_all_id\'));\n	nuShow(\'sob_all_id_create_button\', dataType === \'\' && $(\'#sob_all_id\').val() !== \'\' && $(\'#sob_all_table\').val() !== \'\' && ! nuObjectNoId());\n	\n}\n\nfunction nuDisplayIncHeightButtons() {\n\n    var showButtons = [\'html\',\'textarea\',\'subform\',\'image\',\'contentbox\'].indexOf(nuGetValue(\'sob_all_type\')) !== -1; \n    \n    $(\'[id^=sob_height_btn_set]\').nuShow(showButtons);\n}\n\nif(nuFormType() == \'edit\'){\n    \n	var v   = $(\'#sob_input_type\').val();\n    nuInputTypeChanged(v);\n    nuHideCalcObjects();\n    \n    if (!nuIsNewRecord()) {\n        nuDisplayIncHeightButtons();\n        nuShowDataType();\n    }    \n    \n    nuPopulateHTML();\n    nuAddDataListToRunId();\n    \n    nuAttachFontAwesome(\'sob_all_align_btn_left\',\'fa fa-align-left\');\n    nuAttachFontAwesome(\'sob_all_align_btn_center\',\'fa fa-align-center\'); \n    nuAttachFontAwesome(\'sob_all_align_btn_right\',\'fa fa-align-right\');\n    nuAttachFontAwesome(\'sob_all_validate_btn_no_duplicates\',\'fa fa-diamond\');\n    nuAttachFontAwesome(\'sob_all_validate_btn_no_blanks\',\'fa fa-battery-full\');\n    nuAttachFontAwesome(\'sob_all_validate_btn_no_duplicates_or_blanks\',\'fa fa-star\');\n    nuAttachFontAwesome(\'sob_all_access_btn_hidden\',\'fa fa-eye-slash\');\n    nuAttachFontAwesome(\'sob_all_access_btn_readonly\',\'fa fa-lock\');\n    nuAttachFontAwesome(\'sob_all_access_btn_editable\',\'fa fa-pencil-square-o\');\n    nuAttachFontAwesome(\'sob_all_validate_btn_none\',\'fa fa-globe\');\n    \n    $( \"button[id*=\'_btn_\']\" ).addClass(\'nuQuickButton\').removeClass(\'input_button nuButton\');\n        \n    var filter = String(window.filter).split(\'|\');\n    \n    if(filter[0] == \'fromfastform\'){\n    \n		$(\'#nuDeleteButton\').remove();\n		$(\'#nuCloneButton\').remove();\n		$(\'#nuSaveButton\').remove();\n		$(\'#sob_all_id\').val(filter[1]).addClass(\'nuHighlight\');\n		$(\'#sob_all_label\').val(filter[2]).addClass(\'nuHighlight\');\n    \n    }\n    \n    $(\'.js\').dblclick(function() {nuOpenAce(\'Javascript\', this.id);});\n    $(\'.sql\').dblclick(function() {nuOpenAce(\'SQL\', this.id);});\n    $(\'.html\').dblclick(function() {nuOpenAce(\'HTML\', this.id);});\n    $(\'.php\').dblclick(function() {nuOpenAce(\'PHP\', this.id);});\n	\n	nuHide(\'sob_input_format\');\n\n	var sit     = $(\'#sob_input_type\').val();\n\n	if(sit == \'nuDate\' || sit == \'nuNumber\'){\n	nuShow(\'sob_input_format\');\n	}\n\n	if(sit == \'nuScroll\'){\n	nuShow(\'sob_input_javascript\');\n	}else{\n	nuHide(\'sob_input_javascript\');\n	}\n\n	nuObjectColor();\n	\n	nuGetStartingTab();\n\n\n}\n\nfunction stripHTMLTags(s) {\n    return s == \'\' ? \'\' : s.replace(/<\\/?[^>]+(>|$)/g, \"\");\n}\n\n\nif(nuFormType() == \'browse\'){\n\n	$(\"[data-nu-column=\'0\']\").each(function() {\n		$(this).addClass(\'nu_\'+this.textContent).addClass(\'nuCellColored\');\n	});\n	\n	\n    $(\"[data-nu-column=\'4\']\").each(function() {\n    		$(this).html(stripHTMLTags($(this).html()).replace(/&nbsp;/g,\' \').trim());\n    });\n    	\n}\n\nfunction nuTestChart(){\n    \n    var g   = $(\'#sob_html_chart_type\').val();\n    var t   = $(\'#sob_all_type\').val();\n    \n    if(g == \'\' || t != \'html\'){$(\'#google_chart\').html(\'\');return;}\n    \n    var c   = \'ComboChart\';\n    var t   = $(\'#sob_html_title\').val();\n    var x   = $(\'#sob_html_vertical_label\').val();\n    var y   = $(\'#sob_html_horizontal_label\').val();\n    var l   = \'bars\';\n    var s   = false;\n    var a   = [\n                [\'Month\', \'Shane\', \'Dave\', \'Adam\', \'Paul\', \'Chris\'],\n                [\'2018\', 100, 200, 300, 400, 500],\n                [\'2019\', 165, 238, 322, 498, 550],\n                [\'2029\', 165, 938, 522, 998, 450],\n                [\'2021\', 135, 1120, 599, 1268, 288]\n              ];\n		\n    if(g == \'p\')    {c = \'PieChart\';}\n    if(g == \'l\')    {l = \'lines\';}\n    if(g == \'bh\')   {c = \'BarChart\';}\n    if(g == \'bhs\')  {c = \'BarChart\';}\n    if(g == \'bs\')   {s = true;}\n    if(g == \'bhs\')  {s = true;}\n\n	nuChart(\'google_chart\', c, a, t, x, y, l, s);\n\n}\n\nfunction nuAddDataListToRunId() {\n\n    var arrRecordId = [\n        [\"     \", nuTranslate(\"Leave blank to open a Browse or Launch Form\")],\n        [\"-1\", nuTranslate(\"Open a new Record\")],\n        [\"#EXAMPLE_HASH_COOKIE#\", nuTranslate(\"Use a Hash Cookie\")]\n    ];\n\n    nuAddDatalist(\'sob_run_id\', arrRecordId);\n\n    $(\'#sob_run_id\').on(\'input\', function() {\n        if ($(this).val() == \'     \') {\n            $(this).val(\'\').change();\n        }\n\n    });\n\n}\n\nfunction nuObjectColor(){\n    \n    $(\'.nuValidate\').removeClass(\'nuValidate\');\n\n	var e           = $(\'#sob_all_type\').hasClass(\'nuEdited\');\n	var o			= [];\n\n	o[\'run\']		= 1;\n	o[\'display\']	= 2;\n	o[\'select\']		= 3;\n	o[\'lookup\']		= 4;\n	o[\'subform\']	= 5;\n	o[\'image\']		= 6;\n	o[\'input\']		= 7;\n	o[\'html\']		= 8;\n	o[\'calc\']		= 9;\n	\n\n    $(\'#sob_all_type\').removeClass();\n    \n    if(e){                                                                      //-- keep class if edited\n        $(\'#sob_all_type\').addClass(\'nuEdited\');\n    }\n    \n    $(\'#sob_all_type\').addClass(\'nu_\'+$(\'#sob_all_type\').val());\n    \n    $(\"#sob_all_type > option\").each(function() {\n        $(this).addClass(\'nu_\'+this.value);\n    });\n	\n	/*\n    $(\"#sob_input_type > option\").each(function() {\n        $(this).addClass(\'input_\'+this.value);\n    });\n    */\n	\n    var t   = o[$(\'#sob_all_type\').val()];\n    \n    $(\"[id^=\'nuTab\']\").removeClass(\'nuRelatedTab\');\n    \n    for(var i = 1 ; i < o.length ; i++){\n        $(\'#nuTab\' + i).removeClass(\'nuRelatedTab\');\n    }\n    \n    $(\'#nuTab0\').addClass(\'nuRelatedTab\');\n    $(\'#nuTab\' + t).addClass(\'nuRelatedTab\');\n    \n} \n\n\nfunction nuAddToFormula(e){\n    \n    var fld = e.target.innerHTML;\n    var frm = $(\'#sob_calc_formula\').val();\n    \n    if(fld == \'Clear\'){\n        \n        $(\'#sob_calc_formula\')\n        .val(\'\')\n        .addClass(\'nuEdited\');\n        return;\n        \n    }\n\n    $(\'#sob_calc_formula\')\n    .addClass(\'nuEdited\')\n    .val(frm + fld);\n    \n    nuHasBeenEdited();\n    \n}\n\nfunction nuDisplayAllTypeInput() {\n\n    let v = nuGetValue(\'sob_input_type\',\'text\');\n    v = nuGetValue(\'sob_all_type\') == \'input\' ? v : \'\';\n    $(\'#sob_all_type_input\').val(v);\n    \n}\n\nfunction nuTypeChanged() {\n\n   nuObjectColor();\n   nuDisplayCreateButton();\n   nuDisplayIncHeightButtons();\n   nuDisplayAllTypeInput();\n\n}\n\nfunction nuInputTypeChanged(t){\n\n    nuHide(\'sob_input_format\');\n    nuHide(\'sob_input_count\');\n    nuHide(\'sob_input_javascript\');\n    nuHide(\'sob_input_datalist\');\n    \n    if(t == \'nuScroll\'){\n        nuShow(\'sob_input_javascript\');\n    }\n\n    if(t == \'nuAutoNumber\'){\n        \n        nuShow(\'sob_input_count\');\n        $(\'#sob_input_javascript\').val(\'\').addClass(\'nuEdited\');\n        \n    }\n\n    if(t == \'nuDate\' || t == \'nuNumber\' || t == \'number\' || t == \'text\' || t == \'email\' || t == \'search\' || t == \'month\'){\n        nuShow(\'sob_input_datalist\');\n        if ($(\'#sob_input_datalist\').val() == \'\' && $(\'#sob_all_id_datatype\').val() !== \'\') {\n         //   $(\'#sob_input_datalist\').val(\"SELECT DISTINCT `\" + $(\"#sob_all_id\").val() + \"` FROM `\" + $(\'#sob_all_table\').val() + \"` ORDER BY 1\").change();\n        }\n    }\n    \n    if(t == \'nuDate\' || t == \'nuNumber\'){\n        \n        nuShow(\'sob_input_format\');\n\n        $(\'#sob_input_format\').children().each(function(index) {\n            \n            $(this).show();\n            \n            if($(this).val()[0] == \'D\' && t != \'nuDate\')   {$(this).hide();}\n            if($(this).val()[0] == \'N\' && t != \'nuNumber\') {$(this).hide();}\n            \n        });\n        \n    }\n    \n    nuDisplayAllTypeInput();\n    \n}\n\nfunction nuHideCalcObjects(){\n\n    var f   = $(\'#sob_all_zzzzsys_form_id\').val();\n\n    $(\'#add_total\').children().each(function(index) {\n\n\n        if($(this).val() != f){\n            $(this).hide();\n        }\n        if($(this).text() == $(\'#sob_all_id\').val()){\n            $(this).hide();\n        }\n\n    });\n    \n}\n\n\nfunction nuAddCalcObject(t){\n    \n    var f   = $(\'#sob_calc_formula\').val();\n    var i   = $(t).attr(\'data-nu-ids\');\n    var s   = f + \"nuTotal(\'\" + i + \"\')\";\n    \n    if(i == \'\'){return;}\n\n    $(\'#sob_calc_formula\')\n    .addClass(\'nuEdited\')\n    .val(s);\n\n    $(\'#add_total\').val(\'\');\n    \n    nuHasBeenEdited();\n    \n}\n\n\nfunction nuPopulateHTML(){\n\n    var o       = nuCalcObjects();\n    var a       = [];\n\n    for(var i = 0 ; i < o.length ; i++){\n        \n        var ids = String(o[i].ids);\n        var ty  = o[i].type;\n        var id  = String(o[i].ids).split(\'.\');\n        var sp  = \'&nbsp;\';\n\n        if(id.length == 1){\n            a.push(\'<tr><td><div title=\"\'+ty+\'\" style=\"overflow:hidden;width:305px;text-align:left;padding:2px\" onclick=\"nuAddCalcObject(this);\" class=\"nuCalculatorButton nu_\' + o[i].type + \'\" data-nu-ids=\"\' + ids + \'\">\' + ids + \'</div></td></tr>\');\n        }else{\n            \n            var h   = \'<span title=\"subform\" class=\"nu_subform\">\' + id[0] + \'</span>.<span title=\"\'+ty+\'\" class=\"nu_input\" style=\"padding:7px 5px 7px 5px\">\' + id[1] + sp.repeat(200) + \'</span>\';\n            a.push(\'<tr><td><div style=\"overflow:hidden;width:305px;text-align:left;padding:2px\" onclick=\"nuAddCalcObject(this);\" class=\"nuCalculatorButton nu_subform\" data-nu-ids=\"\' + ids + \'\">\' + h + \'</div></td></tr>\');\n            \n        }\n        \n    }\n\n    $(\'#add_total\').html(\'<table>\' + a.join(\'\') + \'</table>\');\n\n}\n\n\nfunction nuSetSelectIndex(i, index) {\n\n  $(\"#\"+ i).prop(\"selectedIndex\", index).change();\n\n}\n\nfunction nuSetLookupWidth() {\n    var w = $(\'#sob_lookup_description\').val() == $(\'#sob_lookup_code\').val() ? 0 : 150;\n    var cw = $(\'#sob_lookup_description_width\').val();  \n    if (cw == 0 || cw == 150 || w == 0) $(\'#sob_lookup_description_width\').val(w).change();\n}\n\n\nfunction subFormRowsCount(subform, fieldname) {\n    \n    var sf = nuSubformObject(subform);\n    var col = sf.fields.indexOf(fieldname);\n	var c = 0;\n    for (var row = 0; row < sf.rows.length; row++) {\n        if (sf.deleted[row] == 0 && sf.rows[row][col].trim() != \'\') c++;\n    }\n    \n	return c;\n	\n}\n\nfunction nuBeforeSave() {\n    \n    runMethodChanged();\n    if ($(\'#sob_all_type\').val() == \'select\') { $(\'#sob_select_multiple\').addClass(\'nuEdited\');}\n    \n    $(\"#sob_all_event\").prop(\'checked\', subFormRowsCount(\'zzzzsys_event_sf\', \'sev_event\') > 0 ).change();\n    \n}\n\nfunction runMethodChanged() {\n    \n    var m = $(\'#sob_run_method\').val();\n    nuEnable(\'sob_run_target\', m == \'b\');\n\n    if ($(\'#sob_run_target\').prop(\"selectedIndex\") > 0 && m == \'b\') { return;}\n    \n    if (m == \'b\' || m == \'i\') {\n        $(\'#sob_run_target\').prop(\"selectedIndex\", m == \'b\' ? 1 : 0).change();\n    }\n\n}\n\nfunction nuOnClone(){\n    nuHide(\'sob_all_id_create_button\');\n}\n\nfunction nuUpdateIdDatalist() {\n\n    var t = nuFORM.tableSchema[$(\"#sob_all_table\").val()];\n    nuAddDatalist(\'sob_all_id\', typeof t!== \"undefined\" ? t.names : []);\n\n}', NULL, NULL),
('nufflaunch', 'launch', 'nufflaunch', 'Form Builder', NULL, '', '', '', 0, 0, '0', '', '$(\"[id$=\'ff_browse\']\").hide();\n$(\'.nuActionButton\').hide();\nnuShow(\'title_obj_sfff_browse\');\nnuHide(\'nuTab0\');\nnuHide(\'fastform_prefix\');\nnuHide(\'availablecolumnswrd\');\nnuHide(\'nuFFAvailableColumns\');\nnuDisable(\'nuFFAvailableColumns\');\nnuSelectRemoveMultiple();\nnuInputMaxLength(\'fastform_prefix\', 3);\nnuSetToolTip(\'fastform_table\', nuTranslate(\'Either pick an existing table or enter a new table name.\'), true);\nnuSubformEnableMultiPaste(\"obj_sf\", \"#obj_sf000ff_label\");\nnuSelectRemoveEmpty(\'obj_sf000ff_type\',\'-1\');\n\nvar styleHeading = { \'font-size\': 14, \'font-weight\': 700, \'padding\': 5 };\n$(\'#ffwrd\').css(styleHeading).addClass(\'nuTabHolder\');\n$(\'#wrdaddable\').css(styleHeading).addClass(\'nuTabHolder\');\n$(\'#availablecolumnswrd\').css(styleHeading).addClass(\'nuTabHolder\');\n\nnuSetFFTypeOptionsColor(\'obj_sf000ff_type\');\n\nvar fieldTitle = $(\'#obj_sf000ff_field\').attr(\'title\');\n\nnuSetFK();\n\nnuDisableLastFFRow();\n$(\'#fastform_type\').focus();\n\nnuAddActionButton(\'nuRunPHPHidden\', \'Build Fast Form\', \'nuRunPHPHidden(\"RUNFF\");\');\n\n$(\"#fastform_type > option\").each(function() {\n    $(this).addClass(\'nu_\' + this.value);\n});\n\nnuMoveFieldPrefixToSubform();\n\n$(\'#fastform_prefix\').on(\'click\', function(e) {\n    e.stopPropagation();\n});\n\nfunction nuFormColor() {\n\n    var t = String($(\'#fastform_type\').val());\n\n    $(\'#fastform_type\').removeClass().addClass(\'nu_\' + $(\'#fastform_type\').val());\n    $(\'#fastform_table\').nuShow(t !== \'launch\');\n\n    if(t == \'browse\' || t == \'browseedit\') {\n\n        $(\"[id$=\'ff_browse\']:checkbox\").each(function(index) {\n\n            var fld = \'#\' + this.id.substr(0, 6) + nuPad3(index + 1) + \'ff_field\';\n\n            if($(fld).length == 1) {\n                if($(this).attr(\'data-nu-no-browse\') !== \'\') $(this).show();\n            }\n\n        });\n\n    } else {\n        $(\"[id$=\'ff_browse\']:checkbox\").hide();\n    }\n\n    nuSetFK();\n\n}\n\nvar tableExists = false;\n\nfunction nuSetFFTable() {\n\n    let v = $(\'#fastform_table\').val();\n    tableExists = nuFORM.getTables().indexOf(v) !== -1;\n    let colPickerButtons = $(\"[id$=\'ff_column_picker\']\");\n\n    var ff_fields = $(\"[data-nu-field=\'ff_field\']\");\n\n    ff_fields\n        .toggleClass(\'input_nuScroll\', tableExists)\n        .toggleClass(\'nuScroll\', tableExists);\n\n    colPickerButtons.prop(\'disabled\', !tableExists).toggleClass(\'nuReadonly\', tableExists);\n    nuShow(\'fastform_prefix\', !tableExists);\n    nuShow(\'check_nulog\', !tableExists);\n\n    let a = $(\'#nuFFAvailableColumns\');\n\n    if(tableExists) {\n        $(\'#obj_sf\').css(\'left\', a.cssNumber(\'left\') + a.cssNumber(\'width\') + 50);\n        $(\'#ffwrd\').css(\'left\', a.cssNumber(\'left\') + a.cssNumber(\'width\') + 50);\n        ff_fields.attr(\'title\', fieldTitle);\n    } else {\n        $(\'#obj_sf\').css(\'left\', a.cssNumber(\'left\'));\n        $(\'#ffwrd\').css(\'left\', a.cssNumber(\'left\'));\n        ff_fields.attr(\'title\', \'\');\n    }\n\n    $(\"#title_obj_sfff_field\")\n        .removeClass(\'input_nuScroll\')\n        .removeClass(\'nuScroll\');\n\n    let l = $(\"[id$=\'ff_browse\']\").length - 2;\n\n    $(\'#obj_sf\' + nuPad3(l) + \'ff_browse\').hide();\n\n    nuSetFK();\n\n}\n\nfunction nuSetFK() {\n\n    nuHide(\'fastform_fk\');\n\n    let table = $(\'#fastform_table\').val();\n    if(table !== \'\' && nuFORM.getTables().indexOf(table) == -1 && $(\'#fastform_type\').val() == \'subform\') {\n        nuShow(\'fastform_fk\');\n    }\n\n}\n\nfunction nuShowFFO(e) {\n\n    var t = $(\'#\' + e.target.id).attr(\'data-nu-prefix\');\n    var i = $(\'#\' + t + \'ff_id\').val();\n    var l = $(\'#\' + t + \'ff_label\').val();\n    var f = $(\'#\' + t + \'ff_field\').val();\n    var fff = \'fromfastform|\' + f + \'|\' + l;\n\n    nuPopup(\'nuobject\', i, fff);\n\n}\n\nfunction nuFocusFFObject(e) {\n\n    var p = $(e.target).attr(\'data-nu-prefix\');\n    if($(\'#\' + p + \'ff_id\').val() === \'\') {\n        $(\'#fastform_table\').focus();\n    }\n\n}\n\nfunction nuMoveFF() {\n\n    var i = $(\'#new_id\').val();\n    nuPopup(i, -2);\n\n}\n\nfunction nuCreateSQLPrefix() {\n\n    var p = $(\'#fastform_prefix\');\n    var t = $(\'#fastform_table\');\n\n    p.val(String(t.val()).substr(0, 3));\n\n}\n\nfunction nuBeforeSave() {\n\n    var table = $(\'#fastform_table\').val();\n    var type = String($(\'#fastform_type\').val());\n    var browse = type.substr(0, 6) == \'browse\';\n\n    if(table === \'\' && type != \'launch\') {\n\n        nuMessage([\'<b>\' + nuTranslate(\'Table Name\') + \'</b> \' + nuTranslate(\'cannot be left blank\')]);\n        return false;\n\n    }\n\n    if(type === \'\' || type === \"null\") {\n\n        nuMessage([\'<b>\' + nuTranslate(\'Form Type\') + \'</b> \' + nuTranslate(\'cannot be left blank\')]);\n        return false;\n\n    }\n\n    if(browse) {\n\n        if($(\"[data-nu-field=\'ff_browse\']:checked\").length === 0) {\n\n            nuMessage([nuTranslate(\'At least 1 Browse needs to be checked\')]);\n            return false;\n\n        }\n\n    }\n\n    let fieldArr = nuSubformColumnArray(\'obj_sf\', \'ff_field\');\n\n    if(fieldArr.includes(\'\') || !nuArrayIsUnique(fieldArr)) {\n        nuMessage(nuTranslate(\'The Field Names must be both unique and not blank\'));\n        return false;\n    }\n\n    let pk = $(\'#fastform_table\').val() + \'_id\';\n    if(fieldArr.includes(pk)) {\n        nuMessage(nuTranslate(\'The Primary Key %s must not be entered.\').replace(\'%s\', \'<b>\' + pk + \'</b>\'));\n        return false;\n    }\n\n\n    var v = $(\'#fastform_table\').val();\n    var t = $(\'#fastform_type\').val();\n    var f = $(\'#fastform_fk\').val();\n\n    if(v !== \'\' && nuFORM.getTables().indexOf(v) === -1 && t === \'subform\' && f === \'\') {\n\n        nuMessage([\'<b>\' + nuTranslate(\'Foreign Key Field Name\') + \'</b> \' + nuTranslate(\'cannot be left blank\')]);\n        return false;\n\n    }\n\n    var a = [];\n\n    for(var i = 0; i < nuSubformObject(\'obj_sf\').rows.length; i++) {\n        a.push(nuSubformObject(\'obj_sf\').rows[i][2]);\n    }\n\n\n    if(f !== \'\' && a.indexOf(f) > -1 && t === \'subform\') {\n\n        nuMessage([\'<b>\' + nuTranslate(\'Foreign Key Field Name\') + \'</b> \' + nuTranslate(\'is already used\')]);\n        return false;\n\n    }\n\n    if(!nuValidColumn()) {\n        return false;\n    }\n\n    return true;\n\n}\n\nfunction nuValidColumn() {\n\n    var tn = $(\'#fastform_table\').val();\n\n    if(nuFORM.getTables().indexOf(tn) == -1) {\n        return true;\n    }\n\n    var sf = nuSubformObject(\'obj_sf\');\n\n    for(var i = 0; i < sf.rows.length; i++) {\n\n        if(sf.rows[i][4] == 1 && sf.deleted[i] != 1) { //-- ticked column checkbox\n\n            var valid = nuFORM.tableSchema[tn].names.indexOf(sf.rows[i][2]); //-- fieldname\n\n            if(valid == -1) {\n\n                nuMessage([nuTranslate(\'Invalid column name\') + \' <b>\' + sf.rows[i][2] + \'</b>\']);\n\n                return false;\n\n            }\n        }\n\n    }\n\n    return true;\n\n}\n\nfunction nuSelectFFObjects(e) {\n\n    var id = e.target.id;\n    var rowno = nuPad3($(\"[id^=\'obj_sf\'][id$=\'ff_label\']\", document).length - 1);\n    var rowsuf = nuPad2(rowno);\n    var sfrow = \'#obj_sf\' + rowno;\n    var h = String(e.target.innerHTML).split(\':\');\n    var label = h[h.length - 1] + rowsuf;\n\n    nuSetPlaceholder(sfrow.substring(1) + \'ff_label\', label);\n\n    $(sfrow + \'ff_label\')\n        .val(label)\n        .nuEnable()\n        .change();\n\n    $(sfrow + \'ff_id\')\n        .val(id);\n\n    $(sfrow + \'ff_type\')\n        .val(id)\n        .nuEnable();\n\n    $(sfrow + \'ff_field\')\n        .nuEnable()\n        .attr(\'data-nu-picked\', true);\n\n    $(sfrow + \'nuDelete\')\n        .nuEnable()\n\n    var r = $(\'#\' + sfrow.substring(1) + \'ff_type\');\n    nuSetFFTypeColor(r[0]);\n\n    if(nuNoBrowseObject(e.target.innerHTML)) {\n        $(sfrow + \'ff_browse\').hide().attr(\'data-nu-no-browse\', \'\');\n    } else {\n        $(sfrow + \'ff_browse\').show();\n    }\n\n    $(\'#fastform_type\').change();\n\n    $(sfrow + \'ff_field\').focus();\n\n}\n\nvar selectedField = null;\n\nfunction onColumnPicker(event) {\n\n    var id = event.target.id;\n    if(id != \'\') {\n        selectedField = nuSubformRowObject(id, \'ff_field\');\n        if($(selectedField).attr(\'data-nu-picked\')) {\n            $(\"[id$=\'ff_field\']\").removeClass(\'nuHighlight\');\n            $(selectedField).addClass(\'nuHighlight\');\n        }\n    }\n\n}\n\nfunction nuShowAvailableFields(v) {\n\n    if(!tableExists) {\n        nuHide(\'nuFFAvailableColumns\');\n        nuHide(\'availablecolumnswrd\');\n        return;\n    }\n\n    nuShow(\'nuFFAvailableColumns\');\n    nuShow(\'availablecolumnswrd\');\n\n    if(v) {\n        let arr = nuSubformColumnArray(\'obj_sf\', \'ff_field\');\n        arr.push(\'\');\n        disableFromSelect(\'nuFFAvailableColumns\', arr);\n        $(\'#nuFFAvailableColumns\').prop(\'disabled\', false).removeClass(\'nuReadonly\');\n    } else {\n        if($(\'#nuFFAvailableColumns option\').not(\"[value=\'\']\").length !== 0) {\n            $(\'#nuFFAvailableColumns\').prop(\'disabled\', true).addClass(\'nuReadonly\');\n        }\n    }\n}\n\nfunction disableFromSelect(id, arrOptionsVal) {\n\n    $(\"#nuFFAvailableColumns\").children(\'option\').attr(\"disabled\", false);\n    $(\'#\' + id).find(\'option\').filter(function() {\n        return arrOptionsVal.indexOf(this.value) != -1;\n    }).attr(\"disabled\", true);\n}\n\nfunction nuSelectObjectRefreshed(o, f, c) {\n    if(c == 0) nuShowAvailableFields(false);\n}\n\n// Show all items again when clicking on the datalist arrow down button\n$(\'#fastform_table\')\n    .on(\'click\', function(e) {\n        var $this = $(this);\n        var inpLeft = $this.offset().left;\n        var inpWidth = $this.width();\n        var clickedLeft = e.clientX;\n        var clickedInInpLeft = clickedLeft - inpLeft;\n        var arrowBtnWidth = 12;\n        if((inpWidth - clickedInInpLeft) < arrowBtnWidth) {\n            if($this.val() !== \"\") {\n                $this.val(\'\');\n            }\n        }\n    })\n\n$(\'#fastform_table\').on(\'input\', function() {\n\n    nuSetFFTable();\n    nuShowAvailableFields(false);\n\n    var selectedOption = $(\'option[value=\"\' + $(this).val() + \'\"]\');\n    if(selectedOption.length) {\n\n        nuSetProperty(\'available_columns\', $(\'#fastform_table\').val());\n        nuSetProperty(\'assigned_columns\', \'\');\n\n        $(\'#nuFFAvailableColumns\').empty();\n        nuAvailableColumnsSetLoading();\n        nuRefreshSelectObject(\'nuFFAvailableColumns\', \'\', true);\n\n    }\n});\n\nfunction nuMoveFieldPrefixToSubform() {\n\n    let title = $(\'#title_obj_sfff_field\');\n    title.html(title.html() + \'<br>\');\n    let prefix = $(\'#fastform_prefix\');\n    title.append(prefix);\n    nuSetPlaceholder(\'fastform_prefix\', \'Prefix\', true);\n    prefix.css({\n        \'top\': \'1px\'\n        , \'left\': \'0px\'\n        , \'position\': \'relative\'\n        , \'background-color\': \'#afe9ff\'\n    });\n\n}\n\nfunction nuAvailableFieldsOnClick(event, t) {\n\n    if(selectedField !== null) {\n\n        let v = t.value;\n        $(selectedField).val(v);\n\n        let label = $(\'#\' + $(selectedField).attr(\'id\').replace(\'field\', \'label\'));\n        if(label.is(\'[data-user-modified]\')) {\n            let answer = window.confirm(nuTranslate(\'Overwrite the Label?\'));\n            if(!answer) return;\n        }\n\n        let idx = v.indexOf(\'_\');\n        if (idx == 2 || idx == 3) {\n            v = v.substring(idx + 1);\n        }\n\n        label.val(v.replaceAll(\'_\', \' \').capitalise().toTitleCase()).change();\n\n        nuFFSubformMoveFocusUpDown(selectedField, 1);\n\n    }\n\n    nuShowAvailableFields(true);\n}\n\nfunction nuGetStringAfterSubstring(parentString, substring) {\n    return parentString.substring(parentString.indexOf(substring) + substring.length)\n}\n\nfunction nuAvailableColumnsSetLoading() {\n    $(\'#nuFFAvailableColumns\').prepend(\'<option disabled=\"disabled\">\' + nuTranslate(\'Loading\') + \'...\' + \'</option>\');\n}\n\nfunction nuChangePrefix(prefix) {\n\n    if(prefix.trim() === \'\') return;\n\n    let fieldArr = nuSubformColumnArray(\'obj_sf\', \'ff_field\');\n    for(var i = 0; i < fieldArr.length; i++) {\n        var n = fieldArr[i].indexOf(\"_\");\n        if(n == -1 || n == 3) {\n            var f = $(\'#obj_sf\' + nuPad3(i) + \'ff_field\');\n            if(f.val() !== \'\') {\n                f.val(prefix + \'_\' + nuGetStringAfterSubstring(f.val(), \'_\')).change();\n            }\n        }\n    }\n}\n\nfunction nuDisableLastFFRow() {\n\n    let l = nuSubformObject(\'obj_sf\').rows.length;\n\n    let rowPrefix = \'#obj_sf\' + nuPad3(l == 1 ? 0 : l - 1);\n    $(rowPrefix + \'ff_label\').nuDisable();\n    $(rowPrefix + \'ff_field\').nuDisable();\n    $(rowPrefix + \'ff_type\').nuDisable();\n    $(rowPrefix + \'nuDelete\').nuDisable();\n\n}\n\nfunction nuFFSubformMoveFocusUpDown(activeElement, d) {\n\n    let row = activeElement.attr(\'data-nu-prefix\').slice(-3);\n    let nextRow = $(\'#\' + activeElement.attr(\'data-nu-form\') + nuPad3(Number(row) + d) + activeElement.attr(\'id\').substr(activeElement.attr(\'data-nu-form\').length + 3));\n    if(nextRow.length == 1 && !nextRow.prop(\'disabled\')) nextRow.focus();\n\n    return true;\n\n}\n\nfunction nuFFHandleUpDownArrows(e) {\n\n    let keyCode = e.keyCode || e.which\n        , keys = {\n            up: 38\n            , down: 40\n            , enter: 13\n        };\n\n    let activeElement = $(document.activeElement);\n    let nuScroll = activeElement.hasClass(\'nuScroll\');\n\n    switch(keyCode) {\n        case keys.up:\n            result = !nuScroll && nuFFSubformMoveFocusUpDown(activeElement, -1);\n            break;\n        case keys.enter:\n            result = nuFFSubformMoveFocusUpDown(activeElement, 1);\n            break;\n        case keys.down:\n            result = !nuScroll && nuFFSubformMoveFocusUpDown(activeElement, 1);\n            break;\n        default:\n            return false;\n    }\n\n}\n\nfunction nuSetFFTypeOptionsColor(id) {\n\n    $(\"#\" + id + \" > option\").each(function() {\n        let x = \'#\' + this.value;\n        if(this.value !== \'\') {\n            let id = $(x);\n            $(this).addClass(id.attr(\'class\').split(\' \')[1]);\n        }\n    });\n\n}\n\nfunction nuSetFFTypeColor(t) {\n\n    let x = \'#\' + t.value;\n    if(t.value !== \'\') {\n        let id = $(x);\n        $(t).removeClass().addClass(id.attr(\'class\').split(\' \')[1]);\n    }\n\n}\n\nfunction nuSetDataUserModified(t, event) {\n\n    if([37, 38, 39, 40, 9, 13].indexOf(event.keyCode) === -1) {\n        $(t).attr(\'data-user-modified\', \'\');\n    }\n\n}\n\nfunction nuOnBlurFFLabel(t, event) {\n\n    if(!tableExists) {\n\n        ff_field = nuSubformRowObject(event.target.id, \'ff_field\');\n        if(!ff_field.is(\'[data-user-modified]\') && $(t).is(\'[data-user-modified]\')) {\n            let v = $(t).val();\n            if(v !== \'\') {\n                let prefix = $(\'#fastform_prefix\').val();\n                ff_field.val((prefix === \'\' ? \'\' : prefix + \'_\') + v.toLowerCase().replaceAll(\' \', \'_\')).change();\n            }\n        }\n    }\n\n}\n\nfunction nuOnBlurFFField(t, event) {\n\n    var v = $(t).val().trim();\n    if(v !== \'\') {\n\n        let prefix = $(\'#fastform_prefix\').val();\n        if(!v.startsWith(prefix)) {\n            v = prefix + \'_\' + v;\n            $(t).val(v);\n        }\n\n        let ff_label = nuSubformRowObject(event.target.id, \'ff_label\');\n        if(!ff_label.is(\'[data-user-modified]\')) {\n\n            if(v.startsWith(prefix)) v = v.substring(prefix.length)\n            ff_label.val(v.replaceAll(\'_\', \' \').toTitleCase().trim()).change();\n        }\n    }\n\n}\n\nfunction nuNoBrowseObject(text) {\n    return [\'Word\', \'Subform\', \'Image\', \'HTML\', \'Display\', \'File\', \'Button\', \'Multiselect\'].indexOf(text) !== -1;\n}\n\nfunction nuOnChangeFFType(t, event) {\n\n    let target = event.target;\n\n    let ff_id = nuSubformRowObject(target.id, \'ff_id\');\n    let ff_browse = nuSubformRowObject(target.id, \'ff_browse\');\n    let ff_label = nuSubformRowObject(target.id, \'ff_label\');\n	let ff_field = nuSubformRowObject(target.id, \'ff_field\');\n\n	\n    let typeText = $(target).find(\"option:selected\").text();\n    let number = $(ff_label).attr(\'placeholder\').justNumbers();\n    // let objClass = $(\"#\" + target.value).attr(\'class\').split(\' \')[1];\n    nuSetPlaceholder(ff_label.attr(\'id\'), typeText + number);\n    if(ff_field.val() == \'\') { \n        ff_label.val(typeText + number);\n    }\n    \n    ff_id.val(t.value);\n        \n    if(nuNoBrowseObject(typeText)) {\n        $(ff_browse).hide().attr(\'data-nu-no-browse\', \'\');\n        nuSetValue(ff_browse.id, true);\n    } else {\n        $(ff_browse).show();\n    }\n\n    nuSetFFTypeColor(t);\n\n}\n\nfunction nuClickDelete(event) {\n\n    let id = event.target.id;\n    let sf = $(\'#\' + id).attr(\'data-nu-checkbox\');\n    let row = id.substring(sf.length, sf.length + 3);\n    let checked = $(\'#\' + id).is(\":checked\");\n\n    $(\'[id^=\' + sf + nuPad3(row) + \']\')\n        .not(\':button, :checkbox\')\n        .toggleClass(\'nuSubformDeleteTicked\', checked)\n        .toggleClass(\'nuReadonly\', checked)\n        .nuEnable(!checked);\n        \n}', NULL, NULL),
('nuevent', 'edit', 'nuevent', 'Object Events', NULL, 'zzzzsys_event', 'zzzzsys_event_id', '', 0, 0, '0', 'SELECT * FROM zzzzsys_event', '', NULL, NULL),
('nuaccess', 'browseedit', 'nuaccess', 'Access Levels', '#sal_code#|New', 'zzzzsys_access', 'zzzzsys_access_id', '', 0, 17, '0', 'SELECT zzzzsys_access.*, zzzzsys_form.sfo_code FROM zzzzsys_access\nLEFT JOIN zzzzsys_form \nON sal_zzzzsys_form_id = zzzzsys_form_id\nORDER BY sal_code\n', 'function nuBeforeSave() {\n\n    var dupF = nuSubformColumnUnique(\'accform\', \'slf_zzzzsys_form_id\', \'Forms\');\n    var dupP = nuSubformColumnUnique(\'accphp\', \'slp_zzzzsys_php_id\', \'Procedures\');\n    var dupR = nuSubformColumnUnique(\'accreport\', \'sre_zzzzsys_report_id\', \'Reports\');\n    \n    if (dupF !== true || dupP !== true || dupR !== true) {\n    	a = [];\n    	if (dupF !== true) a.push(dupF);\n    	if (dupP !== true) a.push(dupP);\n    	if (dupR !== true) a.push(dupR);\n    	nuMessage(a);\n    	return false;\n    }\n    \n    return true;\n\n}\n\n\n\nif (nuIsNewRecord()) {\n  nuHide(\'access_id\');\n}', NULL, NULL),
('nunonsystemform', 'edit', 'nunonsystemform', 'nuBuilder non-System Form', NULL, 'zzzzsys_form', 'zzzzsys_form_id', '', 0, 0, '0', 'SELECT * FROM zzzzsys_form\nWHERE ((zzzzsys_form_id NOT LIKE \'nu%\' AND sfo_type != \'subform\')\nOR zzzzsys_form_id IN (\'nuaccess\', \'nuuser\', \'nulaunchdates\', \'nutranslate\', \'nupassword\', \'nufile\', \'nuuserhome\', \'nublank\', \'nurunreport\'))\nORDER BY sfo_code', '$(\"[data-nu-column=\'0\']\").each(function() {\n    $(this).addClass(\'nu_\'+this.textContent);\n});\n\n$(\'#nuAddButton\').remove();\n$(\'#nuPrintButton\').remove();\n\n', NULL, NULL),
('nuaccessforms', 'edit', 'nuaccessforms', 'Accessible Forms', NULL, 'zzzzsys_access_form', 'zzzzsys_access_form_id', '', 0, 0, '0', 'SELECT * FROM zzzzsys_access_form\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = slf_zzzzsys_form_id\nORDER BY sfo_code\n', '', NULL, NULL),
('nuuser', 'browseedit', 'nuuser', 'User', '#sus_name#|New', 'zzzzsys_user', 'zzzzsys_user_id', '', 0, 0, '1', 'SELECT *\nFROM zzzzsys_user \nINNER JOIN zzzzsys_access ON zzzzsys_access_id = sus_zzzzsys_access_id\nWHERE\n\n( \n\n    (\'#nuBrowseTitle9_select#\' LIKE \'#%\' AND  (sus_expires_on > NOW() OR sus_expires_on IS NULL)) OR\n    (\'#nuBrowseTitle9_select#\' = \'Expired\' AND sus_expires_on < NOW()) OR \n    (\'#nuBrowseTitle9_select#\' = \'\')\n    \n\n) \n\nORDER BY sus_name', '', '$(function() { // document ready\n	var d = [\"\", \"Expired\"];   \n	nuAddBrowseTitleSelect(9, d); \n	$(\'#nuBrowseTitle9_select\').parent().unbind(\"touchstart\");\n});\n', 'nuSetPlaceholder(\'sus_code\', nuTranslate(\'(Optional)\'));\nnuSetPlaceholder(\'sus_email\', \'example@domain.com\');\nnuSetToolTip(\'sus_code\', nuTranslate(\'E.g. Employee Id, Foreign Id etc. Leaving blank will set the \"Login Name\"\'));\nnuSetToolTip(\'sus_language\', nuTranslate(\'Leaving blank will use English\'));\n\n$(\'#sus_zzzzsys_access_id_open_button\').toggleClass(\'input_button nuButton nuLookupButton\')\n$(\'#sus_password_show_btn\').css(\"font-size\", \"smaller\");\n\n$(\"#sus_name\").attr(\'autocomplete\', \'off\');\n$(\"#sus_login_name\").attr(\'autocomplete\', \'off\');\n$(\"#new_password\").attr(\'autocomplete\', \'off\');\n$(\"#check_password\").attr(\'autocomplete\', \'off\');\n\n$(function() {\n    setTimeout(function() {\n        nuEnable(\'sus_name\');\n        nuEnable(\'sus_login_name\');\n        nuEnable(\'new_password\');\n        nuEnable(\'check_password\');\n    }, 800);\n});\n\nfunction nuTogglePasswordVisibility() {\n\n    var p1 = $(\"#new_password\");\n    var p2 = $(\"#check_password\");\n\n    if (p1.prop(\"type\") === \"password\") {\n        p1[0].type = \"text\";\n        p2[0].type = \"text\";\n    } else {\n        p1[0].type = \"password\";\n        p2[0].type = \"password\";\n    }\n\n}\n\nfunction nuBeforeSave() {\n\n    let c = $(\'#sus_code\');\n    if (c.val() === \'\') {\n        c.val($(\'#sus_login_name\').val()).change();\n    }\n\n    return true;\n\n}'),
('nubuildreport', 'browseedit', 'nubuildreport', 'Build Report', NULL, 'zzzzsys_report', 'zzzzsys_report_id', '', 0, 0, '0', 'SELECT * FROM zzzzsys_report\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sre_zzzzsys_form_id', 'if (nuFormType() == \'edit\') {\n\n  $(\'#sre_layout\').addClass(\'nuEdited\'); \n  nuAttachButtonImage(\'open_builder\',\'RD\');\n  \n  if (! nuIsNewRecord()) {\n//    nuAddActionButton(\'Run\', \'Run\', \'nuRunReport(\"\'+ $(\'#sre_code\').val() +\'\")\');       \n  }\n  \n}\n\nfunction nuPickTableType(){\n    \n    var i   = $(\'#sre_zzzzsys_php_id\').val();\n    \n    var f   = \'\';\n    var r   = \'\';\n    \n    if(i.substr(0,10) == \'PROCEDURE:\'){\n        \n        f   = \'nuphp\';\n        r = i.substr(10);\n        \n    }\n    \n    if(i === \'\'){\n        \n        nuMessage([nuTranslate(\'Table selected must be an SQL or Procedure\')]);\n        return;\n\n    }\n    \n    if(i.substr(0,6) == \'TABLE:\'){\n        \n        nuMessage(nuTranslate([\'To edit a table go to the Database Button\']));\n        return;\n\n    }\n    \n    if(i.substr(0,4) == \'SQL:\'){\n        \n        f   = \'nuselect\';\n        r = i.substr(4);\n\n    }\n    \n    nuPopup(f,r);\n    \n}\n\nfunction nuUpdateAclCount() {\n	var l = $(\"[data-nu-field=\'sre_zzzzsys_access_id\']\").length -2;\n	var t = l <= 0 ? \'\' : \' (\' + l + \')\';\n	$(\'#nuTab1\').html(nuTranslate(\'Access Level\') + t);\n}', NULL, NULL),
('nuphp', 'browseedit', 'nuphp', 'Build Procedure', '#sph_code#|New', 'zzzzsys_php', 'zzzzsys_php_id', '', 0, 0, '0', 'SELECT * FROM zzzzsys_php\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sph_zzzzsys_form_id\nWHERE ((sph_system != \'1\' || sph_system IS NULL) or \'#nuDevMode#\' = \'1\')\nORDER BY sph_code\n', 'nuHide(\'sph_code_snippet_select_lookupcode\');\n\n// Code Snippets form\nnuSetSnippetFormFilter(0, 0 ,0, 1); // PHP Code\n\nnuDevMode();\n\nwindow.nuImages = parent.nuImages;\n\n$(\'#sph_php\')\n.addClass(\'php\')\n.dblclick(function() {\n	nuOpenAce(\'PHP\', this.id);\n})\n\nwindow.nuHelp   = \'Procedures\';\n\nif(window.filter == \'justphp\'){\n   \n    $(\'#nuTab1\').remove(); // Access Levels\n    $(\'#nuCloneButton\').remove();\n    \n    $(\'#label_sph_code_snippet_select_lookup\').css({\'top\':\'18px\', \'left\':\'740px\'});\n    $(\'#sph_code_snippet_select_lookupbutton\').css({\'top\':\'18px\', \'left\':\'845px\'});\n    \n\n    nuHelp      = \'Functions\';\n    var ev      = [];\n    ev[\'BB\']    = \'Before Browse\';\n    ev[\'BE\']    = \'Before Edit\';\n    ev[\'BS\']    = \'Before Save\';\n    ev[\'AS\']    = \'After Save\';\n    ev[\'BD\']    = \'Before Delete\';\n    ev[\'AD\']    = \'After Delete\';\n    ev[\'AB\']    = \'After Browse\';\n    \n    var suf     = nuFORM.getCurrent().record_id.substr(-2);\n    var e       = ev[suf];\n    var f       = $(\'#sfo_description\', window.parent.document).val();\n\n    if(e == \'After Browse\'){\n        var f   = $(\'#sob_all_label\', window.parent.document).val();\n    }\n\n    nuAttachButtonImage(\'icon\', suf);\n    \n    $(\'#sph_php\')\n    .css(\'padding\', \'3px 3px 3px 3px\')\n    .css(\'top\', \'40px\')\n    .css(\'left\', \'90px\')\n    .focus()\n\n    \n    $(\'#wiki\')\n    .css(\'left\', \'670px\')\n\n    $(\'#nu_bc_0\').html(\'<b>\' + e + \'</b> for : \' + f);\n    $(\'#sph_code\').val(nuFORM.getCurrent().record_id).change();\n    $(\'#sph_description\').val(\'System PHP\').change();\n    $(\'#sph_system\').val(\'1\').change();\n    $(\'#label_sph_php\').css(\'top\', \'40px\').css(\'left\', \'20px\');\n    $(\'.nuSaveButtonEdited\').removeClass(\'nuSaveButtonEdited\');\n    \n    nuHide(\'sph_code\');\n    nuHide(\'sph_description\');\n    nuHide(\'sph_zzzzsys_form_id\');\n    nuHide(\'sph_group\');\n    nuHide(\'sph_system\');\n    nuHide(\'sph_run\');\n\n    nuSetTitle(e);\n    \n}else{\n\n    if (! nuCurrentProperties().record_id.startsWith(\'nu\') ) {\n        $(\'#sph_system\').val(\'0\').change();\n        $(\'#sph_hide\').val(\'\').change();\n    }\n\n    if (!nuIsNewRecord()) {\n        nuUpdateAclCount();\n    }    \n\n\n}\n\nnuHasNotBeenEdited();\n\n\nfunction nuUpdateAclCount() {\n	var l = $(\"[data-nu-field=\'slp_zzzzsys_access_id\']\").length -2;\n	var t = l <= 0 ? \'\' : \' (\' + l + \')\';\n	$(\'#nuTab1\').html(nuTranslate(\'Access Level\') + t);\n}\n\nfunction nuOnClone(){\n\n    if(window.filter !== \'justphp\'){\n        if ($(\'#sph_group\').val() == \'nubuilder\' && $(\'#sph_code\').val().endsWith(\'Template\')) {\n             $(\'#sph_code\').val($(\'#sph_code\').val().substring(0, $(\'#sph_code\').val().length-9)).change();\n             $(\'#sph_group\').val(\'\').change();\n        }\n    }\n    \n}\n\nif (nuFormType() == \'edit\') {\n    \n    $(function() {\n            sph_php.setSelectionRange(window.selectionStart, window.selectionStart);\n            sph_php.focus();\n    });\n\n}\n\nfunction nuBeforeSave() {\n\n    if (nuFormType() == \'edit\') {\n        window.selectionStart = sph_php.selectionStart;\n    }\n    \n    return true;\n    \n}\n', NULL, NULL),
('nublank', 'launch', 'nublank', 'Blank', NULL, '', '', '', 0, 0, '0', '', '\nnuSetTitle(nuFORM.getCurrent().run_description);\n', NULL, NULL),
('nuaccessgroup', 'subform', 'nuaccessgroup', 'Groups Access Level', NULL, 'zzzzsys_user_group_access_level', 'zzzzsys_user_group_access_level_id', '', 0, 0, '0', 'SELECT * FROM zzzzsys_user_group_access_level', '', NULL, NULL),
('nurunlist', 'browse', 'nurunlist', 'Run Form, Report or Procedure', NULL, 'zzzzsys_run_list', 'id', '', 0, 16, '0', 'SELECT * FROM zzzzsys_run_list \nORDER BY code', '\n$(\"[data-nu-column=\'nucolumn000\']\").each(function() {\n\n    $(this).addClass(\'nu_\'+this.innerHTML);\n\n});', NULL, NULL),
('nudebug', 'browseedit', 'nudebug', 'nuDebug Entries', NULL, 'zzzzsys_debug', 'zzzzsys_debug_id', '', 25, 14, '0', 'SELECT * FROM zzzzsys_debug\nORDER BY zzzzsys_debug_id DESC', '$(\'#deb_message\')\n    .css(\'font-size\', 10)\n    .css(\'background-color\', \'#FFEEA6\')\n    .prop(\'readonly\', true)\n    .dblclick(function() {\n    	nuOpenAce(\'Text\', this.id);\n    });\n\n\n$(\'#delete_option\').val(0);\n$(\'#nuAddButton\').remove();\n$(\'#nuOptions\').remove();\n\nvar mess    = String($(\'#deb_message\').val());\nvar i       = mess.indexOf(\'<br>\');\nvar m       = mess.substr(i + 6);\nvar t       = mess.substr(0,i);\n\nnuSetTitle(mess.substr(0, i))\n\n$(\'#nuTab0\').remove();\n\n$(\'#nuBreadcrumb2\')\n.css(\'text-align\', \'center\')\n.css(\'width\', \'95%\')\n.css(\'color\', \'black\')\n.css(\'padding\', \'5px\')\n.html(t + \' :: \' + nuWhen($(\'#deb_added\').val()))\n.appendTo(\"#nuTabHolder\");\n\n$(\'#deb_message\').val(m);\n\n\n$(\"[data-nu-column=\'1\']\").each(function( index ) {\n    \n    if($(this).html().trim() !== \'\'){\n        \n        var nunow   = Date.now();\n        var nuhtm   = nuWhen(Number($(this).html()));\n        \n        $(this).html(nuhtm);\n        \n    }\n    \n});\n\nif(nuFORM.getCurrent().record_id !== \'\'){\n\n    $(\'.nuActionButton\').remove();\n    nuAddActionButton(\'Delete\');\n    nuAddActionButton(\'DeleteAll\',\'Delete All\', \'nuDeleteAllAction()\');\n\n}else{\n    nuAddActionButton(\'DeleteAll\',\'Delete All\', \'nuDeleteAllAction()\');\n}\n\n', NULL, NULL),
('nuaccessreport', 'browseedit', 'nuaccessreport', 'Access To Procedures', NULL, 'zzzzsys_access_php', 'zzzzsys_access_php_id', '', 0, 0, '0', 'SELECT * \nFROM zzzzsys_access_php\nJOIN zzzzsys_php ON zzzzsys_php_id = slp_zzzzsys_php_id\nORDER BY sph_code', '', NULL, NULL),
('nuaccesslevelreport', 'browseedit', 'nuaccesslevelreport', 'Access To Report', NULL, 'zzzzsys_access_report', 'zzzzsys_access_report_id', '', 0, 0, '0', 'SELECT * \nFROM zzzzsys_access_report\nJOIN zzzzsys_report ON zzzzsys_report_id = sre_zzzzsys_report_id\nORDER BY sre_code', '', NULL, NULL),
('nurunreport', 'browseedit', 'nurunreport', 'Run Report', NULL, 'zzzzsys_report', 'zzzzsys_report_id', '', 0, 0, '0', 'SELECT * FROM zzzzsys_report\nLEFT JOIN zzzzsys_form ON zzzzsys_form_id = sre_zzzzsys_form_id\nORDER BY sre_code', '\nnuSetTitle(nuFORM.getCurrent().run_description);\n\n$(\'#nuAddButton\').remove();\n$(\'#nuPrintButton\').remove();\n\nfunction nuSelectBrowse(e){\n    \n    var r   = $(\'#\' + e.target.id).attr(\'data-nu-row\');\n    var f   = $(\'#nucell_\' + r + \'_0\').html();\n    var p   = $(\'#\' + e.target.id).attr(\'data-nu-primary-key\');\n\n    nuGetReport(f, p);\n    \n}\n\n', NULL, NULL);
INSERT INTO `zzzzsys_form` (`zzzzsys_form_id`, `sfo_type`, `sfo_code`, `sfo_description`, `sfo_breadcrumb_title`, `sfo_table`, `sfo_primary_key`, `sfo_browse_redirect_form_id`, `sfo_browse_row_height`, `sfo_browse_rows_per_page`, `sfo_browse_title_multiline`, `sfo_browse_sql`, `sfo_javascript`, `sfo_browse_javascript`, `sfo_edit_javascript`) VALUES
('nurunphp', 'browseedit', 'nurunphp', 'Run Procedure', NULL, 'zzzzsys_php', 'zzzzsys_php_id', '', 0, 0, '0', 'SELECT * FROM zzzzsys_php\nJOIN zzzzsys_form ON zzzzsys_form_id = sph_zzzzsys_form_id\nWHERE (sph_system != \'1\' || sph_system IS NULL)\nORDER BY sph_code', '\n$(\'#nuAddButton\').remove();\n$(\'#nuPrintButton\').remove();\n\nfunction nuSelectBrowse(e){\n\n    var r   = $(\'#\' + e.target.id).attr(\'data-nu-row\');\n    var p   = $(\'#nucell_\' + r + \'_0\').html();\n    var f   = $(\'#\' + e.target.id).attr(\'data-nu-primary-key\');\n\n    nuGetPHP(p, f);\n\n}\n\n', NULL, NULL),
('nulaunchdates', 'launch', 'nulaunchdates', 'Between 2 Dates', NULL, '', '', '', 0, 0, '0', '', '\nnuSetTitle(nuFORM.getCurrent().run_description);', NULL, NULL),
('nutimezone', 'browse', 'nutimezone', 'Time Zone', NULL, 'zzzzsys_timezone', 'zzzzsys_timezone_id', '', 0, 16, '0', 'SELECT * \nFROM zzzzsys_timezone\nORDER BY stz_timezone', '', NULL, NULL),
('nusetup', 'edit', 'nusetup', 'Setup', NULL, 'zzzzsys_setup', 'zzzzsys_setup_id', '', 0, 0, '0', '', '$(function() {\n  set_header.setSelectionRange(window.selectionStart, window.selectionStart);\n  set_header.focus();\n});\n\n\n$(\'#set_header\').addClass(\'html\');\n$(\'#label_set_header\').html(\' \');\n  \n$(\'.html\').dblclick(function() {\n	nuOpenAce(\'HTML\', this.id);\n});\n\n\n$(\'#nuDeleteButton\').remove();\n$(\'#nuCloneButton\').remove();\n\n\nnuSetToolTip(\'set_denied\',nuTranslate(\'Disallow access to nuBuilder\\\'s core forms.\'), true);\n\nnuHide(\'set_code_snippet_lookupcode\');\n\nnuSetProperty(\'set_header_current\', $(\'#set_header\').val());\nnuSetProperty(\'set_language_current\', $(\'#set_language\').val());\n\n$(\"select[id=set_languages_included] option:first\").text(\"(None)\").val(\' \');\n\n$(\"#set_languages_included option\").click(function() {\n    if ($(this).is(\":selected\") && $(this).attr(\'value\') === \' \') {\n        if (confirm(\"Unselect all?\")) {\n            $(\"#set_languages_included\").val([]).addClass(\'nuEdited\');\n        } else {\n            $(\"set_languages_included option[value=\' \']\").prop(\"selected\", false);\n        }\n\n    }\n});\n\n\n\n\n// Code Snippets form\nnuSetSnippetFormFilter(0, 1 , 0, 0); \n\n\nvar l = $(\"#set_language\");\nif (l.val() === \'\') {\n    l.append($(\'<option>\', { value: 1, text: nuTranslate(\"English\"), disabled : true, selected: true, hidden: true }))\n}\n\nnuSelectMultiWithoutCtrl(\'set_languages_included\');\n\nvar d = nuDevMode();\nif (!d) { \n    nuHide(\'nuTab3\');\n}    \n\n$(\'#set_files_version_user\').val(nuGetFilesVersion());\n\nfunction dateToday() {\n	var date = new Date();\n	var d = date.getDate();\n	var m = date.getMonth() + 1;\n	var y = date.getFullYear();\n	return y + \".\"  + (m <= 9 ? \'0\' + m : m) + \'.\' + (d <= 9 ? \'0\' + d : d);\n}\n\nfunction incVersion(i) {\n	var dbv = $(\'#\'+ i).val();\n	var dbvSplit = dbv.split(\"-\");\n	major = dbvSplit[0];\n	date = dbvSplit[1].slice(0, -3)\n	build = parseInt(dbv.split(/[. ]+/).pop());\n\n	today = dateToday();\n\n	build ++;\n	if (date !== dateToday()) {\n	   build = 0;\n	}\n\n	return major + \'-\'+ today + \'.\' + nuPad2(build);\n}\n\nfunction inDBVersion() {\n	var dbInc =  incVersion(\'set_db_version\');\n	$(\'#set_db_version_inc\').val(dbInc);\n}\n\nfunction inFilesVersion() {\n	var filesInc =  incVersion(\'set_files_version\');\n	$(\'#set_files_version_inc\').val(filesInc);\n}\n\n\nfunction selectToValueArray(id) {\n\n    var a = [];\n    $(\'#\' + id + \' option:selected\').each(function(index) {\n        if ($(this).text() !== \'\') {\n            a.push($(this).val())\n        }\n    });\n\n    return a;\n\n}\n\n\nfunction nuBeforeSave() {\n\n\n    if ($(\'#set_language\').hasClass(\'nuEdited\')) {\n        $(\"#set_languages_included option[value=\'\" + $(\'#set_language\').val() + \"\']\").prop(\"selected\", true);\n        $(\'#set_languages_included\').change();\n    }\n\n    var v = \'\';\n    if (! $(\'#set_languages_included\').hasClass(\'nuEdited\')) v = \'-1\';\n    \n    if (v === \'\' ) {\n        var languagesIncluded = selectToValueArray(\'set_languages_included\');\n        v = languagesIncluded.length === 0 ? \'\' : JSON.stringify(languagesIncluded)\n    }\n    \n    nuSetProperty(\'set_languages_included_json\', v);\n    window.selectionStart = set_header.selectionStart;\n    \n     return true;\n\n\n}', NULL, NULL),
('nutranslate', 'browseedit', 'nutranslate', 'Translation', '#trl_english#|New', 'zzzzsys_translate', 'zzzzsys_translate_id', '', 0, 0, '0', 'SELECT * \nFROM zzzzsys_translate\nORDER BY trl_language, trl_english', 'if (nuFormType() == \'edit\') {\n    if (nuCurrentProperties().record_id.startsWith(\'nu\')) {\n        $(\'#nuSaveButton\').remove();\n        $(\'#nuDeleteButton\').remove();\n    }\n}', NULL, NULL),
('nupassword', 'edit', 'nupassword', 'Change Password', NULL, 'zzzzsys_user', 'zzzzsys_user_id', '', 0, 0, '0', 'SELECT * FROM zzzzsys_user\nJOIN zzzzsys_user_group ON sus_zzzzsys_user_group_id = zzzzsys_user_group_id\nORDER BY sus_name', '$(\'#nuTab0\').hide();', NULL, NULL),
('nusample', 'launch', 'nusample', 'Default Fast Form Objects', NULL, '', '', '', 0, 0, '0', '', '//$(\'#nuBreadcrumbHolder\').remove();\n$(\'#nuActionHolder\').remove();\n//$(\'#nuTabHolder\').remove();\n\n$(\'#nuOptions\').hide();\n\n$(\'#inputtextsample\').val(\'text\');\n$(\'#inputnumbersample\').val(4);\n$(\'#inputnunumbersample\').val(\'$ 1,234.56\');\n$(\'#inputnudatesample\').val(\'23-Jan-2021\');\n$(\'#inputnuscrollsample\').val(\'East\');\n$(\'#calcsample\').val(\'$ 1,238.56\');\n\n$(\'#selectsample\').val(1);\n$(\'#selectmultiselectsample\').val(0);\n$(\'#textareasample\').val(\"text-area\");\n\n$(\"[id^=\'label\']\").addClass(\'nu_input\').css({width:120, left:10, \'text-align\':\'center\'});\n\n$(\'#label_imagesample\').addClass(\'nu_image\').removeClass(\'nu_input\');\n$(\'#label_textareasample\').addClass(\'nu_textarea\').removeClass(\'nu_input\');\n$(\'#label_displaysample\').addClass(\'nu_display\').removeClass(\'nu_input\');\n$(\'#label_htmlsample\').addClass(\'nu_html\').removeClass(\'nu_input\');\n$(\'#label_calcsample\').addClass(\'nu_calc\').removeClass(\'nu_input\');\n$(\'#label_selectsample\').addClass(\'nu_select\').removeClass(\'nu_input\');\n$(\'#label_selectmultiselectsample\').addClass(\'nu_select\').removeClass(\'nu_input\');\n$(\'#label_lookupsample\').addClass(\'nu_lookup\').removeClass(\'nu_input\');\n$(\'#labelword\').addClass(\'nu_word\').removeClass(\'nu_input\');\n$(\'#label_subformsample\').addClass(\'nu_subform\').removeClass(\'nu_input\').css({left:10});\n\n$(\"[id^=\'label\']\")\n.addClass(\'nuCalculatorButton\')\n.removeClass(\'nuWord\')\n.css({\'height\':30, \'width\':220})\n\n\n\n\n', NULL, NULL),
('nufastformobjects', 'subform', 'nufastformobjects', 'Fast Form Objects', NULL, 'zzzzsys_debug', 'zzzzsys_debug_id', '', 0, 0, '0', ' SELECT count()* FROM zzzzsys_debug', '', NULL, NULL),
('nucalcobjects', 'browse', 'nucalcobjects', 'Calc values On This Form And Its Subforms', NULL, '#TABLE_ID#', 'thevalue', '', 0, 4, '0', 'SELECT * FROM #TABLE_ID#', '\nwindow.nuBrowseFunction = \'nuSelectCalcField\';\n\nfunction nuSelectCalcField(e){\n\n    var row = e.target.id.substr(0,8);\n    var fld = $(\'#\' + row + \'003\').html();\n    var frm = $(\'#sob_calc_formula\', parent.window.document).val();\n\n    $(\'#sob_calc_formula\', parent.window.document)\n    .val(frm + \'nuTotal(\"\' + fld + \'\")\')\n    .trigger(\'change\');\n\n}\n\n', NULL, NULL),
('nuformat', 'browseedit', 'nuformat', 'Input Formats', NULL, 'zzzzsys_format', 'zzzzsys_format_id', '', 0, 0, '0', 'SELECT * FROM zzzzsys_format', '\n$(\'#sign\').css(\'font-style\', \'bold\').css(\'font-size\', 18);\n$(\'#separator\').css(\'font-style\', \'bold\').css(\'font-size\', 18);\n$(\'#decimal\').css(\'font-style\', \'bold\').css(\'font-size\', 18);\n$(\'#places\').css(\'font-style\', \'bold\').css(\'font-size\', 18);\n$(\'#srm_format\').addClass(\'nuReadonly\').css(\'font-size\', 22);\n\nnuSetFormatType();\n\n\nfunction nuAddToFormat(e){\n    \n    if($(\'#srm_type\').val() == \'Date\'){\n        \n    var v   = String(e.target.innerHTML);\n    \n    if(v == \'Space\'){\n        v   = \' \';\n    }\n    \n    $(\'#srm_format\').val($(\'#srm_format\').val() + v).change();\n        \n    }else{\n        \n        var si = $(\'#sign\').val();\n        var se = $(\'#separator\').val();\n        var pl = $(\'#places\').val();\n        var de = Number(pl) > 0 ? $(\'#decimal\').val() : \'\';\n        var cu = JSON.stringify([si,se,de,pl]);\n        \n        var space =  si !== \'\' ? \' \' : \'\';\n        $(\'#srm_format\').val(si + space + \'1\' + se + \'000\' + de + String(0).repeat(pl)).change();\n       \n        $(\'#srm_currency\').val(cu).change();\n\n    }\n    \n}\n\n\nfunction nuSetFormatType(a){\n\n    nuHide(\'nucalculator\');\n    nuHide(\'sign\');\n    nuHide(\'separator\');\n    nuHide(\'decimal\');\n    nuHide(\'places\');\n    \n    if(arguments.length == 1){\n        $(\'#srm_format\').val(\'\');\n    }\n    \n    if($(\'#srm_type\').val() == \'Date\'){\n        \n        if(arguments.length == 1){\n            $(\'#srm_format\').val(\'\');\n        }\n        \n        nuShow(\'nucalculator\');\n    }\n    \n    if($(\'#srm_type\').val() == \'Number\'){\n\n        if(arguments.length == 1){\n            $(\'#srm_format\').val(\'1000\');\n            nuAddToFormat();\n        }\n        \n        nuShow(\'sign\');\n        nuShow(\'separator\');\n        nuShow(\'decimal\');\n        nuShow(\'places\');\n        \n    }\n\n}\n\n\n\n', NULL, NULL),
('nuformatcurrency', 'edit', 'nuformatcurrency', 'Format Currency', NULL, 'zzzzsys_format', 'zzzzsys_format_id', '', 0, 0, '0', '', '$(\'#sign\').focus();\n\n\n$(\'#nuActionHolder\').remove();\n$(\'#nuBreadcrumbHolder\').remove();\n$(\'#nuTabHolder\').remove();\n\n\n\n\n\nfunction nuCreateCurrencyFormat(){\n //   console.log(\'in nuCreateCurrencyFormat()\');\n}\n', NULL, NULL),
('nuform', 'browseedit', 'nuform', 'nuBuilder Form', '#sfo_code#|New', 'zzzzsys_form', 'zzzzsys_form_id', '', 0, 0, '0', 'SELECT * FROM zzzzsys_form\nINNER JOIN #TABLE_ID# ON zzzzsys_form_id = theid\nORDER BY sfo_code\n', 'function colorObjectTypes() {\n\n    // Color Types\n    $(\'select[id$=sob_all_type]\').find(\'option\').each(function(index,element){\n        $(element).addClass(\'nu_\' + element.value);\n    });\n    \n    $(\'select[id$=sob_all_type]\').each(function(index,element){\n        \n    	$(element).removeClass();\n    	$(element).addClass(\'nu_\' + element.value);\n    });\n\n}\n\nfunction nuSetControlsVisibility() {\n\n    var pb = \'previewbrowse\';\n    var pe = \'previewedit\';\n    var js = \'sfo_javascript\';\n    \n    var bb = \'bb_event\';\n    var be = \'be_event\';\n    var bs = \'bs_event\';\n    var as = \'as_event\';\n    var bd = \'bd_event\';\n    var ad = \'ad_event\';\n\n    nuEnable([pb, pe, bb, be, bs, as, bd, ad, js]);\n\n    var t = String($(\'#sfo_type\').val());\n    \n    if (t == \'browseedit\') {\n        nuEnable(\'js_edit\');\n        nuEnable(\'js_browse\');\n        nuEnable(\'js_browse_edit\');\n    } else\n    if (t == \'browse\') {\n        nuDisable([pe, be, bs, as, bd, ad]);\n        nuDisable(\'js_edit\');\n        nuEnable(\'js_browse\');\n        nuEnable(\'js_browse_edit\');\n    } else\n    if (t == \'edit\') {\n        nuDisable([pb, pb, bb]);\n        nuDisable(\'js_browse\');\n        nuEnable(\'js_edit\');\n        nuEnable(\'js_browse_edit\');\n    } else\n    if (t == \'launch\') {\n        nuDisable([pb, bb, bs, as, bd, ad]);\n        nuDisable(\'js_browse\');\n        nuDisable(\'js_edit\');\n        nuDisable(\'js_browse_edit\');\n    } else\n    if (t == \'subform\') {\n        nuDisable([pb, bb, be, bs, as, bd, ad, js]);\n        nuDisable(\'js_browse\');\n        nuDisable(\'js_edit\');\n        nuDisable(\'js_browse_edit\');\n        $(\'#js_browse_edit\').html(\'Launch\');\n    }\n\n    for (let i = 1; i <= 3; i++) {\n        nuShow(\'nuTab\' + i, t !== \'subform\' || i == 1);\n    }\n\n}\n\nfunction nuTypeChanged() {\n\n    nuSetControlsVisibility();\n	\n    var h = $(\'#sfo_type\').addClass(\'nuEdited\');\n    var o = [];\n    o[\'browse\'] = [0, 1, 2];\n    o[\'edit\'] = [0, 2];\n    o[\'browseedit\'] = [0, 1, 2];\n    o[\'launch\'] = [0, 2];\n    o[\'subform\'] = [0, 1];\n\n    $(\'#sfo_type\').removeClass();\n    $(\'#sfo_type\').addClass(\'nu_\' + $(\'#sfo_type\').val());\n\n    if (h) {\n        $(\'#sfo_type\').addClass(\'nuEdited\');\n    }\n\n    $(\"#sfo_type > option\").each(function() {\n        $(this).addClass(\'nu_\' + this.value);\n    });\n\n    for (var i = 0; i < 7; i++) {\n        $(\'#nuTab\' + i).removeClass(\'nuRelatedTab\');\n    }\n\n    t = o[$(\'#sfo_type\').val()];\n    if (t !== undefined) {\n\n        for (i = 0; i < t.length; i++) {\n            $(\'#nuTab\' + t[i]).addClass(\'nuRelatedTab\');\n        }\n\n    }\n\n}\n\n\nfunction afterinsertrowObjects() {\n   colorObjectTypes();\n}\n\nfunction JsMod(i) {\n    \n    var js = $(\'#\' + i);\n\n    js.css(\'padding\', \'3px 3px 3px 3px\')\n\n    if (js.val() !== \'\') {  \n        $(\'#nuTab2\').css(\'font-weight\', \'bold\');\n    }\n\n    js.addClass(\'js\');\n\n}\n\nif (nuFormType() == \'edit\') {\n\n    $(\'#sfo_code_snippet_sql_lookupbutton\').on(\'click\',function() {\n           nuSetSnippetFormFilter(0,0,1,0); // Custom Code\n    });\n    \n    $(\'#sfo_code_snippet_lookupbutton\').on(\'click\',function() {\n           nuSetSnippetFormFilter(1,0,0,0);  // SQL\n    });\n\n    colorObjectTypes();\n\n    $(\'#title_objformbtnOpenDetails\').html(nuTranslate(\'Details\'));\n\n    nuHide(\'sfo_code_snippet_lookupcode\');\n    nuHide(\'sfo_code_snippet_sql_lookupcode\');\n\n    nuSetPlaceholder(\'sfo_javascript\',\'JavaScript\');\n    nuSetPlaceholder(\'sfo_browse_javascript\',\'JavaScript\');\n    nuSetPlaceholder(\'sfo_edit_javascript\',\'JavaScript\');\n    \n    $(\'#title_zzzzsys_tab_sfsyt_help\').attr(\'id\', \'help_title\');\n    $(\"[id$=\'syt_help\']\").addClass(\'js\');\n\n    nuAttachButtonImage(\'previewbrowse\', \'PB\');\n    nuAttachButtonImage(\'previewedit\', \'PE\');\n    nuAttachButtonImage(\'bb_event\', \'BB\');\n    nuAttachButtonImage(\'be_event\', \'BE\');\n    nuAttachButtonImage(\'bs_event\', \'BS\');\n    nuAttachButtonImage(\'as_event\', \'AS\');\n    nuAttachButtonImage(\'bd_event\', \'BD\');\n    nuAttachButtonImage(\'ad_event\', \'AD\');\n    nuAttachButtonImage(\'icon\', \'JS\');\n    nuAttachButtonImage(\'br_sql\', \'SQL\');\n\n    JsMod(\'sfo_edit_javascript\');\n    JsMod(\'sfo_browse_javascript\');\n    JsMod(\'sfo_javascript\');\n\n    nuHide(\'sfo_edit_javascript\');\n    nuHide(\'sfo_browse_javascript\');\n    \n    $(\'#sfo_browse_sql\').addClass(\'sql\').css(\'font-size\', 10);\n\n    if (! nuIsNewRecord()) {\n        nuUpdateAclCount();\n    }\n\n    default_description();\n\n    // Add ACE event handlers\n    $(\'.js\')\n        .dblclick(function() {\n            nuOpenAce(\'Javascript\', this.id);\n        });\n\n    $(\'.sql\').dblclick(function() {\n        nuOpenAce(\'SQL\', this.id);\n    });\n\n    $(\'.html\')\n        .dblclick(function() {\n            nuOpenAce(\'HTML\', this.id);\n    });\n    \n    nuUpdateDisplayDatalists();\n    \n    nuTypeChanged();\n    \n    let js = nuGetProperty(\'js\');\n    if (js !== undefined) {\n        let js_button = nuGetProperty(\'js_button\');\n        nuJSSelectCustomCode(\'#\' + js_button, js)\n    } else {\n        debugger;\n        if ($(\'#sfo_javascript\').val() == \'\' && $(\'#sfo_edit_javascript\').val()  == \'\' && $(\'#sfo_browse_javascript\').val() !== \'\') {\n            nuJSSelectCustomCode(\'#js_browse\', \'sfo_browse_javascript\')    \n        } else if ($(\'#sfo_javascript\').val() == \'\' && $(\'#sfo_browse_javascript\').val()  == \'\' && $(\'#sfo_edit_javascript\').val() !== \'\') {\n            nuJSSelectCustomCode(\'#js_edit\', \'sfo_edit_javascript\')    \n        } else {\n            nuJSSelectCustomCode(\'#js_browse_edit\', \'sfo_javascript\')\n        }\n    }\n    \n    nuHighlightJSButtons();\n    \n    $(function() {\n        sfo_javascript.setSelectionRange(window.selectionStart, window.selectionStart);\n        sfo_javascript.focus();\n    });\n\n    \n\n} else { // FormType() = browse\n\n    $(\"[data-nu-column=\'1\']\").each(function() {\n        $(this).addClass(\'nu_\' + this.textContent);\n    });\n\n    // Adjust Padding-Top for Preview Button\n    $(\"[data-nu-column=\'0\']\").each(function() {\n        $(this).css(\'padding-top\',\'2px\');\n    });\n    \n     addRowButtons(0);\n\n}\n\nif (window.filter == \'justjs\') {\n\n    $(\'#nuDeleteButton\').remove();\n    $(\'#nuCloneButton\').remove();\n    $(\'#nuTab0\').remove();\n    $(\'#nuTab1\').remove();\n    $(\'#nuTab2\').click();\n    $(\'#nuTab2\').remove();\n\n    nuSetTitle($(\'#sfo_description\').val());\n\n}\n\n\n$(\'#user_home\')\n    .css({\n        \'color\': \'white\',\n        \'font-size\': 13,\n        \'display\': \'inline\',\n        \'border-style\': \'solid\',\n        \'height\': 30,\n        \'text-shadow\': \'0 1px 2px #9AB973\',\n        \'border-color\': \'#9AB973\',\n        \'border-width\': \'0px 0px 1px 0px\',\n        \'background-color\': \'#88cb51\'\n    });\n\nfunction nuTypeChanged() {\n\n    var t = String($(\'#sfo_type\').val());\n\n    var pb = \'previewbrowse\';\n    var pe = \'previewedit\';\n\n    var bb = \'bb_event\';\n    var be = \'be_event\';\n    var bs = \'bs_event\';\n    var as = \'as_event\';\n    var bd = \'bd_event\';\n    var ad = \'ad_event\';\n\n    nuEnable([pb, pe, bb, be, bs, as, bd, ad]);\n    \n    if (t == \'browse\') {\n        nuDisable([pe, be, bs, as, bd, ad]);\n    } else\n    if (t == \'edit\') {\n        nuDisable([pb, pb, bb]);\n    } else\n    if (t == \'launch\') {\n        nuDisable([pb, bb, bs, as, bd, ad]);\n    } else\n    if (t == \'subform\') {\n        nuDisable([pb, bb, be, bs, as, bd, ad]);\n        nuDisable(\'sfo_javascript\');\n    }\n\n    var h = $(\'#sfo_type\').addClass(\'nuEdited\');\n    var o = [];\n    o[\'browse\'] = [0, 1, 2];\n    o[\'edit\'] = [0, 2];\n    o[\'browseedit\'] = [0, 1, 2];\n    o[\'launch\'] = [0, 2];\n    o[\'subform\'] = [0, 1];\n\n    $(\'#sfo_type\').removeClass();\n    $(\'#sfo_type\').addClass(\'nu_\' + $(\'#sfo_type\').val());\n\n    if (h) {\n        $(\'#sfo_type\').addClass(\'nuEdited\');\n    }\n\n    $(\"#sfo_type > option\").each(function() {\n        $(this).addClass(\'nu_\' + this.value);\n    });\n\n    for (var i = 0; i < 7; i++) {\n        $(\'#nuTab\' + i).removeClass(\'nuRelatedTab\');\n    }\n\n    t = o[$(\'#sfo_type\').val()];\n    if (t !== undefined) {\n\n        for (i = 0; i < t.length; i++) {\n            $(\'#nuTab\' + t[i]).addClass(\'nuRelatedTab\');\n        }\n\n    }\n    \n    nuSetControlsVisibility();\n\n}\n\nfunction nuEventList() {\n\n    if ($(\'sob_all_type\').val() == \'subform\') {\n        return [\'onchange\', \'onadd\'];\n    } else {\n        return [\'onblur\', \'onchange\', \'onfocus\', \'onkeydown\'];\n    }\n\n}\n\n\nfunction onDisplayBlur(event) {\n    \n    var obj;\n    var id = event.target.id;\n    \n    obj = nuSubformRowObject(id, \'sbr_display\');\n    var dispValue = obj.val();\n    if (dispValue !== \'\' && (dispValue.charAt(3) == \'_\' || dispValue.charAt(2) == \'_\')) {\n\n        let idx = dispValue.indexOf(\'_\');\n        if (idx == 2 || idx == 3) {\n            dispValue = dispValue.substring(idx + 1);\n        }\n        \n        var title = dispValue.replaceAll(\'_\', \' \').capitalise().toTitleCase();\n        \n        var obj = nuSubformRowObject(id, \'sbr_title\');\n        if (obj.val() == \'\') obj.val(title).change();    \n    }\n    \n}\n\nfunction onTitleDisplayChanged(event) {\n    \n    var obj;\n    var id = event.target.id;\n    \n    if (nuSubformRowObject(id, \'sbr_display\').val().trim() == \'\' && nuSubformRowObject(id, \'sbr_title\').val().trim()) return;\n    \n    obj = nuSubformRowObject(id, \'sbr_width\');\n    if (obj.val() == \'\') obj.val(100).change();\n    \n    obj = nuSubformRowObject(id, \'sbr_align\');\n    if (obj.prop(\"selectedIndex\") < 2) obj.prop(\"selectedIndex\", 1).change();\n\n     obj = nuSubformRowObject(id, \'sbr_order\');\n    if (obj.val() == \'\') {\n    \n        var max = 0;\n        $(\'[data-nu-field=sbr_order]\').each(function() {\n          var v = parseInt($(this).val());\n          max = (v > max) ? v : max;\n        });\n        \n        obj.val(max + 10).change();\n    }\n\n}\n\nfunction onTabsTitleChanged(event) {\n    \n    var obj;\n    var id = event.target.id;\n    \n    if (nuSubformRowObject(id, \'syt_title\').val().trim() == \'\' && nuSubformRowObject(id, \'syt_title\').val().trim()) return;\n    \n     obj = nuSubformRowObject(id, \'syt_order\');\n    if (obj.val() == \'\') {\n    \n        var max = 0;\n        $(\'[data-nu-field=syt_order]\').each(function() {\n          var v = parseInt($(this).val());\n          max = (v > max) ? v : max;\n        });\n        \n        obj.val(max + 10).change();\n    }\n\n}\n\nfunction default_description() {\n\n    var s = \'zzzzsys_browse_sf\';\n    var r = nuSubformObject(s).rows.length - 1;\n    var o = s + nuPad3(r) + \'sbr_title\';\n    \n    nuSetPlaceholder(o, \'Something\');\n \n}\n\nfunction nuUpdateAclCount() {\n	var l = $(\"[data-nu-field=\'slf_zzzzsys_access_id\']\").length -2;\n	var t = l <= 0 ? \'\' : \' (\' + l + \')\';\n	$(\'#nuTab3\').html(nuTranslate(\'Access Levels\') + t);\n}\n\n\nfunction nuSelectBrowseMainForm(e, t) {\n  // If a  button is clicked, don\'t open the Edit Screen.   \n  var col = $(e.target).attr(\'data-nu-column\');\n  if (col !== \'0\' && typeof col !== \"undefined\") {\n      var r = $(e.target).attr(\'data-nu-primary-key\');\n      nuForm(\'nuform\', r, \'\',\'\',0);\n  }\n\n  return false;\n}\n\n\nfunction nuSelectBrowseNew(e, t) {\n    if (nuMainForm()) {\n        nuSelectBrowseMainForm(e, t);\n    } else {\n        _nuSelectBrowse(e, t);\n    }\n}\n\n\nif (nuFormType() == \'browse\') {\n\n    if (!nuMainForm()) {nuSetBrowseColumnSize(0,0)} // Hide Preview\n\n    var _nuSelectBrowse = nuSelectBrowse; \n    var nuSelectBrowse = function(e, t) {\n    	nuSelectBrowseNew(e, t);\n    }\n    \n    $(\"[data-nu-column=\'1\']\").addClass(\'nuCellColored\');\n\n}	\n\nfunction createButton(target, pk, formType) {\n	\n	var btn = $(\"<button id=\'nuPreviewButton\' type=\'button\' data-form-type=\'\"+ formType +\"\' class=\'nuActionButton\'><i class=\'fa fa-search\'></i>&nbsp;</button>\");\n\n	$(target).html(btn).attr(\'title\',nuTranslate(\'Preview Form\'));\n	btn.on(\'click\',function(){\n	    var formType = $(this).attr(\"data-form-type\");\n	    var r = formType == \'launch\' || formType == \'edit\' || formType == \'subform\'  ? \'-1\' : \'\';\n	    nuForm(pk,r,\'\',\'\');\n	});\n}\n\nfunction addRowButtons(column) {\n  \n  $(\"[data-nu-column=\'\" + column + \"\']\").each(function(index) {\n      \n      var pk = $(this).attr(\'data-nu-primary-key\');\n      var r = $(this).attr(\'data-nu-row\');\n      var formType = $(\'#nucell_\'+ r + \'_1\').html();\n      \n      if (typeof pk !== \"undefined\") {\n          createButton(this, pk, formType);\n      }\n  })\n\n}\n\nfunction nuUpdateDisplayDatalists(i) {\n	var a = nuFORM.SQLFields($(\'#sfo_browse_sql\').val());\n	\n	var selector = i === undefined ? \"[id$=\'sbr_display\']\" : \"#\" + i;\n	    \n	$(selector).each(function() {\n	  nuAddDatalist($(this).attr(\'id\'), a);\n	});\n}\n\nfunction nuBeforeSave() {\n\n    var dupDisplay = nuSubformColumnUnique(\'zzzzsys_browse_sf\', \'sbr_display\', \'Display (Browse)\');\n    \n    if (dupDisplay !== true) {\n\n    	nuMessage(dupDisplay);\n    	return false;\n    }\n    \n    window.selectionStart = sfo_javascript.selectionStart;    \n    return true;\n\n}\n\nfunction nuJSSelectCustomCode(t, obj) {\n\n  $(\"button[id^=\'js\']\").removeClass(\'nuButtonSelected\');\n  $(t).addClass(\'nuButtonSelected\');\n  nuSetProperty(\'js\', obj);\n  nuSetProperty(\'js_button\', $(t).attr(\'id\'));\n  \n  $(\"textarea[id$=\'javascript\']\").nuHide();\n  nuShow(obj);\n\n  nuHighlightJSButtons()\n  \n  $(\'#\'+ obj).focus();\n  \n}\n\nfunction nuHighlightJSButtons() {\n\n	$(\'#js_edit\').toggleClass(\'nuButtonHighlighted\', $(\'#sfo_edit_javascript\').val() !== \'\');\n	$(\'#js_browse\').toggleClass(\'nuButtonHighlighted\', $(\'#sfo_browse_javascript\').val() !== \'\');\n	$(\'#js_browse_edit\').toggleClass(\'nuButtonHighlighted\', $(\'#sfo_javascript\').val() !== \'\');\n\n}', '', 'if ($(\'#zzzzsys_tab_sf000syt_access\').val() !== \'\') {\n  nuMessage(nuTranslate(\'The first tab must not be set to hidden\'));\n}'),
('nufile', 'browseedit', 'nufile', 'Stored Files', '#sfi_code#|New', 'zzzzsys_file', 'zzzzsys_file_id', '', 150, 3, '0', 'SELECT * FROM zzzzsys_file\nORDER BY sfi_code', '', 'nuShowBrowseImages();\nnuSetNoSearchColumns([2, 3]);\n\n$(\'[data-nu-column=\"0\"]\').each(function(index) {\n    var code = \'#nucell_\' + index + \'_\';\n    window.nuImages[$(code + \'0\').text()] = $(code + \'2\').text();\n});\n\nfunction nuShowBrowseImages() {\n\n    $(\'[data-nu-column=\"0\"]\').each(function(index) {\n\n        var p = $(this).attr(\'id\');\n        var r = String(p).split(\'_\')[1];\n        var i = \"nucell_\" + r + \"_2\";\n        var e = \"nucell_\" + r + \"_3\";\n        var h = $(\'#\' + i).html();\n\n        if (h !== \'\' && h !== undefined) {\n\n            nuEmbedObject(h, e, 140, 140);\n\n        }\n\n    });\n\n}', 'nuShowFile();\nnuSetToolTip(\'sfi_json_file_file\', nuTranslate(\'Max. 300Kb\'));\n\nif (nuIsNewRecord()) { \n nuHide(\'view_image\'); \n}\n\nfunction nuBeforeSave() {\n\n    var f = $(\'#sfi_json_file\').val();\n\n    if (f !== \'\') {\n\n        $(\'#sfi_json\')\n            .val(f)\n            .change();\n\n    }\n\n    return true;\n\n}\n\nfunction nuShowFile() {\n\n    var j = $(\'#sfi_json\').val();\n\n    nuEmbedObject(j, \'view_image\', -1, -1); // auto-size\n\n}'),
('nuselect', 'browseedit', 'nuselect', 'SQL Builder', '#sse_description#|New', 'zzzzsys_select', 'zzzzsys_select_id', '', 0, 0, '0', 'SELECT * FROM zzzzsys_select \r\nWHERE (sse_system != 1 OR sse_system IS NULL)\r\nORDER BY sse_description ASC\r\n\r\n', 'nuAttachFontAwesome(\'sse_resize\',\'fa fa-arrows-alt\');\nnuSetToolTip(\'sse_resize\',\'Resize\');\n$(\'#sse_sql\').css(\'z-index\', 1);\nnuLabelOnTop([\'nusvg\']);\n$(\'#sse_resize\').css(\'padding-top\',\'4px\');\n\n\nif(nuIsNewRecord()){\n    $(\'#sse_edit\').val(0);\n}\n\n$(\"#sse_edit option[value=\'\']\").remove();\n\n$(\'#sse_sql\')\n.css(\'font-size\', 10)\n.addClass(\'sql\')\n.dblclick(function() {\n	nuOpenAce(\'SQL\', this.id);\n});\n\n$(\'#label_sse_sql\').remove();\nnuHide(\'sse_code_snippet_lookupcode\');\nnuSetSnippetFormFilter(0,0,1);\n\n$(\'#sse_resize\').addClass(\'nuAllowDblClick\');\n\nnuSetSFCB();\n\nif(window.filter == \'justsql\'){\n\n    var sid     = String(nuFORM.getCurrent().record_id);\n    var from    = sid.substring(sid.length-2);\n    var targ    = \'#sfo_browse_sql\';\n\n    $(\'#nuDeleteButton\').remove();\n    $(\'#nuCloneButton\').remove();\n    $(\'#sse_description\').val(sid);\n    \n    nuHide(\'sse_description\');\n    \n    if(nuFORM.getCurrent().record_id != -1){\n    \n        $(\'#nuSaveButton\').hide();\n    \n        if(from == \'BR\'){\n            nuAddActionButton(\'SaveToTextarea\', \'Copy to Form Browse SQL\', \'nuCopySQL(\"sfo_browse_sql\")\');\n        }\n        \n        if(from == \'SE\'){\n            nuAddActionButton(\'SaveToTextarea\', \'Copy to Select Object SQL\', \'nuCopySQL(\"sob_select_sql\")\');\n        }\n        \n\n        if(from == \'DI\'){\n            nuAddActionButton(\'SaveToTextarea\', \'Copy to Display Object SQL\', \'nuCopySQL(\"sob_display_sql\")\');\n        }\n        \n    }\n\n}\n\n\n\n\n\n$(\'#sse_sql\').css(\'overflow-x\',\'scroll\');\n\n\nnuWhereClauses();\n\n\nfunction nuCopySQL(targ){\n    \n    var s   = $(\'#sse_sql\').val();\n    \n    parent.$(\'#\' + targ).val(s).change();\n    \n    parent.$(\'#dialogClose\').click();\n\n}\n\n\nfunction nuTempPHP(){\n    \n    var p   = [];\n    \n    p.push(\'\');\n    p.push(\'$sql = \"\');\n    p.push(\'\');\n    p.push(\'CREATE TABLE #TABLE_ID#\');\n    p.push($(\'#sse_sql\').val());\n    p.push(\'\');\n    p.push(\'\";\');\n    p.push(\'\');\n    p.push(\"nuRunQuery($sql);\");\n    p.push(\'\');\n    nuMessage(p);\n//    $(\"#nuAlertDiv\").css(\'text-align\', \'left\')\n    $(\"#nuMessageDiv\").css(\'text-align\', \'left\')\n\n}\n\nfunction nuBeforeSave(){\n    \n    $(\'#sqlframe\')[0].contentWindow.nuSQL.buildSQL();\n    return true;\n    \n}\n\n\n\n\nfunction nuWhereClauses(){\n\n	$(\"[id$=\'ssc_type\']select\").each(function(index){\n		\n		var p   = $(this).attr(\'data-nu-prefix\');\n		var t   = $(this).val();\n		\n		if(t == 2 || t == 3){\n		    \n		    if($(\'#\' + p + \'ssc_sort\').val() == \'\'){\n                $(\'#\' + p + \'ssc_sort\').val(\'ASC\');\n		    }\n		    \n    		$(\'#\' + p + \'ssc_clause\').hide();\n    		$(\'#\' + p + \'ssc_sort\').show();\n    		\n		}else{\n		    \n    		$(\'#\' + p + \'ssc_clause\').show();\n    		$(\'#\' + p + \'ssc_sort\').hide();\n    		\n		}\n\n	});\n\n}\n\n\nfunction nuWhereClausesold(){\n\n	$(\"[id$=\'ssc_type\']select\").each(function(index){\n		\n		var p   = $(this).attr(\'data-nu-prefix\');\n		var t   = $(this).val();\n		\n		if(t == 2 || t == 3){\n		    \n		    if($(\'#\' + p + \'ssc_sort\').val() == \'\'){\n                $(\'#\' + p + \'ssc_sort\').val(\'ASC\');\n		    }\n		    \n    		$(\'#\' + p + \'ssc_clause\').hide();\n    		$(\'#\' + p + \'ssc_sort\').show();\n    		\n		}else{\n		    \n    		$(\'#\' + p + \'ssc_clause\').show();\n    		$(\'#\' + p + \'ssc_sort\').hide();\n    		\n		}\n\n	});\n\n}\n\n\nfunction nuAddSQLTable(e){\n  \n    var s = $(\'#sqlframe\')[0].contentWindow.nuSQL;\n    \n    s.addBox(e.target.value);\n    e.target.value  = \'\';\n    s.buildSQL();\n\n}\n\n\nfunction nuSFCB(){\n    \n    nuWhereClauses();\n    $(\'#sqlframe\')[0].contentWindow.nuSQL.buildSQL();\n\n}\n\n\nfunction nuSetSFCB(){\n    \n    $(\'.nuSubformCheckbox.zzzzsys_select_clause\')\n	.click(function(){\n		nuSFCB();\n    });\n    \n}\n\n\n\nfunction nuResizeSQL(){\n\n    if($(\'#sqlframe\').css(\'height\') == \'460px\'){\n        $(\'#sqlframe\').css(\'height\', 700);\n    }else{\n        $(\'#sqlframe\').css(\'height\', 460);\n    }\n    \n}\n\n\n', NULL, NULL),
('nulaunchable', 'browse', 'nulaunchable', 'Launchable Forms', NULL, 'zzzzsys_form', 'zzzzsys_form_id', '', 0, 16, '0', 'SELECT * FROM zzzzsys_form\nWHERE sfo_type IN (\'edit\', \'browseedit\', \'launch\')\nAND (\n    SUBSTRING(zzzzsys_form_id, 1, 2) != \'nu\'\n    OR zzzzsys_form_id = \'nublank\'\n    OR zzzzsys_form_id = \'nuuserhome\'\n    )\nORDER BY sfo_code\n', '$(\'#sfo_breadcrumb_title\').addClass(\'sql\');\n$(\'#sfo_browse_sql\').addClass(\'sql\');\n$(\'#sfo_javascript\').addClass(\'js\');\n\nnuSetTitle($(\'#sfo_table\').val());\n\n$(\'.js\').dblclick(function() {\n	nuOpenAce(\'Javascript\', this.id);\n});\n\n$(\'.sql\').dblclick(function() {\n	nuOpenAce(\'SQL\', this.id);\n});\n\n$(\'.html\').dblclick(function() {\n	nuOpenAce(\'HTML\', this.id);\n});\n\n$(\'.php\').dblclick(function() {\n	nuOpenAce(\'PHP\', this.id);\n});\n\nif(window.filter == \'justjs\'){\n    \n    $(\'#nuDeleteButton\').remove();\n    $(\'#nuCloneButton\').remove();\n    $(\'#nuTab0\').remove();\n    $(\'#nuTab1\').remove();\n    $(\'#nuTab2\').click();\n    $(\'#nuTab2\').remove();\n    \n    nuSetTitle($(\'#sfo_description\').val());\n    \n}\n\n\n\nfunction nuFormColor(){\n\n    var t   = String($(\'#sfo_type\').val());\n\n    var pb  = \'previewbrowse\';\n    var pe  = \'previewedit\';\n\n    var bb  = \'bb_event\';\n    var be  = \'be_event\';\n    var bs  = \'bs_event\';\n    var as  = \'as_event\';\n    var bd  = \'bd_event\';\n    var ad  = \'ad_event\';\n    \n    if(t == \'browse\'){\n        \n        nuDisable(pe);\n\n        nuDisable(be);\n        nuDisable(bs);\n        nuDisable(as);\n        nuDisable(bd);\n        nuDisable(ad);\n\n    }\n    \n    if(t == \'edit\'){\n        \n        nuDisable(pb);\n        nuDisable(bb);\n        \n    }\n\n    if(t == \'launch\'){\n        \n        nuDisable(pb);\n        nuDisable(bb);\n        nuDisable(as);\n        nuDisable(bd);\n        nuDisable(ad);\n\n    }\n    \n    if(t == \'subform\'){\n        \n        nuDisable(pb);\n        nuDisable(bb);\n        nuDisable(be);\n        nuDisable(bs);\n        nuDisable(as);\n        nuDisable(bd);\n        nuDisable(ad);\n        nuDisable(\'sfo_javascript\');\n        \n    }\n\n    var h           = $(\'#sfo_type\').addClass(\'nuEdited\');\n    var o           = [];\n    o[\'browse\']		= [0,1,2];\n    o[\'edit\'] 		= [0,2];\n    o[\'browseedit\'] = [0,1,2];\n    o[\'launch\'] 	= [0,2];\n    o[\'subform\']    = [0,1];\n    \n    $(\'#sfo_type\').removeClass();\n    $(\'#sfo_type\').addClass(\'nu_\'+$(\'#sfo_type\').val());\n    \n    if(h){\n        $(\'#sfo_type\').addClass(\'nuEdited\');\n    }\n    \n    $(\"#sfo_type > option\").each(function() {\n        $(this).addClass(\'nu_\'+this.value);\n    });\n\n    for(var i = 0 ; i < 7 ; i++){\n        $(\'#nuTab\' + i).removeClass(\'nuRelatedTab\');\n    }\n    var t   = o[$(\'#sfo_type\').val()];\n\n    if(t !== undefined){\n        \n    	for(var i = 0 ; i < t.length ; i++){\n    		$(\'#nuTab\' + t[i]).addClass(\'nuRelatedTab\');		\n    	}\n    	\n    }\n    \n}\n\nnuFormColor();\n\n//nuBuildSubformArray(\'zzzzsys_tab_sf\');\n//nuBuildSubformArray(\'zzzzsys_browse_sf\');\n\n$(\"[data-nu-column=\'nucolumn000\']\").each(function() {\n    $(this).addClass(\'nu_\'+this.textContent);\n});\n\n\n\nfunction nuEventList(){\n	\n	if($(\'sob_all_type\').val() == \'subform\'){\n		return [\'onchange\',\'onadd\'];\n	}else{\n		return [\'onblur\',\'onchange\',\'onfocus\',\'onkeydown\'];\n	}\n	\n}\n\n\n', NULL, NULL),
('nuclause', 'subform', 'nuclause', 'Select Clauses', NULL, 'zzzzsys_select_clause', 'zzzzsys_select_clause_id', '', 0, 0, '0', 'SELECT * FROM zzzzsys_select_clause\nORDER BY ssc_type, ssc_order', '', NULL, NULL),
('nubuildtable', 'browse', 'nubuildtable', 'PHP or SELECT or TABLE', NULL, 'zzzzsys_report_data', 'id', 'nuselect', 0, 16, '0', 'SELECT * FROM zzzzsys_report_data', '', NULL, NULL),
('nuuserhome', 'launch', 'nuuserhome', 'User Home', NULL, '', '', '', 0, 0, '0', '', 'function openNuObject() {\n\n    $(\'#nuMessageDiv\').remove();\n    nuPopup(\'nuobject\', \'-1\', window.nuFORM.getCurrent().form_id, \'\', 0);\n\n}\n\nif (nuSERVERRESPONSE.objects.length === 0 && window.global_access) {\n\n    var headings = \'<h2>\' + nuTranslate(\'Information\') + \'<h2>\';\n	var message = nuTranslate(\'Currently there are no objects on this Form\') + \'. <a href=\"javascript:openNuObject();\">\'+ nuTranslate(\'Start adding some\') + \'</a>.\';\n	nuMessage([headings, message]);\n\n}', NULL, NULL),
('nufrlaunch', 'launch', 'nufrlaunch', 'Fast Report', NULL, '', '', '', 0, 0, '0', '', '\n$(\'#wrdaddable\').css({\'font-size\' : 14, \'font-weight\' : 700, \'padding\' : 5}).addClass(\'nuTabHolder\');\n$(\'#frwrd\').css({\'font-size\' : 14, \'font-weight\' : 700, \'padding\' : 5}).addClass(\'nuTabHolder\');\n$(\'#nufr\').css({\'text-align\' : \'left\', \'height\' : 410, \'background-color\': \'#ebebeb\'});\n\n$(\'#list\').addClass(\'nuScroll\').removeClass(\'nuReadonly\');\n\n$(\'.nuActionButton\').hide();\nnuAddActionButton(\'nuRunPHPHidden\', \'Build Fast Report\', \'nuRunPHPHidden(\"RUNFR\")\');\n\n\nfunction nuAddReportField(t){\n\n    var f   = nuPad3($(\"[data-nu-label=\'Field Name\']\").length - 1);\n\n    $(\'#fast_report_sf\' + f + \'field\').val($(t).html()).change();\n    $(\'#fast_report_sf\' + f + \'width\').val(100).change();\n    $(\'#fast_report_sf\' + f + \'sum\').val(\'no\').change();\n    $(\'#fast_report_sf\' + f + \'title\').val($(t).html()).change().select();\n    \n}\n\n\nfunction nuBeforeSave(){\n    \n    if($(\'#table\').val() === \'\'){\n        \n        nuMessage([\'<b>Table Data</b>\', nuTranslate(\'Cannot be left blank...\')])\n        return false;\n        \n    }\n    \n    \n    if($(\'#orderby\').val() === \'\'){\n        \n        nuMessage([\'<b>Order By</b>\', nuTranslate(\'Cannot be left blank...\')])\n        return false;\n        \n    }\n    \n    nuBuildFastReport();\n    \n    return true;\n    \n}\n\n', NULL, NULL),
('nufastreportobjects', 'subform', 'nufastreportobjects', 'Fast Report Objects', NULL, 'zzzzsys_debug', 'zzzzsys_debug_id', '', 0, 0, '0', 'SELECT count(*) FROM zzzzsys_debug', '', NULL, NULL),
('nusamplesubformform', 'launch', 'nusamplesubformform', 'Sample Subform Form', NULL, '', '', '', 0, 0, '0', '', '', NULL, NULL),
('nulaunchform', 'edit', 'nulaunchform', 'nuBuilder non-System Form', NULL, 'zzzzsys_form', 'zzzzsys_form_id', '', 0, 0, '0', 'SELECT * FROM zzzzsys_form\nWHERE sfo_type != \'subform\' AND zzzzsys_form_id != \'nuhome\'\nORDER BY sfo_code\n', '$(\"[data-nu-column=\'0\']\").each(function() {\n    $(this).addClass(\'nu_\'+this.textContent);\n});\n\n$(\'#nuAddButton\').remove();\n$(\'#nuPrintButton\').remove();\n\n', NULL, NULL),
('nutablookup', 'browse', 'nutablookup', 'Form Tab Lookup', NULL, 'zzzzsys_tab', 'zzzzsys_tab_id', '', 0, 16, '0', 'SELECT * FROM zzzzsys_tab\nJOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id\nJOIN #TABLE_ID# ON zzzzsys_form_id = theid\nORDER BY sfo_description, syt_order\n\n ', 'function getParentFormCode() {\n    \n    return parent.parent.nuCurrentProperties().form_code;\n    \n}\n\nif(nuFormType() == \'browse\'){\n    \n    if ( getParentFormCode() !== \'nuobject\' && window.filtered !== 1) {\n       nuAddActionButton(\'nuFilterCurrentForm\', \'Current Form only\', \'nuSearchAction(\"\", \"\'+getParentFormCode()+\'\");window.filtered = 1;\');            \n    }\n\n    //-- run as the Form is loaded      \n\n    $(\"[data-nu-column=\'3\']\").each(function() {\n        $(this).addClass(\'nu_\'+this.textContent);\n    });\n    \n    $(\'#nuAddButton\').remove();\n    $(\'#nuPrintButton\').remove();\n\n\n}\n    \n\n', NULL, NULL),
('nucsvtransfer', 'launch', 'nucsvtransfer', 'CSV Transfer', NULL, '', '', '', 0, 0, '0', '', '\n\nfunction nuCheckCSV(){\n\n    var csvTo = $(\'#csv_to\').val();\n    var csvFrom = $(\'#csv_from\').val();\n    var csvDelimiter = $(\'#csv_delimiter\').val();\n\n    if($(\'#csv_transfer\').val() === \'\' || csvFrom === \'\' || csvTo === \'\' || csvDelimiter === \'\'){\n        nuMessage([nuTranslate(\'No fields can be left blank\') + \'...\']);\n    }else{\n        \n        if($(\'#csv_transfer\').val() == \'export\'){\n            \n            if(nuFORM.getJustTables().includes(csvFrom)){\n                nuRunPHP(\"CSVTRANSFER\")\n            }else{\n                nuMessage([nuTranslate(\'No such tablename\')+\'...\']);\n            }\n            \n        }\n        \n        if($(\'#csv_transfer\').val() == \'import\'){\n            \n            if(nuCSVfiles.includes(csvFrom)){\n\n                if (csvTo == \'zzzzsys_user\') {\n                    nuImportUsersFromCSV(csvFrom, csvDelimiter);\n                } else {\n                    if(nuFORM.getJustTables().includes(csvTo)){\n                        nuMessage([nuTranslate(\'There is already a table named\'), \'<b>\' + csvTo + \'</b>\']);\n                    }else{\n                        nuRunPHP(\"CSVTRANSFER\")\n                    }\n                }\n                    \n            }else{\n                nuMessage([nuTranslate(\'File not found\'), \'\', nuTranslate(\'CSV File must be located in the temp directory of the nubuilder directory\')]);\n            }\n            \n        }\n        \n    }\n    \n}\n    \n\n\nnuAddActionButton(\'transfer\', \"Transfer\", \'nuCheckCSV()\', \'\');\n\n$(\'#csv_transfer\').val(\'export\');\n$(\'#csv_delimiter\').val(\'44\');\n\nnuCSVTransfer(\'export\');\n\nfunction nuCSVTransfer(t){\n\n    if(t == \'export\'){\n                \n        $(\'#label_csv_from\').html(nuTranslate(\'Export From (Table)\'));\n        $(\'#label_csv_to\').html(nuTranslate(\'Export To CSV File\'));\n        \n        $( \'#csv_from\' ).addClass(\'input_nuScroll nuScroll\').off(\'keydown\').keydown(function() {\n            nuFORM.scrollList(event, nuFORM.getJustTables());\n        });        \n        \n    }else{\n\n        $(\'#label_csv_from\').html(nuTranslate(\'Import From CSV File\'));\n        $(\'#label_csv_to\').html(nuTranslate(\'Import To (Table)\'));\n\n        $( \'#csv_from\' ).addClass(\'input_nuScroll nuScroll\').off(\'keydown\').keydown(function() {\n            nuFORM.scrollList(event, nuCSVfiles);\n        });\n\n    }\n        \n}', NULL, NULL),
('nunotes', 'browseedit', 'nunotes', 'Notes', '#not_title#|New', 'zzzzsys_note', 'zzzzsys_note_id', NULL, NULL, NULL, '', 'SELECT\n    zzzzsys_note.*, noc_name\nFROM\n    zzzzsys_note\nLEFT JOIN zzzzsys_note_category ON not_zzzzsys_note_category_id = zzzzsys_note_category.zzzzsys_note_category_id\nORDER BY\n    not_title ASC', '', '', '$(\'#not_title\').css({\"color\": \"maroon\", \"padding-left\": \"8\", \"font-weight\": \"bold\", \"font-size\": \"15px\"});\n\nnuHide(\'label_not_title\');\nnuSetPlaceholder(\'not_title\', nuTranslate(\'Title\'));\n\nnuHide(\'label_not_zzzzsys_note_category_id\');\nnuSetPlaceholder(\'not_zzzzsys_note_category_idcode\', nuTranslate(\'Category\'));\n\nhandleKeys();\n\nfunction handleKeys() {\n\n    $(\'#not_title\').on(\'keydown\', function(evt) {\n      if (evt.key === \'Tab\' || evt.key === \'Enter\') {\n      \n        evt.preventDefault();\n        $(\'.ql-editor\').focus();\n      }\n    });\n\n}\n\nfunction nuBeforeSave() {\n\n    if (nuFORM.edited === true) {\n        var container = document.querySelector(\'#not_content_container\');\n        var containerHtml = container.children[0].innerHTML;\n        $(\'#not_content\').val(containerHtml).change();\n    }\n\n    return true;\n}\n'),
('nunotescategroy', 'browseedit', 'nunotescategory', 'Category', NULL, 'zzzzsys_note_category', 'zzzzsys_note_category_id', NULL, NULL, 15, '0', 'SELECT * FROM zzzzsys_note_category\nORDER BY noc_name', 'nuHide(\'nuPrintButton\');', NULL, NULL),
('nusession', 'browse', 'nusession', 'Sessions', NULL, 'zzzzsys_session', 'zzzzsys_session_id', NULL, NULL, NULL, '0', 'SELECT *\nFROM\n  (SELECT zzzzsys_session_id,\n          TRIM(BOTH \'\"\'\n               FROM JSON_EXTRACT(sss_access, \'$.session.zzzzsys_user_id\')) AS login,\n          null AS USER,\n          sss_login_time AS login_time,\n          TRIM(BOTH \'\"\' FROM JSON_EXTRACT(sss_access, \'$.session.ip_address\')) as ip \n   FROM zzzzsys_session\n   WHERE TRIM(BOTH \'\"\'\n              FROM JSON_EXTRACT(sss_access, \'$.session.global_access\')) = \'1\'\n			  \n			  \n   UNION ALL SELECT \n   \n        zzzzsys_session_id AS ses_id,\n        sus_login_name AS login,\n        sus_name AS name,\n        sss_login_time AS login_time,\n        TRIM(BOTH \'\"\' FROM JSON_EXTRACT(sss_access, \'$.session.ip_address\')) as ip\n        \n   FROM zzzzsys_user\n   JOIN zzzzsys_session\n   WHERE zzzzsys_user_id = TRIM(BOTH \'\"\'\n                                FROM JSON_EXTRACT(sss_access, \'$.session.zzzzsys_user_id\')) \n) T\nORDER BY login_time DESC\n', 'nuHide(\'nuAddButton\');\n\n', NULL, NULL),
('nucodesnippet', 'browseedit', 'nucodesnippet', 'Code Snippets', '#cot_code#|New', 'zzzzsys_code_snippet', 'zzzzsys_code_snippet_id', NULL, 35, 10, '0', 'SELECT * FROM zzzzsys_code_snippet WHERE (\n\n		(IFNULL(cot_scope,\'\') LIKE \'%0%\' AND \'#IS_CUSTOM_CODE#\' = \'1\') OR\n		(IFNULL(cot_scope,\'\') LIKE \'%1%\' AND \'#IS_SETUP_HEADER#\' = \'1\') OR\n		(IFNULL(cot_scope,\'\') LIKE \'%2%\' AND \'#IS_SQL#\' = \'1\') OR\n		(IFNULL(cot_scope,\'\') LIKE \'%2%\' AND \'#IS_PHP#\' = \'1\') OR\n\n	(\n\n		LOCATE(\'#\', \'#IS_SETUP_HEADER#\') = 1 AND \n		LOCATE(\'#\', \'#IS_CUSTOM_CODE#\') = 1 AND\n		LOCATE(\'#\', \'#IS_PHP#\') = 1 AND \n		LOCATE(\'#\', \'#IS_SQL#\') = 1 \n\n	) \n)\n\nORDER BY cot_code ', 'if (nuFormType() == \'edit\') {\n\n    var sc = $(\'#cot_source_code\');\n    sc.addClass(\'js\');\n\n    sc.css(\'padding\', \'3px 3px 3px 3px\')\n\n    // Add ACE event handlers\n    sc .dblclick(function() {\n         nuOpenAce(nuGetSourceLangage(), this.id);\n    });\n\n   // Code Snippets form\n   nuSetProperty(\'IS_SETUP_HEADER\',0);\n   nuSetProperty(\'IS_CUSTOM_CODE\',1);\n\n    // Disable nu-records\n    if (nuCurrentProperties().record_id.startsWith(\'nu\')) {\n      nuDisableAllObjects();\n      $(\'#nuSaveButton\').hide();\n    }\n\n}\n\nfunction nuOnClone(){\n      nuEnableAllObjects();\n      $(\'#nuSaveButton\').show();\n}\n\n\nfunction nuGetSourceLangage() {\n    \n    var l = $(\'#cot_language\').val();\n    return l === \'\' ? \'Javascript\' : l;\n    \n}\n\n', NULL, NULL);
INSERT INTO `zzzzsys_form` (`zzzzsys_form_id`, `sfo_type`, `sfo_code`, `sfo_description`, `sfo_breadcrumb_title`, `sfo_table`, `sfo_primary_key`, `sfo_browse_redirect_form_id`, `sfo_browse_row_height`, `sfo_browse_rows_per_page`, `sfo_browse_title_multiline`, `sfo_browse_sql`, `sfo_javascript`, `sfo_browse_javascript`, `sfo_edit_javascript`) VALUES
('nucloner', 'browseedit', 'nucloner', 'Cloner', NULL, 'zzzzsys_cloner', 'zzzzsys_cloner_id', NULL, NULL, NULL, '0', 'SELECT * FROM zzzzsys_cloner', 'function nuSelectObjectRefreshed(o, f) {\n    nuSelectRemoveEmpty();\n}\n\nfunction addRunButton() {\n    nuAddActionButton(\'nuRunPHPHidden\', \'Run\', \'runCloner()\');\n    $(\'#nunuRunPHPHiddenButton\').css(\'background-color\', \'#117A65\');\n}\n\nfunction selectToIndexArray(id) {\n\n    var a = [];\n    $(\'#\' + id + \' option:selected\').each(function(index) {\n        if ($(this).text() !== \'\') {\n            a.push($(this).index() + 1);\n        }\n    });\n    return a;\n    \n}\n\nfunction selectToValueArray(id) {\n\n    var a = [];\n    $(\'#\' + id + \' option:selected\').each(function(index) {\n        if ($(this).text() !== \'\') {\n            a.push($(this).text())\n        }\n    });\n\n    return a;\n\n}\n\n\nfunction runCloner() {\n\n    if ($(\'#clo_form_source\').val() === \'\') {\n        nuMessage([nuTranslate(\'Source Form cannot be left blank.\')]);\n        return;\n    }\n\n    if ($(\'#clo_tabs :selected\').length === 0) {\n        nuMessage([nuTranslate(\'Select at least 1 Tab.\')]);\n        return;\n    }\n\n    nuSetProperty(\'cloner_refresh_selectId\', \'\');\n\n    var tabs = selectToIndexArray(\'clo_tabs\');\n    nuSetProperty(\'cloner_tabs\', tabs.length === 0 ? \'\' : JSON.stringify(tabs));\n\n    var subforms = $(\'#clo_subforms_include\').is(\':checked\');\n    var clo_subforms = selectToValueArray(\'clo_subforms\');\n    nuSetProperty(\'cloner_subforms\', subforms === false || clo_subforms.length === 0 ? \'0\' : JSON.stringify(clo_subforms));\n\n    var formsRunIFrame = selectToValueArray(\'clo_iframe_forms\');\n    nuSetProperty(\'cloner_iframe_forms\', formsRunIFrame === false || formsRunIFrame.length === 0 ? \'0\' : JSON.stringify(formsRunIFrame));\n\n    var dump = $(\'#clo_dump\').is(\':checked\');\n    nuSetProperty(\'cloner_dump\', dump ? \'1\' : \'0\');\n\n    var noObjects = $(\'#clo_objects\').is(\':checked\');\n    nuSetProperty(\'cloner_objects\', noObjects ? \'0\' : \'1\');\n\n    var newPks = $(\'#clo_new_pks\').is(\':checked\');\n    nuSetProperty(\'cloner_new_pks\', newPks ? \'1\' : \'0\');\n\n    nuSetProperty(\'cloner_form_source\', $(\'#clo_form_source\').val());\n    nuSetProperty(\'cloner_form_dest\', $(\'#clo_form_dest\').val());\n    nuSetProperty(\'cloner_notes\', \'#clo_notes#\');\n\n    dump ? nuRunPHP(\'nucloner\', \'\', 1) : nuRunPHPHidden(\'nucloner\', 0);\n\n}\n\nfunction setTitle() {\n\n    if (!nuIsNewRecord()) {\n        nuSetTitle($(\'#clo_form1description\').val());\n    }\n\n}\n\nfunction setDefaultValues() {\n\n    if (nuIsNewRecord()) {\n        $(\'#clo_new_pks\').prop(\'checked\', true).change();\n        $(\'#clo_dump\').prop(\'checked\', true).change();\n    }\n\n}\n\nfunction setParentFormId() {\n\n    if (parent.$(\'#nuModal\').length > 0 && $(\'#clo_form_source\').val() === \'\') {\n        nuGetLookupId(window.parent.nuCurrentProperties().form_id, \'clo_form_source\');\n    }\n\n}\n\nfunction cloSubformsChecked() {\n\n    var c = $(\'#clo_subforms_include\').is(\':checked\');\n    c ? nuEnable(\'clo_subforms\') : nuDisable(\'clo_subforms\');\n    nuSelectSelectAll(\'clo_subforms\', c);\n\n}\n\nfunction cloIframeFormsChecked() {\n\n    var c = $(\'#clo_iframe_forms_include\').is(\':checked\');\n    c ? nuEnable(\'clo_iframe_forms\') : nuDisable(\'clo_iframe_forms\');\n    nuSelectSelectAll(\'clo_iframe_forms\', c);\n\n}\n\nfunction selectObjectPopuplated(formId, selectId, count) {\n\n    if (selectId == \'clo_tabs\') {\n        nuSelectSelectAll(\'clo_tabs\', true);\n    }\n\n    var chk;\n    if (selectId == \'clo_iframe_forms\') {\n        chk = $(\'#clo_iframe_forms_include\');\n        var c = chk.is(\':checked\');\n        if (c) {\n            nuSelectSelectAll(\'clo_iframe_forms\', true);\n        }\n        count === 0 ? nuDisable(\'clo_iframe_forms_include\') : nuEnable(\'clo_iframe_forms_include\');\n        if (count === 0) chk.prop(\'checked\', false).change();\n    }\n\n\n    if (selectId == \'clo_subforms\') {\n\n        chk = $(\'#clo_subforms_include\');\n        var s = chk.is(\':checked\');\n        if (s) {\n            nuSelectSelectAll(\'clo_subforms\', true);\n        }\n        count === 0 ? nuDisable(\'clo_subforms_include\') : nuEnable(\'clo_subforms_include\');\n        if (count === 0) chk.prop(\'checked\', false).change();\n    }\n\n\n\n}\n\nif (nuFormType() == \'edit\') {\n\n    $(\'#clo_form_dest_note\').css(\"font-weight\", \"normal\");\n    $(\'#clo_tabs_note\').css(\"font-weight\", \"normal\");\n    $(\'#clo_form_dest_note\').css(\"font-size\", \"smaller\");\n\n    // clo_dummy required to adjust correct popup width\n    nuHide(\'clo_dummy\');\n    nuSelectRemoveEmpty();\n\n    $(\'#clo_subforms\').nuLabelOnTop(-18, 25)\n    $(\'#clo_iframe_forms\').nuLabelOnTop(-18, 25)\n    $(\'#clo_tabs\').nuLabelOnTop();\n    \n    cloSubformsChecked();\n    cloIframeFormsChecked();\n\n    setParentFormId();\n    setDefaultValues();\n\n    addRunButton();\n    setTitle();\n\n    nuHasNotBeenEdited();\n}\n', NULL, NULL),
('nu5fdb9ffd45efe', 'subform', 'nuaccesssubform', 'Accessible Forms', NULL, 'zzzzsys_access_form', 'zzzzsys_access_form_id', '', 0, 0, '0', 'SELECT * FROM zzzzsys_access_form', '', NULL, NULL),
('nu5fdb9ffd45aaa', 'subform', 'nuobjectsubform', 'Forms Objects', NULL, 'zzzzsys_object', 'zzzzsys_object_id', '', 0, 0, '0', 'SELECT * FROM zzzzsys_object \nWHERE (sob_all_zzzzsys_tab_id = \'#sfo_tabs_filter#\' OR LOCATE(\'#\', \'#sfo_tabs_filter#\') = 1 OR \'#sfo_tabs_filter#\' = \'\')\nORDER BY sob_all_zzzzsys_tab_id, sob_all_order', '', NULL, NULL),
('nu5feb9ffd45efe', 'subform', 'nuaccesssubform_rep', 'Accessible Reports', NULL, 'zzzzsys_access_report', 'zzzzsys_access_report_id', '', 0, 0, '0', 'SELECT * FROM zzzzsys_access_report', '', NULL, NULL),
('nu5fee9ffd45efe', 'subform', 'nuaccesssubform_php', 'Accessible PHP procs', NULL, 'zzzzsys_access_php', 'zzzzsys_access_php_id', '', 0, 0, '0', 'SELECT * FROM zzzzsys_access_php', '', NULL, NULL),
('nuauthentication', 'launch', 'nuauthentication', 'Authentication', NULL, '', '', '', 0, 0, '0', '', 'function nuGet2FAProcedure() {\n    var d = nuDevMode();\n    var p = \'nuAuthentication2FA\';\n    return d ? p + \'_Template\' : p;\n}\n\nfunction nu2FAVerify() {\n    nuSetProperty(\'auth_code_verify\',  $(\'#auth_code\').val());\n    nuSetProperty(\"nuauthcommand\",\"verify\");\n    var p = nuGet2FAProcedure();\n    nuRunPHPHidden(p ,0);\n}\n\nfunction nu2FASendToken() {\n    nuSetProperty(\"nuauthcommand\",\"send\");\n    var p = nuGet2FAProcedure();\n    nuRunPHPHidden(p ,0);\n}\n\nfunction handleEnterKey() {\n\n    $(\'#auth_code\').on(\'keydown\', function(evt) {\n      if (evt.key === \'Enter\') {\n            evt.preventDefault();\n            nu2FAVerify();\n      }\n    });\n\n}\n\nhandleEnterKey();\nnuHideHolders(0,2);\n\n\n\n// Prevent [DOM] Password field is not contained in a form:\n$(\"#auth_code_verify\").wrap(\"<form id=\'nuFromVerif\' action=\'#\' method=\'post\' onsubmit=\'return false\'>\");', NULL, NULL),
('nuupdate', 'launch', 'nuupdate', 'Update', NULL, '', '', '', 0, 0, '0', '', 'nuHideHolders(0)\n', NULL, NULL),
('nuobjectgrid', 'browseedit', 'nuobjectgrid', 'nuBuilder Form', NULL, 'zzzzsys_form', 'zzzzsys_form_id', '', 0, 0, '0', 'SELECT * FROM zzzzsys_form\nINNER JOIN #TABLE_ID# ON zzzzsys_form_id = theid\nORDER BY sfo_code\n', 'function colorObjectTypes() {\n\n    // Color Types\n    $(\'select[id$=sob_all_type]\').find(\'option\').each(function(index,element){\n        $(element).addClass(\'nu_\' + element.value);\n    });\n    \n    $(\'select[id$=sob_all_type]\').each(function(index,element){\n        \n    	$(element).removeClass();\n    	$(element).addClass(\'nu_\' + element.value);\n    });\n\n}\n\nfunction nuSelectRemoveEmpty(i) {\n\n    i = i === undefined ? \'select\' : \'#\' + i;\n\n    $(i + \' option\').filter(function() {\n        return ($(this).val().trim() === \"\" && $(this).text().trim() === \"\");\n    }).remove();\n\n}\n\nfunction afterinsertrowObjects() {\n   colorObjectTypes();\n}\n\nfunction nuSortSubform(s, c, e){\n}\n\nfunction nuTabFilter() {\n    \n	nuMoveSelectToSubform();\n	\n	nuSelectRemoveEmpty(\'sfo_tabs_filter\');\n    $(\'#sfo_tabs_filter\').prepend($(\'<option>\', { value: \'\', text: nuTranslate(\"(All Tabs)\"), disabled : false, selected: f === \'\', hidden: false }));\n\n\n	var w = $(\'#sfo_tabs_filter\');\n	var f =  nuGetProperty(\"sfo_tabs_filter\");\n	\n	\n	if (typeof f !== \"undefined\") {\n	   w.val(f);\n	} else {\n	  nuSetProperty(\"sfo_tabs_filter\",\"\");\n	  $(\"#sfo_tabs_filter\").prop(\"selectedIndex\", 0);\n	}\n	\n\n	w.prop(\'change\', null).off(\'change\'); \n	w.change(function(e) {\n	   nuSetProperty(\"sfo_tabs_filter\",$(\'#sfo_tabs_filter option:selected\').val()); \n       nuHasNotBeenEdited(); \n	   nuGetBreadcrumb();\n	});\n	\n}\n\nfunction nuMoveSelectToSubform() {\n\n    $(\'#title_objformsob_all_zzzzsys_tab_id\').append($(\'#sfo_tabs_filter\'));\n\n    $(\'#sfo_tabs_filter\').css({\n        \'top\': \'1px\',\n        \'left\': \'0px\',\n        \'position\': \'relative\',\n        \'background-color\': \'#afe9ff\'\n    });\n\n}\n\n\nif (nuFormType() == \'edit\') {\n\n    nuTabFilter();\n\n    $(\'#nuCloneButton\').remove();\n    $(\'#nuDeleteButton\').remove();\n\n    colorObjectTypes();\n\n    $(\'#title_objformbtnOpenDetails\').html(nuTranslate(\'Details\'));\n\n    if (nuIsNewRecord()) {\n        nuSetTitle(nuTranslate(\'New\'));\n    } else {\n        var frmInfo = $(\'#sfo_description\').val() + \' (\'+ $(\'#sfo_code\').val()+\')\';\n        if (window.nuFORM.breadcrumbs.length == 1) $(\'#nuTab0\').html(frmInfo);\n        nuSetTitle(frmInfo);\n        nuUpdateAclCount();\n    }\n}\n\nfunction nuFormColor() {\n\n    var t = String($(\'#sfo_type\').val());\n\n    var pb = \'previewbrowse\';\n    var pe = \'previewedit\';\n\n    var bb = \'bb_event\';\n    var be = \'be_event\';\n    var bs = \'bs_event\';\n    var as = \'as_event\';\n    var bd = \'bd_event\';\n    var ad = \'ad_event\';\n\n    if (t == \'browse\') {\n        nuDisable([\'pe\', \'be\', \'bs\', \'as\', \'bd\', \'ad\']);\n    } else\n    if (t == \'edit\') {\n        nuDisable([\'pb\', \'pb\']);\n    } else\n    if (t == \'launch\') {\n        nuDisable([\'pb\', \'bb\', \'bs\', \'as\', \'bd\', \'ad\']);\n    } else\n    if (t == \'subform\') {\n        nuDisable([\'pb\', \'bb\', \'be\', \'bs\', \'as\', \'bd\', \'ad\']);\n        nuDisable(\'sfo_javascript\');\n    }\n\n    var h = $(\'#sfo_type\').addClass(\'nuEdited\');\n    var o = [];\n    o[\'browse\'] = [0, 1, 2];\n    o[\'edit\'] = [0, 2];\n    o[\'browseedit\'] = [0, 1, 2];\n    o[\'launch\'] = [0, 2];\n    o[\'subform\'] = [0, 1];\n\n    $(\'#sfo_type\').removeClass();\n    $(\'#sfo_type\').addClass(\'nu_\' + $(\'#sfo_type\').val());\n\n    if (h) {\n        $(\'#sfo_type\').addClass(\'nuEdited\');\n    }\n\n    $(\"#sfo_type > option\").each(function() {\n        $(this).addClass(\'nu_\' + this.value);\n    });\n\n    for (var i = 0; i < 7; i++) {\n        $(\'#nuTab\' + i).removeClass(\'nuRelatedTab\');\n    }\n\n    t = o[$(\'#sfo_type\').val()];\n    if (t !== undefined) {\n\n        for (i = 0; i < t.length; i++) {\n            $(\'#nuTab\' + t[i]).addClass(\'nuRelatedTab\');\n        }\n\n    }\n\n}\n\nfunction nuEventList() {\n\n    if ($(\'sob_all_type\').val() == \'subform\') {\n        return [\'onchange\', \'onadd\'];\n    } else {\n        return [\'onblur\', \'onchange\', \'onfocus\', \'onkeydown\'];\n    }\n\n}\n\nfunction default_description() {\n\n    var s = \'zzzzsys_browse_sf\';\n    var r = nuSubformObject(s).rows.length - 1;\n    var o = s + nuPad3(r) + \'sbr_title\';\n    \n    nuSetPlaceholder(o, \'Something\');\n \n}\n\nfunction nuUpdateAclCount() {\n	var l = $(\"[data-nu-field=\'slf_zzzzsys_access_id\']\").length -2;\n	var t = l <= 0 ? \'\' : \' (\' + l + \')\';\n	$(\'#nuTab4\').html(nuTranslate(\'Access Level\') + t);\n}\n\n\nfunction nuSelectBrowseMainForm(e, t) {\n  \n  // If a  button is clicked, don\'t open the Edit Screen.   \n  var col = $(e.target).attr(\'data-nu-column\');\n  if (col !== \'0\' && typeof col !== \"undefined\") {\n      var r = $(e.target).attr(\'data-nu-primary-key\');\n      nuForm(\'nuform\', r, \'\',\'\',0);\n  }\n\n  return false;\n}\n\n/*\nfunction nuSelectBrowseNew(e, t) {\n    if (nuMainForm()) {\n        nuSelectBrowseMainForm(e, t);\n    } else {\n        _nuSelectBrowse(e, t);\n    }\n}\n\n\nif (nuFormType() == \'browse\') {\n\n    if (!nuMainForm()) {nuSetBrowseColumnSize(0,0)} // Hide Preview\n\n    var _nuSelectBrowse = nuSelectBrowse; \n    var nuSelectBrowse = function(e, t) {\n    	nuSelectBrowseNew(e, t);\n    }\n\n}	\n*/\n\nfunction createButton(target, pk, formType) {\n	\n	var btn = $(\"<button id=\'nuPreviewButton\' type=\'button\' data-form-type=\'\"+ formType +\"\' class=\'nuActionButton\'><i class=\'fa fa-search\'></i>&nbsp;</button>\");\n\n	$(target).html(btn).attr(\'title\',nuTranslate(\'Preview Form\'));\n	btn.on(\'click\',function(){\n	    var formType = $(this).attr(\"data-form-type\");\n	    var r = formType == \'launch\' || formType == \'edit\' || formType == \'subform\'  ? \'-1\' : \'\';\n	    nuForm(pk,r,\'\',\'\');\n	});\n}\n\nfunction addRowButtons(column) {\n  \n  $(\"[data-nu-column=\'\" + column + \"\']\").each(function(index) {\n      \n      var pk = $(this).attr(\'data-nu-primary-key\');\n      var r = $(this).attr(\'data-nu-row\');\n      var formType = $(\'#nucell_\'+ r + \'_1\').html();\n      \n      if (typeof pk !== \"undefined\") {\n          createButton(this, pk, formType);\n      }\n  })\n\n}\n\n', NULL, NULL),
('nuemailtest', 'launch', 'nuemailtest', 'Send Test Email', NULL, '', '', NULL, NULL, NULL, '0', '', 'nuAddActionButton(\'nuRuntestemail\', nuTranslate(\'Send\'), \'nuRunPHPHidden(\"nutestemail\", 0)\');\n\nif (parent.$(\'#nuModal\').length > 0) {\n\n    var p = window.parent;\n    $(\'#set_smtp_from_address\').val(p.set_smtp_from_address.value);\n    $(\'#ema_to\').val(p.set_smtp_from_address.value);\n    $(\'#set_smtp_from_name\').val(p.set_smtp_from_name.value);\n    $(\'#ema_body\').val(\'nuBuilder <b>Email<br> Test\');\n    $(\'#ema_subject\').val(\'nuBuilder Test - \' + new Date().toLocaleString());\n\n}\n\n\nnuSetToolTip(\'ema_load_data\',nuTranslate(\'Load from Local Storage\'));\nnuSetToolTip(\'ema_save_data\',nuTranslate(\'Save to Local Storage\'));\n\n\nfunction saveDatatoLS() {\n\n	$(\'input[type=text], textarea\').each(function() {  	\n		localStorage.setItem(this.id, $(this).val());\n	});\n\n}\n\n\nfunction loadDatafromLS() {\n\n	$(\'input[type=\"text\"], textarea\').each(function(){\n		var key = $(this).attr(\'id\');\n		\n		var value = localStorage.getItem( key );\n		if (value || value === \'\') {\n			$(this).val( value );\n		} else {\n		    nuMessage([\"There\'s no Data to load in Local Storage\"])\n		}\n		\n	}); \n}\n\n', NULL, NULL),
('nuadddbcolumn', 'launch', 'nuadddbcolumn', 'Add Database Column', NULL, '', '', NULL, NULL, NULL, '0', '', 'function getDataType(t, i, selectMultiple) {\n\n    var date = (i == \'date\' || i == \'nuDate\');\n    var norm = (i == \'input\' && i != \'date\' && i != \'nuDate\' && i != \'nuNumber\' && i != \'number\' && i != \'file\' && i != \'nuAutoNumber\');\n    var dt = \'VARCHAR(100)\';\n\n    if (t == \'lookup\') { dt = \'VARCHAR(25)\'; }\n    if (t == \'select\' && ! selectMultiple) { dt = \'VARCHAR(100)\'; }\n    if (t == \'select\' && selectMultiple) { dt = \'VARCHAR(1000)\'; }\n    if (t == \'calc\') { dt = \'DECIMAL(12,4)\'; }\n    if (t == \'textarea\') { dt = \'TEXT\'; }\n    if (t == \'input\' && norm) { dt = \'VARCHAR(100)\'; }\n    if (t == \'input\' && date) { dt = \'DATE\'; }\n    if (t == \'input\' && i == \'number\') { dt = \'INT\'; }\n    if (t == \'input\' && i == \'nuAutoNumber\') { dt = \'BIGINT UNSIGNED\'; }\n    if (t == \'input\' && i == \'nuNumber\') { dt = \'DECIMAL(12,4)\'; }\n    if (t == \'input\' && i == \'file\') { dt = \'LONGTEXT\'; }\n\n    return dt;\n}\n\n\nvar table = parent.$(\'#sob_all_table\').val();\nvar id = parent.$(\'#sob_all_id\').val();\nvar type = parent.$(\'#sob_all_type\').val();\nvar input = parent.$(\'#sob_input_type\').val();\nvar selectMultiple = parent.nuGetValue(\'sob_select_multiple\')\nvar dataType = getDataType(type, input);\n\nvar qry = \'`$column` $type NULL DEFAULT NULL\';\nqry = qry.replace(\'$column\', id);\nqry = qry.replace(\'$type\', dataType);\n\nvar start = \'ALTER TABLE `$table` ADD\'\nstart = start.replace(\'$table\', table);\n\n$(\'#sql_query_word\').html(start);\n$(\'#sql_query\').val(qry);\n\nnuAddActionButton(\'Run\', \'Run\', \'nuRunPHPHidden(\"RUNADDDBCOLUMN\")\');\n\n$(\'#sql_query\').addClass(\'sql\');\n$(\'.sql\').dblclick(function() { nuOpenAce(\'SQL\', this.id); });\n\nnuSetProperty(\'sob_all_table\',table);\nnuRefreshSelectObject(\'sql_after_column\');', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_format`
--

CREATE TABLE `zzzzsys_format` (
  `zzzzsys_format_id` varchar(25) NOT NULL,
  `srm_type` varchar(10) DEFAULT NULL,
  `srm_format` varchar(300) DEFAULT NULL,
  `srm_currency` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_format`
--

INSERT INTO `zzzzsys_format` (`zzzzsys_format_id`, `srm_type`, `srm_format`, `srm_currency`) VALUES
('nu59e28f061a779da', 'Number', '$ 1,000.00', '[\"$\",\",\",\".\",\"2\"]'),
('nu5d8a9b303b55b6d', 'Date', 'dd-mm-yy', NULL),
('nu5d8a9b47ac4f5ae', 'Number', ' 1000.00', '[\"\",\"\",\".\",2]'),
('nu5fdfc72e7021ccf', 'Date', 'yyyy-mm-dd', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_info`
--

CREATE TABLE `zzzzsys_info` (
  `zzzzsys_info_id` varchar(25) NOT NULL DEFAULT '',
  `inf_code` varchar(255) DEFAULT NULL,
  `inf_details` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_info`
--

INSERT INTO `zzzzsys_info` (`zzzzsys_info_id`, `inf_code`, `inf_details`) VALUES
('nu5fe23e83aea3467', 'nuFilesVersion', 'V.4.5-2021.09.17.00'),
('nu5fe23e83aea3466', 'nuDBVersion', 'V.4.5-2021.09.21.00');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_note`
--

CREATE TABLE `zzzzsys_note` (
  `zzzzsys_note_id` varchar(25) NOT NULL,
  `not_title` varchar(60) NOT NULL,
  `not_content` mediumtext DEFAULT NULL,
  `not_updated_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `not_zzzzsys_note_category_id` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_note_category`
--

CREATE TABLE `zzzzsys_note_category` (
  `zzzzsys_note_category_id` varchar(25) NOT NULL,
  `noc_name` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_object`
--

CREATE TABLE `zzzzsys_object` (
  `zzzzsys_object_id` varchar(25) NOT NULL,
  `sob_all_zzzzsys_form_id` varchar(25) DEFAULT NULL,
  `sob_all_table` varchar(300) DEFAULT NULL,
  `sob_all_type` varchar(20) DEFAULT NULL,
  `sob_all_id` varchar(300) DEFAULT NULL,
  `sob_all_label` varchar(1000) DEFAULT NULL,
  `sob_all_zzzzsys_tab_id` varchar(25) DEFAULT NULL,
  `sob_all_order` int(11) DEFAULT 0,
  `sob_all_top` int(11) DEFAULT NULL,
  `sob_all_left` int(11) DEFAULT NULL,
  `sob_all_width` int(11) DEFAULT NULL,
  `sob_all_height` int(11) DEFAULT NULL,
  `sob_all_cloneable` varchar(1) DEFAULT NULL,
  `sob_all_align` varchar(10) DEFAULT NULL,
  `sob_all_validate` varchar(1) DEFAULT NULL,
  `sob_all_access` varchar(1) DEFAULT NULL,
  `sob_all_event` varchar(1) DEFAULT NULL,
  `sob_calc_formula` varchar(3000) DEFAULT NULL,
  `sob_calc_format` varchar(30) DEFAULT NULL,
  `sob_run_zzzzsys_form_id` varchar(50) DEFAULT NULL,
  `sob_run_filter` varchar(300) DEFAULT NULL,
  `sob_run_method` varchar(1) DEFAULT NULL,
  `sob_run_target` varchar(1) DEFAULT NULL,
  `sob_run_type` varchar(1) DEFAULT NULL,
  `sob_run_id` varchar(50) DEFAULT NULL,
  `sob_display_sql` text DEFAULT NULL,
  `sob_select_multiple` varchar(1) DEFAULT NULL,
  `sob_select_2` varchar(1) DEFAULT '0',
  `sob_select_sql` text DEFAULT NULL,
  `sob_lookup_code` varchar(50) DEFAULT NULL,
  `sob_lookup_description` varchar(300) DEFAULT NULL,
  `sob_lookup_description_width` varchar(4) DEFAULT NULL,
  `sob_lookup_autocomplete` varchar(1) DEFAULT NULL,
  `sob_lookup_zzzzsys_form_id` varchar(50) DEFAULT NULL,
  `sob_lookup_javascript` text DEFAULT NULL,
  `sob_lookup_php` varchar(25) DEFAULT NULL,
  `sob_lookup_table` varchar(500) DEFAULT NULL,
  `sob_subform_zzzzsys_form_id` varchar(50) DEFAULT NULL,
  `sob_subform_foreign_key` varchar(100) DEFAULT NULL,
  `sob_subform_add` varchar(1) DEFAULT NULL,
  `sob_subform_delete` varchar(1) DEFAULT NULL,
  `sob_subform_type` varchar(10) DEFAULT NULL,
  `sob_subform_table` varchar(300) DEFAULT NULL,
  `sob_input_count` bigint(20) DEFAULT 0,
  `sob_input_format` varchar(30) DEFAULT NULL,
  `sob_input_type` varchar(30) DEFAULT NULL,
  `sob_input_javascript` text DEFAULT NULL,
  `sob_input_datalist` text DEFAULT NULL,
  `sob_html_code` longtext DEFAULT NULL,
  `sob_html_chart_type` varchar(70) DEFAULT NULL,
  `sob_html_javascript` varchar(1000) DEFAULT NULL,
  `sob_html_title` varchar(70) DEFAULT NULL,
  `sob_html_vertical_label` varchar(70) DEFAULT NULL,
  `sob_html_horizontal_label` varchar(70) DEFAULT NULL,
  `sob_image_zzzzsys_file_id` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_object`
--

INSERT INTO `zzzzsys_object` (`zzzzsys_object_id`, `sob_all_zzzzsys_form_id`, `sob_all_table`, `sob_all_type`, `sob_all_id`, `sob_all_label`, `sob_all_zzzzsys_tab_id`, `sob_all_order`, `sob_all_top`, `sob_all_left`, `sob_all_width`, `sob_all_height`, `sob_all_cloneable`, `sob_all_align`, `sob_all_validate`, `sob_all_access`, `sob_all_event`, `sob_calc_formula`, `sob_calc_format`, `sob_run_zzzzsys_form_id`, `sob_run_filter`, `sob_run_method`, `sob_run_target`, `sob_run_type`, `sob_run_id`, `sob_display_sql`, `sob_select_multiple`, `sob_select_2`, `sob_select_sql`, `sob_lookup_code`, `sob_lookup_description`, `sob_lookup_description_width`, `sob_lookup_autocomplete`, `sob_lookup_zzzzsys_form_id`, `sob_lookup_javascript`, `sob_lookup_php`, `sob_lookup_table`, `sob_subform_zzzzsys_form_id`, `sob_subform_foreign_key`, `sob_subform_add`, `sob_subform_delete`, `sob_subform_type`, `sob_subform_table`, `sob_input_count`, `sob_input_format`, `sob_input_type`, `sob_input_javascript`, `sob_input_datalist`, `sob_html_code`, `sob_html_chart_type`, `sob_html_javascript`, `sob_html_title`, `sob_html_vertical_label`, `sob_html_horizontal_label`, `sob_image_zzzzsys_file_id`) VALUES
('nu5bad6cb325c8954', 'nuobject', 'zzzzsys_object', 'subform', 'zzzzsys_event_sf', ' ', 'nu5bad6cb370b409e', 1000, 48, 24, 700, 400, '1', 'left', '0', '0', '1', '', '', '', '', 'b', '0', NULL, '', '', '0', '0', NULL, '', '', '', '0', '', '', '', 'zzzzsys_tab', 'nuevent', 'sev_zzzzsys_object_id', '1', '1', 'g', 'zzzzsys_event', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32600c97', 'nuhome', '', 'run', 'run_access', 'Access Levels', 'nu5bad6cb367c5125', 50, 99, 270, 195, 30, '1', 'center', '0', '0', '0', '', '', 'nuaccess', '', 'b', '0', 'F', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb326243f9', 'nupassword', 'zzzzsys_user', 'display', 'the_user', ' ', 'nu5bad6cb36ed494f', 10, 46, 181, 200, 22, '1', 'center', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', 'SELECT sus_login_name\nFROM zzzzsys_user\nWHERE zzzzsys_user_id = \'#RECORD_ID#\'', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3263f2a8', 'nuform', 'zzzzsys_form', 'select', 'sfo_type', 'Form Type', 'nu5bad6cb36791fd5', 10, 32, 142, 140, 22, '1', 'left', '1', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'browse|Browse|\nedit|Edit|browseedit|\nBrowse and Edit|\nlaunch|Launch|\nsubform|Subform', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3265cea1', 'nuform', 'zzzzsys_form', 'input', 'sfo_code', 'Code', 'nu5bad6cb36791fd5', 20, 59, 142, 285, 22, '1', 'left', '3', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32680d97', 'nuform', 'zzzzsys_form', 'input', 'sfo_description', 'Description', 'nu5bad6cb36791fd5', 30, 86, 142, 377, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb326a4367', 'nuform', 'zzzzsys_form', 'input', 'sfo_table', 'Table Name', 'nu5bad6cb36791fd5', 50, 140, 142, 285, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', 'n', NULL, '', '', '', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'nuScroll', 'nuFORM.getTables()', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb326ddb36', 'nuform', 'zzzzsys_form', 'input', 'sfo_primary_key', 'Primary Key', 'nu5bad6cb36791fd5', 60, 167, 142, 285, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', 'n', NULL, '', '', '', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'nuScroll', 'nuFORM.tableSchema[$(\"#sfo_table\").val()]?nuFORM.tableSchema[$(\"#sfo_table\").val()].names:[]', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb327181a4', 'nuform', 'zzzzsys_form', 'input', 'sfo_browse_row_height', 'Row Height', 'nu5bad6cb36757b92', 140, 32, 117, 50, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32737662', 'nuform', 'zzzzsys_form', 'input', 'sfo_browse_rows_per_page', 'Rows Per Page', 'nu5bad6cb36757b92', 150, 32, 309, 50, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3275e50e', 'nuform', 'zzzzsys_form', 'lookup', 'sfo_browse_redirect_form_id', 'Redirect To', 'nu5bad6cb36757b92', 170, 304, 117, 150, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '280', '', 'nuform', '', '', 'zzzzsys_form', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3278653c', 'nuform', 'zzzzsys_form', 'textarea', 'sfo_browse_sql', 'SQL', 'nu5bad6cb36757b92', 120, 375, 117, 891, 139, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb327ab3b8', 'nuform', 'zzzzsys_form', 'subform', 'zzzzsys_browse_sf', 'Columns', 'nu5bad6cb36757b92', 130, 64, 117, 894, 228, '1', 'right', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', 'nubrowse', 'sbr_zzzzsys_form_id', '1', '1', 'g', 'zzzzsys_browse', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb327ca554', 'nubrowse', 'zzzzsys_browse', 'input', 'sbr_title', 'Title', 'nu5bad6cb3683fa36', 10, 8, 69, 250, 20, '1', 'left', '1', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb327ee8dc', 'nubrowse', 'zzzzsys_browse', 'input', 'sbr_display', 'Display', 'nu5bad6cb3683fa36', 20, 34, 69, 300, 22, '1', 'left', '1', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'search', '', '[]', '', '', '', '', '', '', ''),
('nu5bad6cb32812c21', 'nuform', 'zzzzsys_form', 'word', 'phpwrd', 'PHP', 'nu5bad6cb37026348', 330, 248, 42, 40, 17, '1', 'right', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb328350f1', 'nubrowse', 'zzzzsys_browse', 'select', 'sbr_align', 'Align', 'nu5bad6cb3683fa36', 30, 60, 69, 65, 20, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'l|Left|r|Right|c|Center', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32856f55', 'nubrowse', 'zzzzsys_browse', 'select', 'sbr_format', 'Format', 'nu5bad6cb3683fa36', 40, 86, 69, 100, 20, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT \n   CONCAT(LEFT(srm_type, 1), \'|\', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb328796fe', 'nubrowse', 'zzzzsys_browse', 'input', 'sbr_width', 'Width', 'nu5bad6cb3683fa36', 50, 112, 69, 50, 20, '1', 'right', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3289c6f6', 'nubrowse', 'zzzzsys_browse', 'input', 'sbr_order', 'Order', 'nu5bad6cb3683fa36', 60, 138, 69, 50, 20, '1', 'right', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb328be090', 'nuform', 'zzzzsys_form', 'subform', 'zzzzsys_tab_sf', 'Tabs', 'nu5bad6cb36791fd5', 70, 220, 142, 869, 300, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', 'nutab', 'syt_zzzzsys_form_id', '1', '1', 'g', 'zzzzsys_tab', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb328dde63', 'nutab', 'zzzzsys_tab', 'input', 'syt_title', 'Title', 'nu5bad6cb36c9250f', 10, 10, 100, 130, 20, '1', 'left', '1', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb328f889b', 'nutab', 'zzzzsys_tab', 'input', 'syt_order', 'Order', 'nu5bad6cb36c9250f', 20, 31, 100, 46, 20, '1', 'right', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb329136ba', 'nuform', 'zzzzsys_form', 'input', 'bb_event', 'Before Browse', 'nu5bad6cb37026348', 260, 278, 42, 155, 29, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32930450', 'nubuildreport', 'zzzzsys_report', 'input', 'open_builder', 'Report Designer', 'nu5bad6cb36804778', 60, 178, 236, 186, 40, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3295b165', 'nubuildreport', 'zzzzsys_report', 'textarea', 'sre_layout', 'Layout', 'nu5bad6cb36804778', 80, 227, 236, 300, 100, '1', 'left', '0', '2', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32976d5d', 'nuform', 'zzzzsys_form', 'textarea', 'sfo_javascript', ' ', 'nu5bad6cb37026348', 210, 60, 225, 760, 415, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3299aecf', 'nuphp', 'zzzzsys_php', 'lookup', 'sph_zzzzsys_form_id', 'Launch From', 'nu5bad6cb36b27343', 60, 118, 142, 209, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '300', '', 'nulaunchable', '', '', 'zzzzsys_form', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb329b8805', 'nuhome', '', 'run', 'object_button', 'Objects', 'nu5bad6cb367c5125', 30, 155, 53, 195, 30, '1', 'center', '0', '0', '0', '', '', 'nuobject', '', 'b', '0', 'F', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb329dcb6e', 'nuobject', 'zzzzsys_object', 'lookup', 'sob_all_zzzzsys_tab_id', 'Form Tab', 'nu5bad6cb3686cb0d', 30, 30, 122, 140, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', 'syt_title', 'sfo_description', '250', '0', 'nutablookup', 'nuUpdateIdDatalist();', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb329fdf13', 'nuobject', 'zzzzsys_object', 'select', 'sob_all_type', 'Type', 'nu5bad6cb3686cb0d', 40, 57, 122, 144, 22, '1', 'left', '1', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'calc|Calc|\ndisplay|Display|\ncontentbox|ContentBox|\neditor|WYSIWYG Editor|\nhtml|HTML|\nimage|Image|\ninput|Input|\nlookup|Lookup|\nrun|Run|\nselect|Select|\nsubform|Subform|\ntextarea|Textarea|\nword|Word', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32a1c004', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_id', 'ID', 'nu5bad6cb3686cb0d', 60, 111, 122, 324, 22, '1', 'left', '1', '0', '1', '', '', '', '', '', 'n', NULL, '', '', '', '0', '', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'search', '', '[]', '', '', '', '', '', '', ''),
('nu5bad6cb32a36c23', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_label', 'Label', 'nu5bad6cb3686cb0d', 50, 84, 122, 439, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32a5798c', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_order', 'Tabbing Order', 'nu5bad6cb3686cb0d', 20, 57, 0, 72, 22, '1', 'right', '0', '2', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32a7637b', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_top', 'Top', 'nu5bad6cb3686cb0d', 80, 192, 122, 50, 22, '1', 'right', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'number', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32a9998f', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_left', 'Left', 'nu5bad6cb3686cb0d', 90, 221, 122, 50, 22, '1', 'right', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'number', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32abf6a9', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_width', 'Width', 'nu5bad6cb3686cb0d', 100, 250, 122, 50, 22, '1', 'right', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'number', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32ae0077', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_height', 'Height', 'nu5bad6cb3686cb0d', 110, 279, 122, 50, 22, '1', 'right', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'number', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32b06a65', 'nuobject', 'zzzzsys_object', 'select', 'sob_all_cloneable', 'Cloneable', 'nu5bad6cb3686cb0d', 150, 425, 122, 182, 22, '1', 'right', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '0|No|1|Yes', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32b263c1', 'nuobject', 'zzzzsys_object', 'select', 'sob_all_align', 'Align', 'nu5bad6cb3686cb0d', 130, 359, 122, 182, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'left|Left|right|Right|center|Center', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32b417d0', 'nuobject', 'zzzzsys_object', 'select', 'sob_all_validate', 'Validation', 'nu5bad6cb3686cb0d', 140, 392, 122, 182, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '0|None|1|No Blanks|2|No Duplicates|3|No Duplicates/Blanks', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32b5c449', 'nuobject', 'zzzzsys_object', 'select', 'sob_all_access', 'Access', 'nu5bad6cb3686cb0d', 120, 326, 122, 182, 22, '1', 'center', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '0|Editable|1|Readonly|2|Hidden|3|Hidden (User)', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32b77005', 'nuobject', 'zzzzsys_object', 'word', 'calctotwrd', 'Objects', 'nu5bad6cb36f99a7e', 980, 162, 80, 343, 17, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32b9715a', 'nuobject', 'zzzzsys_object', 'word', 'calcfldwrd', 'Operators', 'nu5bad6cb36f99a7e', 990, 162, 505, 145, 17, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32bd0b0a', 'nuobject', 'zzzzsys_object', 'textarea', 'sob_html_code', 'HTML', 'nu5bad6cb36a71012', 850, 229, 148, 590, 218, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32bf6285', 'nuobject', 'zzzzsys_object', 'textarea', 'sob_display_sql', 'SQL', 'nu5bad6cb36974818', 560, 114, 99, 547, 384, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32c14343', 'nuobject', 'zzzzsys_object', 'textarea', 'sob_select_sql', 'SQL<br>or<br>List', 'nu5bad6cb369a6ee3', 580, 114, 99, 547, 384, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32c2f35b', 'nuobject', 'zzzzsys_object', 'input', 'sob_select_multiple', 'Multiple', 'nu5bad6cb369a6ee3', 590, 46, 94, 16, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32c4d9de', 'nuobject', 'zzzzsys_object', 'select', 'sob_input_type', 'Input Type (and class)', 'nu5bad6cb36a4af06', 820, 50, 239, 161, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'nuDate|nuDate|\nnuNumber|nuNumber|\nnuScroll|nuScroll|\nnuAutoNumber|nuAutoNumber|\nbutton|Button|\ncheckbox|Checkbox|\ncolor|Color|\ndatetime-local|Datetime-Local|\nemail|Email|\nfile|File|\nhidden|Hidden|\nimage|Image|\nmonth|Month|\nnumber|Number|\npassword|Password|\nradio|Radio|\nrange|Range|\nreset|Reset|\nsearch|Search|\ntel|Telephone|\ntext|Text|\ntime|Time|\nurl|URL|\nweek|Week\n\n\n', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32c708be', 'nuobject', 'zzzzsys_object', 'select', 'sob_input_format', 'Format', 'nu5bad6cb36a4af06', 800, 77, 239, 161, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT \n   CONCAT(LEFT(srm_type, 1), \'|\', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type\n', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32c9102c', 'nuobject', 'zzzzsys_object', 'lookup', 'sob_subform_zzzzsys_form_id', 'Form', 'nu5bad6cb36a1c024', 720, 38, 178, 202, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '250', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32cb28dd', 'nuobject', 'zzzzsys_object', 'input', 'sob_subform_foreign_key', 'Foreign Key', 'nu5bad6cb36a1c024', 730, 68, 178, 202, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'nuScroll', 'nuFORM.tableSchema[$(\"#sob_subform_table\").val()]?nuFORM.tableSchema[$(\"#sob_subform_table\").val()].names:[]', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32cd0b84', 'nuobject', 'zzzzsys_object', 'select', 'sob_subform_add', 'Addable', 'nu5bad6cb36a1c024', 750, 98, 178, 60, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '0|No|1|Yes', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32ced09b', 'nuobject', 'zzzzsys_object', 'select', 'sob_subform_delete', 'Deleteable', 'nu5bad6cb36a1c024', 760, 128, 178, 60, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '0|No|1|Yes', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32d07376', 'nuobject', 'zzzzsys_object', 'select', 'sob_subform_type', 'Type', 'nu5bad6cb36a1c024', 770, 158, 178, 60, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'g|Grid|f|Form', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32d22215', 'nuobject', 'zzzzsys_object', 'lookup', 'sob_run_zzzzsys_form_id', 'Run', 'nu5bad6cb368d9c40', 470, 34, 85, 200, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'code', 'CONCAT(run, \' - \', description)', '300', '', 'nurunlist', '', '', 'zzzzsys_run_list', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32d3ef22', 'nuobject', 'zzzzsys_object', 'input', 'sob_run_filter', 'Filter', 'nu5bad6cb368d9c40', 480, 64, 85, 200, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32d6add9', 'nuobject', 'zzzzsys_object', 'input', 'sob_run_id', 'Record ID', 'nu5bad6cb368d9c40', 490, 94, 85, 200, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32d8ec39', 'nuobject', 'zzzzsys_object', 'select', 'sob_run_method', 'Method', 'nu5bad6cb368d9c40', 500, 124, 85, 80, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'b|Button|i|iFrame', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32dcbcb4', 'nuobject', 'zzzzsys_object', 'lookup', 'sob_lookup_zzzzsys_form_id', 'Form', 'nu5bad6cb369d0088', 640, 33, 97, 300, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nuform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32e1a66a', 'nuobject', 'zzzzsys_object', 'input', 'sob_lookup_code', 'Code', 'nu5bad6cb369d0088', 650, 61, 97, 200, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'nuScroll', 'nuFORM.tableSchema[$(\"#sob_lookup_table\").val()]?nuFORM.tableSchema[$(\"#sob_lookup_table\").val()].names:[]', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32e47d18', 'nuobject', 'zzzzsys_object', 'input', 'sob_lookup_description', 'Description', 'nu5bad6cb369d0088', 660, 89, 97, 299, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'nuScroll', 'nuFORM.tableSchema[$(\"#sob_lookup_table\").val()]?nuFORM.tableSchema[$(\"#sob_lookup_table\").val()].names:[]', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32e8733c', 'nuobject', 'zzzzsys_object', 'input', 'sob_lookup_description_width', 'Width', 'nu5bad6cb369d0088', 670, 89, 478, 50, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'number', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb32ec104d', 'nuobject', 'zzzzsys_object', 'textarea', 'sob_lookup_javascript', 'JavaScript', 'nu5bad6cb369d0088', 680, 184, 97, 600, 275, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3313ae2f', 'nuhome', '', 'run', 'form_button', 'Forms', 'nu5bad6cb367c5125', 20, 99, 53, 195, 30, '1', 'center', '0', '0', '0', '', '', 'nuform', '', 'b', '0', 'F', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3316ef87', 'nuevent', 'zzzzsys_event', 'textarea', 'sev_javascript', 'JavaScript', 'nu5bad6cb36aaa539', 20, 1, 255, 486, 100, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', 'sev_zzzsys_object_id', '1', '1', 'g', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb331a6d3e', 'nuevent', 'zzzzsys_event', 'input', 'sev_event', 'Event', 'nu5bad6cb36aaa539', 10, 1, 55, 150, 20, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'drag|drag|dragend|dragend|dragenter|dragenter|dragexit|dragexit|dragleave|dragleave|dragover|dragover|dragstart|dragstart|drop|drop|onclick|onclick|onblur|onblur|onchange|onchange|onfocus|onfocus|onkeydown|onkeydown', '', '', '', '', '', '', '', '', '', 'sev_zzzsys_object_id', '1', '1', 'g', '', 0, '', 'nuScroll', 'nuChooseEventList()', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3351b6a4', 'nuaccess', 'zzzzsys_access', 'lookup', 'sal_zzzzsys_form_id', 'Home', 'nu5bad6cb36ac903f', 10, 56, 115, 200, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '350', '', 'nulaunchform', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3364460a', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_zzzzsys_form_id', 'Form ID', 'nu5bad6cb3686cb0d', 420, 13, 0, 72, 22, '1', 'left', '0', '2', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb336a9f96', 'nuaccess', 'zzzzsys_access', 'input', 'sal_code', 'Code', 'nu5bad6cb36ac903f', 20, 83, 115, 200, 22, '1', 'left', '3', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb33715015', 'nuaccessforms', 'zzzzsys_access_form', 'lookup', 'slf_zzzzsys_form_id', 'Form', 'nu5bad6cb36b994d2', 10, 20, 87, 280, 20, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '300', '', 'nunonsystemform', '', '', 'zzzzsys_form', '', '', '1', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb33762770', 'nuaccess', 'zzzzsys_access', 'subform', 'accform', ' ', 'nu5bad6cb36af0c58', 50, 20, 30, 1168, 540, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', 'nuaccessforms', 'slf_zzzzsys_access_id', '1', '1', 'g', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb337ab8d0', 'nuaccessforms', 'zzzzsys_access_form', 'input', 'slf_add_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\'nuActionButton\'>Add</span>', 'nu5bad6cb36b994d2', 20, 75, 87, 53, 18, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb338330bb', 'nuaccessforms', 'zzzzsys_access_form', 'input', 'slf_save_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\'nuActionButton\'>Save</span>', 'nu5bad6cb36b994d2', 40, 127, 87, 53, 18, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb338c7612', 'nuaccessforms', 'zzzzsys_access_form', 'input', 'slf_delete_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;<span class=\'nuActionButton\'>Delete</span>', 'nu5bad6cb36b994d2', 60, 101, 87, 53, 18, '1', 'center', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3399c9cf', 'nuaccessforms', 'zzzzsys_access_form', 'input', 'slf_clone_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;<span class=\'nuActionButton\'>Clone</span>', 'nu5bad6cb36b994d2', 50, 153, 87, 53, 18, '1', 'center', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb33a00c7d', 'nuaccess', 'zzzzsys_access', 'word', 'button_title', 'Enable Buttons...', 'nu5bad6cb36af0c58', 60, 27, 692, 200, 22, '1', 'center', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb33a4e07f', 'nuaccessforms', 'zzzzsys_access_form', 'input', 'slf_print_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;<span class=\'nuActionButton\'>Print</span>', 'nu5bad6cb36b994d2', 30, 49, 87, 53, 18, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb33a9d661', 'nuhome', '', 'run', 'run_user', 'Users', 'nu5bad6cb367c5125', 60, 155, 270, 195, 30, '1', 'center', '0', '0', '0', '', '', 'nuuser', '', 'b', '0', 'F', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb33ad88b7', 'nuuser', 'zzzzsys_user', 'input', 'sus_name', 'Name', 'nu5bad6cb36b63cae', 10, 34, 167, 329, 22, '0', 'left', '3', '0', '0', '', '', '', '', '', 'n', NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb33b1013c', 'nuuser', 'zzzzsys_user', 'input', 'sus_email', 'Email', 'nu5bad6cb36b63cae', 80, 248, 167, 329, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb33b42890', 'nuuser', 'zzzzsys_user', 'input', 'sus_login_name', 'Login Name', 'nu5bad6cb36b63cae', 30, 88, 167, 238, 22, '0', 'left', '3', '1', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb33b84bf4', 'nuuser', 'zzzzsys_user', 'input', 'new_password', 'Password', 'nu5bad6cb36b63cae', 40, 115, 167, 238, 22, '1', 'left', '0', '1', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'password', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb33d2481a', 'nuuser', 'zzzzsys_user', 'input', 'check_password', 'Confirm Password', 'nu5bad6cb36b63cae', 50, 142, 167, 238, 22, '1', 'left', '0', '1', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'password', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb33d99a4b', 'nuuser', 'zzzzsys_user', 'lookup', 'sus_zzzzsys_access_id', 'Access Level', 'nu5bad6cb36b63cae', 20, 61, 167, 238, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', 'sal_code', 'sal_description', '300', '', 'nuaccess', '', '', 'zzzzsys_access', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb33e17c28', 'nuphp', 'zzzzsys_php', 'input', 'sph_code', 'Code', 'nu5bad6cb36b27343', 10, 37, 142, 209, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'nuScroll', '[\'nuBeforeSave\',\'nuAfterSave\',\'nuBeforeEdit\',\'nuBeforeBrowse\',\'nuBeforeDelete\',\'nuAfterDelete\',\'nuStartup\',\'nuCheckPasswordPolicy\',\'nuInvalidLogin\']', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb33e77084', 'nusetup', 'zzzzsys_setup', 'word', 'wrdauth', 'Auth SMTP Information', 'nu5bad6cb36e31edf', 100, 39, 67, 200, 22, '1', 'center', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb33ed5ffe', 'nuphp', 'zzzzsys_php', 'textarea', 'sph_php', 'PHP', 'nu5bad6cb36b27343', 80, 172, 142, 781, 358, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb33f2e9ce', 'nuhome', '', 'run', 'edit_php', 'Procedure', 'nu5bad6cb36efb50c', 140, 43, 270, 195, 30, '1', 'center', '0', '0', '0', '', '', 'nuphp', '', 'b', '0', 'F', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb33fc3e37', 'nuhome', '', 'run', 'edit_report', 'Report', 'nu5bad6cb36efb50c', 130, 155, 53, 195, 30, '1', 'center', '0', '0', '0', '', '', 'nubuildreport', '', 'b', '0', 'F', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb33fe854c', 'nuphp', 'zzzzsys_php', 'input', 'sph_description', 'Description', 'nu5bad6cb36b27343', 20, 64, 142, 541, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3400c80a', 'nubuildreport', 'zzzzsys_report', 'lookup', 'sre_zzzzsys_form_id', 'Launch From', 'nu5bad6cb36804778', 50, 140, 236, 186, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfo_code', 'sfo_description', '200', '', 'nulaunchable', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb340c5469', 'nubuildreport', 'zzzzsys_report', 'input', 'sre_code', 'Code', 'nu5bad6cb36804778', 10, 28, 236, 186, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb340fb412', 'nubuildreport', 'zzzzsys_report', 'input', 'sre_description', 'Description', 'nu5bad6cb36804778', 20, 56, 236, 300, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34130517', 'nuaccessgroup', 'zzzzsys_user_group_access_level', 'lookup', 'gal_zzzzsys_access_id', 'Access To..', 'nu5bad6cb36bdec72', 40, 40, 107, 70, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT \ncolor_id,\ncol_description\nFROM color\nORDER BY col_description', 'sal_code', 'sal_description', '300', '', 'nuaccess', '', '', 'zzzzsys_access', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3416c803', 'nudebug', 'zzzzsys_debug', 'textarea', 'deb_message', ' ', 'nu5bad6cb36bf8d38', 10, 16, 30, 786, 432, '0', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb341ba4c3', 'nuphp', 'zzzzsys_php', 'select', 'sph_run', 'Run', 'nu5bad6cb36b27343', 70, 145, 142, 136, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'hide|Hidden|\nwindow|In a new window', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb341fdfc3', 'nuaccessreport', 'zzzzsys_access_php', 'lookup', 'slp_zzzzsys_php_id', 'Procedure', 'nu5bad6cb36c55179', 0, 20, 100, 280, 20, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '', 'sph_code', 'sph_description', '300', '', 'nuphp', '', '', 'zzzzsys_php', '', '', '1', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34231992', 'nuaccess', 'zzzzsys_access', 'subform', 'accphp', ' ', 'nu5bad6cb36c16b42', 70, 20, 30, 675, 540, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', 'nuaccessreport', 'slp_zzzzsys_access_id', '1', '1', 'g', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb342620ba', 'nuaccess', 'zzzzsys_access', 'subform', 'accreport', ' ', 'nu5bad6cb36c39fc8', 80, 20, 30, 675, 540, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', 'nuaccesslevelreport', 'sre_zzzzsys_access_id', '1', '1', 'g', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb342de027', 'nuaccesslevelreport', 'zzzzsys_access_report', 'lookup', 'sre_zzzzsys_report_id', 'Report', 'nu5bad6cb36c75655', 30, 47, 163, 280, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', 'sre_code', 'sre_description', '300', '0', 'nubuildreport', '', '', 'zzzzsys_report', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb343a3176', 'nubuildreport', 'zzzzsys_report', 'input', 'sre_group', 'Group', 'nu5bad6cb36804778', 30, 84, 236, 186, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34460b5f', 'nuhome', '', 'run', 'run_report', 'Run Report', 'nu5bad6cb367c5125', 80, 99, 488, 195, 30, '1', 'center', '0', '0', '0', '', '', 'nurunreport', '', 'b', '0', 'F', '', '', '', '0', '', '', '', '', '', '', '', '', '', 'nurunreport', '', '0', '0', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34489ea2', 'nuhome', '', 'run', 'run_php', 'Run Procedure', 'nu5bad6cb367c5125', 70, 43, 488, 195, 30, '1', 'center', '0', '0', '0', '', '', 'nurunphp', '', 'b', '0', 'F', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb344b93ac', 'nulaunchdates', '', 'input', 'from_date', 'Between', 'nu5bad6cb36cfbbfa', 10, 72, 115, 90, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'D|dd-mmm-yyyy', 'nuDate', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb344dffcc', 'nulaunchdates', '', 'input', 'to_date', 'And', 'nu5bad6cb36cfbbfa', 20, 72, 243, 90, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'D|dd-mmm-yyyy', 'nuDate', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb345094c6', 'nubuildreport', 'zzzzsys_report', 'lookup', 'sre_zzzzsys_php_id', 'Table', 'nu5bad6cb36804778', 40, 112, 236, 186, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'code', 'description', '200', '', 'nubuildtable', '', '', 'zzzzsys_report_data', 'nuform', '', '1', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3452cdfe', 'nuphp', 'zzzzsys_php', 'input', 'sph_group', 'Group', 'nu5bad6cb36b27343', 30, 91, 143, 209, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3454ed08', 'nuhome', '', 'run', 'run_setup', 'Setup', 'nu5bad6cb367c5125', 40, 43, 270, 195, 30, '1', 'center', '0', '0', '0', '', '', 'nusetup', '', 'b', '0', 'F', '1', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb345bcd24', 'nusetup', 'zzzzsys_setup', 'lookup', 'set_zzzzsys_timezone_id', 'Time Zone', 'nu5bad6cb36d97acd', 40, 120, 181, 330, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', 'stz_timezone', 'stz_timezone', '0', '', 'nutimezone', '', '', 'zzzzsys_timezone', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3462cd79', 'nuuser', 'zzzzsys_user', 'select', 'sus_language', 'Language', 'nu5bad6cb36b63cae', 70, 221, 167, 153, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT trl_language, trl_language AS a \nFROM zzzzsys_translate\nGROUP BY trl_language ', '', '', '', '', '', '', '', 'zzzzsys_timezone', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb346642c0', 'nusetup', 'zzzzsys_setup', 'select', 'set_smtp_use_authentication', 'Use Authentication', 'nu5bad6cb36e31edf', 170, 295, 167, 59, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb346a7c3b', 'nusetup', 'zzzzsys_setup', 'input', 'set_smtp_username', 'User Name', 'nu5bad6cb36e31edf', 110, 97, 167, 235, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb346df926', 'nusetup', 'zzzzsys_setup', 'input', 'set_smtp_password', 'Password', 'nu5bad6cb36e31edf', 120, 130, 167, 235, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34701820', 'nusetup', 'zzzzsys_setup', 'input', 'set_smtp_host', 'Host', 'nu5bad6cb36e31edf', 130, 163, 167, 235, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34724534', 'nusetup', 'zzzzsys_setup', 'input', 'set_smtp_from_address', 'Address', 'nu5bad6cb36e31edf', 140, 196, 167, 235, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3475031f', 'nusetup', 'zzzzsys_setup', 'input', 'set_smtp_from_name', 'From Name', 'nu5bad6cb36e31edf', 150, 229, 167, 235, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3477c73b', 'nusetup', 'zzzzsys_setup', 'input', 'set_smtp_port', 'Port', 'nu5bad6cb36e31edf', 160, 262, 167, 82, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'search', '', '[25,465,587,2525]', '', '', '', '', '', '', ''),
('nu5bad6cb347da00e', 'nusetup', 'zzzzsys_setup', 'textarea', 'set_header', 'Header', 'nu5bad6cb36e9143a', 10, 69, 81, 1300, 500, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT trl_language, trl_language AS a \nFROM zzzzsys_translate\nGROUP BY trl_language ', '', '', '', '', '', '', '', 'zzzzsys_timezone', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb347fc49c', 'nuhome', '', 'run', 'run_lang', 'Translation', 'nu5bad6cb36efb50c', 170, 43, 488, 195, 30, '1', 'center', '0', '0', '0', '', '', 'nutranslate', '', 'b', '0', 'F', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3482a7d5', 'nutranslate', 'zzzzsys_translate', 'input', 'trl_language', 'Language', 'nu5bad6cb36eb07f0', 10, 54, 142, 100, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'nuScroll', 'nuLanguages()', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3498f4e8', 'nutranslate', 'zzzzsys_translate', 'input', 'trl_english', 'English', 'nu5bad6cb36eb07f0', 20, 81, 142, 572, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb349c926f', 'nutranslate', 'zzzzsys_translate', 'input', 'trl_translation', 'Translation', 'nu5bad6cb36eb07f0', 30, 108, 142, 572, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34a11c21', 'nupassword', 'zzzzsys_user', 'input', 'new_password_check', 'Confirm New Password', 'nu5bad6cb36ed494f', 40, 133, 181, 200, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'password', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34a592fd', 'nupassword', 'zzzzsys_user', 'input', 'new_password', 'New Password', 'nu5bad6cb36ed494f', 30, 104, 181, 200, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'password', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34a8d913', 'nupassword', 'zzzzsys_user', 'input', 'old_password', 'Current Password', 'nu5bad6cb36ed494f', 20, 75, 181, 200, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', 'SELECT CONCAT(\'( \', sus_login_name, \' )\')\nFROM zzzzsys_user\nWHERE zzzzsys_user_id = \'#RECORD_ID#\'', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'password', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34b050a0', 'nuobject', 'zzzzsys_object', 'input', 'ab_event', 'After Browse', 'nu5bad6cb369d0088', 700, 138, 97, 167, 29, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34c005d7', 'nuform', 'zzzzsys_form', 'input', 'be_event', 'Before Edit', 'nu5bad6cb37026348', 270, 312, 42, 155, 29, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34c4775c', 'nuform', 'zzzzsys_form', 'input', 'bs_event', 'Before Save', 'nu5bad6cb37026348', 280, 346, 42, 155, 29, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34d23de5', 'nuform', 'zzzzsys_form', 'input', 'as_event', 'After Save', 'nu5bad6cb37026348', 290, 380, 42, 155, 29, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', '');
INSERT INTO `zzzzsys_object` (`zzzzsys_object_id`, `sob_all_zzzzsys_form_id`, `sob_all_table`, `sob_all_type`, `sob_all_id`, `sob_all_label`, `sob_all_zzzzsys_tab_id`, `sob_all_order`, `sob_all_top`, `sob_all_left`, `sob_all_width`, `sob_all_height`, `sob_all_cloneable`, `sob_all_align`, `sob_all_validate`, `sob_all_access`, `sob_all_event`, `sob_calc_formula`, `sob_calc_format`, `sob_run_zzzzsys_form_id`, `sob_run_filter`, `sob_run_method`, `sob_run_target`, `sob_run_type`, `sob_run_id`, `sob_display_sql`, `sob_select_multiple`, `sob_select_2`, `sob_select_sql`, `sob_lookup_code`, `sob_lookup_description`, `sob_lookup_description_width`, `sob_lookup_autocomplete`, `sob_lookup_zzzzsys_form_id`, `sob_lookup_javascript`, `sob_lookup_php`, `sob_lookup_table`, `sob_subform_zzzzsys_form_id`, `sob_subform_foreign_key`, `sob_subform_add`, `sob_subform_delete`, `sob_subform_type`, `sob_subform_table`, `sob_input_count`, `sob_input_format`, `sob_input_type`, `sob_input_javascript`, `sob_input_datalist`, `sob_html_code`, `sob_html_chart_type`, `sob_html_javascript`, `sob_html_title`, `sob_html_vertical_label`, `sob_html_horizontal_label`, `sob_image_zzzzsys_file_id`) VALUES
('nu5bad6cb34d7e1db', 'nuform', 'zzzzsys_form', 'input', 'bd_event', 'Before Delete', 'nu5bad6cb37026348', 300, 414, 42, 155, 29, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34e2eaec', 'nuform', 'zzzzsys_form', 'input', 'ad_event', 'After Delete', 'nu5bad6cb37026348', 310, 448, 42, 155, 29, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34e5cc53', 'nuform', 'zzzzsys_form', 'input', 'previewedit', 'Preview Edit Form', 'nu5bad6cb36791fd5', 100, 123, 856, 155, 43, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34e80d7e', 'nuobject', 'zzzzsys_object', 'input', 'sob_lookup_table', 'Code', 'nu5bad6cb369d0088', 690, 19, 9, 50, 22, '1', 'left', '0', '2', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34ea0b99', 'nuhome', '', 'run', 'run_fast_form', 'Fast Form', 'nu5bad6cb36efb50c', 110, 43, 53, 195, 30, '1', 'center', '0', '0', '0', '', '', 'nufflaunch', '', 'b', '0', 'F', '-1', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34ebf5bd', 'nufastformobjects', 'zzzzsys_object', 'input', 'ff_field', 'Field Name', 'nu5bad6cb36f72f8e', 20, 72, 23, 250, 20, '1', 'left', '1', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'nuScroll', 'nuFORM.tableSchema[$(\"#fastform_table\").val()]?nuFORM.tableSchema[$(\"#fastform_table\").val()].names:[]', 'nuFORM.tableSchema[$(\"#fastform_table\").val()]?nuFORM.tableSchema[$(\"#fastform_table\").val()].names:[]', '', '', '', '', '', '', ''),
('nu5bad6cb34ee220e', 'nufastformobjects', 'zzzzsys_object', 'input', 'ff_label', ' Label', 'nu5bad6cb36f72f8e', 10, 46, 23, 220, 20, '1', 'left', '1', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34f0470a', 'nufflaunch', '', 'subform', 'obj_sf', ' ', 'nu5bad6cb36f36433', 120, 132, 416, 756, 441, '1', 'right', '0', '0', '1', '', '', 'nuffcustomobjects', '', 'i', '', NULL, '', '', '', '0', '', '', '', '', '', '', '', '', 'zzzzsys_object', 'nufastformobjects', 'zzzzsys_debug_id', '1', '1', 'g', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34f26ff6', 'nuobject', 'zzzzsys_object', 'html', 'nucalculator', ' ', 'nu5bad6cb36f99a7e', 960, 182, 505, 145, 210, '1', 'right', '0', '1', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '<table>\n  <tr>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'>1</td>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'>2</td> \n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'>3</td> \n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\' title=\'Add a Space\'> </td> \n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'> + </td>\n  </tr>\n  <tr>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'>4</td>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'>5</td> \n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'>6</td> \n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'>.</td> \n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'> - </td> \n  </tr>\n  <tr>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'>7</td>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'>8</td> \n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'>9</td> \n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'>0</td>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'> * </td>\n  </tr>\n  <tr>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'> ? </td>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'> : </td> \n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'> = </td> \n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'> ! </td> \n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'> / </td>\n  </tr>\n  <tr>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'> ( </td>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\'> ) </td>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\' colspan=3>Clear</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuAddToFormula(event)\'  class=\'nuCalculatorButton\' colspan=5> Math.round( </td>\n  </tr>\n</table>', '', '', '', '', '', ''),
('nu5bad6cb34f4618a', 'nuobject', 'zzzzsys_object', 'textarea', 'sob_calc_formula', 'Formula', 'nu5bad6cb36f99a7e', 940, 51, 80, 570, 83, '1', 'left', '0', '0', '0', ' +', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34f64fa1', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_table', 'Table', 'nu5bad6cb3686cb0d', 10, 35, 0, 72, 22, '1', 'left', '0', '2', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34f8418a', 'nuhome', '', 'run', 'run_format', 'Format', 'nu5bad6cb36efb50c', 160, 155, 270, 195, 30, '1', 'center', '0', '0', '0', '', '', 'nuformat', '', 'b', '0', 'F', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34fa79c0', 'nuformat', 'zzzzsys_format', 'select', 'srm_type', 'Input Type', 'nu5bad6cb36fcbc18', 10, 45, 115, 100, 22, '1', 'left', '1', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'Number|nuNumber|\nDate|nuDate', '', '', '', '', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34fcb8ad', 'nuformat', 'zzzzsys_form', 'input', 'srm_format', 'Format', 'nu5bad6cb36fcbc18', 30, 83, 115, 498, 35, '0', 'left', '1', '1', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb34feb6d2', 'nuobject', 'zzzzsys_object', 'input', 'sob_input_javascript', 'JavaScript Array', 'nu5bad6cb36a4af06', 830, 77, 239, 436, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5fab3e0f07cd2d8', 'nuformat', 'zzzzsys_format', 'input', 'srm_currency', ' ', 'nu5bad6cb36fcbc18', 20, 45, 318, 100, 22, '1', 'left', '0', '2', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'Number|nuNumber|\nDate|nuDate', '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3502b8ec', 'nuobject', 'zzzzsys_object', 'select', 'sob_calc_format', 'Format', 'nu5bad6cb36f99a7e', 930, 17, 80, 143, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT \n   CONCAT(LEFT(srm_type, 1), \'|\', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = \'Number\'', '', '', '', '', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3507cf3f', 'nuformat', 'zzzzsys_format', 'html', 'nucalculator', ' ', 'nu5bad6cb36fcbc18', 80, 135, 115, 499, 32, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '<table id=\'tof\' class=\'nuEditBody\' style=\'width:500px\'>\n  <tr>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>yy</td>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>yyyy</td>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>pp</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>dd</td>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>ddd</td> \n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>dddd</td> \n  </tr>\n  <tr>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>mm</td>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>mmm</td> \n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>mmmm</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>hh</td> \n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>nn</td>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>ss</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>-</td>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>:</td> \n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>/</td> \n  </tr>\n  <tr>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>.</td>\n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>Space</td> \n    <td onclick=\'nuAddToFormat(event)\'  class=\'nuCalculatorButton date\' width=\'100%\'>,</td> \n  </tr>\n</table>\n', '', '', '', '', '', ''),
('nu5fab2f8952634e4', 'nuformat', 'zzzzsys_format', 'input', 'separator', 'Separator', 'nu5bad6cb36fcbc18', 50, 136, 264, 52, 30, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', '[\",\", \".\", \"\'\"]', '', '', '', '', '', '', ''),
('nu5fab2fa48a504e4', 'nuformat', 'zzzzsys_format', 'input', 'decimal', 'Decimal', 'nu5bad6cb36fcbc18', 60, 136, 413, 52, 30, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', '[\".\", \",\"]', '', '', '', '', '', '', ''),
('nu5bad6cb3513b16c', 'nuformat', 'zzzzsys_format', 'input', 'sign', 'Sign', 'nu5bad6cb36fcbc18', 40, 136, 115, 52, 30, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '[\"$\", \"£\", \"€\", \"¢\"]', '', '', '', '', '', '', ''),
('nu5bad6cb3518a9c0', 'nuform', 'zzzzsys_form', 'input', 'previewbrowse', 'Preview Browse Form', 'nu5bad6cb36791fd5', 90, 71, 856, 155, 43, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3526def5', 'nuobject', 'zzzzsys_object', 'html', 'add_total', ' ', 'nu5bad6cb36f99a7e', 950, 182, 80, 343, 322, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '1', '0', 'SELECT \n   sob_all_zzzzsys_form_id AS theform,\n   sob_all_id as b\nFROM zzzzsys_object \nWHERE sob_input_type = \'nuNumber\'\nOR sob_input_type = \'number\'\nOR sob_all_type = \'calc\'\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, \'.\', inp.sob_all_id) as b\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = \'subform\'\nAND (\n        inp.sob_input_type = \'nuNumber\' OR \n        inp.sob_input_type = \'number\' OR \n        inp.sob_all_type = \'calc\'\n    )', '', '', '', '', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, ' ', '', '', '', '', '', ''),
('nu5bad6cb3528f51c', 'nuobject', 'zzzzsys_object', 'input', 'sob_subform_table', 'Code', 'nu5bad6cb36a1c024', 740, 3, 3, 50, 22, '1', 'left', '0', '2', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb352b1230', 'nufflaunch', '', 'word', 'ffwrd', 'New Fast Form', 'nu5bad6cb36f36433', 90, 87, 416, 756, 22, '1', 'center', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb352dce42', 'nufflaunch', '', 'input', 'fastform_table', 'Table Name', 'nu5bad6cb36f36433', 20, 44, 117, 267, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'search', 'nuFORM.getJustTables()', 'SHOW TABLES', '', '', '', '', '', '', ''),
('nu5bad6cb35304ffd', 'nufastformobjects', 'zzzzsys_object', 'input', 'ff_id', ' ', 'nu5bad6cb36f72f8e', 30, 20, 23, 5, 22, '1', 'left', '1', '2', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3532d677', 'nufflaunch', '', 'input', 'new_id', 'New ID', 'nu5bad6cb36f36433', 70, 12, 20, 10, 22, '1', 'left', '0', '2', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu59e446589d1c64d', 'nusample', '', 'image', 'imagesample', '|Image', 'nu5bad6cb370eb06a', 160, 507, 261, 98, 85, '1', 'left', '0', '0', NULL, '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '[\'North\',\'South\',\'East\',\'West\']', NULL, '', '', '', '', '', '', 'nu5bad6cb37d02d01'),
('nu59e446589cf91a2', 'nusample', '', 'input', 'inputfilesample', '|File', 'nu5bad6cb373c384f', 60, 527, 238, 300, 66, '1', 'right', '0', '0', NULL, '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 89, 'N|$ 1,000.00', 'file', '', NULL, '', '', '', '', '', '', ''),
('nu59e446589bce3d7', 'nusample', '', 'input', 'inputnuautonumbersample', '|nuAutoNumber', 'nu5bad6cb373c384f', 50, 167, 238, 73, 22, '1', 'right', '0', '0', NULL, '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1000, 'N|$ 1,000.00', 'nuAutoNumber', '', NULL, '', '', '', '', '', '', ''),
('nu59e446589b8b4a1', 'nusample', '', 'word', 'labelword', '|Word', 'nu5bad6cb370eb06a', 190, 33, 214, 40, 22, '1', 'right', '0', '0', NULL, '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu59e446589b75a6d', 'nusample', '', 'textarea', 'textareasample', '|Textarea', 'nu5bad6cb370eb06a', 150, 407, 261, 195, 64, '1', 'left', '0', '0', NULL, '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '[\'North\',\'South\',\'East\',\'West\']', NULL, '', '', '', '', '', '', ''),
('nu59e446589b61190', 'nusample', '', 'input', 'inputnuscrollsample', '|nuScroll', 'nu5bad6cb373c384f', 80, 287, 238, 176, 22, '1', 'left', '0', '0', NULL, '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'nuScroll', '[\'North\',\'South\',\'East\',\'West\']', NULL, '', '', '', '', '', '', ''),
('nu59e446589b4c69b', 'nusample', '', 'input', 'inputcheckboxsample', '|Checkbox', 'nu5bad6cb373c384f', 70, 107, 238, 16, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu59e446589b3714b', 'nusample', '', 'calc', 'calcsample', '|Calc', 'nu5bad6cb370eb06a', 170, 81, 261, 98, 22, '1', 'right', '0', '0', NULL, 'nuTotal(\'inputnunumbersample\') + nuTotal(\'inputnumbersample\')', 'N|1000.00', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu59e446589b20a14', 'nusample', '', 'input', 'inputnunumbersample', '|nuNumber', 'nu5bad6cb373c384f', 30, 407, 238, 90, 22, '1', 'right', '0', '0', NULL, '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|1000.00', 'nuNumber', '', NULL, '', '', '', '', '', '', ''),
('nu59e446589b0af4c', 'nusample', '', 'input', 'inputnudatesample', '|nuDate', 'nu5bad6cb373c384f', 20, 347, 238, 95, 22, '1', 'left', '0', '0', NULL, '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'D|dd-mm-yyyy', 'nuDate', '', NULL, '', '', '', '', '', '', ''),
('nu59e446589af5d86', 'nusample', '', 'input', 'inputnumbersample', '|Number', 'nu5bad6cb373c384f', 40, 467, 238, 55, 22, '1', 'right', '0', '0', NULL, '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'number', '', NULL, '', '', '', '', '', '', ''),
('nu59e446589adce4d', 'nusample', '', 'input', 'inputbuttonsample', '|Run', 'nu5bad6cb373c384f', 90, 42, 238, 117, 31, '1', 'center', '0', '0', NULL, '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu59e446589ac75be', 'nusample', '', 'word', 'wordsample', '|Word', 'nu5bad6cb370eb06a', 180, 33, 261, 117, 22, '1', 'center', '0', '0', NULL, '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu59e446589ab1797', 'nusample', '', 'lookup', 'lookupsample', '|Lookup', 'nu5bad6cb370eb06a', 140, 177, 261, 70, 22, '1', 'left', '0', '0', NULL, '', '', '', '', '', NULL, NULL, '', '', '', '0', '', 'sal_zzzzsys_form_id', 'sal_code', '150', '', 'nuaccess', '', '', 'zzzzsys_access', '', '', '', '', '', '', 0, '', '', '[\'North\',\'South\',\'East\',\'West\']', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3565664f', 'nufflaunch', '', 'html', 'nucalculator', ' ', 'nu5bad6cb36f36433', 80, 132, 40, 352, 365, '1', 'left', '0', '1', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '\n<table id=\'tof\' style=\'width:350px\'>\n  <tr>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'nu59e446589a370ca\' class=\'nuCalculatorButton nu_input\' style=\'font-size:18px\' width=\'100%\'>Text</td>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'nu59e446589ac75be\' class=\'nuCalculatorButton nu_word\' style=\'font-size:18px\' width=\'100%\'>Word</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'nu59e446589adce4d\' class=\'nuCalculatorButton nu_input\' style=\'font-size:18px\' width=\'100%\'>Button</td>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'nu59e446589b3714b\' class=\'nuCalculatorButton nu_calc\' style=\'font-size:18px\' width=\'100%\'>Calc</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'nu59e446589b4c69b\' class=\'nuCalculatorButton nu_input\' style=\'font-size:18px\' width=\'100%\'>Checkbox</td>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'nu59e446589a4d76a\' class=\'nuCalculatorButton nu_display\' style=\'font-size:18px\' width=\'100%\'>Display</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'nu59e446589bce3d7\' class=\'nuCalculatorButton nu_input\' style=\'font-size:18px\' width=\'100%\'>nuAutoNumber</td>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'nu59e446589ab1797\' class=\'nuCalculatorButton nu_lookup\' style=\'font-size:18px\' width=\'100%\'>Lookup</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'nu59e446589b61190\' class=\'nuCalculatorButton nu_input\' style=\'font-size:18px\' width=\'100%\'>nuScroll</td>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'nu59e446589a1fc46\' class=\'nuCalculatorButton nu_html\' style=\'font-size:18px\' width=\'100%\'>HTML</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'nu59e446589b0af4c\' class=\'nuCalculatorButton nu_input\' style=\'font-size:18px\' width=\'100%\'>nuDate</td>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'nu59e446589a6400f\' class=\'nuCalculatorButton nu_select\' style=\'font-size:18px\' width=\'100%\'>Select</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'nu59e446589b20a14\' class=\'nuCalculatorButton nu_input\' style=\'font-size:18px\' width=\'100%\'>nuNumber</td>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'nu59e446589a9b145\' class=\'nuCalculatorButton nu_select\' style=\'font-size:18px\' width=\'100%\'>Multiselect</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'nu59e446589af5d86\' class=\'nuCalculatorButton nu_input\' style=\'font-size:18px\' width=\'100%\'>Number</td>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'nu59e446589b75a6d\' class=\'nuCalculatorButton nu_textarea\' style=\'font-size:18px\' width=\'100%\'>Textarea</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'nu59e446589cf91a2\' class=\'nuCalculatorButton nu_input\' style=\'font-size:18px\' width=\'100%\'>File</td>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'nu59e446589d1c64d\' class=\'nuCalculatorButton nu_image\' style=\'font-size:18px\' width=\'100%\'>Image</td>\n  </tr>\n  <tr>\n    <td onclick=\'nuSelectFFObjects(event)\' id=\'nu59e44658a0c7724\' class=\'nuCalculatorButton nu_subform\' style=\'font-size:18px\' width=\'100%\' colspan=\"2\">Subform</td>\n  </tr>\n</table>\n', '', '', '', '', '', ''),
('nu5bad6cb3568c736', 'nufflaunch', '', 'input', 'run_sam', '?', 'nu5bad6cb36f36433', 140, 93, 371, 21, 21, '1', 'center', '1', '0', '1', '', '', '', '', 'b', NULL, NULL, '-1', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu59e446589a848cc', 'nusample', '', 'word', 'bottomcorner', ' ', 'nu5bad6cb370eb06a', 220, 588, 595, 20, 22, '1', 'left', '0', '2', NULL, '', '', '', '', '', NULL, NULL, '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu59e446589a9b145', 'nusample', '', 'select', 'selectmultiselectsample', '|Multiselect', 'nu5bad6cb370eb06a', 210, 331, 261, 117, 56, '1', 'left', '0', '0', NULL, '', '', '', '', '', NULL, NULL, '', '', '1', '0', 'SELECT zzzzsys_format_id, srm_format FROM zzzzsys_format ORDER BY srm_type', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb356dfe23', 'nuobject', 'zzzzsys_object', 'input', 'sob_input_count', 'Next Number', 'nu5bad6cb36a4af06', 810, 77, 239, 50, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT \n   CONCAT(LEFT(srm_type, 1), \'|\', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nORDER BY srm_type\n', '', '', '', '', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'number', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb357033c6', 'nuhome', '', 'run', 'run_file', 'Files', 'nu5bad6cb367c5125', 90, 43, 703, 195, 30, '1', 'center', '0', '0', '0', '', '', 'nufile', '', 'b', '0', 'F', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35724861', 'nufile', 'zzzzsys_file', 'input', 'sfi_code', 'Code', 'nu5bad6cb3719774c', 10, 110, 153, 200, 22, '1', 'left', '3', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3574909c', 'nufile', 'zzzzsys_file', 'input', 'sfi_description', 'Description', 'nu5bad6cb3719774c', 30, 137, 153, 322, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35772a8c', 'nufile', 'zzzzsys_file', 'input', 'sfi_json_file', 'Upload File', 'nu5bad6cb3719774c', 60, 46, 153, 322, 50, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'file', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb357973bf', 'nufile', 'zzzzsys_file', 'html', 'view_image', 'View', 'nu5bad6cb3719774c', 20, 206, 153, 321, 267, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '<style>\nimg{\n    width:100%;\n    max-width:600px;\n    max-height:600px;\n}\n</style>\n\n<img \n  id=\"theview\" \n  style=\"border:grey 1px solid;\"\n>\n\n', '', '', '', '', '', ''),
('nu5bad6cb357ff16d', 'nufile', 'zzzzsys_file', 'input', 'sfi_group', 'Group', 'nu5bad6cb3719774c', 40, 164, 153, 200, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3582c2ca', 'nuobject', 'zzzzsys_object', 'lookup', 'sob_image_zzzzsys_file_id', 'Image', 'nu5bad6cb371c865e', 790, 50, 108, 150, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'sfi_code', 'sfi_description', '200', '', 'nufile', '', '', 'zzzzsys_file', 'nuform', '', '1', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu59e446589a6400f', 'nusample', '', 'select', 'selectsample', '|Select', 'nu5bad6cb370eb06a', 200, 274, 261, 80, 22, '1', 'left', '0', '0', NULL, '', '', '', '', '', NULL, NULL, '', '', '0', '0', '0|No|1|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu59e446589a4d76a', 'nusample', '', 'display', 'displaysample', '|Display', 'nu5bad6cb370eb06a', 130, 129, 261, 137, 22, '1', 'right', '0', '0', NULL, '', '', '', '', '', NULL, NULL, '', 'SELECT COUNT(*) FROM zzzzsys_debug', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb359524be', 'nuphp', 'zzzzsys_php', 'input', 'sph_system', 'Group', 'nu5bad6cb36b27343', 40, 1, 1, 100, 22, '1', 'left', '0', '2', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35977ed6', 'nudebug', 'zzzzsys_debug', 'input', 'deb_added', ' ', 'nu5bad6cb36bf8d38', 10, 1, 1, 100, 22, '0', 'left', '0', '2', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3599e41f', 'nuselect', 'zzzzsys_select', 'input', 'sse_description', 'Description', 'nu5bad6cb371e2de7', 20, 10, 469, 313, 22, '1', 'left', '3', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb359c1b05', 'nuhome', '', 'run', 'run_sql', 'SQL', 'nu5bad6cb36efb50c', 150, 99, 270, 195, 30, '1', 'center', '0', '0', '0', '', '', 'nuselect', '', 'b', '0', 'F', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb359e7a1a', 'nuselect', 'zzzzsys_select', 'html', 'nusvg', 'Fields and Relationships', 'nu5bad6cb371e2de7', 90, 68, 801, 500, 200, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '<iframe id=\'sqlframe\' src=\'core/nuselect.php\' style=\'height:460px;width:700px\'></iframe>', '', '', '', '', '', ''),
('nu5bad6cb35a0a29e', 'nuselect', 'zzzzsys_select', 'input', 'sse_resize', ' ', 'nu5bad6cb371e2de7', 60, 36, 1470, 29, 26, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35a52325', 'nuselect', 'zzzzsys_select', 'select', 'addtable', 'Add Table', 'nu5bad6cb371e2de7', 50, 38, 1163, 294, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT table_name as a, table_name as b \nFROM INFORMATION_SCHEMA.TABLES \nWHERE table_schema = DATABASE()\nORDER BY table_name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35a8885a', 'nuclause', 'zzzzsys_select_clause', 'input', 'ssc_order', 'Order', 'nu5bad6cb37296979', 50, 154, 122, 45, 20, '1', 'right', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35ab1f0a', 'nuclause', 'zzzzsys_select_clause', 'select', 'ssc_type', 'Type', 'nu5bad6cb37296979', 10, 58, 122, 100, 20, '1', 'right', '1', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '1|WHERE|\n2|GROUP BY|\n3|ORDER BY|\n4|HAVING\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35ad7f0a', 'nuclause', 'zzzzsys_select_clause', 'input', 'ssc_clause', 'Clause', 'nu5bad6cb37296979', 30, 122, 122, 189, 20, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '10|WHERE|\n20|ORDER BY|\n30|GROUP BY|\n40|HAVING', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35afa1d0', 'nuclause', 'zzzzsys_select_clause', 'input', 'ssc_field', 'Field', 'nu5bad6cb37296979', 20, 90, 122, 220, 20, '1', 'left', '1', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '10|WHERE|\n20|ORDER BY|\n30|GROUP BY|\n40|HAVING', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'nuScroll', 'nuFORM.selectFields()', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35b23983', 'nuselect', 'zzzzsys_select', 'subform', 'zzzzsys_select_clause_sf', 'Clauses', 'nu5bad6cb371e2de7', 80, 361, 85, 700, 160, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', 'nuclause', 'ssc_zzzzsys_select_id', '1', '1', 'g', 'zzzzsys_select_clause', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35b51370', 'nuselect', 'zzzzsys_select', 'textarea', 'sse_sql', 'SQL', 'nu5bad6cb371e2de7', 40, 68, 86, 697, 280, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35b860e2', 'nuclause', 'zzzzsys_select_clause', 'select', 'ssc_sort', 'Sort', 'nu5bad6cb37296979', 40, 154, 122, 70, 20, '1', 'right', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'ASC|ASC|DESC|DESC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35beaf10', 'nuselect', 'zzzzsys_select', 'textarea', 'sse_json', 'JSON', 'nu5bad6cb371e2de7', 70, 7, 882, 73, 22, '1', 'left', '0', '2', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35c4c4ab', 'nuselect', 'zzzzsys_select', 'select', 'sse_edit', 'SQL', 'nu5bad6cb371e2de7', 30, 38, 85, 198, 22, '1', 'center', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '0|From SQL Builder|\n1|Edit Manually', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35cce14b', 'nuhome', '', 'input', 'open_database', 'Database', 'nu5fd750667019155', 190, 43, 53, 195, 30, '0', 'center', '0', '0', '1', '', '', 'nusetup', '', 'b', '0', NULL, '1', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35cf61c0', 'nuform', 'zzzzsys_form', 'input', 'br_sql', 'SQL Builder', 'nu5bad6cb36757b92', 180, 337, 803, 209, 30, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35d26e8f', 'nuobject', 'zzzzsys_object', 'input', 'di_sql', 'SQL Builder', 'nu5bad6cb36974818', 570, 36, 459, 191, 30, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35d48819', 'nuobject', 'zzzzsys_object', 'input', 'se_sql', 'SQL Builder', 'nu5bad6cb369a6ee3', 610, 36, 459, 191, 30, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35d6b273', 'nufastformobjects', 'zzzzsys_object', 'input', 'ff_browse', 'Browse<br>Column', 'nu5bad6cb36f72f8e', 50, 124, 23, 58, 15, '1', 'left', '0', '0', '1', '', '', 'nuobject', '', 'b', NULL, NULL, '#ff_id#', '', '0', '0', '1|Yes', '', '', '', '', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35d8ed3e', 'nufile', 'zzzzsys_file', 'textarea', 'sfi_json', 'Upload File', 'nu5bad6cb3719774c', 70, 45, 1, 121, 50, '1', 'left', '0', '2', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35dadfc5', 'nufflaunch', '', 'select', 'fastform_type', 'Form Type', 'nu5bad6cb36f36433', 10, 17, 117, 140, 22, '1', 'left', '1', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'browse|Browse|\nedit|Edit|browseedit|\nBrowse and Edit|\nlaunch|Launch|\nsubform|Subform', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35dd12bb', 'nufflaunch', '', 'word', 'wrdaddable', 'Addable Objects', 'nu5bad6cb36f36433', 50, 87, 41, 352, 22, '1', 'center', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35df580e', 'nuhome', '', 'run', 'user_home', 'User Home', 'nu5bad6cb367c5125', 10, 43, 53, 195, 30, '1', 'center', '0', '0', '0', '', '', 'nuuserhome', '', 'b', '0', 'F', '-1', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35e1d998', 'nusetup', 'zzzzsys_setup', 'select', 'set_language', 'Admin Language', 'nu5bad6cb36d97acd', 60, 478, 181, 128, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '%LANGUAGES%', '', '', '', '', '', '', '', 'zzzzsys_timezone', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu59e446589a370ca', 'nusample', '', 'input', 'inputtextsample', '|Text', 'nu5bad6cb373c384f', 10, 227, 238, 300, 22, '1', 'left', '0', '0', NULL, '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35ee9e0e', 'nuhome', '', 'run', 'run_fast_report', 'Fast Report', 'nu5bad6cb36efb50c', 120, 99, 53, 195, 30, '1', 'center', '0', '0', '0', '', '', 'nufrlaunch', '', 'b', '0', 'F', '-1', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35f2188f', 'nufrlaunch', '', 'lookup', 'table', 'Table Data', 'nu5bad6cb3737e773', 30, 36, 138, 150, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', 'code', 'description', '220', '', 'nubuildtable', '\nif($(\'#fieldlist\').val() !== \'\'){\n   \n    var s   = String($(\'#fieldlist\').val());\n    var ds  = s.replaceAll(\'[\',\'\').replaceAll(\']\',\'\').replaceAll(\'\\\\\',\'\').replaceAll(\'\"\',\'\');\n    var fl  = ds.split(\',\');\n    var fu  = [];\n    \n    $(\'#orderby\').find(\'option\').remove();\n\n    for(var i = 0 ; i < fl.length ; i++){\n        \n        if(fl[i] != \'KEEP EXACT HEIGHT\'){\n            \n            fu[i]   = \'<tr><td><div style=\"overflow:hidden;width:285px;text-align:left;padding:2px\" onclick=\"nuAddReportField(this);\" class=\"nuCalculatorButton nu_input\">\' + fl[i] + \'</div></td></tr>\';\n    \n            $(\'#orderby\').append(\'<option value=\"\' + fl[i] + \'\">\' + fl[i] + \'</option>\');\n        \n        }\n            \n    }\n\n    $(\'#nufr\').html(\'<table>\' + fu.join(\'\') + \'</table>\');\n    \n}\n\n$(\'#orderby\').val(fl[0]);\n\n', '', 'zzzzsys_report_data', '', '', '', '', '', '', 0, '', '', '[\'North\',\'South\',\'East\',\'West\']', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35f5d25f', 'nufastreportobjects', 'zzzzsys_debug', 'input', 'width', 'Width', 'nu5bad6cb3734c18f', 30, 339, 295, 70, 20, '1', 'right', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'no|No|yes|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'number', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35f8e8f3', 'nufrlaunch', '', 'html', 'list', ' ', 'nu5bad6cb3737e773', 60, 154, 72, 324, 406, '1', 'left', '0', '1', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', '', '', NULL, '<div id=\'nufr\' style=\'overflow-y: scroll;height:250px;width:317px\'></div>', '', '', '', '', '', ''),
('nu5bad6cb35fafc15', 'nufrlaunch', '', 'subform', 'fast_report_sf', ' ', 'nu5bad6cb3737e773', 90, 155, 428, 592, 406, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', 'nufastreportobjects', 'deb_message', '1', '1', 'g', 'zzzzsys_debug', 89, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35fcf854', 'nufrlaunch', '', 'input', 'fieldlist', 'list', 'nu5bad6cb3737e773', 10, 14, 44, 400, 22, '1', 'left', '0', '2', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', 'zzzzsys_report_data', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'text', '[\'North\',\'South\',\'East\',\'West\']', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb35ff457a', 'nufrlaunch', '', 'word', 'wrdaddable', 'Available Fields', 'nu5bad6cb3737e773', 70, 107, 72, 316, 22, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb36018343', 'nufrlaunch', '', 'word', 'frwrd', 'New Fast Report', 'nu5bad6cb3737e773', 80, 107, 428, 584, 22, '1', 'center', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3604269d', 'nufastreportobjects', 'zzzzsys_debug', 'input', 'title', 'Title', 'nu5bad6cb3734c18f', 10, 300, 300, 196, 20, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3608c14b', 'nufastreportobjects', 'zzzzsys_debug', 'input', 'sum', 'Sum', 'nu5bad6cb3734c18f', 30, 339, 295, 16, 22, '1', 'center', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'no|No|yes|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3618939f', 'nufastreportobjects', 'zzzzsys_debug', 'input', 'field', 'Field Name', 'nu5bad6cb3734c18f', 20, 210, 289, 205, 20, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb361c6536', 'nusamplesubformform', '', 'input', 'todo', 'To Do List', 'nu5bad6cb37405d73', 50, 50, 150, 242, 20, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu59e446589a1fc46', 'nusample', '', 'html', 'htmlsample', '|HTML', 'nu5bad6cb370eb06a', 120, 224, 261, 176, 45, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', '', '', NULL, '<div id=\'adiv\' style=\'text-align:center;width:117px;height:45px;border:1px solid red;\' class=\'nuBreadcrumb\'>\n    Hello World\n</div>', '', '', '', '', '', ''),
('nu5bad6cb362370eb', 'nuhome', '', 'run', 'system_update', 'Update', 'nu5fd750667019155', 210, 155, 53, 195, 30, '0', 'center', '0', '0', '0', '', '', 'nuupdate', '', 'b', '0', 'F', '-1', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3625fd05', 'nuphp', 'zzzzsys_php', 'html', 'icon', ' ', 'nu5bad6cb36b27343', 90, 4, 369, 40, 40, '1', 'left', '1', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '<div></div>', '', '', '', '', '', ''),
('nu5bad6cb36283501', 'nuobject', 'zzzzsys_object', 'html', 'icon', ' ', 'nu5bad6cb369d0088', 630, 206, 55, 40, 36, '1', 'left', '1', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '<div></div>', '', '', '', '', '', ''),
('nu5bad6cb362a86e6', 'nuform', 'zzzzsys_form', 'html', 'icon', ' ', 'nu5bad6cb37026348', 340, 48, 52, 40, 36, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '<div></div>', '', '', '', '', '', ''),
('nu5bad6cb362c74c4', 'nutab', 'zzzzsys_tab', 'input', 'syt_help', 'Help', 'nu5bad6cb36c9250f', 30, 52, 100, 510, 20, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb362e7e3f', 'nufrlaunch', '', 'calc', 'used', 'Used', 'nu5bad6cb3737e773', 40, 588, 922, 70, 22, '1', 'right', '1', '0', '0', 'nuTotal(\'fast_report_sf.width\')', '', '', '', '', NULL, NULL, '', '', '0', '0', 'no|No|yes|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb36308045', 'nufrlaunch', '', 'calc', 'remaining', 'Remaining', 'nu5bad6cb3737e773', 50, 617, 922, 70, 22, '1', 'right', '1', '0', '0', '1150 - nuTotal(\'fast_report_sf.width\')', '', '', '', '', NULL, NULL, '', '', '0', '0', 'no|No|yes|Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb36334ee9', 'nufrlaunch', '', 'select', 'orderby', 'Order By', 'nu5bad6cb3737e773', 20, 63, 138, 256, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', ' |', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb363bb5b7', 'nuobject', 'zzzzsys_object', 'select', 'sob_html_chart_type', 'Chart Type', 'nu5bad6cb36a71012', 860, 39, 148, 250, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'p|Pie Graph|\nl|Line Graph|\nb|Bar Graph|\nbs|Bar Graph - Stacked|\nbh|Bar Graph - Horizontal|\nbhs|Bar Graph - Horizontal and Stacked\n\n\n\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3647b4cb', 'nuobject', 'zzzzsys_object', 'input', 'sob_html_title', 'Title', 'nu5bad6cb36a71012', 880, 97, 148, 250, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb364add63', 'nuobject', 'zzzzsys_object', 'input', 'sob_html_vertical_label', 'Vertical Label', 'nu5bad6cb36a71012', 890, 128, 148, 250, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb36568f2b', 'nuobject', 'zzzzsys_object', 'input', 'sob_html_horizontal_label', 'Horizontal Label', 'nu5bad6cb36a71012', 900, 158, 148, 250, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb3658e2e6', 'nuobject', 'zzzzsys_object', 'input', 'sob_html_javascript', 'JavaScript Array', 'nu5bad6cb36a71012', 870, 68, 148, 250, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb366a1df1', 'nuobject', 'zzzzsys_object', 'html', 'google_chart', ' ', 'nu5bad6cb36a71012', 920, 29, 435, 258, 192, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', 'b', '[[\'Month\', \'Shane\', \'Dave\', \'Adam\', \'Paul\', \'Chris\'],[\'2004\', 100, 200, 300, 400, 500],[\'2005\', 165, 238, 322, 498, 550],[\'2006\', 165, 938, 522, 998, 450],[\'2007\', 135, 1120, 599, 1268, 288],]', '1', '2', '3', ''),
('nu5bad6cb366c575f', 'nuobject', 'zzzzsys_object', 'word', 'wordor', 'OR...', 'nu5bad6cb36a71012', 910, 203, 148, 130, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5bad6cb366e865e', 'nufflaunch', '', 'input', 'fastform_fk', 'Foreign Key Field Name', 'nu5bad6cb36f36433', 30, 48, 934, 180, 22, '1', 'left', '1', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', 'nuFORM.getTables()', NULL, '', '', '', '', '', '', '');
INSERT INTO `zzzzsys_object` (`zzzzsys_object_id`, `sob_all_zzzzsys_form_id`, `sob_all_table`, `sob_all_type`, `sob_all_id`, `sob_all_label`, `sob_all_zzzzsys_tab_id`, `sob_all_order`, `sob_all_top`, `sob_all_left`, `sob_all_width`, `sob_all_height`, `sob_all_cloneable`, `sob_all_align`, `sob_all_validate`, `sob_all_access`, `sob_all_event`, `sob_calc_formula`, `sob_calc_format`, `sob_run_zzzzsys_form_id`, `sob_run_filter`, `sob_run_method`, `sob_run_target`, `sob_run_type`, `sob_run_id`, `sob_display_sql`, `sob_select_multiple`, `sob_select_2`, `sob_select_sql`, `sob_lookup_code`, `sob_lookup_description`, `sob_lookup_description_width`, `sob_lookup_autocomplete`, `sob_lookup_zzzzsys_form_id`, `sob_lookup_javascript`, `sob_lookup_php`, `sob_lookup_table`, `sob_subform_zzzzsys_form_id`, `sob_subform_foreign_key`, `sob_subform_add`, `sob_subform_delete`, `sob_subform_type`, `sob_subform_table`, `sob_input_count`, `sob_input_format`, `sob_input_type`, `sob_input_javascript`, `sob_input_datalist`, `sob_html_code`, `sob_html_chart_type`, `sob_html_javascript`, `sob_html_title`, `sob_html_vertical_label`, `sob_html_horizontal_label`, `sob_image_zzzzsys_file_id`) VALUES
('nu5bad6cb3670b7db', 'nubuildreport', 'zzzzsys_report', 'input', 'open_sql', 'Open', 'nu5bad6cb36804778', 70, 113, 667, 58, 22, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5bd10c9148543a6', 'nuaccess', 'zzzzsys_access', 'input', 'sal_description', 'Description', 'nu5bad6cb36ac903f', 30, 110, 115, 326, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5bef30c4f282d05', 'nufile', 'zzzzsys_file', 'html', 'corner', ' ', 'nu5bad6cb3719774c', 50, 546, 520, 14, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '', NULL, '<div></div>', '', '', '', '', '', ''),
('nu5dcf3068d69ee0a', 'nuphp', 'zzzzsys_php', 'input', 'sph_hide', 'Hide', 'nu5bad6cb36b27343', 50, 0, 0, 100, 22, '1', 'left', '0', '2', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5f711b9351ae752', 'nucsvtransfer', '', 'select', 'csv_transfer', 'Action', 'nu5f711b9343afdbd', 10, 53, 198, 170, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'export|Export to CSV File|import|Import from CSV File', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5f711b9352a6c59', 'nucsvtransfer', '', 'input', 'csv_from', '_________________________', 'nu5f711b9343afdbd', 20, 119, 198, 300, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '[1,2,3,4]', NULL, '', '', '', '', '', '', ''),
('nu5f711b9353c3c52', 'nucsvtransfer', '', 'select', 'csv_delimiter', 'Delimiter', 'nu5f711b9343afdbd', 30, 147, 198, 100, 22, '1', 'center', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '44|Comma|9|Tab|59|Semicolon', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5f711b9354c1105', 'nucsvtransfer', '', 'input', 'csv_to', '_________________________', 'nu5f711b9343afdbd', 40, 175, 198, 300, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5f712364d1b0afb', 'nuhome', '', 'run', 'run_csvtransfer', 'CSV Transfer', 'nu5fd750667019155', 220, 43, 270, 195, 30, '0', 'center', '0', '0', '0', '', '', 'nucsvtransfer', '', 'b', '0', 'F', '-1', '', '', '0', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fab2fb6e66f19b', 'nuformat', 'zzzzsys_format', 'input', 'places', 'Places', 'nu5bad6cb36fcbc18', 70, 136, 562, 52, 30, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', '[\"0\", \"1\", \"2\", \"3\", \"4\"]', '', '', '', '', '', '', ''),
('nu5fcef1492efb5a5', 'nuuser', 'zzzzsys_user', 'input', 'sus_code', 'Code', 'nu5bad6cb36b63cae', 90, 275, 167, 153, 22, '0', 'left', '3', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5fcef37de94381d', 'nuuser', 'zzzzsys_user', 'input', 'sus_team', 'Team', 'nu5bad6cb36b63cae', 100, 302, 167, 329, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5fcef39d0232810', 'nuuser', 'zzzzsys_user', 'input', 'sus_position', 'Position', 'nu5bad6cb36b63cae', 120, 356, 167, 329, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5fd29810a6409bc', 'nunotes', 'zzzzsys_note', 'input', 'not_title', 'Title', 'nu5fd29810a60df91', 10, 26, 26, 652, 24, '1', 'left', '3', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('nu5fd29810a644544', 'nunotes', 'zzzzsys_note', 'input', 'not_updated_on', 'Updated on', 'nu5fd29810a60df91', 40, 29, 1056, 130, 22, '1', 'left', '0', '1', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5fd29810a646742', 'nunotes', 'zzzzsys_note', 'editor', 'not_content', 'Content', 'nu5fd29810a60df91', 20, 60, 26, 1167, 460, '1', 'left', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('nu61262a401eea0eb', 'nutab', 'zzzzsys_tab', 'select', 'syt_access', 'Access', 'nu5bad6cb36c9250f', 30, 52, 100, 110, 20, '1', 'left', '0', '0', '0', '', '', '', '', '', '', '', '', '', '0', '0', '2|Hidden|3|Hidden (User)', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', '', '', '', '', '', '', '', ''),
('nu5fddb0a817e8bc2', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_id_datatype', 'Datatype', 'nu5bad6cb3686cb0d', 70, 138, 122, 157, 22, '1', 'left', '0', '1', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5fd3b22f8c32954', 'nunotescategroy', 'zzzzsys_note_category', 'input', 'noc_name', 'Categroy', 'nu5fd6f697276396f', 10, 30, 102, 150, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5fd3a61c5abb1b7', 'nunotes', 'zzzzsys_note', 'lookup', 'not_zzzzsys_note_category_id', 'Category', 'nu5fd29810a60df91', 30, 26, 720, 214, 24, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', 'noc_name', 'noc_name', '0', NULL, 'nunotescategroy', '', NULL, 'zzzzsys_note_category', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fd498c9745563b', 'nuuser', 'zzzzsys_user', 'input', 'sus_additional1', 'Additional 1', 'nu5bad6cb36b63cae', 140, 383, 167, 329, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5fd498d66e837da', 'nuuser', 'zzzzsys_user', 'input', 'sus_additional2', 'Additional 2', 'nu5bad6cb36b63cae', 150, 410, 167, 329, 24, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5fd757f9266ea99', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_validate_btn_none', 'None', 'nu5bad6cb3686cb0d', 360, 392, 344, 130, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5fd6f7819d659bc', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_cloneable_btn_yes', '✔ Yes', 'nu5bad6cb3686cb0d', 400, 425, 344, 60, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5fd6f828a1e42b1', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_cloneable_btn_no', '✖ No', 'nu5bad6cb3686cb0d', 410, 425, 414, 60, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5fd6fa0428adcd3', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_align_btn_left', '|Left', 'nu5bad6cb3686cb0d', 330, 359, 344, 130, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5fd6fbe95c2c61d', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_align_btn_right', 'Right', 'nu5bad6cb3686cb0d', 340, 359, 489, 130, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5fd6fc4a7ccf484', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_align_btn_center', 'Center', 'nu5bad6cb3686cb0d', 350, 359, 635, 130, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5fd6fdad38e8f5d', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_validate_btn_no_blanks', 'No Blanks', 'nu5bad6cb3686cb0d', 370, 392, 489, 130, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5fd6fddae953fd3', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_access_btn_hidden', 'Hidden', 'nu5bad6cb3686cb0d', 320, 326, 635, 130, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5fd6ff14ad0870d', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_access_btn_editable', 'Editable', 'nu5bad6cb3686cb0d', 300, 326, 344, 130, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5fd6ff6a0ef6017', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_access_btn_readonly', 'Readonly', 'nu5bad6cb3686cb0d', 310, 326, 489, 130, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5fd7583fbdb0750', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_validate_btn_no_duplicates', 'No Duplicates', 'nu5bad6cb3686cb0d', 380, 392, 636, 130, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5fd8f88a3539a40', 'nuhome', '', 'run', 'run_session', 'Sessions', 'nu5fd750667019155', 250, 99, 489, 195, 30, '0', 'center', '0', '0', '0', '', '', 'nusession', '', 'b', '0', 'F', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fdb1b5b3b7b123', 'nucodesnippet', 'zzzzsys_code_snippet', 'input', 'cot_code', 'Name', 'nu5fdb1b5b254566f', 10, 38, 166, 355, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5fdb1b5b3c86d2c', 'nucodesnippet', 'zzzzsys_code_snippet', 'textarea', 'cot_source_code', 'Source Code', 'nu5fdb1b5b254566f', 60, 249, 166, 654, 271, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fdb1b5b3d70508', 'nucodesnippet', 'zzzzsys_code_snippet', 'select', 'cot_language', 'Language', 'nu5fdb1b5b254566f', 40, 144, 166, 110, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'JavaScript|JavaScript|PHP|PHP|SQL|SQL|CSS|CSS|HTML|HTML\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fdb1b5b3e7727c', 'nucodesnippet', 'zzzzsys_code_snippet', 'select', 'cot_scope', 'Selectable in', 'nu5fdb1b5b254566f', 50, 171, 166, 195, 69, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '1', '0', '0|Forms / Custome Code|1|Setup / Header|2|SQL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fdb1b5b41b6fc4', 'nuhome', '', 'run', 'run_nucodesnippets', 'Code Snippets', 'nu5bad6cb36efb50c', 180, 99, 488, 195, 30, '0', 'center', '0', '0', '0', '', '', 'nucodesnippet', '', 'b', '0', 'F', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fdb1f7a0731ba4', 'nucodesnippet', 'zzzzsys_code_snippet', 'textarea', 'cot_description', 'Description', 'nu5fdb1b5b254566f', 20, 65, 166, 660, 40, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fdb21b2b2daac4', 'nucodesnippet', 'zzzzsys_code_snippet', 'input', 'cot_url', 'URL', 'nu5fdb1b5b254566f', 30, 117, 166, 660, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5fdb22ce4a13271', 'nuform', 'zzzzsys_form', 'lookup', 'sfo_code_snippet_lookup', 'Insert-Snippet', 'nu5bad6cb37026348', 350, 29, 950, 2, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'cot_code', 'cot_source_code', '0', NULL, 'nucodesnippet', 'var c = $(\'#sfo_code_snippet_paste\').val();\n\nif (c !== \'\') {\n   nuInsertTextAtCaret(nuGetProperty(\'js\'), c);\n   $(\'#sfo_code_snippet_lookupcode\').val(\'\');\n}\n\n\n\n', NULL, 'zzzzsys_code_snippet', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fdbb4226426ddb', 'nusetup', 'zzzzsys_setup', 'lookup', 'set_code_snippet_lookup', 'Insert-Snippet', 'nu5bad6cb36e9143a', 20, 38, 71, 2, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'cot_code', 'cot_source_code', '0', NULL, 'nucodesnippet', '\nvar c = $(\'#set_code_snippet_paste\').val();\n\nif (c !== \'\') {\n   nuInsertTextAtCaret(\'set_header\', c);\n   $(\'#set_code_snippet_lookupcode\').val(\'\');\n}\n\n\n\n', NULL, 'zzzzsys_code_snippet', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fdb25fd26d5e87', 'nuform', 'zzzzsys_form', 'textarea', 'sfo_code_snippet_paste', ' ', 'nu5bad6cb37026348', 320, 9, 710, 40, 40, '1', 'left', '0', '2', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fdbd8ae17c40b9', 'nuobject', 'zzzzsys_object', 'lookup', 'sob_code_snippet_display_lookup', 'Insert-Snippet', 'nu5bad6cb36974818', 540, 79, 613, 5, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'cot_code', 'cot_source_code', '0', NULL, 'nucodesnippet', '\nvar c = $(\'#sob_code_snippet_paste\').val();\n\nif (c !== \'\') {\n   nuInsertTextAtCaret(\'sob_display_sql\', c);\n   $(\'#sob_code_snippet_display_lookupcode\').val(\'\');\n}\n\n\n', NULL, 'zzzzsys_code_snippet', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fdbcb7f8f7e8a4', 'nucodesnippet', 'zzzzsys_code_snippet', 'input', 'cot_updated_on', 'Updated on', 'nu5fdb1b5b254566f', 70, 38, 698, 128, 22, '1', 'left', '0', '1', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5f9ab63acc9fd0f', 'nucloner', 'zzzzsys_cloner', 'input', 'clo_notes', 'Notes', 'nu5f9aaac95bc52e7', 150, 532, 129, 624, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu606c448e53cd465', 'nufflaunch', '', 'select', 'nuFFAvailableColumns', ' ', 'nu5bad6cb36f36433', 60, 132, 416, 249, 441, '1', 'center', '0', '0', '1', '', '', '', '', '', '', '', '', '', '1', '0', 'SELECT column_name, column_name\nFROM information_schema.columns\nWHERE  table_name = \'#fastform_table#\'\nAND table_schema = database()\nAND COLUMN_KEY <> \'PRI\'', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', ''),
('nu5f9ab977463753f', 'nucloner', 'zzzzsys_cloner', 'word', 'clo_form_dest_note', 'Leave blank to create a new form', 'nu5f9aaac95bc52e7', 110, 350, 155, 350, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '[\'North\',\'South\',\'East\',\'West\']', NULL, '', '', '', '', '', '', ''),
('nu5f9aaac9644de7e', 'nucloner', 'zzzzsys_cloner', 'input', 'clo_objects', 'Without Objects', 'nu5f9aaac95bc52e7', 120, 438, 271, 18, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu5f9ab0d78bb5520', 'nucloner', 'zzzzsys_cloner', 'select', 'clo_tabs', 'Tabs', 'nu5f9aaac95bc52e7', 50, 139, 155, 147, 96, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '1', '0', 'SELECT `zzzzsys_tab_id`, `syt_title` FROM `zzzzsys_tab` \nLEFT JOIN zzzzsys_form on syt_zzzzsys_form_id = zzzzsys_form_id\nWHERE zzzzsys_form_id = \'#clo_form_source#\'\nORDER BY `syt_order`', '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '[\'North\',\'South\',\'East\',\'West\']', NULL, '', '', '', '', '', '', ''),
('nu5f9ab47bbbe2540', 'nucloner', 'zzzzsys_cloner', 'html', 'clo_style', '  ', 'nu5f9aaac95bc52e7', 160, 31, 79, 18, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '', NULL, '<style>\n\nselect[multiple]{\n    box-sizing: content-box;\n    padding: 0 0 0 8px;\n}\n\n\n</style>', '', '', '', '', '', ''),
('nu60f98db26a2cfbc', 'nucloner', 'zzzzsys_cloner', 'contentbox', 'source_form_contentbox', 'Source Form', 'nu5f9aaac95bc52e7', 10, 32, 59, 700, 198, '1', 'left', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('nu60f98de922bd42b', 'nucloner', 'zzzzsys_cloner', 'contentbox', 'destination_form_contentbox', 'Destination Form', 'nu5f9aaac95bc52e7', 20, 273, 59, 700, 76, '1', 'left', '0', '0', '0', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', '', '', '', '', '', '', '', ''),
('nu60f98e098698b77', 'nucloner', 'zzzzsys_cloner', 'contentbox', 'options_contentbox', 'Options', 'nu5f9aaac95bc52e7', 30, 388, 59, 700, 90, '1', 'left', '0', '0', '0', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', '', '', '', '', '', '', '', ''),
('nu5fdba6246ffc449', 'nusetup', 'zzzzsys_setup', 'input', 'set_denied', 'Access denied', 'nu5bad6cb36d97acd', 70, 538, 181, 16, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, 'zzzzsys_timezone', '', '', '', '', '', '', 0, '', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu5fdbb8c159f4b90', 'nusetup', 'zzzzsys_setup', 'textarea', 'set_code_snippet_paste', ' ', 'nu5bad6cb36e9143a', 30, 125, 924, 40, 40, '1', 'left', '0', '2', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5f9aaac963ecc49', 'nucloner', 'zzzzsys_cloner', 'input', 'clo_dump', 'Dump SQL Statements', 'nu5f9aaac95bc52e7', 130, 438, 543, 18, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu5f9aaac963362ca', 'nucloner', 'zzzzsys_cloner', 'lookup', 'clo_form_dest', 'Form', 'nu5f9aaac95bc52e7', 100, 324, 155, 150, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', 'sfo_code', 'sfo_description', '250', '', 'nuform', '', '', 'zzzzsys_form', '', '', '', '', '', '', 0, '', '', '[\'North\',\'South\',\'East\',\'West\']', NULL, '', '', '', '', '', '', ''),
('nu5f9aaac962c91dd', 'nucloner', 'zzzzsys_cloner', 'lookup', 'clo_form_source', 'Form', 'nu5f9aaac95bc52e7', 40, 82, 155, 150, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', 'sfo_code', 'sfo_description', '335', '', 'nuform', 'nuRefreshSelectObject(\'clo_tabs\');\nnuRefreshSelectObject(\'clo_subforms\');\nnuRefreshSelectObject(\'clo_iframe_forms\');', '', 'zzzzsys_form', '', '', '', '', '', '', 0, '', '', '[\'North\',\'South\',\'East\',\'West\']', NULL, '', '', '', '', '', '', ''),
('nu5f9be5d9ed4f886', 'nucloner', 'zzzzsys_cloner', 'input', 'clo_dummy', '..', 'nu5f9aaac95bc52e7', 170, 20, 680, 10, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '', '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '[\'North\',\'South\',\'East\',\'West\']', NULL, '', '', '', '', '', '', ''),
('nu5f9d2633027c93e', 'nuhome', '', 'run', 'run_cloner', 'Cloner', 'nu5fd750667019155', 230, 99, 270, 195, 30, '0', 'center', '0', '0', '0', '', '', 'nucloner', '', 'b', '0', 'F', '', '', '', '0', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5f9d4ce275c966a', 'nucloner', 'zzzzsys_cloner', 'input', 'clo_new_pks', 'Generate new PKs', 'nu5f9aaac95bc52e7', 140, 468, 543, 18, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu5fa0ff78688e2c5', 'nucloner', 'zzzzsys_cloner', 'select', 'clo_subforms', 'Subforms', 'nu5f9aaac95bc52e7', 70, 139, 324, 157, 96, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '1', '0', 'SELECT \n    sob_subform_zzzzsys_form_id, sob_all_id\n    FROM zzzzsys_object \nWHERE sob_all_zzzzsys_form_id = \'#clo_form_source#\' AND sob_all_type = \'subform\'', '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '[\'North\',\'South\',\'East\',\'West\']', NULL, '', '', '', '', '', '', ''),
('nu5fa249be5df47ad', 'nucloner', 'zzzzsys_cloner', 'input', 'clo_subforms_include', ' ', 'nu5f9aaac95bc52e7', 60, 117, 324, 14, 14, '1', 'right', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu5fa2751ed4195b7', 'nucloner', 'zzzzsys_cloner', 'select', 'clo_iframe_forms', 'IFrame forms', 'nu5f9aaac95bc52e7', 90, 139, 503, 157, 96, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '1', '0', 'SELECT \n    `sob_run_zzzzsys_form_id`, sob_all_id\nFROM zzzzsys_object \nWHERE sob_all_zzzzsys_form_id =  \'#clo_form_source#\' AND sob_all_type = \'Run\'\nAND sob_run_method = \'i\' AND IFNULL(sob_run_zzzzsys_form_id,\'\') <> \'\'', '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '[\'North\',\'South\',\'East\',\'West\']', NULL, '', '', '', '', '', '', ''),
('nu5fa959f97244564', 'nucloner', 'zzzzsys_cloner', 'input', 'clo_iframe_forms_include', ' ', 'nu5f9aaac95bc52e7', 80, 118, 503, 14, 14, '1', 'right', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu5fdbdaee571fbb3', 'nuobject', 'zzzzsys_object', 'lookup', 'sob_code_snippet_select_lookup', 'Insert-Snippet', 'nu5bad6cb369a6ee3', 620, 81, 610, 5, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'cot_code', 'cot_source_code', '0', NULL, 'nucodesnippet', '\nvar c = $(\'#sob_code_snippet_paste\').val();\n\nif (c !== \'\') {\n   nuInsertTextAtCaret(\'sob_select_sql\', c);\n   $(\'#sob_code_snippet_select_lookupcode\').val(\'\');\n}\n\n\n', NULL, 'zzzzsys_code_snippet', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fdbd8ea4333ed2', 'nuobject', 'zzzzsys_object', 'textarea', 'sob_code_snippet_paste', ' ', 'nu5bad6cb36974818', 550, 69, 643, 5, 22, '1', 'right', '0', '2', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fdb9ff762770', 'nuform', 'zzzzsys_access', 'subform', 'accform', ' ', 'nu5fdb9ff026348', 360, 31, 20, 1168, 465, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', 'nu5fdb9ffd45efe', 'slf_zzzzsys_form_id', '1', '1', 'g', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fed8c73e475b16', 'nuform', 'zzzzsys_form', 'input', 'run_sfo_objects', 'Objects', 'nu5bad6cb36791fd5', 80, 32, 856, 155, 30, '1', 'center', '1', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'browse|Browse|\nedit|Edit|browseedit|\nBrowse and Edit|\nlaunch|Launch|\nsubform|Subform', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5fdb9ffe0330e', 'nu5fdb9ffd45efe', '', 'lookup', 'slf_zzzzsys_access_id', 'Access Level', 'nu5fdb9ffd6fbca', 10, 20, 250, 280, 20, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '', 'sal_code', 'sal_description', '300', '', 'nuaccess', '', '', 'zzzzsys_access', '', '', '1', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('6137704e8c4f3d8', 'nu5fdb9ffd45efe', '', 'select', 'slf_form_type', 'Form Type', 'nu5fdb9ffd6fbca', 80, 196, 88, 100, 17, '1', 'left', '0', '0', '0', '', '', '', '', '', '', '', '', '', '0', '0', '0|Browse Only|1|Edit Only', '', '', '', NULL, '', '', NULL, 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', ''),
('nu5fdb9ffe110d9', 'nu5fdb9ffd45efe', '', 'input', 'slf_add_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<span class=\'nuActionButton\'>Add</span>', 'nu5fdb9ffd6fbca', 20, 46, 79, 53, 15, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu5fdb9ffe1eb04', 'nu5fdb9ffd45efe', '', 'input', 'slf_save_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\'nuActionButton\'>Save</span>', 'nu5fdb9ffd6fbca', 40, 118, 79, 53, 15, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu5fdb9ffe2bdb4', 'nu5fdb9ffd45efe', '', 'input', 'slf_delete_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;<span class=\'nuActionButton\'>Delete</span>', 'nu5fdb9ffd6fbca', 60, 94, 79, 53, 15, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu5fdb9ffe390f2', 'nu5fdb9ffd45efe', '', 'input', 'slf_clone_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;<span class=\'nuActionButton\'>Clone</span>', 'nu5fdb9ffd6fbca', 50, 70, 79, 53, 15, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu5fdb9ffe4b29b', 'nu5fdb9ffd45efe', '', 'input', 'slf_print_button', '<br>&nbsp;&nbsp;&nbsp;&nbsp;<span class=\'nuActionButton\'>Print</span>', 'nu5fdb9ffd6fbca', 30, 22, 79, 53, 15, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', '', '', '', '', 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu5fdbd25d140ab', 'nu5fdb9ffd45aaa', 'zzzzsys_object', 'select', 'sob_all_zzzzsys_tab_id', 'Tab', 'nu5fdb9ffd6faaa', 10, 86, 83, 140, 20, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_tab_id,syt_title FROM zzzzsys_tab WHERE \nsyt_zzzzsys_form_id in (\'#record_id#\')', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fdbd25d14019', 'nu5fdb9ffd45aaa', 'zzzzsys_object', 'select', 'sob_all_type', 'Type', 'nu5fdb9ffd6faaa', 40, 60, 83, 140, 20, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'calc|Calc|\ndisplay|Display|\ncontentbox|ContentBox|\neditor|WYSIWYG Editor|\nhtml|HTML|\nimage|Image|\ninput|Input|\nlookup|Lookup|\nrun|Run|\nselect|Select|\nsubform|Subform|\ntextarea|Textarea|\nword|Word', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fdbd25d14189', 'nu5fdb9ffd45aaa', 'zzzzsys_object', 'input', 'sob_all_id', 'ID', 'nu5fdb9ffd6faaa', 30, 113, 83, 230, 20, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'nuScroll', 'nuFORM.tableSchema[$(\"#sob_all_table\").val()]?nuFORM.tableSchema[$(\"#sob_all_table\").val()].names:[]', NULL, '', '', '', '', '', '', ''),
('nu5fdbd25d142ab', 'nu5fdb9ffd45aaa', 'zzzzsys_object', 'input', 'sob_all_label', 'Label', 'nu5fdb9ffd6faaa', 50, 86, 83, 180, 20, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5fdbd25d144e1', 'nu5fdb9ffd45aaa', 'zzzzsys_object', 'input', 'sob_all_top', 'Top', 'nu5fdb9ffd6faaa', 70, 142, 83, 50, 20, '1', 'right', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'number', '', NULL, '', '', '', '', '', '', ''),
('nu5fdbd25d145fd', 'nu5fdb9ffd45aaa', 'zzzzsys_object', 'input', 'sob_all_left', 'Left', 'nu5fdb9ffd6faaa', 80, 169, 83, 50, 20, '1', 'right', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'number', '', NULL, '', '', '', '', '', '', ''),
('nu5fdbd25d1470e', 'nu5fdb9ffd45aaa', 'zzzzsys_object', 'input', 'sob_all_width', 'Width', 'nu5fdb9ffd6faaa', 90, 142, 200, 50, 20, '1', 'right', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'number', '', NULL, '', '', '', '', '', '', ''),
('nu5fdbd25d14825', 'nu5fdb9ffd45aaa', 'zzzzsys_object', 'input', 'sob_all_height', 'Height', 'nu5fdb9ffd6faaa', 100, 169, 200, 50, 20, '1', 'right', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'number', '', NULL, '', '', '', '', '', '', ''),
('nu5fdbd25d1496d', 'nu5fdb9ffd45aaa', 'zzzzsys_object', 'select', 'sob_all_cloneable', 'Cloneable', 'nu5fdb9ffd6faaa', 110, 142, 344, 66, 20, '1', 'right', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '0|No|1|Yes', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fdbd25d14a7a', 'nu5fdb9ffd45aaa', 'zzzzsys_object', 'select', 'sob_all_align', 'Align', 'nu5fdb9ffd6faaa', 120, 169, 344, 66, 20, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'left|Left|right|Right|center|Center', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fdbd25d14b7c', 'nu5fdb9ffd45aaa', 'zzzzsys_object', 'select', 'sob_all_validate', 'Validation', 'nu5fdb9ffd6faaa', 130, 142, 504, 110, 20, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '0|None|1|No Blanks|2|No Duplicates|3|No Blanks/Duplicates', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fdbd25d14ca4', 'nu5fdb9ffd45aaa', 'zzzzsys_object', 'select', 'sob_all_access', 'Access', 'nu5fdb9ffd6faaa', 140, 169, 504, 105, 20, '1', 'right', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '0|Editable|1|Readonly|2|Hidden|3|Hidden (User)', '', '', '', '0', '', '', '', 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fdbe049f365a', 'nu5fdb9ffd45aaa', 'zzzzsys_object', 'input', 'btnOpenDetails', '<i class=\"fa fa-ellipsis-v\" aria-hidden=\"true\"></i>', 'nu5fdb9ffd6faaa', 150, 247, 146, 45, 20, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5fdcde23d2db265', 'nuform', 'zzzzsys_form', 'input', 'width_setter', '°°', 'nu5bad6cb36791fd5', 110, 32, 1000, 30, 22, '1', 'left', '0', '2', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'browse|Browse|\nedit|Edit|browseedit|\nBrowse and Edit|\nlaunch|Launch|\nsubform|Subform', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5fdcef9a8e8c47c', 'nuform', 'zzzzsys_form', 'lookup', 'sfo_code_snippet_sql_lookup', 'Insert-Snippet', 'nu5bad6cb36757b92', 190, 342, 108, 2, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'cot_code', 'cot_source_code', '0', NULL, 'nucodesnippet', 'var c = $(\'#sfo_code_snippet_paste\').val();\n\nif (c !== \'\') {\n   nuInsertTextAtCaret(\'sfo_browse_sql\', c);\n   $(\'#sfo_code_snippet_sql_lookupcode\').val(\'\');\n}\n\n\n\n', NULL, 'zzzzsys_code_snippet', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fde5c8f1e64a86', 'nuselect', 'zzzzsys_select', 'lookup', 'sse_code_snippet_lookup', 'Insert-Snippet', 'nu5bad6cb371e2de7', 100, 39, 743, 5, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'cot_code', 'cot_source_code', '0', NULL, 'nucodesnippet', '\nvar c = $(\'#sse_code_snippet_paste\').val();\n\nif (c !== \'\') {\n   nuInsertTextAtCaret(\'sse_sql\', c);\n   $(\'#sse_code_snippet_lookupcode\').val(\'\');\n}\n\n\n', NULL, 'zzzzsys_code_snippet', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fde5d5ad6f69ec', 'nuselect', 'zzzzsys_select', 'textarea', 'sse_code_snippet_paste', ' ', 'nu5bad6cb371e2de7', 110, 21, 1093, 5, 22, '1', 'right', '0', '2', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5feb9ff762770', 'nubuildreport', 'zzzzsys_access', 'subform', 'accrept', ' ', 'nu5fdf7fc6680a0b2', 90, 34, 56, 460, 489, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', 'nu5feb9ffd45efe', 'sre_zzzzsys_report_id', '1', '1', 'g', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5feb9ffe0330e', 'nu5feb9ffd45efe', '', 'select', 'sre_zzzzsys_access_id', 'Access levels that can use this report', 'nu5feb9ffd6fbca', 10, 300, 250, 400, 20, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT `zzzzsys_access_id`, CONCAT(`sal_code`,\" : \",`sal_description`) FROM `zzzzsys_access` ORDER BY 2', '', '', '', '', '', '', '', 'zzzzsys_form', '', '', '1', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fee9ff762770', 'nuphp', 'zzzzsys_access', 'subform', 'accphp', ' ', 'nu5fdf7df2d873dd1', 120, 93, 56, 459, 459, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', 'nu5fee9ffd45efe', 'slp_zzzzsys_php_id', '1', '1', 'g', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fee9ffe0330e', 'nu5fee9ffd45efe', '', 'select', 'slp_zzzzsys_access_id', 'Access Level', 'nu5fee9ffd6fbca', 10, 300, 250, 400, 20, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_access_id, CONCAT(sal_code, \' : \', sal_description) FROM zzzzsys_access ORDER BY 2', '', '', '', '', '', '', '', 'zzzzsys_form', '', '', '1', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fdfbfcaeea14a6', 'nuuser', 'zzzzsys_user', 'input', 'sus_expires_on', 'Expires On', 'nu5bad6cb36b63cae', 160, 455, 167, 84, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, 'D|yyyy-mm-dd', 'nuDate', '', NULL, '', '', '', '', '', '', ''),
('nu5fe038d847fbb70', 'nuuser', 'zzzzsys_user', 'input', 'sus_password_show_btn', 'Show', 'nu5bad6cb36b63cae', 60, 171, 389, 16, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu5fe0547b82db3de', 'nuauthentication', '', 'input', 'auth_code', 'Code', 'nu5fe0547b76e25d6', 10, 248, 74, 150, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5fe0547b841fb32', 'nuauthentication', '', 'input', 'auth_verify_btn', 'Verify', 'nu5fe0547b76e25d6', 40, 279, 74, 117, 22, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5fe19f9d396cc05', 'nusetup', 'zzzzsys_setup', 'display', 'set_db_version', 'DB', 'nu5fe19e93306dd6e', 200, 92, 110, 149, 22, '1', 'center', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', 'SELECT `inf_details` FROM `zzzzsys_info` WHERE `inf_code` = \'nuDBVersion\'', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5fe19fb39693948', 'nusetup', 'zzzzsys_setup', 'display', 'set_files_version', 'Files', 'nu5fe19e93306dd6e', 230, 125, 110, 149, 22, '1', 'center', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', 'SELECT `inf_details` FROM `zzzzsys_info` WHERE `inf_code` = \'nuFilesVersion\'', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5fe1a0f0c355360', 'nusetup', 'zzzzsys_setup', 'display', 'set_db_version_user', 'DB Version', 'nu5bad6cb36d97acd', 80, 45, 182, 128, 22, '1', 'center', '0', '1', '0', '', '', '', '', '', NULL, NULL, '', 'SELECT `inf_details` FROM `zzzzsys_info` WHERE `inf_code` = \'nuDBVersion\'', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5fe1a1310d52cd7', 'nusetup', 'zzzzsys_setup', 'display', 'set_files_version_user', 'Files Version', 'nu5bad6cb36d97acd', 90, 72, 181, 128, 22, '1', 'center', '0', '1', '0', '', '', '', '', '', NULL, NULL, '', 'SELECT `inf_details` FROM `zzzzsys_info` WHERE `inf_code` = \'nuFilesVersion\'', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5fe1aeac3363ae7', 'nusetup', 'zzzzsys_setup', 'input', 'set_db_version_inc_btn', '<i class=\"fa fa-plus\" aria-hidden=\"true\"></i>', 'nu5fe19e93306dd6e', 210, 90, 278, 30, 21, '1', 'center', '1', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5fe1af2e2b4455a', 'nusetup', 'zzzzsys_setup', 'input', 'set_db_version_inc', 'DB New', 'nu5fe19e93306dd6e', 220, 92, 410, 149, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5fe1b155aed9e46', 'nusetup', 'zzzzsys_setup', 'input', 'set_files_version_inc_btn', '<i class=\"fa fa-plus\" aria-hidden=\"true\"></i>', 'nu5fe19e93306dd6e', 240, 125, 278, 30, 21, '1', 'center', '1', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5fe1b199e2c233e', 'nusetup', 'zzzzsys_setup', 'input', 'set_files_version_inc', 'Files New', 'nu5fe19e93306dd6e', 260, 125, 410, 149, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5fe1bb063e6bc77', 'nusetup', 'zzzzsys_setup', 'word', 'set_versions_increase_word', 'Increase Versions', 'nu5fe19e93306dd6e', 290, 39, 67, 149, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fe1bbb6cc15263', 'nusetup', 'zzzzsys_setup', 'input', 'set_dev_reset_tables', 'Reset Tables', 'nu5fe19e93306dd6e', 280, 229, 151, 16, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu5ff0352f501ba8c', 'nuobject', 'zzzzsys_object', 'input', 'sob_calc_formula_edit_mode_checkbox', 'Edit manually', 'nu5bad6cb36f99a7e', 970, 15, 630, 16, 22, '1', 'right', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT \n   CONCAT(LEFT(srm_type, 1), \'|\', TRIM(srm_format)) AS a, \n   srm_format AS b \nFROM zzzzsys_format\nWHERE srm_type = \'Number\'', '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu5fe2be48bf89e9e', 'nuaccessforms', 'zzzzsys_access_form', 'select', 'slf_data_mode', 'Data Mode', 'nu5bad6cb36b994d2', 70, 196, 88, 100, 17, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '0|No Edits', '', '', '', NULL, '', '', NULL, 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fe94c6815842ec', 'nuphp', 'zzzzsys_php', 'lookup', 'sph_code_snippet_select_lookup', 'Insert-Snippet', 'nu5bad6cb36b27343', 110, 140, 881, 5, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', 'cot_code', 'cot_source_code', '0', NULL, 'nucodesnippet', '\nvar c = $(\'#sph_code_snippet_paste\').val();\n\nif (c !== \'\') {\n   nuInsertTextAtCaret(\'sob_select_sql\', c);\n   $(\'#sph_code_snippet_select_lookupcode\').val(\'\');\n}\n\n\n', NULL, 'zzzzsys_code_snippet', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fe94c931478ff2', 'nuphp', 'zzzzsys_php', 'textarea', 'sph_code_snippet_paste', ' ', 'nu5bad6cb36b27343', 100, 100, 643, 5, 22, '1', 'right', '0', '2', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5feb70700c7bfc2', 'nuupdate', '', 'html', 'upd_html', ' ', 'nu5feb70e6a6b9cf8', 10, 0, 10, 1000, 800, '1', 'center', '0', '0', '0', '', '', 'nunotes', '', 'b', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '', NULL, '<iframe id=\"updateiframe\" src=\"update.htm?id=#SESSION_ID#\" width=\"1200\" height=\"800\"</iframe>\n', '', '', '', '', '', ''),
('nu5fed7cde6f84b9e', 'nuobjectgrid', 'zzzzsys_object', 'subform', 'objform', ' ', 'nu5fed7cde6151088', 10, 12, 7, 1387, 624, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', 'nu5fdb9ffd45aaa', 'sob_all_zzzzsys_form_id', '1', '1', 'g', 'zzzzsys_object', 89, 'N|$ 1,000.00', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fed812c36293e7', 'nuobjectgrid', 'zzzzsys_object', 'input', 'sfo_description', 'Description', 'nu5fed7cde6151088', 20, 0, 0, 40, 22, '1', 'right', '0', '2', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', 'nu5fdb9ffd45aaa', 'sob_all_zzzzsys_form_id', '1', '1', 'g', 'zzzzsys_object', 89, 'N|$ 1,000.00', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5feda5bd4324ece', 'nuobjectgrid', 'zzzzsys_object', 'input', 'sfo_code', 'Code', 'nu5fed7cde6151088', 30, 20, 0, 40, 22, '1', 'right', '0', '2', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', 'nu5fdb9ffd45aaa', 'sob_all_zzzzsys_form_id', '1', '1', 'g', 'zzzzsys_object', 89, 'N|$ 1,000.00', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5feded627aebfed', 'nuobjectgrid', 'zzzzsys_object', 'select', 'sfo_tabs_filter', ' ', 'nu5fed7cde6151088', 40, 5, 109, 132, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_tab_id, syt_title FROM zzzzsys_tab\nJOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id\nWHERE zzzzsys_form_id = \'#record_id#\'\nORDER BY syt_order', '', '', '', NULL, '', '', NULL, '', 'nu5fdb9ffd45aaa', 'sob_all_zzzzsys_form_id', '1', '1', 'g', 'zzzzsys_object', 89, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5ff2c03acc8a591', 'nuphp', 'zzzzsys_php', 'input', 'sph_global', 'Global Access', 'nu5fdf7df2d873dd1', 130, 59, 496, 16, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu5ff32fdadb8f46f', 'nuobject', 'zzzzsys_object', 'input', 'sob_lookup_zzzzsys_form_open_button', '<i class=\"fa fa-external-link\" aria-hidden=\"true\"></i>', 'nu5bad6cb369d0088', 710, 33, 657, 40, 22, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', '', '', '', NULL, '', '', NULL, '', 'nuform', '', '1', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', '');
INSERT INTO `zzzzsys_object` (`zzzzsys_object_id`, `sob_all_zzzzsys_form_id`, `sob_all_table`, `sob_all_type`, `sob_all_id`, `sob_all_label`, `sob_all_zzzzsys_tab_id`, `sob_all_order`, `sob_all_top`, `sob_all_left`, `sob_all_width`, `sob_all_height`, `sob_all_cloneable`, `sob_all_align`, `sob_all_validate`, `sob_all_access`, `sob_all_event`, `sob_calc_formula`, `sob_calc_format`, `sob_run_zzzzsys_form_id`, `sob_run_filter`, `sob_run_method`, `sob_run_target`, `sob_run_type`, `sob_run_id`, `sob_display_sql`, `sob_select_multiple`, `sob_select_2`, `sob_select_sql`, `sob_lookup_code`, `sob_lookup_description`, `sob_lookup_description_width`, `sob_lookup_autocomplete`, `sob_lookup_zzzzsys_form_id`, `sob_lookup_javascript`, `sob_lookup_php`, `sob_lookup_table`, `sob_subform_zzzzsys_form_id`, `sob_subform_foreign_key`, `sob_subform_add`, `sob_subform_delete`, `sob_subform_type`, `sob_subform_table`, `sob_input_count`, `sob_input_format`, `sob_input_type`, `sob_input_javascript`, `sob_input_datalist`, `sob_html_code`, `sob_html_chart_type`, `sob_html_javascript`, `sob_html_title`, `sob_html_vertical_label`, `sob_html_horizontal_label`, `sob_image_zzzzsys_file_id`) VALUES
('nu5ff48b9c35a7beb', 'nuemailtest', '', 'input', 'set_smtp_from_address', 'From Address', 'nu5ff48b9c18dbf6f', 10, 49, 148, 300, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5ff48b9c3634db8', 'nuemailtest', '', 'input', 'set_smtp_from_name', 'From Name', 'nu5ff48b9c18dbf6f', 20, 76, 148, 300, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5ff48b9c3731e32', 'nuemailtest', '', 'textarea', 'ema_body', 'Body', 'nu5ff48b9c18dbf6f', 70, 229, 148, 300, 100, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '[\'North\',\'South\',\'East\',\'West\']', NULL, '', '', '', '', '', '', ''),
('nu5ff4a82b76d96d6', 'nusetup', 'zzzzsys_setup', 'input', 'set_nuemailtest_button', 'Test Email', 'nu5bad6cb36e31edf', 190, 390, 167, 180, 39, '1', 'center', '1', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5ff48b9c37be944', 'nuemailtest', '', 'input', 'ema_to', 'To', 'nu5ff48b9c18dbf6f', 30, 110, 148, 300, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5ff48b9c3846ee2', 'nuemailtest', '', 'input', 'ema_cc', 'CC', 'nu5ff48b9c18dbf6f', 40, 137, 148, 300, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5ff48b9c38e471a', 'nuemailtest', '', 'input', 'ema_bcc', 'BCC', 'nu5ff48b9c18dbf6f', 50, 164, 148, 300, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5ff5afe5716ed04', 'nusetup', 'zzzzsys_setup', 'select', 'set_smtp_use_ssl', 'Use SSL', 'nu5bad6cb36e31edf', 180, 328, 167, 59, 22, '1', 'left', '1', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '0|No|1|Yes', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5ff4b1040dfffd1', 'nuemailtest', '', 'input', 'ema_subject', 'Subject', 'nu5ff48b9c18dbf6f', 60, 201, 148, 300, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu5ff4b56934a1973', 'nuemailtest', '', 'input', 'ema_save_data', '<i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i>', 'nu5ff48b9c18dbf6f', 80, 353, 323, 50, 22, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5ff4b5f53f85f69', 'nuemailtest', '', 'input', 'ema_load_data', '<i class=\"fa fa-arrow-circle-o-up\" aria-hidden=\"true\"></i>', 'nu5ff48b9c18dbf6f', 90, 353, 398, 50, 22, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5ff5b7b1b918a4b', 'nuobject', 'zzzzsys_object', 'input', 'sob_run_zzzzsys_form_open_button', '<i class=\"fa fa-external-link\" aria-hidden=\"true\"></i>', 'nu5bad6cb368d9c40', 530, 34, 644, 40, 22, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', '', '', '', NULL, '', '', NULL, '', 'nuform', '', '1', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu60013e0626d80ce', 'nuobject', 'zzzzsys_object', 'input', 'sob_subform_zzzzsys_form_open_button', '<i class=\"fa fa-external-link\" aria-hidden=\"true\"></i>', 'nu5bad6cb36a1c024', 780, 38, 679, 40, 22, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', '', '', '', NULL, '', '', NULL, '', 'nuform', '', '1', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu60028804f043b86', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_type_open_button', '<i class=\"fa fa-external-link\" aria-hidden=\"true\"></i>', 'nu5bad6cb3686cb0d', 440, 58, 267, 24, 22, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', 'SELECT zzzzsys_form_id, CONCAT(sfo_code, \' - \', sfo_description)\nFROM zzzzsys_form\nORDER BY sfo_code', '', '', '', NULL, '', '', NULL, '', 'nuform', '', '1', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5ff727ad6f17b85', 'nuuser', 'zzzzsys_user', 'input', 'sus_zzzzsys_access_id_open_button', '<i class=\"fa fa-external-link\" aria-hidden=\"true\">', 'nu5bad6cb36b63cae', 170, 59, 743, 40, 22, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'button', '', NULL, '', '', '', '', '', '', ''),
('nu5ffab1ab3b16807', 'nu5fdb9ffd45efe', '', 'select', 'slf_data_mode', 'Data Mode', 'nu5fdb9ffd6fbca', 70, 196, 88, 100, 17, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '0|No Edits', '', '', '', NULL, '', '', NULL, 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu6004139ce814db8', 'nusetup', 'zzzzsys_setup', 'select', 'set_languages_included', 'Included Languages', 'nu5bad6cb36d97acd', 50, 160, 181, 128, 300, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '1', '0', '%LANGUAGES%', '', '', '', NULL, '', '', NULL, 'zzzzsys_timezone', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu6006ecf9d0b4ceb', 'nuobject', 'zzzzsys_object', 'input', 'sob_select_2', 'Select2', 'nu5bad6cb369a6ee3', 600, 76, 94, 16, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'checkbox', '', NULL, '', '', '', '', '', '', ''),
('nu60085a561599dfd', 'nuobject', 'zzzzsys_object', 'textarea', 'sob_input_datalist', 'Datalist', 'nu5bad6cb36a4af06', 840, 104, 239, 436, 60, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu6058b68e8111857', 'nuauthentication', '', 'html', 'lab01', ' ', 'nu5fe0547b76e25d6', 30, 42, 74, 1000, 22, '1', 'left', '0', '1', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '', '', '<div id=\'authlabel\' style=\'text-align:left; font-size:14px; \'>\n    \n<b>2 Factor Authentication</b><br><br>\nClick \'Send token\' to send an email containing a security code to the registered email address for this account.<br>Please check  in spam/junk mail.\n<br><br>The verified token will be remembered on this device for 7 days. \n			\n</div>	', '', '', '', '', '', ''),
('nu60510d8a0496fd5', 'nuauthentication', '', 'input', 'send_token_btn', 'Send token', 'nu5fe0547b76e25d6', 50, 197, 74, 117, 22, '1', 'center', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, 'N|$ 1,000.00', 'button', '', '', '', '', '', '', '', '', ''),
('nu605b522d65c642a', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_validate_btn_no_duplicates_or_blanks', 'No Duplicates/Blanks', 'nu5bad6cb3686cb0d', 390, 392, 780, 170, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', NULL, NULL, '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', '', '', '', '', '', '', '', ''),
('nu605dd92cf01da60', 'nuform', 'zzzzsys_form', 'select', 'sfo_browse_title_multiline', 'Multiline Titles', 'nu5bad6cb36757b92', 160, 32, 600, 70, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '0', '0|No|1|Yes', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', ''),
('nu606585106dffa9d', 'nuobject', 'zzzzsys_object', 'select', 'sob_run_target', 'Target', 'nu5bad6cb368d9c40', 510, 154, 85, 200, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', 'n', NULL, '', '', '0', '0', '0|New Breadcrumb|\n1|Current Breadcrumb|\n2|New tab|\n3|Popup', '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', ''),
('nu6068360aa0d3dca', 'nuobject', 'zzzzsys_object', 'input', 'sob_run_type', 'Run Type', 'nu5bad6cb368d9c40', 520, 94, 424, 50, 22, '1', 'left', '0', '2', '0', '', '', '', '', '', '', NULL, '', '', '0', '0', '', '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', '', '', '', '', '', '', ''),
('nu6068770730f8338', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_event', 'Events', 'nu5bad6cb3686cb0d', 450, 79, 0, 72, 22, '1', 'left', '0', '2', '0', '', '', '', '', '', '', '', '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'checkbox', '', '', '', '', '', '', '', '', ''),
('nu60689be08a368ab', 'nuadddbcolumn', '', 'word', 'sql_query_word', '<n></n>', 'nu60689be0792e7ca', 10, 37, 70, 300, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '[\'North\',\'South\',\'East\',\'West\']', NULL, '', '', '', '', '', '', ''),
('nu60689be08b67d8b', 'nuadddbcolumn', '', 'select', 'sql_after_column', 'After', 'nu60689be0792e7ca', 30, 126, 65, 250, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '0', '1', 'SELECT column_name, column_name\nFROM information_schema.columns\nWHERE  table_name = \'#sob_all_table#\'\nAND table_schema = database()', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', ''),
('nu60691e567cd0eb9', 'nuadddbcolumn', '', 'textarea', 'sql_query', 'SQL', 'nu60689be0792e7ca', 20, 64, 65, 500, 41, '1', 'left', '0', '0', '0', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '[\'North\',\'South\',\'East\',\'West\']', '', '', '', '', '', '', '', ''),
('nu6068a0285e3c1b1', 'nuobject', 'zzzzsys_object', 'run', 'sob_all_id_create_button', '<i class=\"fa fa-plus-square-o\" aria-hidden=\"true\"></i>', 'nu5bad6cb3686cb0d', 460, 111, 469, 30, 22, '1', 'center', '0', '0', '0', '', '', 'nuadddbcolumn', '', 'b', '3', 'F', '', '', '0', '0', '', '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', ''),
('nu606f399ea7b558f', 'nufflaunch', '', 'input', 'fastform_prefix', ' ', 'nu5bad6cb36f36433', 40, 12, 934, 100, 22, '1', 'center', '0', '0', '1', '', '', '', '', '', '', '', '', '', '0', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', 'nuFORM.getTables()', '', '', '', '', '', '', '', ''),
('nu606df60755d4a22', 'nufflaunch', '', 'input', 'ff_hide_used_checkbox', 'Hide used', 'nu5bad6cb36f36433', 100, 576, 647, 20, 22, '1', 'center', '0', '2', '0', '', '', '', '', '', '', '', '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'checkbox', '', '', '', '', '', '', '', '', ''),
('nu606c617681a8478', 'nufflaunch', '', 'word', 'availablecolumnswrd', 'Available Fields', 'nu5bad6cb36f36433', 110, 87, 416, 249, 22, '1', 'center', '0', '0', '0', '', '', '', '', '', '', '', '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', ''),
('nu60741457ef6f315', 'nufastformobjects', 'zzzzsys_object', 'select', 'ff_type', 'Object Type', 'nu5bad6cb36f72f8e', 40, 98, 23, 150, 20, '1', 'left', '1', '0', '1', '', '', '', '', '', '', '', '', '', '0', '0', 'nu59e446589a370ca|Text|\nnu59e446589adce4d|Button|\nnu59e446589b4c69b|Checkbox|\nnu59e446589bce3d7|nuAutoNumber|\nnu59e446589b61190|nuScroll|\nnu59e446589b0af4c|nuDate|\nnu59e446589b20a14|nuNumber|\nnu59e446589af5d86|Number|\nnu59e446589cf91a2|File|\nnu59e446589ac75be|Word|\nnu59e446589b3714b|Calc|\nnu59e446589a4d76a|Display|\nnu59e446589ab1797|Lookup|\nnu59e446589a1fc46|HTML|\nnu59e446589a6400f|Select|\nnu59e446589a9b145|Multiselect|\nnu59e446589b75a6d|Textarea|\nnu59e446589d1c64d|Image|\nnu59e44658a0c7724|Subform', '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', ''),
('nu59e44658a0c7724', 'nusample', '', 'subform', 'subformsample', 'Subform', 'nu5bad6cb3732c76e', 110, 53, 260, 300, 250, '1', 'right', '0', '0', NULL, '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', 'nusamplesubformform', 'zzzzsys_debug_id', '1', '1', 'g', '', 89, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu59e44658a2b25af', 'nusample', '', 'word', 'labelbutton', '|Button', 'nu5bad6cb373c384f', 100, 42, 114, 40, 22, '1', 'right', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu5fd3973a43f3930', 'nuhome', '', 'run', 'run_note', 'Notes', 'nu5bad6cb367c5125', 100, 99, 703, 195, 30, '1', 'center', '0', '0', '0', '', '', 'nunotes', '', 'b', '0', 'F', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', NULL, '', '', '', '', '', '', ''),
('nu60899b5088f4df6', 'nuselect', 'zzzzsys_select', 'input', 'sse_code', 'Code', 'nu5bad6cb371e2de7', 10, 10, 85, 195, 22, '0', 'left', '2', '0', '0', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', '', '', '', '', '', '', '', ''),
('nu60c43dad15e641e', 'nuphp', 'zzzzsys_php', 'word', 'wrdaccesslevel', 'Access levels that can use this procedure', 'nu5fdf7df2d873dd1', 140, 25, 57, 700, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', ''),
('nu60e96ee3e51e1bb', 'nuobject', 'zzzzsys_object', 'input', 'sob_top_btn_increase_27', '+27', 'nu5bad6cb3686cb0d', 160, 192, 193, 50, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', '', '', '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', '', '', '', '', '', '', '', ''),
('nu60e9719f5d9bc8b', 'nuobject', 'zzzzsys_object', 'input', 'sob_height_btn_set_100', '100', 'nu5bad6cb3686cb0d', 250, 279, 193, 50, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', '', '', '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', '', '', '', '', '', '', '', ''),
('nu60e971e1676ca2d', 'nuobject', 'zzzzsys_object', 'input', 'sob_height_btn_set_200', '200', 'nu5bad6cb3686cb0d', 260, 279, 253, 50, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', '', '', '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', '', '', '', '', '', '', '', ''),
('nu60e97221bb95958', 'nuobject', 'zzzzsys_object', 'input', 'sob_height_btn_set_300', '300', 'nu5bad6cb3686cb0d', 270, 279, 313, 50, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', '', '', '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', '', '', '', '', '', '', '', ''),
('nu60e9724c1fdd7c5', 'nuobject', 'zzzzsys_object', 'input', 'sob_height_btn_set_400', '400', 'nu5bad6cb3686cb0d', 280, 279, 370, 50, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', '', '', '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', '', '', '', '', '', '', '', ''),
('nu60e9a848a6a6117', 'nuaccessforms', 'zzzzsys_access_form', 'select', 'slf_form_type', 'Form Type', 'nu5bad6cb36b994d2', 70, 196, 88, 100, 17, '1', 'left', '0', '0', '0', '', '', '', '', '', '', '', '', '', '0', '0', '0|Browse Only|1|Edit Only', '', '', '', NULL, '', '', NULL, 'zzzzsys_form', 'nuform', '', '1', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', ''),
('nu60e9732db2a4125', 'nuobject', 'zzzzsys_object', 'input', 'sob_width_btn_set_100', '100', 'nu5bad6cb3686cb0d', 190, 250, 193, 50, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', '', '', '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', '', '', '', '', '', '', '', ''),
('nu60e973518a26f21', 'nuobject', 'zzzzsys_object', 'input', 'sob_width_btn_set_200', '200', 'nu5bad6cb3686cb0d', 200, 250, 253, 50, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', '', '', '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', '', '', '', '', '', '', '', ''),
('nu60e9736508a9b31', 'nuobject', 'zzzzsys_object', 'input', 'sob_width_btn_set_300', '300', 'nu5bad6cb3686cb0d', 210, 250, 313, 50, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', '', '', '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', '', '', '', '', '', '', '', ''),
('nu60e973b6711a030', 'nuobject', 'zzzzsys_object', 'input', 'sob_width_btn_set_400', '400', 'nu5bad6cb3686cb0d', 220, 250, 371, 50, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', '', '', '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', '', '', '', '', '', '', '', ''),
('nu60e974dd2df427c', 'nuobject', 'zzzzsys_object', 'input', 'sob_width_btn_set_700', '700', 'nu5bad6cb3686cb0d', 230, 250, 428, 50, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', '', '', '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', '', '', '', '', '', '', '', ''),
('nu60e975102462aff', 'nuobject', 'zzzzsys_object', 'input', 'sob_height_btn_set_700', '700', 'nu5bad6cb3686cb0d', 290, 279, 428, 50, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', '', '', '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', '', '', '', '', '', '', '', ''),
('nu60e97569692fac5', 'nuobject', 'zzzzsys_object', 'input', 'sob_width_btn_set_1000', '1000', 'nu5bad6cb3686cb0d', 240, 250, 486, 50, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', '', '', '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', '', '', '', '', '', '', '', ''),
('nu60e975e932d74ef', 'nuobject', 'zzzzsys_object', 'input', 'sob_left_btn_increase', '+50', 'nu5bad6cb3686cb0d', 180, 221, 193, 50, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', '', '', '', '', '0', '0', NULL, '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', '', '', '', '', '', '', '', ''),
('nu60eed5345aa79e5', 'nufflaunch', '', 'input', 'check_nulog', 'Add nulog Column', 'nu5bad6cb36f36433', 130, 583, 1152, 16, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'checkbox', '', '', '', '', '', '', '', '', ''),
('nu60f12beaa64b371', 'nuhome', '', 'input', 'run_backup', 'Backup', 'nu5fd750667019155', 200, 99, 53, 195, 30, '0', 'center', '0', '0', '1', '', '', '', '', '', '0', '', '', '', '0', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'button', '', '', '', '', '', '', '', '', ''),
('nu60f3f95b66732d1', 'nuhome', '', 'input', 'run_refresh_cache', 'Cache', 'nu5fd750667019155', 240, 43, 489, 195, 30, '0', 'center', '0', '0', '1', '', '', '', '', '', '0', '', '', '', '0', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'button', '', '', '', '', '', '', '', '', ''),
('nu60f8fad0c38561a', 'nuaccess', 'zzzzsys_access', 'display', 'access_id', 'ID', 'nu5bad6cb36ac903f', 40, 165, 115, 110, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', '', '', '', 'SELECT IF(\'#RECORD_ID#\' = \'-1\',\'\',\'#RECORD_ID#\')', '0', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', ''),
('nu60f8fd56e325e76', 'nuobject', 'zzzzsys_object', 'input', 'sob_top_btn_increase_50', '+50', 'nu5bad6cb3686cb0d', 170, 192, 253, 50, 22, '1', 'left', '0', '0', '1', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'button', '', '', '', '', '', '', '', '', ''),
('nu60f84d84220174d', 'nuform', 'zzzzsys_form', 'input', 'sfo_breadcrumb_title', 'Breadcrumb Title', 'nu5bad6cb36791fd5', 40, 113, 142, 377, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', '', '', '', '', '0', '0', 'browse|Browse|edit|Edit|browseedit|Browse and Edit|criteria|Criteria or Home|procedure|Procedure|report|Report', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', '', '', '', '', '', '', '', ''),
('nu5fe034cd38a5270', 'nuuser', 'zzzzsys_user', 'input', 'sus_department', 'Department', 'nu5bad6cb36b63cae', 110, 329, 167, 329, 22, '1', 'left', '0', '0', '0', '', '', '', '', '', NULL, NULL, '', '', '', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'text', '', NULL, '', '', '', '', '', '', ''),
('nu610a662e2e599c2', 'nuform', 'zzzzsys_form', 'input', 'js_browse_edit', 'Browse & Edit', 'nu5bad6cb37026348', 230, 98, 42, 155, 29, '1', 'center', '0', '0', '1', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'button', '', '', '', '', '', '', '', '', ''),
('nu610a66550f61129', 'nuform', 'zzzzsys_form', 'input', 'js_browse', 'Browse', 'nu5bad6cb37026348', 240, 135, 42, 155, 29, '1', 'center', '0', '0', '1', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'button', '', '', '', '', '', '', '', '', ''),
('nu610a667b9beba56', 'nuform', 'zzzzsys_form', 'input', 'js_edit', 'Edit', 'nu5bad6cb37026348', 250, 171, 42, 155, 29, '1', 'center', '0', '0', '1', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', 'button', '', '', '', '', '', '', '', '', ''),
('nu610a66db7e3d0d6', 'nuform', 'zzzzsys_form', 'textarea', 'sfo_edit_javascript', ' ', 'nu5bad6cb37026348', 220, 60, 225, 760, 415, '1', 'left', '0', '0', '0', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', ''),
('nu610a66eb04d3ef6', 'nuform', 'zzzzsys_form', 'textarea', 'sfo_browse_javascript', ' ', 'nu5bad6cb37026348', 200, 60, 225, 760, 415, '1', 'left', '0', '0', '0', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', ''),
('nu610ae48090da463', 'nuobject', 'zzzzsys_object', 'input', 'sob_all_type_input', ' ', 'nu5bad6cb3686cb0d', 430, 57, 299, 141, 22, '1', 'left', '0', '1', '0', '', '', '', '', '', '', '', '', '', '0', '0', 'calc|Calc|\ndisplay|Display|\ncontentbox|ContentBox|\nhtml|HTML|\nimage|Image|\ninput|Input|\nlookup|Lookup|\nrun|Run|\nselect|Select|\nsubform|Subform|\ntextarea|Textarea|\nword|Word', '', '', '', NULL, '', '', NULL, 'zzzzsys_tab', '', '', '', '', '', '', 0, '', 'text', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `zzzzsys_object_list`
-- (See below for the actual view)
--
CREATE TABLE `zzzzsys_object_list` (
`zzzzsys_object_list_id` varchar(64)
);

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_php`
--

CREATE TABLE `zzzzsys_php` (
  `zzzzsys_php_id` varchar(25) NOT NULL,
  `sph_code` varchar(300) DEFAULT NULL,
  `sph_description` varchar(300) DEFAULT NULL,
  `sph_group` varchar(100) DEFAULT NULL,
  `sph_php` longtext DEFAULT NULL,
  `sph_run` varchar(20) DEFAULT NULL,
  `sph_zzzzsys_form_id` varchar(25) DEFAULT NULL,
  `sph_system` varchar(1) DEFAULT NULL,
  `sph_global` varchar(1) DEFAULT '0',
  `sph_hide` varchar(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_php`
--

INSERT INTO `zzzzsys_php` (`zzzzsys_php_id`, `sph_code`, `sph_description`, `sph_group`, `sph_php`, `sph_run`, `sph_zzzzsys_form_id`, `sph_system`, `sph_global`, `sph_hide`) VALUES
('nuform_BS', 'nuform_BS', 'System PHP', 'nubuilder', '\n    $o = \'#sfo_type#\';\n\n    if(\'#sfo_type#\'             == \'\'){nuDisplayError(\'<b>Type</b> Cannot Be Blank..\', \'sfo_type\');}\n    if(\'#sfo_description#\'      == \'\'){nuDisplayError(\'<b>Description</b> Cannot Be Blank..\', \'sfo_description\');}\n\n\n    \n    \n    if($o == \'browseedit\' || $o == \'subform\' || $o == \'browse\'){\n        \n        if($o != \'browse\'){\n            nuCheckTabs();\n        }\n        \n        if($o != \'subform\'){\n            nuCheckBrowse();\n        }\n        \n        if(\'#sfo_browse_sql#\'   == \'\'){nuDisplayError(\'<b>Browse SQL</b> Cannot Be Blank..\', \'sfo_browse_sql\');}\n    }\n\n    if($o == \'edit\' or $o == \'launch\'){\n        nuCheckTabs();\n    }\n\n    if($o != \'launch\'){\n        if(\'#sfo_table#\'            == \'\'){nuDisplayError(\'<b>Table Name</b> Cannot Be Blank..\', \'sfo_table\');}\n        if(\'#sfo_primary_key#\'      == \'\'){nuDisplayError(\'<b>Primary Key</b> Cannot Be Blank..\', \'sfo_primary_key\');}\n    }\n\nfunction nuCheckBrowse(){\n\n    $r  = 0;\n    $sf = nuSubformObject(\'zzzzsys_browse_sf\');\n    \n    for($i = 0 ; $i < count($sf->rows) ; $i++){\n       if($sf->deleted[$i] == 0){$r++;}\n    }\n    \n    if($r == 0){\n       nuDisplayError(\'<b>Must have at least 1</b> Browse Column Defined..\');\n    }\n    \n}\n\nfunction nuCheckTabs(){\n\n    $r  = 0;\n    $sf = nuSubformObject(\'zzzzsys_tab_sf\');\n    \n    for($i = 0 ; $i < count($sf->rows) ; $i++){\n       if($sf->deleted[$i] == 0){$r++;}\n    }\n    \n    if($r == 0){\n       nuDisplayError(\'<b>Must have at least 1</b> Tab Column Defined..\');\n    }\n    \n}\n\n\n\n\n', '', '', '1', '0', ''),
('nupassword_BS', 'nupassword_BS', 'System PHP', 'nubuilder', '$is		= md5(\'#old_password#\');\n$was	= md5(\'#new_password_check#\');\n$will	= md5(\'#new_password#\');\n$ses	= \'#SESSION_ID#\';\n$userId = \"#USER_ID#\";\n\n$s      = \"\n\n    SELECT * \n    FROM zzzzsys_session\n    WHERE zzzzsys_session_id = ?\n\n\";\n\n$t  = nuRunQuery($s, array($ses));\n$r  = db_fetch_object($t);\n$j  = json_decode($r->sss_access);\n\n$s      = \"\n\n    SELECT * \n    FROM zzzzsys_user\n    WHERE zzzzsys_user_id = ?\n    AND sus_login_password = ?\n\n\";\n\n$t  = nuRunQuery($s, array($userId, $is));\n\nif(db_num_rows($t) == 0){\n\n    nuDisplayError(\'Incorrect Password\');\n    return;\n    \n}\n\n//-- added by toms\n\n$p	= nuProcedure(\'nuCheckPasswordPolicy\');\n\nif($p != \'\'){\n\n	eval($p);\n	\n	if($check == false){\n		return;\n	}\n\n}\n\n//--\n\nif($will == $was){\n\n    $s  = \"\n\n        UPDATE zzzzsys_user \n        SET sus_login_password = ?\n        WHERE zzzzsys_user_id = ?\n        AND sus_login_password = ?\n    \n    \";\n\n    nuRunQuery($s, array($will, \"#RECORD_ID#\", $is));\n\n    nuSetUserJSONData(\'PASSWORD_CHANGED_TIME\', time() , $userId);\n    nuSetUserJSONData(\'PASSWORD_CHANGED_SOURCE\', \'user\', $userId);\n    \n}else {\n    nuDisplayError(nuTranslate(\'\"Enter New Password\" Must be the same as \"Confirm New Password\"\'));\n}\n', '', '', '1', '0', ''),
('nuuser_AS', 'nuuser_AS', 'System PHP', 'nubuilder', 'if (\'#check_password#\' != \'\') {\n\n    $userId = \"#RECORD_ID#\";\n    $pw = md5(\'#check_password#\');\n\n    nuRunQuery(\"UPDATE zzzzsys_user SET sus_login_password = \'$pw\' WHERE zzzzsys_user_id = ?\", array($userId));\n    \n    nuSetUserJSONData(\'PASSWORD_CHANGED_TIME\', time() , $userId);\n    nuSetUserJSONData(\'PASSWORD_CHANGED_SOURCE\', \'admin\', $userId);\n\n}', '', '', '1', '0', ''),
('nudebug_BD', 'nudebug_BD', 'System PHP', 'nubuilder', '\n$i  = \'#instruction#\';\n\nif($i == \'all\'){\n    nuRunQuery(\"DELETE FROM zzzzsys_debug\");\n    \n}\n\n', '', '', '1', '0', ''),
('nuobject_BS', 'nuobject_BS', 'System PHP', 'nubuilder', '$r = \'#RECORD_ID#\';\n$f = \'#sob_all_zzzzsys_form_id#\';\n$o = \'#sob_all_id#\';\n\n$s = \"\n    \n        SELECT COUNT(*) \n        FROM zzzzsys_object\n        WHERE sob_all_zzzzsys_form_id = \'$f\'\n        AND sob_all_id = \'$o\'\n        AND zzzzsys_object_id != \'$r\'\n\n    \";\n\n$t = nuRunQuery($s);\n$r = db_fetch_row($t);\n\nif ($r[0] > 0) {\n    nuDisplayError(nuTranslate(\'This <b>ID</b> is already used on this Form..\'));\n}\n\nif (\'#sob_all_label#\' == \'\') {\n    nuDisplayErrorNotBlank(\'Label\');\n}\n\n$o = \'#sob_all_type#\';\n\nif ($o == \'display\') {\n    if (\'#sob_display_sql#\' == \'\') {\n        nuDisplayErrorNotBlank(\'Display\');\n    }\n}\n\nif ($o == \'html\') {\n\n    if (\'#sob_html_code#\' == \'\' && \'#sob_html_chart_type#\' == \'\') {\n        nuDisplayError(nuTranslate(\'HTML Fields Cannot Both Be Blank..\'));\n    }\n    if (\'#sob_html_javascript#\' == \'\' && \'#sob_html_chart_type#\' != \'\') {\n        nuDisplayErrorNotBlank(\'HTML Javascript Array\');\n    }\n\n}\n\nif ($o == \'lookup\') {\n    if (\'#sob_lookup_zzzzsys_form_id#\' == \'\') {\n        nuDisplayErrorNotBlank(\'Form\');\n    }\n    if (\'#sob_lookup_code#\' == \'\') {\n        nuDisplayErrorNotBlank(\'Code\');\n    }\n    if (\'#sob_lookup_description#\' == \'\') {\n        nuDisplayErrorNotBlank(\'Descrition\');\n    }\n    if (\'#sob_lookup_description_width#\' == \'\') {\n        nuDisplayErrorNotBlank(\'Width\');\n    }\n}\n\nif ($o == \'run\') {\n    if (\'#sob_run_zzzzsys_form_id#\' == \'\') {\n        nuDisplayErrorNotBlank(\'Run\');\n    }\n    if (\'#sob_run_method#\' == \'\') {\n        nuDisplayErrorNotBlank(\'Method\');\n    }\n}\n\nif ($o == \'input\') {\n\n    if (\'#sob_input_type#\' == \'\') {\n        nuDisplayErrorNotBlank(\"Input\'s Input Type\");\n    }\n\n    if (\'#sob_input_type#\' == \'nuNumber\' || \'#sob_input_type#\' == \'nuDate\') {\n        if (\'#sob_input_format#\' == \'\') {\n            nuDisplayErrorNotBlank(\'Input Format\');\n        }\n    }\n\n    if (\'#sob_input_type#\' == \'nuAutoNumber\') {\n        if (\'#sob_input_count#\' == \'\') {\n            nuDisplayErrorNotBlank(\'Next Number\');\n        }\n    }\n\n}\n\nif ($o == \'select\') {\n    if (\'#sob_select_multiple#\' == \'\') {\n        nuDisplayErrorNotBlank(\'Multiple\');\n    }\n    if (\'#sob_select_sql#\' == \'\') {\n        nuDisplayErrorNotBlank(\'SQL/List\');\n    }\n}\n\nif ($o == \'subform\') {\n    if (\'#sob_subform_zzzzsys_form_id#\' == \'\') {\n        nuDisplayErrorNotBlank(\'Form\');\n    }\n    if (\'#sob_subform_foreign_key#\' == \'\') {\n        nuDisplayErrorNotBlank(\'Foreign Key\');\n    }\n    if (\'#sob_subform_add#\' == \'\') {\n        nuDisplayErrorNotBlank(\'Addable\');\n    }\n    if (\'#sob_subform_delete#\' == \'\') {\n        nuDisplayErrorNotBlank(\'Deletable\');\n    }\n    if (\'#sob_subform_type#\' == \'\') {\n        nuDisplayErrorNotBlank(\'Type\');\n    }\n}\n\nif ($o == \'\') {\n    if (\'#sfo_browse_sql#\' == \'\') {\n        nuDisplayErrorNotBlank(\'Browse SQL\');\n    }\n}\n\nfunction nuDisplayErrorNotBlank($label) {\n\n    $label = \'<b>\' . $label . \'</b>\';\n    nuDisplayError($label . \' \' . nuTranslate(\'cannot be left blank\'));\n\n}\n\n', '', '', '1', '0', ''),
('nuform_AS', 'nuform_AS', 'System PHP', 'nubuilder', '$s  = \"\n    SELECT * \n    FROM zzzzsys_browse \n    WHERE sbr_zzzzsys_form_id = \'#RECORD_ID#\'\n    ORDER BY sbr_order;\n\";\n\n\n$t = nuRunQuery($s);\n$o = 10;\n\nwhile($r = db_fetch_object($t)){\n        \n    $s  = \"\n        UPDATE zzzzsys_browse \n        SET sbr_order = \'$o\'\n        WHERE zzzzsys_browse_id = \'$r->zzzzsys_browse_id\'\n        ORDER BY sbr_order;\n    \";\n    \n    nuRunQuery($s);\n    \n    $o = $o + 10;    \n    \n}\n\n$s  = \"\n    SELECT * \n    FROM zzzzsys_tab \n    WHERE syt_zzzzsys_form_id = \'#RECORD_ID#\'\n    ORDER BY syt_order;\n\";\n\n$t = nuRunQuery($s);\n$o = 10;\n\nwhile($r = db_fetch_object($t)){\n        \n    $s  = \"\n        UPDATE zzzzsys_tab \n        SET syt_order = \'$o\'\n        WHERE zzzzsys_tab_id = \'$r->zzzzsys_tab_id\'\n        ORDER BY syt_order;\n    \";\n    \n    nuRunQuery($s);\n    \n    $o = $o + 10;    \n    \n}\n\nnuCloneForm();', '', '', '1', '0', ''),
('nucalcobjects_BB', 'nucalcobjects_BB', 'System PHP', 'nubuilder', '\n$s = \"\n\nCREATE TABLE #TABLE_ID#\n\nSELECT \n   sob_all_zzzzsys_form_id AS theform,\n   \'\' AS theparent,\n   sob_all_id AS thechild,\n   CONCAT(sob_all_id) as thevalue\nFROM zzzzsys_object \nWHERE sob_input_type = \'number\'\nOR sob_all_type = \'calc\'\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   su.sob_all_id AS theparent,\n   inp.sob_all_id AS thechild,\n   CONCAT(su.sob_all_id, \'.\', inp.sob_all_id) as thevalue\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE su.sob_all_type = \'subform\'\nAND (\n        inp.sob_input_type = \'nuNumber\' OR \n        inp.sob_input_type = \'number\' OR \n        inp.sob_all_type = \'calc\'\n    )\n\n\";\n    \nnuRunQuery($s);\n\n', '', '', '1', '0', ''),
('nuform_AD', 'nuform_AD', 'System PHP', 'nubuilder', 'nuDeleteForm(\'#RECORD_ID#\');', '', '', '1', '0', ''),
('nufastform', 'RUNFF', 'Run Fast Form', 'nubuilder', 'nuBuildFastForm(\'#fastform_table#\', \'#fastform_type#\');\n\n', '', 'nufflaunch', '1', '0', ''),
('nuobject_BB', 'nuobject_BB', 'System PHP', 'nubuilder', '$s  = \"CREATE TABLE #TABLE_ID# SELECT zzzzsys_object_id AS theid FROM zzzzsys_object WHERE \";\n$w  = \"1\";\nif ( $GLOBALS[\'nuSetup\']->set_denied == 1 )  { \n$w  = \"sob_all_zzzzsys_form_id NOT LIKE \'nu%\' OR sob_all_zzzzsys_form_id = \'nuuserhome\'\"; \n}\nnuRunQuery(\"$s$w\");\n', '', '', '1', '0', ''),
('nuform_BB', 'nuform_BB', 'System PHP', 'nubuilder', '$s  = \"CREATE TABLE #TABLE_ID# SELECT zzzzsys_form_id AS theid FROM zzzzsys_form WHERE \";\n$w  = \"1\";\nif ( $GLOBALS[\'nuSetup\']->set_denied == 1 )  { \n$w  = \"zzzzsys_form_id NOT LIKE \'nu%\' OR zzzzsys_form_id = \'nuuserhome\'\"; \n}\nnuRunQuery(\"$s$w\");\n', '', '', '1', '0', ''),
('nuphp_BB', 'nuphp_BB', 'System PHP', 'nubuilder', '\r\n$s  = \"CREATE TABLE #TABLE_ID# SELECT zzzzsys_php_id AS theid FROM zzzzsys_php WHERE \";\r\n$w  = \"sph_system != \'1\'\";\r\n\r\nnuRunQuery(\"$s$w\");\r\n\r\n', '', '', '1', '0', ''),
('nuselect_BS', 'nuselect_BS', 'System PHP', 'nubuilder', '$rid    = \'#RECORD_ID#\';\n\nif($rid != \'-1\' and $rid != \'-2\'){ \n    \n    $s      = \"SELECT * FROM zzzzsys_select WHERE zzzzsys_select_id = \'$rid\'\";\n    $t      = nuRunQuery($s);\n    $r      = db_fetch_object($t);\n    \n    if(db_num_rows($t) == 0){\n        \n        $s              = \"\n        INSERT INTO zzzzsys_select\n        (zzzzsys_select_id, sse_system)\n        VALUES\n        (\'$rid\', \'1\')\n        \";\n        \n        nuRunQuery($s);\n        \n    }\n    \n}\n\n', '', '', '1', '0', ''),
('nuphp_BE', 'nuphp_BE', 'System PHP', 'nubuilder', '$rid    = \'#RECORD_ID#\';\n\nif($rid != \'-1\' and $rid != \'-2\'){ \n    \n    $s      = \"SELECT * FROM zzzzsys_php WHERE zzzzsys_php_id = \'$rid\'\";\n    $t      = nuRunQuery($s);\n    $r      = db_fetch_object($t);\n    \n    if(db_num_rows($t) == 0){\n    \n        $s              = \"\n        INSERT INTO zzzzsys_php\n        (\n            zzzzsys_php_id,\n            sph_code,\n            sph_description,\n            sph_group,\n            sph_system\n        )\n        VALUES\n        (\n            \'$rid\', \n            \'$rid\', \n            \'System PHP\', \n            \'nubuilder\', \n            \'1\'\n        )\n        \";\n        \n        nuRunQuery($s);\n        \n    }\n    \n}\n\n', '', '', '1', '0', ''),
('nutranslate_AS', 'nutranslate_AS', 'System PHP', 'nubuilder', '$i  = \'trl_english\';\r\n$t  = nuRunQuery(\'SELECT COUNT(*) FROM zzzzsys_debug\');\r\n$c  = db_fetch_row($t)[0];\r\n\r\n$j  = \";$(\'#$i\').val($c);\";\r\n\r\nnuJavascriptCallback($j);\r\n', '', '', '1', '0', ''),
('nutranslate_BE', 'nutranslate_BE', 'System PHP', 'nubuilder', '\n$t          = nuRunQuery(\"SELECT MAX(trl_language) FROM zzzzsys_translate GROUP BY trl_language\");\n$a          = array();\n\nwhile($r = db_fetch_row($t)){\n    $a[]    = $r[0];    \n}\n\n$j          = json_encode($a);\n$f          = \"\n\nfunction nuLanguages(){\n    \n    return $j;\n    \n}\n\n\";\n\nnuAddJavascript($f);', '', '', '1', '0', ''),
('nuupdatesystemids', 'USI', 'Update System IDs', 'nubuilder', 'nuUpdateSystemIds();', 'window', 'nublank', '1', '0', ''),
('nu5bad6cb329dcb6e_AB', 'nu5bad6cb329dcb6e_AB', 'System PHP', 'nubuilder', '$s  = \"\n        SELECT * \n        FROM zzzzsys_tab \n        JOIN zzzzsys_form ON zzzzsys_form_id = syt_zzzzsys_form_id\n        WHERE zzzzsys_tab_id = \'#LOOKUP_RECORD_ID#\'\n        \n        \";\n\n$t  = nuRunQuery($s);\n$c = db_num_rows($t);\nif ($c == 1) {$r  = db_fetch_object($t); }\n\nnuSetFormValue(\'sob_all_zzzzsys_form_id\', $c == 1 ? $r->syt_zzzzsys_form_id: \'\');\nnuSetFormValue(\'sob_all_table\', $c == 1 ? $r->sfo_table: \'\');', NULL, NULL, '1', '0', NULL),
('nu5bad6cb33715015_AB', '57452c417370475_AB', '', 'nubuilder', 'nuSetFormValue(\'slf_add_button\', \'1\');\nnuSetFormValue(\'slf_print_button\', \'1\');\nnuSetFormValue(\'slf_save_button\', \'1\');\nnuSetFormValue(\'slf_clone_button\', \'1\');\nnuSetFormValue(\'slf_delete_button\', \'1\');\n', '', '', '1', '0', ''),
('nu5bad6cb35f2188f_AB', 'nu5bad6cb35f2188f_AB', 'System PHP', 'nubuilder', '$r = nuLookupRecord();\n\nif (isset($r->id)) {\n    $tt	= nuTTList($r->id, \'nublank\');				    //-- Field list from Temp table\n    \n    nuSetFormValue(\'fieldlist\', json_encode($tt));\n}\n', '', '', '1', '0', ''),
('nufastreport', 'RUNFR', 'Run Fast Report', 'nubuilder', 'nuBuildFastReport();\n\n', '', 'nufflaunch', '1', '0', ''),
('nuobject_BE', 'nuobject_BE', 'System PHP', 'nubuilder', '\n$s = \"\n\n\n\nSELECT \n	sob_all_zzzzsys_form_id AS theform,\n	sob_all_id AS ids,\n	sob_all_type AS type\nFROM zzzzsys_object \nWHERE \nsob_all_zzzzsys_form_id = \'#sob_all_zzzzsys_form_id#\' AND \n	((sob_input_type = \'nuNumber\' AND sob_all_type = \'input\')\n	OR (sob_input_type = \'number\' AND sob_all_type = \'input\')\n	OR sob_all_type = \'calc\' OR sob_all_type = \'select\')\n\nUNION \n\nSELECT \n   su.sob_all_zzzzsys_form_id AS theform,\n   CONCAT(su.sob_all_id, \'.\', inp.sob_all_id) AS ids,\n   inp.sob_all_type AS type\nFROM zzzzsys_object AS su\nJOIN zzzzsys_object AS inp ON su.sob_subform_zzzzsys_form_id = inp.sob_all_zzzzsys_form_id\nWHERE \nsu.sob_all_type = \'subform\' AND \nsu.sob_all_zzzzsys_form_id = \'#sob_all_zzzzsys_form_id#\' AND \n	((inp.sob_input_type = \'nuNumber\' AND inp.sob_all_type = \'input\')\n	OR (inp.sob_input_type = \'number\' AND inp.sob_all_type = \'input\')\n	OR inp.sob_all_type = \'calc\' OR inp.sob_all_type = \'select\')\n\n\";\n\n\n$t  = nuRunQuery($s);\n$a  = array();\n\nwhile($r = db_fetch_object($t)){\n    $a[]  = $r;    \n}\n\n$j  = json_encode($a);\n$js = \"\n\nfunction nuCalcObjects(){\n    return $j;\n}\n\n\";\n\nnuAddJavascript($js);\n\n', '', '', '1', '0', ''),
('nutablookup_BB', 'nutablookup_BB', 'System PHP', 'nubuilder', '$s  = \"CREATE TABLE #TABLE_ID# SELECT zzzzsys_form_id AS theid FROM zzzzsys_form WHERE \";\n$w  = \"1\";\nif ( $GLOBALS[\'nuSetup\']->set_denied == 1 )  { \n$w  = \"zzzzsys_form_id NOT LIKE \'nu%\' OR zzzzsys_form_id = \'nuuserhome\'\"; \n}\nnuRunQuery(\"$s$w\");\n', '', '', '1', '0', ''),
('nuuser_BS', 'nuuser_BS', 'System PHP', 'nubuilder', 'if(\'#check_password#\' != \'\'){\n    if(\'#new_password#\' != \'#check_password#\'){\n        nuDisplayError(\'<b>Enter New Password</b> and <b>Reenter New Password</b> must match\');\n    }\n    \n}\n\n', '', '', '1', '0', ''),
('nu5f6fe8bd7ff850a', 'CSVTRANSFER', 'CSV Transfer', 'nubuilder', 'if($_SESSION[\'nubuilder_session_data\'][\'IS_DEMO\']){		\n    nuDisplayError(nuTranslate(\'Not available in the Demo\').\"..\");\n    return;	\n}\n\n\nif(\'#csv_transfer#\' == \'export\'){\n    nuToCSV(\'#csv_from#\', \'#csv_to#\', \'#csv_delimiter#\');\n}\n\nif(\'#csv_transfer#\' == \'import\'){\n    nuFromCSV(\'#csv_from#\', \'#csv_to#\', \'#csv_delimiter#\');\n}', 'window', 'nublank', '1', '0', ''),
('nucsvtransfer_BE', 'nucsvtransfer_BE', 'System PHP', 'nubuilder', '\nfunction getCSVFiles() {\n\n    $f = array();\n    $dir = \'../temp/\';\n    $dh = opendir($dir);\n    while (false !== ($fileName = readdir($dh))) {\n        $ext = substr($fileName, strrpos($fileName, \'.\') + 1);\n        if (in_array($ext, array(\n            \"txt\",\n            \"csv\",\n            \"tab\",\n            \"asc\"\n        ))) $f[] = $fileName;\n    }\n    closedir($dh);\n    return $f;\n}\n\nif (\'csvfiles\') {\n    $f = getCSVFiles();\n}\nelse {\n    $f = array();\n\n}\n\n$a = array();\n\nfor ($i = 0;$i < count($f);$i++) {\n\n    if ($f[$i][0] != \'.\') {\n        $a[] = \"\'\" . $f[$i] . \"\'\";\n    }\n}\n\nnuAddJavascript(\"\\n var nuCSVfiles = [\" . implode(\',\', $a) . \"];\\n\");\n\n', NULL, NULL, '1', '0', ''),
('nusethashcookie', 'nusethashcookie', 'Sets session persistent hash cookies', 'nubuilder', '// Set session persistent hash cookies\n// Usage: Call from JavaScript: nuSetProperty(\"YourHashCookieName\",\"YourValue\",true);\n// Credits: Neil\n\n$i = \'#hcname#\';\n$nj = \'#hcvalue#\';\n$s = \"SELECT sss_hashcookies FROM zzzzsys_session WHERE zzzzsys_session_id = ? \";\n$t = nuRunQuery($s, array($_SESSION[\'nubuilder_session_data\'][\'SESSION_ID\']));\n$r = db_fetch_object($t);\n$j = json_decode($r->sss_hashcookies, true);\n$j[$i] = $nj;\n$J = json_encode($j);\n$s = \"UPDATE zzzzsys_session SET sss_hashcookies = ? WHERE zzzzsys_session_id = ? \";\n$t = nuRunQuery($s, array($J, $_SESSION[\'nubuilder_session_data\'][\'SESSION_ID\']));\n\n$js = \"\nif(window.nuOnPropertySet){\n    nuOnPropertySet(\'$i\', \'$nj\');\n}\n\";\n\nnuJavascriptCallback($js);', 'hide', '', '1', '1', ''),
('nuclonerphp', 'nucloner', 'Clone Forms, Objects, Events, PHP etc.', 'nubuilder', 'function hashCookieSet($h) {\n    return !(preg_match(\'/\\#(.*)\\#/\', $h) || trim($h) == \"\");\n}\n\nfunction pkWithoutEvent($pk) {\n    return substr($pk, 0, -3);\n}\n\nfunction eventFromPk($pk) {\n    return substr($pk, -3);\n}\n\nfunction lookupPk($arr, $key) {\n    \n    $a = array_column($arr, $key);\n    return isset($a[0]) ? $a [0] : \'\';\n\n}\n\nfunction addToArray(array & $arr, $key, $value) {\n    array_push($arr, array(\n        $key => $value\n    ));\n}\n\nfunction getPk($pk) {\n    return \"#cloner_new_pks#\" != \'0\' ? nuID() : $pk;\n}\n\nfunction getTabList() {\n\n    $t = \"#cloner_tabs#\";\n    return !hashCookieSet($t) || strlen($t) < 3 ? \"\" : implode(\',\', json_decode($t));\n\n}\n\nfunction getSubformList() {\n\n    $t = \"#cloner_subforms#\";\n    return !hashCookieSet($t) || strlen($t) < 3 ? \"\" : \"\'\".implode(\"\',\'\", json_decode($t)).\"\'\";\n\n}\n\nfunction getIframeFormList() {\n\n    $t = \"#cloner_iframe_forms#\";\n    return !hashCookieSet($t) || strlen($t) < 3 ? \"\" : \"\'\".implode(\"\',\'\", json_decode($t)).\"\'\";\n\n}\n\nfunction getFormSource(&$f1) {\n\n    $f1 = \"#cloner_form_source#\";\n    if (!hashCookieSet($f1)) {\n        $f1 = \"#form_id#\";\n        return true;\n    }\n\n    return formExists($f1);\n\n}\n\nfunction dbQuote($s) {\n\n    global $nuDB;\n    return $nuDB->quote($s);\n\n}\n\nfunction getFormDestination(&$f2) {\n\n    $f2 = \"#cloner_form_desc#\";\n    if (!hashCookieSet($f2)) {\n        $f2 = \"\";\n        return true;\n    }\n\n    return formExists($f2);\n\n}\n\nfunction formSQL() {\n    return \"SELECT * FROM zzzzsys_form WHERE zzzzsys_form_id  = ? LIMIT 1\";\n}\n\nfunction formExists($f) {\n\n    $t = nuRunQuery(formSQL(), array($f));\n    return db_num_rows($t) == 1;\n\n}\n\nfunction echoPlainText($val) {\n\n    echo \'<pre>\';\n    echo htmlspecialchars($val);\n    echo \'</pre>\';\n\n}\n\nfunction dumpFormInfo($f, $dump) {\n\n    if ($dump != \'1\') return;\n\n    $fi = getFormInfo($f);\n    echo \"<b>\";\n    echo \"-- nuBuilder cloner SQL Dump \" . \"<br>\";\n    echo \"-- Version 1.21 \" . \"<br>\";\n    echo \"-- Generation Time: \" . date(\"F d, Y h:i:s A\") . \"<br><br>\";\n    echo \"-- Form Description: \" . $fi[\"description\"] . \"<br>\";\n    echo \"-- Form Code: \" . $fi[\"code\"] . \"<br>\";\n    echo \"-- Form Table: \" . $fi[\"table\"] . \"<br>\";\n    echo \"-- Form Type: \" . $fi[\"type\"] . \"<br><br>\";\n\n    $notes = \"#cloner_notes#\";\n    echo hashCookieSet($notes) ? \"-- Notes: \" . $notes . \"<br>\" . \"<br>\" : \"\";\n    echo \"</b>\";\n\n}\n\nfunction createInsertStatement($table, $columns, $row) {\n\n    $params = array_map(function ($val) {\n        return \"?\";\n    }\n    , $row);\n\n    return \"INSERT INTO $table (\" . implode(\', \', $columns) . \") VALUES ( \" . implode(\" , \", $params) . \" ) \";\n\n}\n\nfunction echoHeader($header) {\n\n    echo \"<br>--<br>\";\n    echo \"-- <b>\" . $header . \"</b><br>\";\n    echo \"--<br><br>\";\n    \n}\n\nfunction dumpInsertStatement($table, $row, &$first, $ident) {\n\n    $values = join(\', \', array_map(function ($value) {\n        return $value === null ? \'NULL\' : dbQuote($value);\n    }\n    , $row));\n\n    if (!isset($first)) {\n        $ident = $ident == \'\' ? \'\' : \': \'. $ident;\n        echoHeader($table. $ident);\n        $first = false;\n    }\n\n    echoPlainText(\"INSERT INTO $table (\" . implode(\', \', array_keys($row)) . \") \");\n    echoPlainText(\"VALUES ( \" . $values . \" ); \");\n\n}\n\nfunction insertRecord($table, $row, &$first, $ident) {\n\n    if (\"#cloner_dump#\" == \'1\') {\n         dumpInsertStatement($table, $row, $first, $ident);\n    }\n    else {\n        $i = createInsertStatement($table, array_keys($row) , $row);\n        nuRunQuery($i, array_values($row) , true);\n    }\n\n}\n\nfunction getFormType($f) {\n\n    $t = nuRunQuery(formSQL() , array($f));\n    $row = db_fetch_array($t);\n\n    return $row[\'sfo_type\'];\n\n}\n\nfunction getFormInfo($f) {\n\n    $t = nuRunQuery(formSQL() , array($f));\n    $row = db_fetch_object($t);\n\n    return array(\n        \"code\" => $row->sfo_code,\n        \"description\" => $row->sfo_description,\n        \"type\" => $row->sfo_type,\n        \"table\" => $row->sfo_table\n    );\n\n}\n\nfunction getNewFormCode($code) {\n\n    $s = \"SELECT COUNT(zzzzsys_form_id) + 1 FROM zzzzsys_form WHERE sfo_code LIKE ?\";\n    $t = nuRunQuery($s, array($code . \'_clone%\'));\n    $r = db_fetch_row($t);\n    return $code . \'_clone_\' . $r[0];\n\n}\n\nfunction cloneForm($f1) {\n\n    $t = nuRunQuery(formSQL() , array($f1));\n    $row = db_fetch_array($t);\n\n    $newPk = getPk($row[\'zzzzsys_form_id\']);\n    $row[\'zzzzsys_form_id\'] = $newPk;\n    $row[\'sfo_code\'] = getNewFormCode($row[\'sfo_code\']);\n\n    insertRecord(\'zzzzsys_form\', $row, $first, $row[\'sfo_code\']);\n\n    return $newPk;\n\n}\n\nfunction cloneFormPHP($f1, $f2) {\n\n    $s = \"\n        SELECT\n            zzzzsys_php.*\n        FROM\n            zzzzsys_php\n        LEFT JOIN zzzzsys_form ON zzzzsys_form_id = LEFT(zzzzsys_php_id, LENGTH(zzzzsys_php_id) - 3)\n        WHERE\n            zzzzsys_form_id = ?\n	\";\n\n    $t = nuRunQuery($s, array($f1));\n\n    while ($row = db_fetch_array($t)) {\n\n        $event = eventFromPk($row[\'zzzzsys_php_id\']);\n        $row[\'zzzzsys_php_id\'] = $f2 . $event;\n        $row[\'sph_code\'] = $f2 . $event;\n\n        insertRecord(\'zzzzsys_php\', $row, $first, \'\');\n\n    }\n\n}\n\nfunction cloneFormTabs($f1, $f2) {\n\n    $tabPks = array();\n    \n    $s = \"SELECT * FROM zzzzsys_tab AS tab1 WHERE syt_zzzzsys_form_id  = ?\".whereTabs();\n    $t = nuRunQuery($s, array($f1));\n\n    while ($row = db_fetch_array($t)) {\n\n        $newPk = getPk($row[\'zzzzsys_tab_id\']);\n        addToArray($tabPks, $row[\'zzzzsys_tab_id\'], $newPk);\n        $row[\'zzzzsys_tab_id\'] = $newPk;\n        $row[\'syt_zzzzsys_form_id\'] = $f2;\n\n        insertRecord(\'zzzzsys_tab\', $row, $first, \'\');\n\n    }\n\n    return $tabPks;\n\n}\n\nfunction cloneFormBrowse($f1, $f2) {\n\n    $s = \"SELECT * FROM zzzzsys_browse WHERE sbr_zzzzsys_form_id  = ?\";\n    $t = nuRunQuery($s, array($f1));\n\n    while ($row = db_fetch_array($t)) {\n\n        $newPk = getPk($row[\'zzzzsys_browse_id\']);\n        $row[\'zzzzsys_browse_id\'] = $newPk;\n        $row[\'sbr_zzzzsys_form_id\'] = $f2;\n\n        insertRecord(\'zzzzsys_browse\', $row, $first, \'\');\n\n    }\n\n}\n\nfunction whereTabs() {\n    \n    $tabs = getTabList();\n    \n    return $tabs != \'\' ? \" AND tab1.syt_order DIV 10 IN ($tabs) \" : \"\";\n    \n}\n\n\nfunction getTabIds($f1, $f2) {\n\n    $s = \"    \n        SELECT\n            tab1.zzzzsys_tab_id AS tab1,\n            tab2.zzzzsys_tab_id AS tab2\n        FROM\n            zzzzsys_tab AS tab1\n        LEFT JOIN zzzzsys_tab AS tab2\n        ON\n            tab1.syt_order = tab2.syt_order\n        WHERE\n            tab1.syt_zzzzsys_form_id = ? AND tab2.syt_zzzzsys_form_id = ? \n    \".whereTabs();\n\n    $t = nuRunQuery($s, array($f1, $f2));\n\n    $tabPks = array();\n    while ($r = db_fetch_object($t)) {\n        addToArray($tabPks, $r->tab1, $r->tab2);\n    }\n\n    return $tabPks;\n\n}\n\nfunction cloneObjects($f1, $f2, array & $objectPks, $tabPks) {\n\n    $s = \"SELECT * FROM zzzzsys_object WHERE sob_all_zzzzsys_form_id = ?\";\n    $t = nuRunQuery($s, array($f1));\n    \n    while ($row = db_fetch_array($t)) {\n\n        $row[\'sob_all_zzzzsys_form_id\'] = $f2;\n        \n        $newPk = getPk($row[\'zzzzsys_object_id\']);\n        addToArray($objectPks, $row[\'zzzzsys_object_id\'], $newPk);\n\n        $row[\'zzzzsys_object_id\'] = $newPk;\n\n        $tabId = lookupPk($tabPks, $row[\'sob_all_zzzzsys_tab_id\']);\n        \n        $row[\'sob_all_zzzzsys_tab_id\'] = $tabId;\n\n        if ($tabId != \"\") insertRecord(\'zzzzsys_object\', $row, $first,\'\');\n\n    }\n\n}\n\nfunction cloneObjectsPHP($f1, $objectPks) {\n\n    $s = \"\n        SELECT\n           zzzzsys_php.* \n        FROM\n           zzzzsys_php \n           LEFT JOIN\n              zzzzsys_object \n              ON zzzzsys_object_id = LEFT(zzzzsys_php_id, LENGTH(zzzzsys_php_id) - 3) \n        WHERE\n           sob_all_zzzzsys_form_id = ?\n	\";\n\n    $t = nuRunQuery($s, array($f1));\n\n    while ($row = db_fetch_array($t)) {\n\n        $event = eventFromPk($row[\'zzzzsys_php_id\']);\n        $row[\'zzzzsys_php_id\'] = lookupPk($objectPks, pkWithoutEvent($row[\'zzzzsys_php_id\'])) . $event;\n        $code = lookupPk($objectPks, pkWithoutEvent($row[\'sph_code\']));\n        if ($code == \'\') { $row[\'sph_code\'] = $row[\'zzzzsys_php_id\']; }\n        $code .=  $event;\n\n        insertRecord(\'zzzzsys_php\', $row, $first, \'\');\n\n    }\n\n}\n\nfunction cloneFormSelect($f1, $f2, array & $formSelectPks) {\n\n    $s = \"\n        SELECT\n           zzzzsys_select.* \n        FROM\n           zzzzsys_select \n        WHERE LEFT(zzzzsys_select_id, LENGTH(zzzzsys_select_id) - 3)  = ?\n	\";\n\n    $t = nuRunQuery($s, array($f1));\n\n    while ($row = db_fetch_array($t)) {\n\n        $event = eventFromPk($row[\'zzzzsys_select_id\']);\n        $newPk = $f2 . $event;\n        addToArray($formSelectPks, $row[\'zzzzsys_select_id\'], $newPk);\n        $row[\'zzzzsys_select_id\'] = $newPk;\n\n        insertRecord(\'zzzzsys_select\', $row, $first, \'\');\n\n    }\n\n}\n\nfunction cloneFormSelectClause($f1, $formSelectPks) {\n\n    $s = \"\n        SELECT\n           zzzzsys_select_clause.* \n        FROM\n           zzzzsys_select_clause \n           LEFT JOIN\n              zzzzsys_select \n              ON zzzzsys_select_id = ssc_zzzzsys_select_id \n           LEFT JOIN zzzzsys_form ON LEFT(zzzzsys_select_id, LENGTH(zzzzsys_select_id) - 3) = zzzzsys_form_id\n           WHERE zzzzsys_form_id  = ? \n	\";\n\n    $t = nuRunQuery($s, array($f1));\n\n    while ($row = db_fetch_array($t)) {\n\n        $row[\'ssc_zzzzsys_select_id\'] = lookupPk($formSelectPks, $row[\'ssc_zzzzsys_select_id\']);\n        $row[\'zzzzsys_select_clause_id\'] = getPk($row[\'zzzzsys_select_clause_id\']);\n        if ($row[\'ssc_zzzzsys_select_id\'] != \"\") insertRecord(\'zzzzsys_select_clause\', $row, $first, \'\');\n\n    }\n\n}\n\nfunction cloneObjectsSelect($f1, $objectPks, array & $selectPks) {\n\n    $s = \"\n        SELECT\n           zzzzsys_select.* \n        FROM\n           zzzzsys_select \n           LEFT JOIN\n              zzzzsys_object \n              ON zzzzsys_object_id = LEFT(zzzzsys_select_id, LENGTH(zzzzsys_select_id) - 3) \n        WHERE\n           sob_all_zzzzsys_form_id = ?\n	\";\n\n    $t = nuRunQuery($s, array($f1));\n\n    while ($row = db_fetch_array($t)) {\n\n        $event = eventFromPk($row[\'zzzzsys_select_id\']);\n        $newPk = lookupPk($objectPks, pkWithoutEvent($row[\'zzzzsys_select_id\'])) . $event;\n        addToArray($selectPks, $row[\'zzzzsys_select_id\'], $newPk);\n        $row[\'zzzzsys_select_id\'] = $newPk;\n\n        insertRecord(\'zzzzsys_select\', $row, $first, \'\');\n\n    }\n\n}\n\nfunction cloneObjectsSelectClause($f1, $selectPks) {\n\n    $s = \"\n        SELECT\n           zzzzsys_select_clause.* \n        FROM\n           zzzzsys_select_clause \n           LEFT JOIN\n              zzzzsys_select \n              ON zzzzsys_select_id = ssc_zzzzsys_select_id \n           LEFT JOIN\n              zzzzsys_object \n              ON zzzzsys_object_id = LEFT(zzzzsys_select_id, LENGTH(zzzzsys_select_id) - 3) \n        WHERE\n           sob_all_zzzzsys_form_id = ?\n	\";\n\n    $t = nuRunQuery($s, array($f1));\n\n    while ($row = db_fetch_array($t)) {\n\n        $row[\'ssc_zzzzsys_select_id\'] = lookupPk($selectPks, $row[\'ssc_zzzzsys_select_id\']);\n        $row[\'zzzzsys_select_clause_id\'] = getPk($row[\'zzzzsys_select_clause_id\']);\n\n        if ($row[\'ssc_zzzzsys_select_id\'] != \"\") insertRecord(\'zzzzsys_select_clause\', $row, $first, \'\');\n\n    }\n\n}\n\nfunction cloneObjectsEvents($f1, $objectPks) {\n\n    $s = \"\n        SELECT\n            *\n        FROM\n            zzzzsys_event\n        WHERE\n            sev_zzzzsys_object_id IN (\n            SELECT\n                zzzzsys_object_id\n            FROM\n                zzzzsys_object\n            WHERE\n                sob_all_zzzzsys_form_id = ?\n        )\n    \";\n    $t = nuRunQuery($s, array($f1));\n\n    while ($row = db_fetch_array($t)) {\n\n        $row[\'zzzzsys_event_id\'] = getPk($row[\'zzzzsys_event_id\']);\n        $row[\'sev_zzzzsys_object_id\'] = lookupPk($objectPks, $row[\'sev_zzzzsys_object_id\']);\n\n        insertRecord(\'zzzzsys_event\', $row, $first, \'\');\n\n    }\n\n}\n\nfunction getOpenForm($f2) {\n\n    $ft = getFormType($f2);\n    $r = $ft == \'browseedit\' ? \"\" : \"-1\";\n\n    $code = getFormInfo($f2) [\"code\"];\n\n    $msg = \"\n	   var buttons = \' <button onclick=\\\"$(\\\'#nuMessageDiv\\\').remove();nuForm(\\\'$f2\\\', \\\'$r\\\', \\\'\\\', \\\'\\\', \\\'2\\\');\\\" class=\\\"nuActionButton\\\">Open Form</button>\';\n	   nuMessage([\'<h2>Cloning complete.</h2><h3>Code: $code</h3>\' + buttons]);\n	   console.log(\'Cloning complete. Form Code: $code\');\n   \";\n\n    return $msg;\n    \n}\n\nfunction clearHashCookies() {\n\n    return;\n    \"\n        function clearHashCookies() {\n            nuSetProperty(\'cloner_form_source\',\'\');\n            nuSetProperty(\'cloner_form_dest\',\'\');\n            nuSetProperty(\'cloner_tabs\',\'\');\n            nuSetProperty(\'cloner_objects\', \'1\');\n            nuSetProperty(\'cloner_subforms\', \'0\');\n            nuSetProperty(\'cloner_iframe_forms\', \'0\');\n            nuSetProperty(\'cloner_dump\',\'0\');\n            nuSetProperty(\'cloner_new_pks\',\'1\');\n        }\n        \n        clearHashCookies();\n    \";\n\n}\n\nfunction showError($msg) {\n    \n    nuJavascriptCallback(\"nuMessage([\'<h2>Error</h2><br>\" . $msg . \"\']);\" . clearHashCookies());\n    \n}\n\nfunction showForm($f2, $dump) {\n\n    if ($dump == \'1\') return;\n    nuJavascriptCallback(getOpenForm($f2) . clearHashCookies());\n\n}\n\nfunction whereSubforms() {\n    \n    $subforms = getSubformList();\n    return $subforms != \'\' ? \" AND sob_all_id IN ($subforms) \" : \"\";\n    \n}\n\nfunction whereRunIframeforms() {\n    \n    $forms = getIframeFormList();\n    return $forms != \'\' ? \" AND sob_all_id IN ($forms) \" : \"\";\n    \n}\n\nfunction updateObjectSubform($f1, $f2, $dump) {\n\n   $s = \"UPDATE zzzzsys_object SET sob_subform_zzzzsys_form_id = \'$f2\' WHERE sob_subform_zzzzsys_form_id = \'$f1\';\";\n   \n   if ($dump == \"1\") {\n       echoHeader(\'zzzzsys_object: UPDATE subform ID\');\n       echoPlainText($s);\n   } else {\n        $t = nuRunQuery($s);\n   }\n    \n}\n\nfunction updateIframeForm($f1, $f2, $dump) {\n\n   $s = \"UPDATE zzzzsys_object SET sob_run_zzzzsys_form_id = \'$f2\' WHERE sob_run_zzzzsys_form_id = \'$f1\';\";\n   \n   if ($dump == \"1\") {\n       echoHeader(\'zzzzsys_object: UPDATE Run iframe form\');\n       echoPlainText($s);\n   } else {\n        $t = nuRunQuery($s);\n   }\n    \n}\n\n\nfunction processIframeForms($f1, $tabPks, $dump) {\n\n    if (\"#cloner_iframe_forms#\" == \'0\') return;\n\n    $s = \"\n        SELECT\n            `sob_run_zzzzsys_form_id`\n        FROM\n            zzzzsys_object\n        WHERE\n            sob_all_zzzzsys_form_id = ? AND \n            sob_all_type = ? AND \n            sob_run_method = ? AND \n            IFNULL(sob_run_zzzzsys_form_id, \'\') <> \'\'\n        \";\n        \n    $s .= whereRunIframeforms();\n     \n    $t = nuRunQuery($s, array($f1,\'Run\',\'i\'));\n\n    while ($row = db_fetch_array($t)) {\n            \n           $f1 = $row[\'sob_run_zzzzsys_form_id\'];\n           \n           processForm($f1, $f2, $tabPks);\n           updateIframeForm($row[\'sob_run_zzzzsys_form_id\'], $f2, $dump);\n           processObjects($f1, $f2, $tabPks);\n           \n           $f2 = \"\";\n\n    }\n\n}\n\nfunction processSubforms($f1, $tabPks, $dump) {\n\n    if (\"#cloner_subforms#\" == \'0\') return;\n\n    $s = \"\n         SELECT \n            sob_subform_zzzzsys_form_id \n         FROM zzzzsys_object \n         WHERE sob_all_zzzzsys_form_id = ? AND sob_all_type = ?\n        \".whereSubforms();\n\n    $t = nuRunQuery($s, array($f1,\'subform\'));\n    while ($row = db_fetch_array($t)) {\n            \n           $f1 = $row[\'sob_subform_zzzzsys_form_id\'];\n\n           processForm($f1, $f2, $tabPks);\n           updateObjectSubform($row[\'sob_subform_zzzzsys_form_id\'], $f2, $dump);\n           processObjects($f1, $f2, $tabPks);\n           \n           $f2 = \"\";\n\n    }\n\n}\n\nfunction processForm($f1, &$f2, &$tabPks) {\n\n    if ($f2 != \"\") return;\n\n    $formSelectPks = array();\n\n    $f2 = cloneForm($f1);\n    $tabPks = cloneFormTabs($f1, $f2);\n\n    cloneFormSelect($f1, $f2, $formSelectPks);\n    cloneFormSelectClause($f1, $formSelectPks);\n    cloneFormBrowse($f1, $f2);\n    cloneFormPHP($f1, $f2);\n\n}\n\nfunction processObjects($f1, $f2, &$tabPks) {\n\n    if (\"#cloner_objects#\" == \'0\') return;\n\n    $objectPks = array();\n    $selectPks = array();\n    \n    cloneObjects($f1, $f2, $objectPks, $tabPks);\n    cloneObjectsPHP($f1, $objectPks);\n    cloneObjectsSelect($f1, $objectPks, $selectPks);\n    cloneObjectsSelectClause($f1, $selectPks);\n    cloneObjectsEvents($f1, $objectPks);\n\n}\n\nfunction startCloner() {\n\n    $dump = \"#cloner_dump#\";\n\n	if($_SESSION[\'nubuilder_session_data\'][\'IS_DEMO\'] && $dump != \'1\'){\n\n		showError(\'Not available in the Demo...\');\n		return;\n\n	}\n	\n    $newPks = \"#cloner_new_pks#\";\n    if ($newPks == \'0\' && $dump != \'1\') {\n        showError(\'Primary keys can only be retained in dump mode.\');\n        return;\n    }\n\n    if (getFormSource($f1) == false) {\n        showError(\'The form $f1 (cloner_form_source) does not exist!\');\n        return;\n    }\n\n    if (getFormDestination($f2) == false) {\n        showError(\'The form $f2 (cloner_form_desc) does not exist!\');\n        return;\n    }\n\n\n\n    dumpFormInfo($f1, $dump);\n    processForm($f1, $f2, $tabPks);\n    processObjects($f1, $f2, $tabPks);\n    processSubforms($f1, $tabPks, $dump);\n    processIframeForms($f1, $tabPks, $dump);\n    \n    showForm($f2, $dump);\n\n}\n\nstartCloner();	    \n', 'hide', '', '1', '0', ''),
('nusetup_BD', 'nusetup_BD', 'System PHP', 'nubuilder', 'nuDisplayError(\'The Setup cannot be deleted!\');', NULL, NULL, '1', '0', NULL),
('nusetup_AS', 'nusetup_AS', 'System PHP', 'nubuilder', 'function writeVersionToFile($dbVersion, $filesVersion) {\n    \n      $f = fopen(__DIR__ . \'/../version.txt\', \"w+\")  or die(\"Unable to open file!\");\n      fwrite($f, \"nuBuilder Forte 4.5\\n\\n\");\n      fwrite($f,\"DB Version: \".\"$dbVersion\\n\");\n      fwrite($f, \"Files Version: \".\"$filesVersion\\n\\n\");\n      fwrite($f,\"(V.MajorVersion-CurrentDate.BuildNumber)\");\n      fclose($f);\n\n}\n\n\n$nuDevOde = \'#nuDevMode#\' == \'1\';\n\n// Write Version Info\n\nif ($nuDevOde ) {\n    \n    $nuNewDBV = \'#set_db_version_inc#\';\n    if ($nuNewDBV != \'\') {\n        $qry = \"UPDATE zzzzsys_info SET inf_details = ? WHERE  inf_code = \'nuDBVersion\'\";\n        nuRunQuery($qry, array($nuNewDBV));\n		$nuDBV = $nuNewDBV;\n    } else {\n        $nuDBV = \'#set_db_version#\';\n    }\n\n    $nuNewFilesV = \'#set_files_version_inc#\';\n    if ($nuNewFilesV != \'\') {\n        $qry = \"UPDATE zzzzsys_info SET inf_details = ? WHERE  inf_code = \'nuFilesVersion\'\";\n        nuRunQuery($qry, array($nuNewFilesV));\n		$nuFilesV = $nuNewFilesV;\n    } else {\n        $nuFilesV = \'#set_files_version#\';\n    }\n    \n    if ($nuNewFilesV != \'\' || $nuNewDBV != \'\') {\n        writeVersionToFile($nuDBV, $nuFilesV);\n    }\n    \n    if (\'#set_dev_reset_tables#\' == true) { \n        \n        $lang = array(\'[\"Arabic\",\"Armenian\",\"Chinese\",\"Czech\",\"Dutch\",\"French\",\"German\",\"Greek\",\"Hindi\",\"Italian\",\"Malay\",\"Polish\",\"Romanian\",\"Russian\",\"Spanish\",\"Tamil\",\"Vietnamese\"]\');\n        nuRunQuery(\'UPDATE zzzzsys_setup SET set_languages_included = ?, set_language = NULL, set_denied = 1 WHERE zzzzsys_setup_id = 1\', $lang);\n        \n        $q = \"\n            DELETE FROM zzzzsys_user WHERE zzzzsys_user_id not like \'nu%\';\n            DELETE FROM zzzzsys_access WHERE zzzzsys_access_id not like \'nu%\';\n            DELETE FROM zzzzsys_access_form WHERE zzzzsys_access_form_id not like \'nu%\';\n            DELETE FROM zzzzsys_access_php WHERE zzzzsys_access_php_id not like \'nu%\';\n            DELETE FROM zzzzsys_access_report WHERE zzzzsys_access_report_id not like \'nu%\';\n            DELETE FROM zzzzsys_cloner WHERE zzzzsys_cloner_id not like \'nu%\';\n            DELETE FROM zzzzsys_file where sfi_group <> \'nubuilder\';\n            DELETE FROM zzzzsys_format where zzzzsys_format_id  not like \'nu%\';\n            DELETE FROM zzzzsys_note where zzzzsys_note_id not like \'nu%\';\n            DELETE FROM zzzzsys_note_category where zzzzsys_note_category_id not like \'nu%\';\n            DELETE FROM zzzzsys_select where zzzzsys_select_id not like \'nu%\';\n            DELETE FROM zzzzsys_select_clause where zzzzsys_select_clause_id not like \'nu%\';\n            DELETE FROM zzzzsys_php WHERE IFNULL(sph_php,\'\') = \'\';\n            DELETE FROM zzzzsys_translate;\n            DELETE FROM zzzzsys_debug;\n            DELETE FROM zzzzsys_session;\n        \";\n        \n        nuRunQuery($q);\n\n        \n    }\n\n}\n\nfunction nuImportSelectedLanguageFiles($l) {\n	try{\n		for($i = 0; $i < count($l); $i++) {\n		    if (trim($l[$i]) == \'\')  continue;\n			$file = dirname(__FILE__). \'/languages/\'. $l[$i].\'.sql\';\n			$sql = file_get_contents($file);\n			if ($sql) {\n				nuRunQuery($sql);\n			} else {\n				nuDisplayError(\"Error opening the file: $file\");\n			}\n		}\n	}catch (Exception $e) {\n        nuDisplayError(nuTranslate(\'<h2>\'.nuTranslate(\'Error\').\'</h2><br>Error while importing language files.\'));    		\n	}\n}\n\n\n// Include/Exclude languages\n$t = \"#set_languages_included_json#\";\nif ($t != \'-1\') { // no language change\n    \n    nuRunQuery(\"DELETE FROM zzzzsys_translate WHERE zzzzsys_translate_id LIKE \'nu%\'\");\n    if ($t != \'\') nuImportSelectedLanguageFiles(json_decode($t));\n    \n}\n\n// Check if header textarea changed \n\nif (\"#set_header_current#\" != \"#set_header#\" ||  \"#set_language_current#\" != \"#set_language#\" ) {\n     nuDisplayError(nuTranslate(\'<h2>\'.nuTranslate(\'Information\').\'</h2><br>You will need to log in again for the changes to take effect.\'));    \n}\n\n\n', NULL, NULL, '1', '0', NULL),
('nu5fdbb4226426ddb_AB', 'nu5fdbb4226426ddb_AB', 'System PHP', 'nubuilder', 'nuSetFormValue(\'set_code_snippet_paste\', nuLookupRecord()->cot_source_code);', NULL, NULL, '1', '0', NULL),
('nu5fdb22ce4a13271_AB', 'nu5fdb22ce4a13271_AB', 'System PHP', 'nubuilder', 'nuSetFormValue(\'sfo_code_snippet_paste\', nuLookupRecord()->cot_source_code);', NULL, NULL, '1', '0', NULL),
('nu5fdbd8ae17c40b9_AB', 'nu5fdbd8ae17c40b9_AB', 'System PHP', 'nubuilder', 'nuSetFormValue(\'sob_code_snippet_paste\', nuLookupRecord()->cot_source_code);', NULL, NULL, '1', '0', NULL),
('nu5fdbdaee571fbb3_AB', 'nu5fdbdaee571fbb3_AB', 'System PHP', 'nubuilder', 'nuSetFormValue(\'sob_code_snippet_paste\', nuLookupRecord()->cot_source_code);', NULL, NULL, '1', '0', NULL),
('nu5fdcef9a8e8c47c_AB', 'nu5fdcef9a8e8c47c_AB', 'System PHP', 'nubuilder', 'nuSetFormValue(\'sfo_code_snippet_paste\', nuLookupRecord()->cot_source_code);', NULL, NULL, '1', '0', NULL),
('nu5fdefa3f19faf1e', 'nugetrecord', 'Edit Record Navigator: Get Next/Previous Primary Key', 'nubuilder', '$eri = json_decode(base64_decode(\'#NU_EDIT_RECORD_INFO#\'));\n$pk = $eri->primary_key;\n$action = $eri->_action;\n\n$goto_pk = \"\";\n$cr = \"\";\n\nif ($action == \'next\' || $action == \'back\') {\n    $t = nuRunQuery($eri->browse_sql);\n\n    while ($r = db_fetch_object($t)) {\n\n        if ($eri->record_id == $r->$pk) {\n            if ($action == \"next\") {\n                $r = db_fetch_object($t);\n                $goto_pk = $r->$pk;\n                break;\n            }\n            else {\n                $goto_pk = $cr;\n                break;\n            }\n        }\n\n        $cr = $r->$pk;\n    }\n}\n\n$j = \" onOpenRecord(\'$goto_pk\',\'$action\'); \";\n\nnuJavascriptCallback($j);', 'hide', '', '1', '0', ''),
('nu5fde5c8f1e64a86_AB', 'nu5fde5c8f1e64a86_AB', 'System PHP', 'nubuilder', 'nuSetFormValue(\'sse_code_snippet_paste\', nuLookupRecord()->cot_source_code);', NULL, NULL, '1', '0', NULL),
('nu5fe07d3154346f7', 'nuAuthentication2FA_Template', '2FA Authentication Send and Verify', 'nubuilder', '\nfunction nuGetEmail($adminEmail = \'\') {\n    $u = nuUser();\n    $email = $u->sus_email;\n    if ($email == null) $email = $adminEmail;\n    return $email;\n} \n\nfunction nuSendCodeByEmail($code) {\n    $content = \'Your Code: \'.$code;\n    $subject = \'nuBuilder Authentication Code\';\n    $fromName = \'nubuilder\';\n    $sendTo = nuGetEmail(\'\'); // Pass the globeadmin email address here \n    nuEmailPHP($sendTo, $fromAddress, $fromName, $content, $subject);\n    nuDisplayError(\"An email has been sent to the registered account. Subject = \'\".subject.\"\'\");\n}\n\n$command = ! isset($nuauthcommand) ? \"#nuauthcommand#\" : $nuauthcommand;\n\n$u		= (nuHash()[\'GLOBAL_ACCESS\'] == \'1\'  ? $_SESSION[\'nubuilder_session_data\'][\'GLOBEADMIN_NAME\'] : nuUser()->zzzzsys_user_id);\n\nif ($command == \'auth_check\') {                                                 // Check if the token is valid\n    \n    $auth2FACheck = $nuAuthCheck(get_defined_vars(), 3600);                     // Token validated less than 1 hour ago\n\n} elseif ($command == \'send\') {                                                 // Generate and send the token \n    \n    $token = nuGenerateToken(7);                                                // Generate a random string of length 7\n    \n    nuSet2FAToken($token);                                                      // Store the token in the session\n    nuSet2FAVerifiedTime();			\n    nuOutput2FATokenToConsole($token);                                          // For testing purposes, output the token to the developer console\n\n    //nuSendCodeByEmail($token);                                                // Send the token by email. \n    \n} elseif ($command == \'verify\') {                                               // Verify if the entered token is valid\n\n   //  next line is causing an error\n     $tokenExpired = nuAuthGetElapsedTime(nuGet2FATokenSentTime($u)) > 300;     // Sent token valid for 5 min (300 s)\n  \n    if (nuTokenMatches(\"#auth_code_verify#\", $u) && ! $tokenExpired) {          // Entered token matches and token is not expired\n        nuSetAuthenticated(\"#auth_code_verify#\");\n    } else {\n        nuShow2FAAuthenticationError();\n    }\n    		\n}\n', 'hide', '', '0', '1', ''),
('nuauthentication_BE', 'nuauthentication_BE', 'System PHP', 'nubuilder', '$devMode = nuReplaceHashVariables(\"#nuDevMode#\");\n\n$t = $devMode == \'1\' ? \'_Template\' : \'\';\n\n$p  = nuProcedure(\'nuAuthentication2FA\'.$t);	\n\nif($p != \'\') { \n    eval($p); \n} else {\n    nuDisplayError(nuTranslate(\'The Procedure nuAuthentication2FA does not exist.\'));    \n}\n\n\n\n\n\n', NULL, NULL, '1', '0', NULL),
('nusetup_BE', 'nusetup_BE', 'System PHP', 'nubuilder', 'function getFileVersion() {\n    $f = __DIR__ . \'/../version.txt\';\n    if (is_readable($f)) {\n        $lines = file($f) [3];\n        $lines = preg_replace(\"/\\r|\\n/\", \"\", $lines);\n        $v = substr($lines, 15, strlen($lines) - 15);\n        return $v;\n\n    }\n    return \"Unknown\";\n}\n\n$v = getFileVersion();\n\n$j = \"\n\n    function nuGetFilesVersion() {\n        return \'$v\';\n    }\n\n\";\n\nnuAddJavascript($j);', NULL, NULL, '1', '0', NULL),
('nu5fe94c6815842ec_AB', 'nu5fe94c6815842ec_AB', 'System PHP', 'nubuilder', 'nuSetFormValue(\'sph_code_snippet_paste\', nuLookupRecord()->cot_source_code);', NULL, NULL, '1', '0', NULL),
('nuobjectgrid_BS', 'nuobjectgrid_BS', 'System PHP', 'nubuilder', '\n    $o = \'#sfo_type#\';\n\n    if(\'#sfo_type#\'             == \'\'){nuDisplayError(\'<b>Type</b> Cannot Be Blank..\', \'sfo_type\');}\n    if(\'#sfo_code#\'             == \'\'){nuDisplayError(\'<b>Code</b> Cannot Be Blank..\', \'sfo_code\');}\n    if(\'#sfo_description#\'      == \'\'){nuDisplayError(\'<b>Description</b> Cannot Be Blank..\', \'sfo_description\');}\n\n\n    \n    \n    if($o == \'browseedit\' || $o == \'subform\' || $o == \'browse\'){\n        \n        if($o != \'browse\'){\n            nuCheckTabs();\n        }\n        \n        if($o != \'subform\'){\n            nuCheckBrowse();\n        }\n        \n        if(\'#sfo_browse_sql#\'   == \'\'){nuDisplayError(\'<b>Browse SQL</b> Cannot Be Blank..\', \'sfo_browse_sql\');}\n    }\n\n    if($o == \'edit\' or $o == \'launch\'){\n        nuCheckTabs();\n    }\n\n    if($o != \'launch\'){\n        if(\'#sfo_table#\'            == \'\'){nuDisplayError(\'<b>Table Name</b> Cannot Be Blank..\', \'sfo_table\');}\n        if(\'#sfo_primary_key#\'      == \'\'){nuDisplayError(\'<b>Primary Key</b> Cannot Be Blank..\', \'sfo_primary_key\');}\n    }\n\nfunction nuCheckBrowse(){\n\n    $r  = 0;\n    $sf = nuSubformObject(\'zzzzsys_browse_sf\');\n    \n    for($i = 0 ; $i < count($sf->rows) ; $i++){\n       if($sf->deleted[$i] == 0){$r++;}\n    }\n    \n    if($r == 0){\n       nuDisplayError(\'<b>Must have at least 1</b> Browse Column Defined..\');\n    }\n    \n}\n\nfunction nuCheckTabs(){\n\n    $r  = 0;\n    $sf = nuSubformObject(\'zzzzsys_tab_sf\');\n    \n    for($i = 0 ; $i < count($sf->rows) ; $i++){\n       if($sf->deleted[$i] == 0){$r++;}\n    }\n    \n    if($r == 0){\n       nuDisplayError(\'<b>Must have at least 1</b> Tab Column Defined..\');\n    }\n    \n}\n\n\n\n\n', '', '', '1', '0', ''),
('nuobjectgrid_AS', 'nuobjectgrid_AS', 'System PHP', 'nubuilder', '$s  = \"\n    SELECT * \n    FROM zzzzsys_browse \n    WHERE sbr_zzzzsys_form_id = \'#RECORD_ID#\'\n    ORDER BY sbr_order;\n\";\n\n\n$t = nuRunQuery($s);\n$o = 10;\n\nwhile($r = db_fetch_object($t)){\n        \n    $s  = \"\n        UPDATE zzzzsys_browse \n        SET sbr_order = \'$o\'\n        WHERE zzzzsys_browse_id = \'$r->zzzzsys_browse_id\'\n        ORDER BY sbr_order;\n    \";\n    \n    nuRunQuery($s);\n    \n    $o = $o + 10;    \n    \n}\n\n$s  = \"\n    SELECT * \n    FROM zzzzsys_tab \n    WHERE syt_zzzzsys_form_id = \'#RECORD_ID#\'\n    ORDER BY syt_order;\n\";\n\n$t = nuRunQuery($s);\n$o = 10;\n\nwhile($r = db_fetch_object($t)){\n        \n    $s  = \"\n        UPDATE zzzzsys_tab \n        SET syt_order = \'$o\'\n        WHERE zzzzsys_tab_id = \'$r->zzzzsys_tab_id\'\n        ORDER BY syt_order;\n    \";\n    \n    nuRunQuery($s);\n    \n    $o = $o + 10;    \n    \n}\n\nnuCloneForm();', '', '', '1', '0', ''),
('nuobjectgrid_AD', 'nuobjectgrid_AD', 'System PHP', 'nubuilder', 'nuDeleteForm(\'#RECORD_ID#\');', '', '', '1', '0', ''),
('nuobjectgrid_BB', 'nuobjectgrid_BB', 'System PHP', 'nubuilder', '$s  = \"CREATE TABLE #TABLE_ID# SELECT zzzzsys_form_id AS theid FROM zzzzsys_form WHERE \";\n$w  = \"1\";\nif ( $GLOBALS[\'nuSetup\']->set_denied == 1 )  { \n$w  = \"zzzzsys_form_id NOT LIKE \'nu%\' OR zzzzsys_form_id = \'nuuserhome\'\"; \n}\nnuRunQuery(\"$s$w\");\n', '', '', '1', '0', '');
INSERT INTO `zzzzsys_php` (`zzzzsys_php_id`, `sph_code`, `sph_description`, `sph_group`, `sph_php`, `sph_run`, `sph_zzzzsys_form_id`, `sph_system`, `sph_global`, `sph_hide`) VALUES
('nu5fee06b1acbe4bb', 'nubackup', 'Create a Database Backup using mysqldump', 'nubuilder', 'if($_SESSION[\'nubuilder_session_data\'][\'IS_DEMO\']){\n\n	nuDisplayError(\'Not available in the Demo...\');\n	return;\n\n}\n	\n// *******************************************************************\n\n// Settings. Please modify if different.\n\n//Use nuBuilder DB settings. Path to nuconfig.php\n$path_nuconfig_php = __DIR__ . \'/../nuconfig.php\';\n\n// Path to Mysqldump.php\n$path_mysqldump_php = __DIR__ . \'/libs/mysqldump/Mysqldump.php\';\n\n// Directory to write the sql dump to\n$path_sql_dump = __DIR__ . \'/libs/mysqldump/dumps/\';\n\n// Save dump to file:\n$file_name =  date(\'m-d-Y_H:i:s\') . \'_\' . \'nuBuilder_backup\' . \'.sql.gzip\';\n\n// *******************************************************************\n\ntry {\n    require_once ($path_mysqldump_php);\n} catch (Exception $e) {\n    nuDisplayError(\'require_once failed! Error: \'.$e);\n}\n\ntry {\n    require $path_nuconfig_php;\n} catch (Exception $e) {\n    nuDisplayError(\'require failed! Error: \'.$e);\n}\n\n// Dump Settings\n$dumpSettings = array();\n$dumpSettings[\'single-transaction\'] = false;\n$dumpSettings[\'no-create-info\'] = false;\n$dumpSettings[\'lock-tables\'] = false;\n$dumpSettings[\'add-locks\'] = false;\n$dumpSettings[\'extended-insert\'] = false;\n$dumpSettings[\'skip-definer\'] = true;\n$dumpSettings[\'compress\'] = Ifsnop\\Mysqldump\\Mysqldump::GZIP;\n\n// Create Mysqldump\n$dumper = new Ifsnop\\Mysqldump\\Mysqldump(\"mysql:host=$nuConfigDBHost;dbname=$nuConfigDBName\", $nuConfigDBUser, $nuConfigDBPassword, $dumpSettings);\n\nif (\"#nubackup_user_records_only#\"  == \"1\") {\n\n    $tableWheres =  array(\n        \"zzzzsys_access\"        =>  \"zzzzsys_access_id not like \'nu%\' \",\n        \"zzzzsys_access_form\"   =>  \"zzzzsys_access_form_id not like \'nu%\' \",\n        \"zzzzsys_access_php\"    =>  \"zzzzsys_access_php_id not like \'nu%\' \",\n        \"zzzzsys_access_report\" =>  \"zzzzsys_access_report_id not like \'nu%\' \",\n        \"zzzzsys_browse\"        =>  \"zzzzsys_browse_id not like \'nu%\' \",\n        \"zzzzsys_cloner\"        =>  \"zzzzsys_cloner_id not like \'nu%\' \",\n        \"zzzzsys_code_snippet\"  =>  \"zzzzsys_code_snippet_id not like \'nu%\' \",\n        \"zzzzsys_debug\"   		=>  \"zzzzsys_debug_id not like \'nu%\' \",\n        \"zzzzsys_event\"   		=>  \"zzzzsys_event_id not like \'nu%\' \",\n        \"zzzzsys_file\"   		=>  \"zzzzsys_file_id not like \'nu%\' \",\n        \"zzzzsys_form\"   		=>  \"zzzzsys_form_id not like \'nu%\' \",\n        \"zzzzsys_format\"        =>  \"zzzzsys_format_id not like \'nu%\' \",\n        \"zzzzsys_info\"          =>  \"zzzzsys_info_id not like \'nu%\' \",\n        \"zzzzsys_note\"          =>  \"zzzzsys_note_id not like \'nu%\' \",\n        \"zzzzsys_note_category\" =>  \"zzzzsys_note_category_id not like \'nu%\' \",\n        \"zzzzsys_object\"   		=>  \"zzzzsys_object_id not like \'nu%\' \",\n        \"zzzzsys_object_list\"   =>  \"zzzzsys_object_list_id not like \'nu%\' \",\n        \"zzzzsys_php\"   		=>  \"zzzzsys_php_id not like \'nu%\' \",\n        \"zzzzsys_report\"   		=>  \"zzzzsys_report_id not like \'nu%\' \",\n        \"zzzzsys_report_data\"   =>  \"zzzzsys_report_data_id not like \'nu%\' \",\n        \"zzzzsys_run_list\"   	=>  \"zzzzsys_run_list_id not like \'nu%\' \",\n        \"zzzzsys_select\"   		=>  \"zzzzsys_select_id not like \'nu%\' \",\n        \"zzzzsys_select_clause\" =>  \"zzzzsys_select_clause_id not like \'nu%\' \",\n        \"zzzzsys_session\"   	=>  \"zzzzsys_session_id not like \'nu%\' \",\n        \"zzzzsys_setup\"   		=>  \"zzzzsys_setup_id not like \'nu%\' \",\n        \"zzzzsys_tab\"   		=>  \"zzzzsys_tab_id not like \'nu%\' \",\n        \"zzzzsys_timezone\"   	=>  \"zzzzsys_timezone_id not like \'nu%\' \",\n        \"zzzzsys_translate\"   	=>  \"zzzzsys_translate_id not like \'nu%\' \",\n        \"zzzzsys_user\"   		=>  \"zzzzsys_user_id not like \'nu%\' \"\n    \n    );\n    \n    $dumper->setTableWheres($tableWheres);\n\n}\n\n\n$dump_file = $path_sql_dump . sanitizeFilename($file_name);\n\n// Start the dump\ntry {\n    \n    if (!is_dir($path_sql_dump))\n    {\n        mkdir($path_sql_dump, 0755);\n    }\n    \n    $dumper->start($dump_file);\n}\ncatch(\\Exception $e) {\n    nuDisplayError(\'Export Error: \' . $e->getMessage());\n}\n\n$dump_file = base64_encode($path_sql_dump . $file_name);\n\n$js = \"\n   nuMessage([\'<h2>Export completed!</h2><br>SQL Dump saved in \' + atob(\'$dump_file\')]);\n\";\n\nnuJavascriptCallback($js);\n\nfunction sanitizeFilename($file) {\n    $file = mb_ereg_replace(\"([^\\w\\s\\d\\-_~,;\\[\\]\\(\\).])\", \'\', $file);\n    return mb_ereg_replace(\"([\\.]{2,})\", \'\', $file);\n}', 'hide', '', '1', '0', ''),
('nu5ff7efb1ed369a6', 'nurefreshselectobject', 'Refresh a select object', 'nubuilder', 'function nuGetSelectValues($formId, $selectId) {\n\n    $sql = \"\n        SELECT\n            sob_select_sql\n        FROM\n            `zzzzsys_object`\n        WHERE\n            sob_all_zzzzsys_form_id = ? AND sob_all_id = ?\n    \";\n\n    $t = nuRunQuery($sql, array($formId, $selectId));\n\n    $a = array();\n    if (db_num_rows($t) == 1) {\n\n        $r = db_fetch_row($t);\n        if ($r != false) {\n            \n            $disS = nuReplaceHashVariables($r[0]);\n            $t = nuRunQuery($disS);\n\n            while ($row = db_fetch_row($t)) {\n                $a[] = $row;\n            }\n\n            return json_encode($a);\n        }\n\n    }\n\n    return false;\n\n}\n\nfunction nuPopulateSelectObject($formId, $selectId, $removeBlank) {\n\n    $j = nuGetSelectValues($formId, $selectId);\n\n\n    $cb = \"if (window.nuSelectObjectRefreshed) {\n    	    nuSelectObjectRefreshed(\'$formId\', \'$selectId\', count);\n         }\";\n    \n    if ($j == false) {\n        \n        return \"var count = -1; \".$cb;\n        \n    } else {\n    	\n    return \"\n    	function nuPopulateSelectObject() {\n    	\n    		var p = $j;\n    \n    		$(\'#$selectId\').empty();\n    		\n    		if (\'$removeBlank\' == \'0\' ) {\n    		    $(\'#$selectId\').append(\'<option value=\\\"\\\"></option>\');\n    		}\n            \n            var count = 0;\n    \n    		if (p != \'\') {\n    		    var s = nuIsSaved();\n    			\n    			for (var i = 0; i < p.length; i++) {\n    				$(\'#$selectId\').append(\'<option value=\\\"\' + p[i][0] + \'\\\">\' + p[i][1] + \'</option>\');\n    				count ++;\n    			}\n    			\n    			if (s) { nuHasNotBeenEdited(); }\n    			\n    		}\n    		\n    		return count;\n    	}\n    	\n    	var count = nuPopulateSelectObject();\n\n    \".$cb;\n    }\n\n}\n\nfunction nuRefreshSelectObject($selectId, $formId, $removeBlank) {\n\n    if (hashCookieNotSetOrEmpty($formId)) {\n        $formId = \'#form_id#\';\n    }\n\n    $js = nuPopulateSelectObject($formId, $selectId, $removeBlank);\n    nuJavascriptCallback($js);\n\n}\n\nnuRefreshSelectObject(\'#nurefreshselectobject_selectid#\', \'#nurefreshselectobject_formid#\', \'#nurefreshselectobject_removeblank#\');', 'hide', '', '1', '1', ''),
('nu5ff8249659aef00', 'nurefreshdisplayobject', 'Refresh a display object', 'nubuilder', 'function nuGetDisplayValue($formId, $obj) {\n\n    $sql = \"SELECT sob_display_sql FROM `zzzzsys_object` WHERE sob_all_zzzzsys_form_id = ? AND sob_all_id = ?\";\n\n    $t = nuRunQuery($sql, array($formId, $obj));\n\n    if (db_num_rows($t) == 1) {\n        $r = db_fetch_row($t);\n        if ($r != false) {\n\n            $disS = nuReplaceHashVariables($r[0]);\n            $disT = nuRunQuery($disS);\n\n            if (db_num_rows($disT) >= 1) {\n                $disR = db_fetch_row($disT);\n                return $disR[0];\n            } else {\n                return \"\";\n            }\n        }\n    }\n\n    return false;\n}\n\n$obj = \'#nurefreshdisplayobject_displayid#\';\n$formId = \'#nurefreshdisplayobject_formid#\';\n\nif (hashCookieNotSetOrEmpty($formId)) {\n    $formId = \'#form_id#\';\n}\n\n$value = nuGetDisplayValue($formId, $obj);\nif ($value === false && $value !== \'\') {\n    $j = \"nuMessage([nuTranslate(\'Failed to refresh the Display Object: \') + \'$obj\']); \";\n} else {\n\n    $j = \"\n		var obj = $(\'#$obj\');\n		var format = obj.attr(\'data-nu-format\');\n		var v = nuFORM.addFormatting(\'$value\', format);\n		obj.val(v).change();\n		\n		if (window.nuDisplayObjectRefreshed) {\n		    nuDisplayObjectRefreshed(\'$obj\', \'$formId\');\n		}\n    \";\n}\n\nnuJavascriptCallback($j);', 'hide', '', '1', '1', ''),
('nuobjectgrid_BD', 'nuobjectgrid_BD', 'System PHP', 'nubuilder', 'nuDisplayError(nuTranslate(\'The Delete Operation is not available.\'));', NULL, NULL, '1', '0', NULL),
('nutranslate_BS', 'nutranslate_BS', 'System PHP', 'nubuilder', 'if (\'#nuDevMode#\' != 1 && substr(\'#RECORD_ID#\', 0, 2) === \'nu\') {\n   nuDisplayError(\"nuBuilder\'s translation strings cannot be modified\");\n}', NULL, NULL, '1', '0', NULL),
('nuphp_AS', 'nuphp_AS', 'System PHP', 'nubuilder', '$justphp = nuObjKey(nuHash(),\'filter\') == \'justphp\';\n\nif (\'#nuDevMode#\' != 1 && substr(\'#RECORD_ID#\', 0, 2) === \'nu\' ) {\n   if ($justphp) {\n        nuDisplayError(nuTranslate(\'<h2>\'.nuTranslate(\'Information\').\'</h2><br>Changes in system forms are overwritten with an update\'));  \n   } \n}', NULL, NULL, '1', '0', NULL),
('nusession_BB', 'nusession_BB', 'System PHP', 'nubuilder', 'if($_SESSION[\'nubuilder_session_data\'][\'IS_DEMO\']){\n	nuDisplayError(nuTranslate(\'Not available in the Demo\').\"..\");\n}', NULL, NULL, '1', '0', NULL),
('nu5bad6cb32d22215_AB', 'nu5bad6cb32d22215_AB', 'System PHP', 'nubuilder', '$lu = nuLookupRecord();\n$type = empty($lu->run) ? \'\' : substr($lu->run, 0, 1);\nnuSetFormValue(\'sob_run_type\',  $type);', NULL, NULL, '1', '0', NULL),
('nu6068bee1b6c63be', 'RUNADDDBCOLUMN', 'Add a new database column', 'nubuilder', 'if (nuHash() [\'GLOBAL_ACCESS\'] == \'0\') return;\n\n$sql = \'ALTER TABLE `#sob_all_table#` ADD \' . \'#sql_query#\';\n$after = \'#sql_after_column#\';\nif ($after != \'\') {\n    $sql = $sql . \" AFTER \" . $after;\n}\n\nif (preg_match(\'[DELETE |DROP |INSERT |;]\', strtoupper($sql))) {\n    $r = - 2;\n}\nelse {\n    $r = nuRunQuery($sql, array() , true);\n}\n\nif ($r == 0) {\n    $js = \"nuMessage([nuTranslate(\'The column has been created successfully\')]); nuRefreshSelectObject(\'sql_after_column\');\";\n}\nelse if ($r == - 1) {\n    $js = \"nuMessage([nuTranslate(\'An error occured while creating the column\'), nuTranslate(\'Check nuDebug Results for details\')]);\";\n\n}\nelse if ($r == - 2) {\n    $js = \"nuMessage([nuTranslate(\'An error occured while creating the column\'), nuTranslate(\'The query contains invalid keywords\')]);\";\n\n}\n\nnuJavascriptCallback($js);\n', 'hide', '', '1', '0', ''),
('nutranslate_BD', 'nutranslate_BD', 'System PHP', 'nubuilder', 'if (\'#nuDevMode#\' != 1 && substr(\'#RECORD_ID#\', 0, 2) === \'nu\') {\n   nuDisplayError(\"nuBuilder\'s translation strings cannot be modified\");\n}', NULL, NULL, '1', '0', NULL),
('nutestemail', 'nutestemail', 'Send a test email', 'nubuilder', '$to             = \'#ema_to#\';\n$fromAddress    = \'#set_smtp_from_address#\';\n$fromName       = \'#set_smtp_from_name#\';\n$body           = \'#ema_body#\';\n$subject        = \'#ema_subject#\';\n$bcc            = \'#ema_bcc#\';\n$cc             = \'#ema_cc#\';\n\n$recipient = ($to == \'\' && $bcc  ==\'\' && $cc == \'\') ? false : true;\n\nif (! $recipient || $fromAddress == \'\' || $fromName = \'\' || $body == \'\' || $subject == \'\') {\n    showMessage(nuTranslate(\'Error\'), nuTranslate(\'Required fields cannot be blank.\'));\n    return;\n}\n\n$result = nuSendEmail($to, $fromAddress, $fromName, $body, $subject, array(), true, $cc, $bcc);\n\nif (count($result) == 2) {\n    showMessage(nuTranslate(\'Result\'), $result[1]);\n} else {\n    showMessage(nuTranslate(\'Result\'), $result[1].\'<br>\'.$result[2]);  \n}    \n\nfunction showMessage($title, $msg) {\n    nuJavascriptCallback(\"nuMessage([\'<h2>\".$title.\"</h2><br>\" . $msg . \"\']);\");\n}', 'hide', '', '1', '0', ''),
('nuphp_BS', 'nuphp_BS', 'System PHP', 'nubuilder', '$justphp = nuObjKey(nuHash(),\'filter\') == \'justphp\';\n\nif (\'#nuDevMode#\' != 1 && substr(\'#RECORD_ID#\', 0, 2) === \'nu\' ) {\n   if (! $justphp) {\n        nuDisplayError(nuTranslate(\"Templates cannot be saved. Clone it instead.\"));\n   } \n}', NULL, NULL, '1', '0', NULL),
('nu5bad6cb32dcbcb4_AB', 'nu5bad6cb32dcbcb4_AB', 'System PHP', 'nubuilder', '\n$s  = \"\n        SELECT * \n        FROM zzzzsys_form\n        WHERE zzzzsys_form_id = \'#LOOKUP_RECORD_ID#\'\n        \n        \";\n\n$t  = nuRunQuery($s);\n$r  = db_fetch_object($t);\n\nnuSetFormValue(\'sob_lookup_table\', $r->sfo_table);\n', NULL, NULL, '1', '0', NULL),
('nu5bad6cb32c9102c_AB', 'nu5bad6cb32c9102c_AB', 'System PHP', 'nubuilder', '$s  = \"\n        SELECT * \n        FROM zzzzsys_form\n        WHERE zzzzsys_form_id = \'#LOOKUP_RECORD_ID#\'\n        \n        \";\n\n$t  = nuRunQuery($s);\n$c = db_num_rows($t);\nif ($c == 1) {$r  = db_fetch_object($t); }\n\n\nnuSetFormValue(\'sob_subform_table\', $c == 1 ? $r->sfo_table: \'\');', '', '', '1', '0', ''),
('nuuser_BE', 'nuuser_BE', 'System PHP', 'nubuilder', '$add1Label  = isset($_SESSION[\'nubuilder_session_data\'][\'USER_ADDITIONAL1_LABEL\']) ? $_SESSION[\'nubuilder_session_data\'][\'USER_ADDITIONAL1_LABEL\'] : \'\';\n$add2Label  = isset($_SESSION[\'nubuilder_session_data\'][\'USER_ADDITIONAL2_LABEL\']) ? $_SESSION[\'nubuilder_session_data\'][\'USER_ADDITIONAL2_LABEL\'] : \'\';\n$addCode    = isset($_SESSION[\'nubuilder_session_data\'][\'USER_CODE_LABEL\']) ? $_SESSION[\'nubuilder_session_data\'][\'USER_CODE_LABEL\'] : \'\';\n\n$j = \"\n\n    	if (\'$add1Label\'    !== \'\') { nuSetLabelText(\'sus_additional1\', \'$add1Label\', true) };\n    	if (\'$add2Label\'    !== \'\') { nuSetLabelText(\'sus_additional2\', \'$add2Label\', true) };\n    	if (\'$addCode\'      !== \'\') { nuSetLabelText(\'sus_code\', \'$addCode\', true) };    	\n    	\n\";\n\nnuAddJavascript($j);', NULL, NULL, '1', '0', NULL),
('nu60f3f621d215470', 'nusetrefreshcache', 'Set marker to Refresh Form, Table schema', 'nubuilder', 'nuSetJSONDataAll(\'REFRESH_CACHE\',\'1\');\n\n$js = \"\n\nnuGetBreadcrumb();\n\nfunction msg() {\n   nuMessage(nuTranslate(\'Cache Refreshed\'));\n}\nsetTimeout(msg, 1000); \n\n\";\n\nnuJavascriptCallback($js);\n\n', 'hide', '', '1', '0', ''),
('nuuser_BB', 'nuuser_BB', 'System PHP', 'nubuilder', '$addCode    = isset($_SESSION[\'nubuilder_session_data\'][\'USER_CODE_LABEL\']) ? $_SESSION[\'nubuilder_session_data\'][\'USER_CODE_LABEL\'] : \'\';\n$j = \" if (\'$addCode\' !== \'\') { $(\'#nuBrowseTitle5\').html(\'$addCode\') };\";\nnuAddJavascript($j);', NULL, NULL, '1', '0', NULL),
('nu60f8e2ea4d13aff', 'nuimportusers', 'Import users from a CSV file', 'nubuilder', '$file = \"#csv_from#\";\nnuImportUsersFromCSV(\"../temp/\".$file, \";\", \"\\n\");\nnuProcessImportedUsers();', 'window', NULL, '1', '0', ''),
('nu610fd4ba4e73ede', 'nuupdateobject', 'Update an Object\'s Properties', 'nubuilder', 'if($_SESSION[\'nubuilder_session_data\'][\'IS_DEMO\']){\n\n	nuDisplayError(\'Not available in the Demo...\');\n	return;\n\n}\n\n$id = \"#nuupdateobject_id#\";\n$value = \"#nuupdateobject_value#\";\n$formId = \"#nuupdateobject_form_id#\";\n$type = \"#nuupdateobject_type#\";\n$column = \"#nuupdateobject_column#\";\n\nif ($type == \'tab\') {\n\n    $q = \"\n            UPDATE `zzzzsys_tab` \n            SET $column = ?\n            WHERE `zzzzsys_tab_id` = ?\n    \";\n    \n    nuRunQuery($q, array($value, $id));\n\n} else if ($type == \'edit\') {\n\n    $q = \"\n        UPDATE `zzzzsys_object` \n        SET $column = ?\n        WHERE `sob_all_zzzzsys_form_id` = ? AND `sob_all_id` = ?\n    \";\n\n    nuRunQuery($q, array($value, $formId, $id));\n\n} else {\n    \n    $q = \"\n            UPDATE `zzzzsys_browse` \n            SET `$column` = ? \n            WHERE `sbr_zzzzsys_form_id` = ? AND `sbr_order` = ?\n    \";\n    \n    nuRunQuery($q, array($value, $formId, $id));\n    \n}\n\n', 'hide', NULL, '1', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_report`
--

CREATE TABLE `zzzzsys_report` (
  `zzzzsys_report_id` varchar(25) NOT NULL,
  `sre_code` varchar(300) DEFAULT NULL,
  `sre_description` varchar(300) DEFAULT NULL,
  `sre_group` varchar(100) DEFAULT NULL,
  `sre_zzzzsys_php_id` varchar(25) DEFAULT NULL,
  `sre_zzzzsys_form_id` varchar(25) DEFAULT NULL,
  `sre_layout` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `zzzzsys_report_data`
-- (See below for the actual view)
--
CREATE TABLE `zzzzsys_report_data` (
`id` varchar(70)
,`code` varchar(300)
,`description` varchar(300)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `zzzzsys_run_list`
-- (See below for the actual view)
--
CREATE TABLE `zzzzsys_run_list` (
`id` varchar(25)
,`run` varchar(9)
,`code` varchar(300)
,`description` varchar(300)
);

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_select`
--

CREATE TABLE `zzzzsys_select` (
  `zzzzsys_select_id` varchar(25) NOT NULL,
  `sse_code` varchar(50) DEFAULT NULL,
  `sse_description` varchar(300) DEFAULT NULL,
  `sse_json` mediumtext DEFAULT NULL,
  `sse_sql` mediumtext DEFAULT NULL,
  `sse_edit` varchar(1) DEFAULT NULL,
  `sse_system` varchar(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_select_clause`
--

CREATE TABLE `zzzzsys_select_clause` (
  `zzzzsys_select_clause_id` varchar(25) NOT NULL,
  `ssc_zzzzsys_select_id` varchar(25) DEFAULT NULL,
  `ssc_type` varchar(300) DEFAULT NULL,
  `ssc_field` varchar(500) DEFAULT NULL,
  `ssc_clause` varchar(500) DEFAULT NULL,
  `ssc_sort` varchar(10) DEFAULT NULL,
  `ssc_order` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_session`
--

CREATE TABLE `zzzzsys_session` (
  `zzzzsys_session_id` varchar(25) NOT NULL DEFAULT '',
  `sss_access` mediumtext DEFAULT NULL,
  `sss_hashcookies` mediumtext DEFAULT NULL,
  `sss_time` int(11) DEFAULT NULL,
  `sss_login_time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_setup`
--

CREATE TABLE `zzzzsys_setup` (
  `zzzzsys_setup_id` varchar(25) NOT NULL DEFAULT '',
  `set_time_out_minutes` int(11) DEFAULT NULL,
  `set_zzzzsys_timezone_id` varchar(25) DEFAULT NULL,
  `set_language` varchar(20) DEFAULT NULL,
  `set_languages_included` varchar(1000) DEFAULT NULL,
  `set_smtp_username` varchar(255) DEFAULT NULL,
  `set_smtp_password` varchar(255) DEFAULT NULL,
  `set_smtp_host` varchar(255) DEFAULT NULL,
  `set_smtp_from_address` varchar(255) DEFAULT NULL,
  `set_smtp_from_name` varchar(255) DEFAULT NULL,
  `set_smtp_port` int(4) DEFAULT NULL,
  `set_smtp_use_authentication` varchar(1) DEFAULT NULL,
  `set_smtp_use_ssl` varchar(1) DEFAULT NULL,
  `set_header` longtext DEFAULT NULL,
  `set_denied` varchar(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_setup`
--

INSERT INTO `zzzzsys_setup` (`zzzzsys_setup_id`, `set_time_out_minutes`, `set_zzzzsys_timezone_id`, `set_language`, `set_languages_included`, `set_smtp_username`, `set_smtp_password`, `set_smtp_host`, `set_smtp_from_address`, `set_smtp_from_name`, `set_smtp_port`, `set_smtp_use_authentication`, `set_smtp_use_ssl`, `set_header`, `set_denied`) VALUES
('1', 480, '5281a1220508372', NULL, '[\"Arabic\",\"Armenian\",\"Chinese\",\"Czech\",\"Dutch\",\"French\",\"German\",\"Greek\",\"Hindi\",\"Italian\",\"Malay\",\"Polish\",\"Romanian\",\"Russian\",\"Spanish\",\"Tamil\",\"Vietnamese\"]', '1', '1', '1', '1', '1', 1, '1', '1', 'function nuHeaderTest() {\n    console.log(\'Functions placed here are available anywhere in nuBuilder Forte.\');\n}\n\n// nuOnLoad() will be run after each Browse and Edit Form loads. \n\nfunction nuOnLoad() {\n\n    if (nuFormType() == \'edit\') {\n        // Edit Form loaded\n    } else\n    if (nuFormType() == \'browse\') {\n        // Browse Form loaded\n    }\n\n}\n\n// </script>\n\n<!-- Define your own styles, override styles from nubuilder4.css -->\n\n<style> \n\n /*.nuActionButton {background-color:#0073aa;} */\n\n\n\n</style>\n\n\n<script>', '1');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_tab`
--

CREATE TABLE `zzzzsys_tab` (
  `zzzzsys_tab_id` varchar(25) NOT NULL,
  `syt_zzzzsys_form_id` varchar(25) DEFAULT NULL,
  `syt_title` varchar(250) DEFAULT NULL,
  `syt_order` int(11) DEFAULT NULL,
  `syt_help` varchar(3000) DEFAULT NULL,
  `syt_access` varchar(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_tab`
--

INSERT INTO `zzzzsys_tab` (`zzzzsys_tab_id`, `syt_zzzzsys_form_id`, `syt_title`, `syt_order`, `syt_help`, `syt_access`) VALUES
('nu5bad6cb36757b92', 'nuform', 'Browse', 20, 'nuOpenWiki(\'/Forms\');', NULL),
('nu5bad6cb36791fd5', 'nuform', 'Main', 10, 'nuOpenWiki(\'/Forms\');', NULL),
('nu5bad6cb367c5125', 'nuhome', 'Setup', 10, '', ''),
('nu5bad6cb36804778', 'nubuildreport', 'Report', 10, 'nuOpenWiki(\'/Reports\');', NULL),
('nu5bad6cb3683fa36', 'nubrowse', 'Browse', 10, '', NULL),
('nu5bad6cb3686cb0d', 'nuobject', 'All', 10, 'nuOpenWiki(\'/Objects_#Tab_-_All\');', NULL),
('nu5bad6cb368d9c40', 'nuobject', '|Run', 20, 'nuOpenWiki(\'/Objects#Tab_-_Run\');', NULL),
('nu5bad6cb36974818', 'nuobject', '|Display', 30, 'nuOpenWiki(\'/Objects#Tab_-_Display\');', NULL),
('nu5bad6cb369a6ee3', 'nuobject', '|Select', 40, 'nuOpenWiki(\'/Objects_#Tab_-_Select\');', NULL),
('nu5bad6cb369d0088', 'nuobject', '|Lookup', 50, 'nuOpenWiki(\'/Objects#Tab_-_Lookup\');', NULL),
('nu5bad6cb36a1c024', 'nuobject', '|Subform', 60, 'nuOpenWiki(\'/Objects#Tab_-_Subform\');', NULL),
('nu5bad6cb36a4af06', 'nuobject', '|Input', 80, 'nuOpenWiki(\'/Objects#Tab_-_Input\');', NULL),
('nu5bad6cb36a71012', 'nuobject', '|HTML', 90, 'nuOpenWiki(\'/Objects#Tab_-_HTML\');', NULL),
('nu5bad6cb36aaa539', 'nuevent', 'Event', 10, '', NULL),
('nu5bad6cb36ac903f', 'nuaccess', 'User', 10, 'nuOpenWiki(\'/User_Access#Creating_an_Access_Level\');', NULL),
('nu5bad6cb36af0c58', 'nuaccess', 'Forms', 20, 'nuOpenWiki(\'/User_Access#Creating_an_Access_Level\');', NULL),
('nu5bad6cb36b12637', 'nunonsystemform', 'Forms', 10, '', NULL),
('nu5bad6cb36b27343', 'nuphp', 'PHP', 10, 'nuOpenWiki(\'/Procedures\');', NULL),
('nu5bad6cb36b63cae', 'nuuser', 'User Details', 10, 'nuOpenWiki(\'/User_Access#Adding_a_User\');', NULL),
('nu5bad6cb36b994d2', 'nuaccessforms', 'Form', 10, '', NULL),
('nu5bad6cb36bc9e21', 'nublank', 'Launch', 10, '', NULL),
('nu5bad6cb36bdec72', 'nuaccessgroup', 'Access Group', 10, '', NULL),
('nu5bad6cb36bf8d38', 'nudebug', 'Debug', 10, '', NULL),
('nu5bad6cb36c16b42', 'nuaccess', 'Procedures', 30, 'nuOpenWiki(\'/User_Access#Creating_an_Access_Level\');', NULL),
('nu5bad6cb36c39fc8', 'nuaccess', 'Reports', 40, 'nuOpenWiki(\'/User_Access#Creating_an_Access_Level\');', NULL),
('nu5bad6cb36c55179', 'nuaccessreport', 'Access', 10, '', NULL),
('nu5bad6cb36c75655', 'nuaccesslevelreport', 'Access', 10, '', NULL),
('nu5bad6cb36c9250f', 'nutab', 'Tabs', 10, 'nuOpenWiki(\'/Forms#Tabs_.28Subform.29\');', NULL),
('nu5bad6cb36cb6102', 'nurunreport', 'Report', 10, '', NULL),
('nu5bad6cb36ce06d9', 'nurunphp', 'PHP', 10, '', NULL),
('nu5bad6cb36cfbbfa', 'nulaunchdates', 'Launch', 10, '', NULL),
('nu5bad6cb36d2177c', 'nurunlist', 'Test', 10, '', NULL),
('nu5bad6cb36d582df', 'nutimezone', 'Zone', 10, '', NULL),
('nu5bad6cb36d97acd', 'nusetup', 'Setup', 20, 'nuOpenWiki(\'/Setup#Setup\');', NULL),
('nu5bad6cb36e31edf', 'nusetup', 'Email Settings', 30, 'nuOpenWiki(\'/Setup#Email_Settings\');', NULL),
('nu5bad6cb36e9143a', 'nusetup', 'Header', 10, 'nuOpenWiki(\'/Setup#Header\');', NULL),
('nu5bad6cb36eb07f0', 'nutranslate', 'Phrase', 10, 'nuOpenWiki(\'/Translations\');', NULL),
('nu5bad6cb36ed494f', 'nupassword', 'Change Password', 10, '', NULL),
('nu5bad6cb36efb50c', 'nuhome', 'Builders', 20, '', ''),
('nu5bad6cb36f36433', 'nufflaunch', 'Form', 10, 'nuOpenWiki(\'/Form_Builder\');', NULL),
('nu5bad6cb36f72f8e', 'nufastformobjects', 'Label', 10, '', NULL),
('nu5bad6cb36f99a7e', 'nuobject', '|Calc', 100, 'nuOpenWiki(\'/Objects#Tab_-_Calc\');', NULL),
('nu5bad6cb36fcbc18', 'nuformat', 'Format', 10, 'nuOpenWiki(\'/Format_Builder\');', NULL),
('nu5bad6cb36ffc300', 'nuformatcurrency', 'Currency', 10, '', NULL),
('nu5bad6cb37026348', 'nuform', 'Custom Code', 30, 'nuOpenWiki(\'/Functions\');', NULL),
('nu5bad6cb370b409e', 'nuobject', 'Custom Code', 110, 'nuOpenWiki(\'/Objects#Tab_-_Custom_Code\');', NULL),
('nu5bad6cb370eb06a', 'nusample', 'Other Objects', 30, '', NULL),
('nu5bad6cb3719774c', 'nufile', 'Main', 10, 'nuOpenWiki(\'/Files\');', NULL),
('nu5bad6cb371c865e', 'nuobject', '|Image', 70, 'nuOpenWiki(\'/Objects#Tab_-_Image\');', NULL),
('nu5bad6cb371e2de7', 'nuselect', 'SQL', 10, 'nuOpenWiki(\'/SQL_Builder\');', NULL),
('nu5bad6cb3721b534', 'nulaunchable', 'Main', 10, '', NULL),
('nu5bad6cb3722f122', 'nulaunchable', 'Browse', 20, '', NULL),
('nu5bad6cb3724c6ca', 'nulaunchable', 'Custom Code', 30, '', NULL),
('nu5bad6cb37296979', 'nuclause', 'Clause', 10, '', NULL),
('nu5bad6cb3732c76e', 'nusample', 'Subform', 20, '', NULL),
('nu5bad6cb3734c18f', 'nufastreportobjects', 'Label', 10, '', NULL),
('nu5bad6cb3737e773', 'nufrlaunch', 'Main', 10, 'nuOpenWiki(\'/Report_Builder\');', NULL),
('nu5bad6cb373c384f', 'nusample', 'Inputs', 10, '', NULL),
('nu5bad6cb37405d73', 'nusamplesubformform', 'Main', 10, '', NULL),
('nufastforms', 'nuuserhome', 'Fast Forms', -1, '', NULL),
('nu5bad6cb374207e3', 'nuuserhome', 'Main', 20, '', NULL),
('nu5bad6cb37434d3a', 'nulaunchform', 'Forms', 10, '', NULL),
('nu5bad6cb374482e8', 'nutablookup', 'Tabs', 10, 'nuOpenWiki(\'/Forms#Tabs_.28Subform.29\');', NULL),
('nu5f711b9343afdbd', 'nucsvtransfer', 'Transfer', 10, 'nuOpenWiki(\'/CSV_Transfer\');', NULL),
('nu5fd29810a60df91', 'nunotes', 'Notes', 10, '', NULL),
('nu5fd750667019155', 'nuhome', 'Database', 30, '', NULL),
('nu5fd6f697276396f', 'nunotescategroy', 'Main', 10, '', NULL),
('nu5fd8ed305105aa6', 'nuuserlogged', 'Main', 10, '', NULL),
('nu5fdb1b5b254566f', 'nucodesnippet', 'Main', 10, '', NULL),
('nu5f9aaac95bc52e7', 'nucloner', 'Form', 10, '', NULL),
('nu5fdb9ffd6fbca', 'nu5fdb9ffd45efe', 'Form', 10, '', NULL),
('nu5fdb9ffd6faaa', 'nu5fdb9ffd45aaa', 'Form', 10, '', NULL),
('nu5fdb9ff026348', 'nuform', 'Access Levels', 40, '', NULL),
('nu5feb9ffd6fbca', 'nu5feb9ffd45efe', 'Form', 10, '', NULL),
('nu5fee9ffd6fbca', 'nu5fee9ffd45efe', 'Form', 10, '', NULL),
('nu5fdf7df2d873dd1', 'nuphp', 'Access', 20, 'nuOpenWiki(\'/User_Access\');', NULL),
('nu5fdf7fc6680a0b2', 'nubuildreport', 'Access Levels', 20, 'nuOpenWiki(\'/User_Access\');', NULL),
('nu5fe0547b76e25d6', 'nuauthentication', 'Authentication', 10, '', NULL),
('nu5fe19e93306dd6e', 'nusetup', 'Developer', 40, '', NULL),
('nu5feb70e6a6b9cf8', 'nuupdate', 'Update', 10, '', NULL),
('nu5fed7cde6151088', 'nuobjectgrid', 'Main', 10, '', NULL),
('nu5ff48b9c18dbf6f', 'nuemailtest', 'Main', 10, '', NULL),
('nu60689be0792e7ca', 'nuadddbcolumn', 'Main', 10, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_timezone`
--

CREATE TABLE `zzzzsys_timezone` (
  `zzzzsys_timezone_id` varchar(25) NOT NULL,
  `stz_timezone` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zzzzsys_timezone`
--

INSERT INTO `zzzzsys_timezone` (`zzzzsys_timezone_id`, `stz_timezone`) VALUES
('5281a1e6d64f54c', 'WET'),
('5281a1e5d5896c1', 'W-SU'),
('5281a1c4af3715e', 'Pacific/Saipan'),
('5281a1d1c5090a1', 'ROC'),
('5281a1c1ac7d9a4', 'Pacific/Ponape'),
('5281a1e7d719d77', 'Zulu'),
('5281a18f7335833', 'Indian/Mahe'),
('5281a1c3ae74c55', 'Pacific/Rarotonga'),
('5281a1c2adaeefc', 'Pacific/Port_Moresby'),
('5281a1978349c3b', 'Japan'),
('5281a19480b8eb3', 'Iran'),
('5281a1c0abb94a6', 'Pacific/Pohnpei'),
('5281a1958174e03', 'Israel'),
('5281a1968236672', 'Jamaica'),
('5281a1bfaaf8959', 'Pacific/Pitcairn'),
('5281a1bda973ea9', 'Pacific/Pago_Pago'),
('5281a1beaa37ad1', 'Pacific/Palau'),
('5281a1937ffce01', 'Indian/Reunion'),
('5281a1927f358dc', 'Indian/Mayotte'),
('5281a1907dbe28e', 'Indian/Maldives'),
('5281a18469c9b45', 'GMT0'),
('5281a18d716cac2', 'Indian/Comoro'),
('5281a18c6fa914a', 'Indian/Cocos'),
('5281a1917e7a840', 'Indian/Mauritius'),
('5281a18b6ef1055', 'Indian/Christmas'),
('5281a18e727f96b', 'Indian/Kerguelen'),
('5281a18167364aa', 'GMT'),
('5281a1896d7af41', 'Indian/Antananarivo'),
('5281a18a6e38d94', 'Indian/Chagos'),
('5281a1876bf5f3f', 'HST'),
('5281a18267f39f3', 'GMT+0'),
('5281a1886cbc018', 'Iceland'),
('5281a180667b0ff', 'GB-Eire'),
('5281a1866b3a73f', 'Hongkong'),
('5281a1d2c5cc7f0', 'ROK'),
('5281a1856a822c1', 'Greenwich'),
('5281a183690a029', 'GMT-0'),
('5281a17f6566ce7', 'GB'),
('5281a17e64b04e6', 'Factory'),
('5281a17d6394bdc', 'Europe/Zurich'),
('5281a17b621c391', 'Europe/Zagreb'),
('5281a17c62d8149', 'Europe/Zaporozhye'),
('5281a17a61653f3', 'Europe/Warsaw'),
('5281a17960a75a5', 'Europe/Volgograd'),
('5281a1765e7ec77', 'Europe/Vatican'),
('5281a1785fee51e', 'Europe/Vilnius'),
('5281a1745d0c5ff', 'Europe/Uzhgorod'),
('5281a1755dc75a3', 'Europe/Vaduz'),
('5281a1725b981dd', 'Europe/Tirane'),
('5281a1775f33528', 'Europe/Vienna'),
('5281a1715ada39c', 'Europe/Tallinn'),
('5281a1735c520ab', 'Europe/Tiraspol'),
('5281a16b55183d6', 'Europe/San_Marino'),
('5281a17059b7e00', 'Europe/Stockholm'),
('5281a16c55c3e49', 'Europe/Sarajevo'),
('5281a16d567a909', 'Europe/Simferopol'),
('5281a16e578c5ca', 'Europe/Skopje'),
('5281a16f58a0561', 'Europe/Sofia'),
('5281a1e4d4c2232', 'UTC'),
('5281a16953c1632', 'Europe/Rome'),
('5281a16a546eb1c', 'Europe/Samara'),
('5281a1675297098', 'Europe/Prague'),
('5281a1c7b7d1d5a', 'Pacific/Tarawa'),
('5281a1c8b88aa9e', 'Pacific/Tongatapu'),
('5281a1c6b0be317', 'Pacific/Tahiti'),
('5281a1e3d3f844f', 'US/Samoa'),
('5281a1e2d332a62', 'US/Pacific-New'),
('5281a1e1d267cf9', 'US/Pacific'),
('5281a1decfb3884', 'US/Indiana-Starke'),
('5281a1e0d1a0e86', 'US/Mountain'),
('5281a1dfd0d95b2', 'US/Michigan'),
('5281a1ddcee9e3c', 'US/Hawaii'),
('5281a1d5c82280a', 'UCT'),
('5281a1dcce1ad1c', 'US/Eastern'),
('5281a1d9cb7bad5', 'US/Arizona'),
('5281a1dacc37651', 'US/Central'),
('5281a1d8cabf7f1', 'US/Aleutian'),
('5281a11b005e55d', 'EET'),
('5281a1dbccf3617', 'US/East-Indiana'),
('5281a1d7c9af2ed', 'US/Alaska'),
('5281a1d3c69078e', 'Singapore'),
('5281a1d6c8ec435', 'Universal'),
('5281a119f3e04e9', 'Cuba'),
('5281a121045accb', 'Etc/GMT+0'),
('5281a11f031f564', 'EST5EDT'),
('5281a11d01970ad', 'Eire'),
('5281a115f1557e0', 'CET'),
('5281a11c00fa005', 'Egypt'),
('5281a11e027c729', 'EST'),
('5281a112e94ed84', 'Canada/Pacific'),
('5281a113e9f0daa', 'Canada/Saskatchewan'),
('5281a116f1f4f2e', 'Chile/Continental'),
('5281a118f33df3d', 'CST6CDT'),
('5281a111e8ab026', 'Canada/Newfoundland'),
('5281a117f296fd5', 'Chile/EasterIsland'),
('5281a10fe75f2c4', 'Canada/Eastern'),
('5281a110e80412c', 'Canada/Mountain'),
('5281a114f0b9085', 'Canada/Yukon'),
('5281a10ae43d03b', 'Brazil/East'),
('5281a10ee6bf449', 'Canada/East-Saskatchewan'),
('5281a10be4de708', 'Brazil/West'),
('5281a106e10f94a', 'Australia/West'),
('5281a10ce57f01e', 'Canada/Atlantic'),
('5281a109e3d5d6e', 'Brazil/DeNoronha'),
('5281a10de622257', 'Canada/Central'),
('5281a107e1b7664', 'Australia/Yancowinna'),
('5281a105e06a9b6', 'Australia/Victoria'),
('5281a103df20a58', 'Australia/Sydney'),
('5281a104dfc5885', 'Australia/Tasmania'),
('5281a108e25bc93', 'Brazil/Acre'),
('5281a100dd385a2', 'Australia/Perth'),
('5281a102de7b7a9', 'Australia/South'),
('5281a0fedbfa7e6', 'Australia/North'),
('5281a0ffdc99118', 'Australia/NSW'),
('5281a101ddd8257', 'Australia/Queensland'),
('5281a0f7d793413', 'Australia/Darwin'),
('5281a0fbda115d9', 'Australia/Lindeman'),
('5281a0fcdab0d34', 'Australia/Lord_Howe'),
('5281a0fad975081', 'Australia/LHI'),
('5281a0fddb58517', 'Australia/Melbourne'),
('5281a0f9d8d96a3', 'Australia/Hobart'),
('5281a0f8d837181', 'Australia/Eucla'),
('5281a0f6d6f2fcb', 'Australia/Currie'),
('5281a0f1d34022d', 'Australia/ACT'),
('5281a0f3d50b948', 'Australia/Brisbane'),
('5281a0f2d414c2c', 'Australia/Adelaide'),
('5281a0f4d5ad53b', 'Australia/Broken_Hill'),
('5281a0f5d6511b5', 'Australia/Canberra'),
('5281a0ebd023d83', 'Atlantic/Jan_Mayen'),
('5281a0efd1f32fb', 'Atlantic/St_Helena'),
('5281a0edd11319e', 'Atlantic/Reykjavik'),
('5281a0e9cee78d7', 'Atlantic/Faeroe'),
('5281a0f0d28596b', 'Atlantic/Stanley'),
('5281a0ecd083a61', 'Atlantic/Madeira'),
('5281a0eacf865b6', 'Atlantic/Faroe'),
('5281a0e4cb41fb8', 'Asia/Yerevan'),
('5281a0e7cd08d1f', 'Atlantic/Canary'),
('5281a0e8cdf71cd', 'Atlantic/Cape_Verde'),
('5281a0e6cc39d74', 'Atlantic/Bermuda'),
('5281a0eed19481b', 'Atlantic/South_Georgia'),
('5281a0e0c8a8864', 'Asia/Vientiane'),
('5281a0e2c9f8bff', 'Asia/Yakutsk'),
('5281a0dec72d2c8', 'Asia/Urumqi'),
('5281a0dbc498d19', 'Asia/Ujung_Pandang'),
('5281a0dfc802643', 'Asia/Ust-Nera'),
('5281a0e5cbd2ab3', 'Atlantic/Azores'),
('5281a0e3ca96355', 'Asia/Yekaterinburg'),
('5281a0e1c97ee98', 'Asia/Vladivostok'),
('5281a0dac410be3', 'Asia/Tokyo'),
('5281a0d8b7ca13e', 'Asia/Thimbu'),
('5281a0ddc5cffcb', 'Asia/Ulan_Bator'),
('5281a0dcc5452d8', 'Asia/Ulaanbaatar'),
('5281a0d7b738dfa', 'Asia/Tel_Aviv'),
('5281a0d4b5675f0', 'Asia/Tashkent'),
('5281a1d0c44a02a', 'PST8PDT'),
('5281a1c5aff8b7a', 'Pacific/Samoa'),
('5281a1cdc1ce40f', 'Poland'),
('5281a1d4c757c4b', 'Turkey'),
('5281a1b9a65d08d', 'Pacific/Nauru'),
('5281a1caba3a73f', 'Pacific/Wake'),
('5281a1cfc380ffd', 'PRC'),
('5281a1ccc0a2ed7', 'Pacific/Yap'),
('5281a1bba7e9f84', 'Pacific/Norfolk'),
('5281a1cec2b8c7b', 'Portugal'),
('5281a1cbbb03788', 'Pacific/Wallis'),
('5281a1baa7229e2', 'Pacific/Niue'),
('5281a1c9b9b4eb9', 'Pacific/Truk'),
('5281a1bca8aff1f', 'Pacific/Noumea'),
('5281a1b8a543c50', 'Pacific/Midway'),
('5281a1b5a2a9fe4', 'Pacific/Kwajalein'),
('5281a1b6a366199', 'Pacific/Majuro'),
('5281a1b7a41e352', 'Pacific/Marquesas'),
('5281a1b3a0d3019', 'Pacific/Kiritimati'),
('5281a1b4a18cdc0', 'Pacific/Kosrae'),
('5281a1b19b0cfd2', 'Pacific/Honolulu'),
('5281a1ae98d3fae', 'Pacific/Gambier'),
('5281a1b29faa3dd', 'Pacific/Johnston'),
('5281a1b09a4fddd', 'Pacific/Guam'),
('5281a1a7914900c', 'Pacific/Easter'),
('5281a1ad9816446', 'Pacific/Galapagos'),
('5281a1af9991f3e', 'Pacific/Guadalcanal'),
('5281a1ac9755655', 'Pacific/Funafuti'),
('5281a1a18c10637', 'NZ'),
('5281a1ab969470b', 'Pacific/Fiji'),
('5281a1a89202f8f', 'Pacific/Efate'),
('5281a1aa9376832', 'Pacific/Fakaofo'),
('5281a1a690adea0', 'Pacific/Chuuk'),
('5281a1a992be08a', 'Pacific/Enderbury'),
('5281a1a58f97f6b', 'Pacific/Chatham'),
('5281a19f8a9df7c', 'MST7MDT'),
('5281a1a38db68d2', 'Pacific/Apia'),
('5281a1a28cc076a', 'NZ-CHAT'),
('5281a19e88c6791', 'MST'),
('5281a1a48edbfe0', 'Pacific/Auckland'),
('5281a1a08b568c9', 'Navajo'),
('5281a19d8805651', 'Mexico/General'),
('5281a19c8755b50', 'Mexico/BajaSur'),
('5281a19a85d936f', 'MET'),
('5281a141276c8dd', 'Etc/UTC'),
('5281a19985161dc', 'Libya'),
('5281a19b869ac55', 'Mexico/BajaNorte'),
('5281a19884666fe', 'Kwajalein'),
('5281a13f20ea1f3', 'Etc/UCT'),
('5281a1422870f52', 'Etc/Zulu'),
('5281a13a1cdc706', 'Etc/GMT-7'),
('5281a14021ecc1a', 'Etc/Universal'),
('5281a1371a7a768', 'Etc/GMT-4'),
('5281a13c1e901f3', 'Etc/GMT-9'),
('5281a13e1fecf31', 'Etc/Greenwich'),
('5281a13d1f4118d', 'Etc/GMT0'),
('5281a1381b291ad', 'Etc/GMT-5'),
('5281a1351915ab2', 'Etc/GMT-2'),
('5281a13b1dde432', 'Etc/GMT-8'),
('5281a13619c9d77', 'Etc/GMT-3'),
('5281a13317ba384', 'Etc/GMT-13'),
('5281a132170a862', 'Etc/GMT-12'),
('5281a1391bd512c', 'Etc/GMT-6'),
('5281a1341865467', 'Etc/GMT-14'),
('5281a13015ad04a', 'Etc/GMT-10'),
('5281a12d0d21e28', 'Etc/GMT+9'),
('5281a12f14f8806', 'Etc/GMT-1'),
('5281a131165c9a8', 'Etc/GMT-11'),
('5281a128097255f', 'Etc/GMT+4'),
('5281a12b0bcc422', 'Etc/GMT+7'),
('5281a12708c2a64', 'Etc/GMT+3'),
('5281a12c0c747f2', 'Etc/GMT+8'),
('5281a126080e0f2', 'Etc/GMT+2'),
('5281a12e0dd3691', 'Etc/GMT-0'),
('5281a12a0b21a7c', 'Etc/GMT+6'),
('5281a1290a6ffbc', 'Etc/GMT+5'),
('5281a12305b7170', 'Etc/GMT+10'),
('5281a12406b3d0a', 'Etc/GMT+11'),
('5281a125075e837', 'Etc/GMT+12'),
('5281a1220508372', 'Etc/GMT+1'),
('5281a12003bd2d8', 'Etc/GMT'),
('5281a1644ab2537', 'Europe/Oslo'),
('5281a168534cbef', 'Europe/Riga'),
('5281a1664c0a464', 'Europe/Podgorica'),
('5281a1654b607a0', 'Europe/Paris'),
('5281a16048033d3', 'Europe/Minsk'),
('5281a1634a06938', 'Europe/Nicosia'),
('5281a162495ae00', 'Europe/Moscow'),
('5281a15e46aa01e', 'Europe/Malta'),
('5281a15f4756ead', 'Europe/Mariehamn'),
('5281a15d459a699', 'Europe/Madrid'),
('5281a15c44ee825', 'Europe/Luxembourg'),
('5281a16148b02d8', 'Europe/Monaco'),
('5281a15942d2df1', 'Europe/Lisbon'),
('5281a15640623f7', 'Europe/Jersey'),
('5281a1574109a27', 'Europe/Kaliningrad'),
('5281a15a4387b4d', 'Europe/Ljubljana'),
('5281a15b443824d', 'Europe/London'),
('5281a1523d9455c', 'Europe/Guernsey'),
('5281a158421be40', 'Europe/Kiev'),
('5281a1533e3ecc9', 'Europe/Helsinki'),
('5281a1553fb3f61', 'Europe/Istanbul'),
('5281a1543ee5f5a', 'Europe/Isle_of_Man'),
('5281a14f3048453', 'Europe/Copenhagen'),
('5281a14e2f9d4cf', 'Europe/Chisinau'),
('5281a1492c3f8d0', 'Europe/Bratislava'),
('5281a15030f2b55', 'Europe/Dublin'),
('5281a1513ce8a90', 'Europe/Gibraltar'),
('5281a14a2d40451', 'Europe/Brussels'),
('5281a14c2e8003e', 'Europe/Budapest'),
('5281a14b2de356d', 'Europe/Bucharest'),
('5281a1482b95f9d', 'Europe/Berlin'),
('5281a14d2ef47a3', 'Europe/Busingen'),
('5281a1472b27ab5', 'Europe/Belgrade'),
('5281a14529a6597', 'Europe/Athens'),
('5281a1462a2183d', 'Europe/Belfast'),
('5281a144293e781', 'Europe/Andorra'),
('52819fa3409d46f', 'Africa/Abidjan'),
('52819fa64a81c45', 'Africa/Algiers'),
('52819fa74aef179', 'Africa/Asmara'),
('5281a14328d7e27', 'Europe/Amsterdam'),
('52819fa44106fdd', 'Africa/Accra'),
('52819fa54a1c5c4', 'Africa/Addis_Ababa'),
('52819faa4c334ed', 'Africa/Bangui'),
('52819fa84b5bed6', 'Africa/Asmera'),
('52819fac4d0b2f3', 'Africa/Bissau'),
('52819fa94bc9a93', 'Africa/Bamako'),
('52819fab4c9ff3f', 'Africa/Banjul'),
('52819faf4e3ea69', 'Africa/Bujumbura'),
('52819fae4dd596d', 'Africa/Brazzaville'),
('52819fb24f7a1a9', 'Africa/Ceuta'),
('52819fad4d6d2ab', 'Africa/Blantyre'),
('52819fb14f0c347', 'Africa/Casablanca'),
('52819fb8520ef05', 'Africa/El_Aaiun'),
('52819fb04ea2165', 'Africa/Cairo'),
('52819fb34feb2b9', 'Africa/Conakry'),
('52819fbb535a8db', 'Africa/Harare'),
('52819fb6512b354', 'Africa/Djibouti'),
('52819fb550bf3bd', 'Africa/Dar_es_Salaam'),
('52819fb4505727a', 'Africa/Dakar'),
('52819fb7519de97', 'Africa/Douala'),
('52819fbc53cc7cb', 'Africa/Johannesburg'),
('52819fbd543bb3d', 'Africa/Juba'),
('52819fba52e8bfe', 'Africa/Gaborone'),
('52819fb9527a466', 'Africa/Freetown'),
('52819fbe54a483a', 'Africa/Kampala'),
('52819fc45965c0d', 'Africa/Lome'),
('52819fc055a94f7', 'Africa/Kigali'),
('52819fc65a72a20', 'Africa/Lubumbashi'),
('52819fc358f7f66', 'Africa/Libreville'),
('52819fc156a0bb9', 'Africa/Kinshasa'),
('52819fbf550c406', 'Africa/Khartoum'),
('52819fc559d1824', 'Africa/Luanda'),
('52819fc75ae5c44', 'Africa/Lusaka'),
('52819fc2584bf74', 'Africa/Lagos     '),
('52819fc85b5ca8c', 'Africa/Malabo'),
('52819fc95bd505d', 'Africa/Maputo'),
('52819fcd5f56d2d', 'Africa/Monrovia'),
('52819fca5e1862c', 'Africa/Maseru'),
('52819fd0608eabc', 'Africa/Niamey'),
('52819fd26198388', 'Africa/Ouagadougou'),
('52819fcc5eebbe0', 'Africa/Mogadishu'),
('52819fcb5e82cb2', 'Africa/Mbabane'),
('52819fd36cef7d3', 'Africa/Porto-Novo'),
('52819fd160f38e7', 'Africa/Nouakchott'),
('52819fce5fbef7c', 'Africa/Nairobi'),
('52819fd56e465c5', 'Africa/Timbuktu'),
('52819fcf6025798', 'Africa/Ndjamena'),
('52819fd76f1d1cf', 'Africa/Tunis'),
('52819fd66eb1b1d', 'Africa/Tripoli'),
('52819fd86f894da', 'Africa/Windhoek'),
('52819fd46d5db96', 'Africa/Sao_Tome'),
('52819fda705d5db', 'America/Anchorage'),
('52819fdf727d3b7', 'America/Argentina/Catamarca'),
('52819fdc713665a', 'America/Antigua'),
('52819fd96ff36de', 'America/Adak'),
('52819fdb70ca47b', 'America/Anguilla'),
('52819fe072e958b', 'America/Argentina/ComodRivadavia'),
('52819fdd71a44c6', 'America/Araguaina'),
('52819fde7211b94', 'America/Argentina/Buenos_Aires'),
('52819fe274021b6', 'America/Argentina/Jujuy'),
('52819fe474f1b3c', 'America/Argentina/Mendoza'),
('52819fe17352bc1', 'America/Argentina/Cordoba'),
('52819fe37477a3e', 'America/Argentina/La_Rioja'),
('52819fe97747d84', 'America/Argentina/Tucuman'),
('52819fe675e3a45', 'America/Argentina/Salta'),
('52819fe5756aca9', 'America/Argentina/Rio_Gallegos'),
('52819fe7765b813', 'America/Argentina/San_Juan'),
('52819fe876d4888', 'America/Argentina/San_Luis'),
('52819fea77c0dbe', 'America/Argentina/Ushuaia'),
('52819fed7926984', 'America/Atikokan'),
('52819fec78b6d98', 'America/Asuncion'),
('52819feb783abf9', 'America/Aruba'),
('52819fee799c9bd', 'America/Atka'),
('52819ff2890b040', 'America/Belem'),
('52819ff087e6620', 'America/Bahia_Banderas'),
('52819fef7a0e5c7', 'America/Bahia'),
('52819ff18856b00', 'America/Barbados'),
('52819ff58a5b604', 'America/Boa_Vista'),
('52819ff68acf15d', 'America/Bogota'),
('52819ff3897c302', 'America/Belize'),
('52819ff489eb768', 'America/Blanc-Sablon'),
('52819ff98c31a7c', 'America/Cambridge_Bay'),
('52819ff88bbf287', 'America/Buenos_Aires'),
('52819ffe8ebf7a8', 'America/Cayenne'),
('52819ff78b49038', 'America/Boise'),
('52819ffd8e40c54', 'America/Catamarca'),
('52819ffc8d8294c', 'America/Caracas'),
('52819ffb8d0e9f3', 'America/Cancun'),
('52819ffa8c9fd3d', 'America/Campo_Grande'),
('52819fff8f3deef', 'America/Cayman'),
('5281a001902eacc', 'America/Chihuahua'),
('5281a0008fb91da', 'America/Chicago'),
('5281a0039121eb5', 'America/Cordoba'),
('5281a007935bea0', 'America/Curacao'),
('5281a00491d04fe', 'America/Costa_Rica'),
('5281a00592545ff', 'America/Creston'),
('5281a00994592a4', 'America/Dawson'),
('5281a00290a5cdf', 'America/Coral_Harbour'),
('5281a00692d3646', 'America/Cuiaba'),
('5281a00893dac77', 'America/Danmarkshavn'),
('5281a00a94e4d56', 'America/Dawson_Creek'),
('5281a00d9672fc4', 'America/Dominica'),
('5281a00b956da59', 'America/Denver'),
('5281a00f976ef28', 'America/Eirunepe'),
('5281a00e96f1a71', 'America/Edmonton'),
('5281a01298eb04c', 'America/Fort_Wayne'),
('5281a00c95f4f78', 'America/Detroit'),
('5281a011986a4c9', 'America/Ensenada'),
('5281a01097ec36c', 'America/El_Salvador'),
('5281a013996e3cc', 'America/Fortaleza'),
('5281a01499ee0d7', 'America/Glace_Bay'),
('5281a0169ae60fb', 'America/Goose_Bay'),
('5281a0159a6738f', 'America/Godthab'),
('5281a01b9d64472', 'America/Guayaquil'),
('5281a021a68ad1b', 'America/Indiana/Knox'),
('5281a01c9de431f', 'America/Guyana'),
('5281a0189be3e29', 'America/Grenada'),
('5281a0199c6344a', 'America/Guadeloupe'),
('5281a0179b64421', 'America/Grand_Turk'),
('5281a01a9ce3844', 'America/Guatemala'),
('5281a01e9ee5729', 'America/Havana'),
('5281a01fa582b0b', 'America/Hermosillo'),
('5281a020a60c1cb', 'America/Indiana/Indianapolis'),
('5281a01d9e64a89', 'America/Halifax'),
('5281a022a70ab7e', 'America/Indiana/Marengo'),
('5281a026b7bd32b', 'America/Indiana/Vincennes'),
('5281a024b6c65d2', 'America/Indiana/Tell_City'),
('5281a02ab9a5642', 'America/Iqaluit'),
('5281a025b743617', 'America/Indiana/Vevay'),
('5281a029b92b8a4', 'America/Inuvik'),
('5281a023a78a9f8', 'America/Indiana/Petersburg'),
('5281a02bba2319a', 'America/Jamaica'),
('5281a02dc3d9b4a', 'America/Juneau'),
('5281a027b83c7b7', 'America/Indiana/Winamac'),
('5281a02ec4b4b08', 'America/Kentucky/Louisville'),
('5281a030c5f7f87', 'America/Knox_IN'),
('5281a028b8b5382', 'America/Indianapolis'),
('5281a02cc3580ca', 'America/Jujuy'),
('5281a037c95acd2', 'America/Maceio'),
('5281a035c860612', 'America/Louisville'),
('5281a033c7667a3', 'America/Lima'),
('5281a02fc57ddcd', 'America/Kentucky/Monticello'),
('5281a034c7e4ccf', 'America/Los_Angeles'),
('5281a031c67163d', 'America/Kralendijk'),
('5281a038c9dae4d', 'America/Managua'),
('5281a032c6ecabc', 'America/La_Paz'),
('5281a039ca5fd3d', 'America/Manaus'),
('5281a036c8dfceb', 'America/Lower_Princes'),
('5281a03ad4029d7', 'America/Marigot'),
('5281a03bd4800a8', 'America/Martinique'),
('5281a03dd56f298', 'America/Mazatlan'),
('5281a03cd4f8d9d', 'America/Matamoros'),
('5281a03ed5eb8a2', 'America/Mendoza'),
('5281a03fd6686ad', 'America/Menominee'),
('5281a043d874e50', 'America/Miquelon'),
('5281a040d6e2a6f', 'America/Merida'),
('5281a044d8f40df', 'America/Moncton'),
('5281a041d776ec4', 'America/Metlakatla'),
('5281a046d9eebc9', 'America/Montevideo'),
('5281a04adbebf83', 'America/New_York'),
('5281a047da6f51b', 'America/Montreal'),
('5281a048daec32f', 'America/Montserrat'),
('5281a045d96f56b', 'America/Monterrey'),
('5281a042d7f6261', 'America/Mexico_City'),
('5281a049db6c822', 'America/Nassau'),
('5281a050e5ec3bf', 'America/North_Dakota/New_Salem'),
('5281a04ce3791ab', 'America/Nome'),
('5281a04fe56a837', 'America/North_Dakota/Center'),
('5281a04ee4e9d8a', 'America/North_Dakota/Beulah'),
('5281a04be29de22', 'America/Nipigon'),
('5281a051e66c226', 'America/Ojinaga'),
('5281a04de4621e6', 'America/Noronha'),
('5281a059011444a', 'America/Porto_Acre'),
('5281a058008a8ad', 'America/Port_of_Spain'),
('5281a052e6eb6b1', 'America/Panama'),
('5281a055e87432b', 'America/Phoenix'),
('5281a056f3e39a9', 'America/Port-au-Prince'),
('5281a05a019da2e', 'America/Porto_Velho'),
('5281a053e771ebf', 'America/Pangnirtung'),
('5281a054e7f5d06', 'America/Paramaribo'),
('5281a05b02270ec', 'America/Puerto_Rico'),
('5281a05d0abd421', 'America/Rankin_Inlet'),
('5281a05c02b2d2e', 'America/Rainy_River'),
('5281a05f0ba9fac', 'America/Regina'),
('5281a05e0b23bbb', 'America/Recife'),
('5281a0610cf1e16', 'America/Rio_Branco'),
('5281a0600c2a582', 'America/Resolute'),
('5281a06c18cefca', 'America/St_Johns'),
('5281a0630df269f', 'America/Santa_Isabel'),
('5281a0660f81e90', 'America/Santo_Domingo'),
('5281a0640e7c243', 'America/Santarem'),
('5281a0650f00b2b', 'America/Santiago'),
('5281a0620d6e73e', 'America/Rosario'),
('5281a0671001fe9', 'America/Sao_Paulo'),
('5281a06a17c07af', 'America/Sitka'),
('5281a06b184793e', 'America/St_Barthelemy'),
('5281a0711bdc9cb', 'America/Swift_Current'),
('5281a0691738a17', 'America/Shiprock'),
('5281a06816b015a', 'America/Scoresbysund'),
('5281a0731cfe848', 'America/Thule'),
('5281a06e19dcad8', 'America/St_Lucia'),
('5281a06d195ad37', 'America/St_Kitts'),
('5281a06f1ab84cc', 'America/St_Thomas'),
('5281a0761efa34f', 'America/Toronto'),
('5281a0721c6d284', 'America/Tegucigalpa'),
('5281a0751e22f0d', 'America/Tijuana'),
('5281a0771f90738', 'America/Tortola'),
('5281a0701b4895b', 'America/St_Vincent'),
('5281a07f253cc33', 'Antarctica/Davis'),
('5281a0782119266', 'America/Vancouver'),
('5281a07921a60bc', 'America/Virgin'),
('5281a0741d90667', 'America/Thunder_Bay'),
('5281a07c2387969', 'America/Yakutat'),
('5281a07b22f5dc0', 'America/Winnipeg'),
('5281a07a2262248', 'America/Whitehorse'),
('5281a07d24138e6', 'America/Yellowknife'),
('5281a08126af775', 'Antarctica/Macquarie'),
('5281a07e24a3926', 'Antarctica/Casey'),
('5281a082274083d', 'Antarctica/Mawson'),
('5281a0832b865db', 'Antarctica/McMurdo'),
('5281a080261a293', 'Antarctica/DumontDUrville'),
('5281a0892ef8f3e', 'Arctic/Longyearbyen'),
('5281a08b392c116', 'Asia/Almaty'),
('5281a0862d3c98a', 'Antarctica/South_Pole'),
('5281a0842c1a6a4', 'Antarctica/Palmer'),
('5281a0852cac95d', 'Antarctica/Rothera'),
('5281a08a2f8c58e', 'Asia/Aden'),
('5281a08e3afe663', 'Asia/Aqtau'),
('5281a0882e5a3db', 'Antarctica/Vostok'),
('5281a0903c1eb18', 'Asia/Ashgabat'),
('5281a0872dca2fd', 'Antarctica/Syowa'),
('5281a0923d493e0', 'Asia/Baghdad'),
('5281a08f3b8ffbf', 'Asia/Aqtobe'),
('5281a09a421c122', 'Asia/Choibalsan'),
('5281a0913cad956', 'Asia/Ashkhabad'),
('5281a0933db361c', 'Asia/Bahrain'),
('5281a08d3a9af97', 'Asia/Anadyr'),
('5281a08c39bfc99', 'Asia/Amman'),
('5281a09840eba22', 'Asia/Brunei'),
('5281a0953ee5155', 'Asia/Bangkok'),
('5281a0943e4d693', 'Asia/Baku'),
('5281a09740551ac', 'Asia/Bishkek'),
('5281a0994183708', 'Asia/Calcutta'),
('5281a09b42b4a59', 'Asia/Chongqing'),
('5281a09f5139227', 'Asia/Damascus'),
('5281a09d5004cfc', 'Asia/Colombo'),
('5281a09c434d7a2', 'Asia/Chungking'),
('5281a0a051ccb15', 'Asia/Dhaka'),
('5281a0a15264929', 'Asia/Dili'),
('5281a0a25931d48', 'Asia/Dubai'),
('5281a0963f77c2f', 'Asia/Beirut'),
('5281a09e50a0bc7', 'Asia/Dacca'),
('5281a0a359c69e6', 'Asia/Dushanbe'),
('5281a0a45a5d9dd', 'Asia/Gaza'),
('5281a0a768ccd66', 'Asia/Ho_Chi_Minh'),
('5281a0a6683a809', 'Asia/Hebron'),
('5281a0a55af5fb5', 'Asia/Harbin'),
('5281a0ab763ee82', 'Asia/Istanbul'),
('5281a0a87491a25', 'Asia/Hong_Kong'),
('5281a0ac76d0bba', 'Asia/Jakarta'),
('5281a0aa75b1122', 'Asia/Irkutsk'),
('5281a0af7888b2a', 'Asia/Kabul'),
('5281a0a975249f9', 'Asia/Hovd'),
('5281a0ad7762040', 'Asia/Jayapura'),
('5281a0ae77f9979', 'Asia/Jerusalem'),
('5281a0b38121eec', 'Asia/Kathmandu'),
('5281a0b17ff7b93', 'Asia/Karachi'),
('5281a0b07f60fbd', 'Asia/Kamchatka'),
('5281a0b2808875b', 'Asia/Kashgar'),
('5281a0ba9625309', 'Asia/Kuwait'),
('5281a0b582467de', 'Asia/Khandyga'),
('5281a0bfa3e3403', 'Asia/Manila'),
('5281a0b7836a737', 'Asia/Krasnoyarsk'),
('5281a0b481b3f82', 'Asia/Katmandu'),
('5281a0b682d7c6b', 'Asia/Kolkata'),
('5281a0bda2c3f39', 'Asia/Magadan'),
('5281a0b883fc097', 'Asia/Kuala_Lumpur'),
('5281a0c0a47b670', 'Asia/Muscat'),
('5281a0bea353642', 'Asia/Makassar'),
('5281a0b984900e1', 'Asia/Kuching'),
('5281a0bc9b6658f', 'Asia/Macau'),
('5281a0c9af084a7', 'Asia/Qatar'),
('5281a0c3a63e893', 'Asia/Novosibirsk'),
('5281a0c5ac5370d', 'Asia/Oral'),
('5281a0c2a5a914a', 'Asia/Novokuznetsk'),
('5281a0bb9995a61', 'Asia/Macao'),
('5281a0c4a6cfff2', 'Asia/Omsk'),
('5281a0c1a513266', 'Asia/Nicosia'),
('5281a0c6ad3a016', 'Asia/Phnom_Penh'),
('5281a0c8ae6fc1d', 'Asia/Pyongyang'),
('5281a0caaf9a3f7', 'Asia/Qyzylorda'),
('5281a0ceb1e6900', 'Asia/Sakhalin'),
('5281a0c7add4a83', 'Asia/Pontianak'),
('5281a0cbb029a0f', 'Asia/Rangoon'),
('5281a0ccb0b8ed7', 'Asia/Riyadh'),
('5281a0cdb14f26f', 'Asia/Saigon'),
('5281a0cfb27e770', 'Asia/Samarkand'),
('5281a0d1b3a71fe', 'Asia/Shanghai'),
('5281a0d5b6195f2', 'Asia/Tbilisi'),
('5281a0d9c3af580', 'Asia/Thimphu'),
('5281a0d6b6a9048', 'Asia/Tehran'),
('5281a0d3b4ce508', 'Asia/Taipei'),
('5281a0d0b310ab9', 'Asia/Seoul'),
('5281a0d2b43caed', 'Asia/Singapore');

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_translate`
--

CREATE TABLE `zzzzsys_translate` (
  `zzzzsys_translate_id` varchar(25) NOT NULL,
  `trl_language` varchar(20) DEFAULT NULL,
  `trl_english` varchar(500) DEFAULT NULL,
  `trl_translation` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zzzzsys_user`
--

CREATE TABLE `zzzzsys_user` (
  `zzzzsys_user_id` varchar(25) NOT NULL DEFAULT '',
  `sus_zzzzsys_access_id` varchar(25) DEFAULT NULL,
  `sus_language` varchar(20) DEFAULT NULL,
  `sus_name` varchar(50) DEFAULT NULL,
  `sus_code` varchar(50) DEFAULT NULL,
  `sus_position` varchar(50) DEFAULT NULL,
  `sus_department` varchar(50) DEFAULT NULL,
  `sus_team` varchar(50) DEFAULT NULL,
  `sus_email` varchar(255) DEFAULT NULL,
  `sus_additional1` varchar(100) DEFAULT NULL,
  `sus_additional2` varchar(100) DEFAULT NULL,
  `sus_login_name` varchar(50) DEFAULT NULL,
  `sus_login_password` varchar(300) DEFAULT NULL,
  `sus_expires_on` datetime DEFAULT NULL,
  `sus_json` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure for view `zzzzsys_object_list`
--
DROP TABLE IF EXISTS `zzzzsys_object_list`;

CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `zzzzsys_object_list`  AS   select `information_schema`.`tables`.`TABLE_NAME` AS `zzzzsys_object_list_id` from `information_schema`.`tables` where `information_schema`.`tables`.`TABLE_SCHEMA` = database()  ;

-- --------------------------------------------------------

--
-- Structure for view `zzzzsys_report_data`
--
DROP TABLE IF EXISTS `zzzzsys_report_data`;

CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `zzzzsys_report_data`  AS   select concat('PROCEDURE:',`zzzzsys_php`.`zzzzsys_php_id`) AS `id`,`zzzzsys_php`.`sph_code` AS `code`,`zzzzsys_php`.`sph_description` AS `description` from `zzzzsys_php` where `zzzzsys_php`.`sph_system` <> '1' and locate('#TABLE_ID#',`zzzzsys_php`.`sph_php`) > '0' union select concat('SQL:',`zzzzsys_select`.`zzzzsys_select_id`) AS `id`,'nuSQL' AS `code`,`zzzzsys_select`.`sse_description` AS `description` from `zzzzsys_select` where `zzzzsys_select`.`sse_system` is null or `zzzzsys_select`.`sse_system` = '' union select concat('TABLE:',`zzzzsys_object_list`.`zzzzsys_object_list_id`) AS `id`,'nuTABLE' AS `code`,`zzzzsys_object_list`.`zzzzsys_object_list_id` AS `description` from `zzzzsys_object_list`  ;

-- --------------------------------------------------------

--
-- Structure for view `zzzzsys_run_list`
--
DROP TABLE IF EXISTS `zzzzsys_run_list`;

CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `zzzzsys_run_list`  AS   select `zzzzsys_form`.`zzzzsys_form_id` AS `id`,'Form' AS `run`,`zzzzsys_form`.`sfo_code` AS `code`,`zzzzsys_form`.`sfo_description` AS `description` from `zzzzsys_form` union select `zzzzsys_report`.`zzzzsys_report_id` AS `id`,'Report' AS `run`,`zzzzsys_report`.`sre_code` AS `code`,`zzzzsys_report`.`sre_description` AS `description` from `zzzzsys_report` union select `zzzzsys_php`.`zzzzsys_php_id` AS `id`,'Procedure' AS `run`,`zzzzsys_php`.`sph_code` AS `code`,`zzzzsys_php`.`sph_description` AS `description` from `zzzzsys_php` where `zzzzsys_php`.`sph_system` <> 1 order by `code`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `zzzzsys_access`
--
ALTER TABLE `zzzzsys_access`
  ADD PRIMARY KEY (`zzzzsys_access_id`),
  ADD KEY `sal_name` (`sal_code`),
  ADD KEY `sal_zzzzsys_form_id` (`sal_zzzzsys_form_id`);

--
-- Indexes for table `zzzzsys_access_form`
--
ALTER TABLE `zzzzsys_access_form`
  ADD PRIMARY KEY (`zzzzsys_access_form_id`),
  ADD KEY `saf_zzzzsys_access_id` (`slf_zzzzsys_access_id`),
  ADD KEY `slf_zzzzsys_form_id` (`slf_zzzzsys_form_id`);

--
-- Indexes for table `zzzzsys_access_php`
--
ALTER TABLE `zzzzsys_access_php`
  ADD PRIMARY KEY (`zzzzsys_access_php_id`),
  ADD KEY `slp_zzzzsys_access_id` (`slp_zzzzsys_access_id`),
  ADD KEY `slp_zzzzsys_php_id` (`slp_zzzzsys_php_id`);

--
-- Indexes for table `zzzzsys_access_report`
--
ALTER TABLE `zzzzsys_access_report`
  ADD PRIMARY KEY (`zzzzsys_access_report_id`),
  ADD KEY `sre_zzzzsys_access_id` (`sre_zzzzsys_access_id`),
  ADD KEY `sre_zzzzsys_report_id` (`sre_zzzzsys_report_id`);

--
-- Indexes for table `zzzzsys_browse`
--
ALTER TABLE `zzzzsys_browse`
  ADD PRIMARY KEY (`zzzzsys_browse_id`),
  ADD KEY `sbr_zzzsys_form_id` (`sbr_zzzzsys_form_id`);

--
-- Indexes for table `zzzzsys_cloner`
--
ALTER TABLE `zzzzsys_cloner`
  ADD PRIMARY KEY (`zzzzsys_cloner_id`);

--
-- Indexes for table `zzzzsys_code_snippet`
--
ALTER TABLE `zzzzsys_code_snippet`
  ADD PRIMARY KEY (`zzzzsys_code_snippet_id`);

--
-- Indexes for table `zzzzsys_debug`
--
ALTER TABLE `zzzzsys_debug`
  ADD PRIMARY KEY (`zzzzsys_debug_id`);

--
-- Indexes for table `zzzzsys_event`
--
ALTER TABLE `zzzzsys_event`
  ADD PRIMARY KEY (`zzzzsys_event_id`),
  ADD KEY `sev_zzzsys_object_id` (`sev_zzzzsys_object_id`),
  ADD KEY `sev_event` (`sev_event`);

--
-- Indexes for table `zzzzsys_file`
--
ALTER TABLE `zzzzsys_file`
  ADD PRIMARY KEY (`zzzzsys_file_id`);

--
-- Indexes for table `zzzzsys_form`
--
ALTER TABLE `zzzzsys_form`
  ADD PRIMARY KEY (`zzzzsys_form_id`);

--
-- Indexes for table `zzzzsys_format`
--
ALTER TABLE `zzzzsys_format`
  ADD PRIMARY KEY (`zzzzsys_format_id`);

--
-- Indexes for table `zzzzsys_info`
--
ALTER TABLE `zzzzsys_info`
  ADD PRIMARY KEY (`zzzzsys_info_id`);

--
-- Indexes for table `zzzzsys_note`
--
ALTER TABLE `zzzzsys_note`
  ADD PRIMARY KEY (`zzzzsys_note_id`),
  ADD UNIQUE KEY `title` (`not_title`) USING BTREE,
  ADD KEY `not_zzzzsys_note_category_id` (`not_zzzzsys_note_category_id`);

--
-- Indexes for table `zzzzsys_note_category`
--
ALTER TABLE `zzzzsys_note_category`
  ADD PRIMARY KEY (`zzzzsys_note_category_id`);

--
-- Indexes for table `zzzzsys_object`
--
ALTER TABLE `zzzzsys_object`
  ADD PRIMARY KEY (`zzzzsys_object_id`),
  ADD KEY `sob_all_zzzzsys_form_id` (`sob_all_zzzzsys_form_id`),
  ADD KEY `sob_all_zzzzsys_tab_id` (`sob_all_zzzzsys_tab_id`),
  ADD KEY `sob_run_zzzzsys_form_id` (`sob_run_zzzzsys_form_id`),
  ADD KEY `sob_lookup_zzzzsys_form_id` (`sob_lookup_zzzzsys_form_id`),
  ADD KEY `sob_subform_zzzzsys_form_id` (`sob_subform_zzzzsys_form_id`),
  ADD KEY `sob_image_zzzzsys_file_id` (`sob_image_zzzzsys_file_id`);

--
-- Indexes for table `zzzzsys_php`
--
ALTER TABLE `zzzzsys_php`
  ADD PRIMARY KEY (`zzzzsys_php_id`),
  ADD KEY `sph_zzzzsys_form_id` (`sph_zzzzsys_form_id`);

--
-- Indexes for table `zzzzsys_report`
--
ALTER TABLE `zzzzsys_report`
  ADD PRIMARY KEY (`zzzzsys_report_id`),
  ADD KEY `sre_code` (`sre_code`);

--
-- Indexes for table `zzzzsys_select`
--
ALTER TABLE `zzzzsys_select`
  ADD PRIMARY KEY (`zzzzsys_select_id`);

--
-- Indexes for table `zzzzsys_select_clause`
--
ALTER TABLE `zzzzsys_select_clause`
  ADD PRIMARY KEY (`zzzzsys_select_clause_id`);

--
-- Indexes for table `zzzzsys_session`
--
ALTER TABLE `zzzzsys_session`
  ADD PRIMARY KEY (`zzzzsys_session_id`);

--
-- Indexes for table `zzzzsys_setup`
--
ALTER TABLE `zzzzsys_setup`
  ADD PRIMARY KEY (`zzzzsys_setup_id`);

--
-- Indexes for table `zzzzsys_tab`
--
ALTER TABLE `zzzzsys_tab`
  ADD PRIMARY KEY (`zzzzsys_tab_id`),
  ADD KEY `syt_zzzzsys_form_id` (`syt_zzzzsys_form_id`);

--
-- Indexes for table `zzzzsys_timezone`
--
ALTER TABLE `zzzzsys_timezone`
  ADD PRIMARY KEY (`zzzzsys_timezone_id`);

--
-- Indexes for table `zzzzsys_translate`
--
ALTER TABLE `zzzzsys_translate`
  ADD PRIMARY KEY (`zzzzsys_translate_id`);

--
-- Indexes for table `zzzzsys_user`
--
ALTER TABLE `zzzzsys_user`
  ADD PRIMARY KEY (`zzzzsys_user_id`),
  ADD KEY `sus_zzzzsys_access_id` (`sus_zzzzsys_access_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
