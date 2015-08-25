<?php
define('GLOBAL_PROJECT_NAME', 'apc_cpo');
define('GLOBAL_SESSION_NAME', 'C91192e62');

//Default database settings
define('DEFAULT_DB_HOST','localhost');
define('DEFAULT_DB_USER','root');
define('DEFAULT_DB_PASS','');
define('DEFAULT_DB_USE' ,'apc-cpo');

//Paths and directory names
define('BASE_DIRECTORY', 'apc_cpo');
define('FULLPATH_CORE', dirname(__FILE__) . "/");
define('GRAPH_CREATOR_FONTDIR', FULLPATH_CORE . 'fonts/');
define('LOGIN_PAGE', '/' . BASE_DIRECTORY . '/login.php');
define('HOME_PAGE', '/' . BASE_DIRECTORY . '/main.php');
define('INDEX_TARGET', '/' . BASE_DIRECTORY . '/start.php');
define('TMP_DIRECTORY', 'C:\xampp\htdocs' . '/' . BASE_DIRECTORY . '/tmp');
define('TMP_PDF_STORE', 'rpt_pdf_tmp');
define('TMP_CSV_STORE', 'rpt_csv_tmp');

//Misc
define('MULTI_BYTE_ENCODING', 'utf-8');
define('TIMEZONE_SETTING', 'Asia/Manila');
define('DEBUG_MODE', TRUE);
define('LOG_SELECT_QUERIES', FALSE);
define('LOG_MODULE_ACCESS', FALSE);
define('MAX_PASSWORD_LENGTH', 200);
define('MAX_FORM_KEYS',10);
define('LISTVIEW_RESULTS_PER_PAGE',50);
define('FOOTER_RESOURCE_USAGE', FALSE);
define('ENABLE_SIDEBAR', FALSE);