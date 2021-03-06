<?php

//This file creates the standard application components needed to make a complete
//working application (from login to logout) using the generated classes and modules

function createStdAppComponents($path_array)
{
    extract($path_array);

    //********************************************************
    //FIRST ORDER OF BUSINESS: GENERATE THE GLOBAL CONFIG FILE
    //********************************************************

    //Step 1: Set the full path to the base directory. We just use the SCV2 path variable and use substr() to remove
    //the Cobalt directory
    $full_path_to_webroot = substr($SCV2_path,0,-8);
    $full_path_to_base_directory = $full_path_to_webroot . '/' . $Base_Directory;

    //Step 2: Get timezone setting
    $tz_detected = @date_default_timezone_get();

    //Step 3: Create a random session name for the generated system.
    //Doesn't have to be too long, just has to be random enough to prevent frequent occurence of same default session name
    $session_name = 'C' . substr(md5(get_token()),0,8);

    //Step 4: Get the default database settings
    $mysqli = connect_db();
    $mysqli->real_query("SELECT a.Hostname, a.Username, a.Password, a.Database
                            FROM `database_connection` a, `project` b
                            WHERE a.DB_Connection_ID = b.Database_Connection_ID AND
                                  b.Project_ID = '$_SESSION[Project_ID]'");
    if($result = $mysqli->use_result())
    {
        $db = $result->fetch_assoc();
    }

    $project_name = addslashes($_SESSION['Project_Name']);
    //Step 5: Create the config file contents.
    $global_config_file =<<<EOD
<?php
define('GLOBAL_PROJECT_NAME', '$project_name');
define('GLOBAL_SESSION_NAME', '$session_name');

//Default database settings
define('DEFAULT_DB_HOST','$db[Hostname]');
define('DEFAULT_DB_USER','$db[Username]');
define('DEFAULT_DB_PASS','$db[Password]');
define('DEFAULT_DB_USE' ,'$db[Database]');

//Paths and directory names
define('BASE_DIRECTORY', '$Base_Directory');
define('FULLPATH_CORE', dirname(__FILE__) . "/");
define('GRAPH_CREATOR_FONTDIR', FULLPATH_CORE . 'fonts/');
define('LOGIN_PAGE', '/' . BASE_DIRECTORY . '/login.php');
define('HOME_PAGE', '/' . BASE_DIRECTORY . '/main.php');
define('INDEX_TARGET', '/' . BASE_DIRECTORY . '/start.php');
define('TMP_DIRECTORY', '$full_path_to_webroot' . '/' . BASE_DIRECTORY . '/tmp');
define('TMP_PDF_STORE', 'rpt_pdf_tmp');
define('TMP_CSV_STORE', 'rpt_csv_tmp');

//Security-related options
define('DEBUG_MODE', TRUE);
define('IP_CHANGE_DETECTION', TRUE);

//Misc
define('MULTI_BYTE_ENCODING', 'utf-8');
define('TIMEZONE_SETTING', '$tz_detected');
define('LOG_SELECT_QUERIES', FALSE);
define('LOG_MODULE_ACCESS', FALSE);
define('MAX_PASSWORD_LENGTH', 200);
define('MAX_FORM_KEYS',10);
define('LISTVIEW_RESULTS_PER_PAGE',50);
define('FOOTER_RESOURCE_USAGE', FALSE);
define('ENABLE_SIDEBAR', TRUE);
define('CONTROL_CENTER_COLUMNS',3);
EOD;

    //Step 5: Write the config file. We need the project core path for this.

    $filename = $project_core_path .  'global_config.php';
    if(file_exists($filename)) unlink($filename);
    $newfile=fopen($filename,"ab");

    fwrite($newfile, $global_config_file);
    fclose($newfile);
    chmod($filename, 0777);


    //***********************************************************
    //CREATE THE ABOUT PAGE: WE NEED THE PROJECT DESCRIPTION HERE
    //***********************************************************

    $mysqli = connect_db();
    $mysqli->real_query("SELECT Project_Description FROM `project` WHERE Project_ID='$_SESSION[Project_ID]'");
    if($result = $mysqli->use_result())
    {
        $data = $result->fetch_assoc();
        $Project_Description = nl2br($data['Project_Description']);
    }
    else die($mysqli->error);
    $result->close();

$about_contents=<<<EODD
<?php
//******************************************************************
//This file was generated by Cobalt, a rapid application development
//framework developed by JV Roig (jvroig@jvroig.com).
//
//Cobalt on the web: http://cobalt.jvroig.com
//******************************************************************
require_once 'path.php';
init_cobalt('ALLOW_ALL');

\$html = new html;
\$html->draw_header('About ' . GLOBAL_PROJECT_NAME, \$message, \$message_type);
\$project_name = GLOBAL_PROJECT_NAME;
\$msg=<<<EOD
$Project_Description
<br /><br /><b> \$project_name is powered by Cobalt</b>
EOD;
\$html->display_info(\$msg);

\$html->draw_page_title('About Cobalt');
\$msg=<<<EOD
Cobalt is a web-based code generator and framework using PHP and Oracle Database created by JV Roig.
It makes web-based systems maintainable, scalable, secure and efficient, and makes the life of developers a lot easier. <br><br>

<a href="http://cobalt.jvroig.com/co/download/" target="_blank">Download Cobalt</a> |
<a href="http://cobalt.jvroig.com/co/documentation/" target="_blank">Cobalt FAQ</a>
EOD;
\$html->display_message(\$msg);
\$html->draw_footer();
EODD;

    $filename = $project_path .  'about.php';
    if(file_exists($filename)) unlink($filename);
    $newfile=fopen($filename,"ab");

    fwrite($newfile, $about_contents);
    fclose($newfile);
    chmod($filename, 0777);


    //**********************************************************
    //NEXT: CREATE THE REMAINING STANDARD APPLICATION COMPONENTS
    //**********************************************************
    //This is actually easier than it sounds because the remaining components don't have any configuration left to setup.
    //All we have to do is copy them from our source files to their respective destination.

    function copyStdAppComponent_recursive($resource, $source_path, $destination_path)
    {
        $source = $source_path . $resource;
        if(is_dir($source))
        {

            if(!file_exists($destination_path . $resource))
            {
                mkdir($destination_path . $resource, 0777);
                chmod($destination_path . $resource, 0777);
            }
            createDirectoryIndex($destination_path . $resource . '/');

            $dir = $source;
            if($dh = opendir($dir))
            {
                while(($file = readdir($dh)) !== false)
                {
                    if($file != '.' && $file != '..')
                    {
                        if(is_dir($dir . '/' . $file))
                        {
                            copyStdAppComponent_recursive($file, $dir . '/', $destination_path . $resource . '/');
                        }
                        else
                        {
                            $new_source = '';
                            $new_source = $source . '/' . $file;
                            $destination = $destination_path . $resource . '/'. $file;
                            if(file_exists($new_source)) copy($new_source, $destination);
                            else echo "0002: The source file '$new_source' does not exist";
                            chmod($destination, 0777);
                        }
                    }
                }
                closedir($dh);
            }
        }
        else
        {
            $destination = $destination_path . $resource;
            if(file_exists($source)) copy($source, $destination);
            chmod($destination, 0777);
        }

        return 0;
    }

    $app_dir = $SCV2_path . 'Generator/Standard_Application_Components';
    if(is_dir($app_dir))
    {
        if($dh = opendir($app_dir))
        {
            while(($file = readdir($dh)) !== false)
            {
                if($file != '.' && $file != '..')
                {
                    copyStdAppComponent_recursive($file, $SCV2_path . 'Generator/Standard_Application_Components/', $project_path);
                }
            }
            closedir($dh);
        }
    }
}
