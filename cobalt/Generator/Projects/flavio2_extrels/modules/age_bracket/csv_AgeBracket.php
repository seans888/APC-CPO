<?php
//******************************************************************
//This file was generated by Cobalt, a rapid application development 
//framework developed by JV Roig (jvroig@jvroig.com).
//
//Cobalt on the web: http://cobalt.jvroig.com
//******************************************************************
require 'path.php';
init_cobalt('View AgeBracket');

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_submit']);

    if($_POST['btn_cancel']) 
    {
        log_action('Pressed cancel button', $_SERVER['PHP_SELF']);
        redirect("listview_AgeBracket.php");
    }

    if($_POST['btn_submit'])
    {
        log_action('Pressed submit button', $_SERVER['PHP_SELF']);

        require 'subclasses/AgeBracket.php';
        $dbh_AgeBracket = new AgeBracket;

        if($message=="")
        {
            log_action("Exported table data to CSV", $_SERVER['PHP_SELF']);
            $timestamp = date('Y-m-d');
            $token = generate_token(0,'fs');
            $csv_name = $token . $_SESSION['user'] . '_AgeBracket_' . $timestamp . '.csv';
            $filename = TMP_DIRECTORY . '/' .  $csv_name;

            $csv_contents = $dbh_AgeBracket->export_to_csv();

            $csv_file=fopen($filename,"wb");
            fwrite($csv_file, $csv_contents);
            fclose($csv_file);
            chmod($filename, 0755);

            $csv_name = urlencode($csv_name);
            $message='CSV file successfully generated: <a href="/' . BASE_DIRECTORY . '/download_generic.php?filename=' . $csv_name . '">Download the CSV file.</a>';
            $message_type='system';
        }
    }
}

require 'subclasses/AgeBracket_html.php';
$html = new AgeBracket_html;
$html->draw_header('CSV Exporter: AgeBracket', $message, $message_type);

echo '<div class="container">';
echo '<fieldset class="container_invisible">';
$html->draw_fieldset_header('Table Data to CSV Export');
$html->draw_fieldset_body_start();
echo '<tr><td>';
$html->display_info('Exporting data to CSV will let you have an offline backup of this module.');
$html->display_tip('Your system admin can use this CSV file to restore data for this module in case of catastrophic data loss on the server.');
echo '</td></tr>';
$html->draw_fieldset_body_end();
$html->draw_fieldset_footer_start();
$html->draw_submit_cancel();
$html->draw_fieldset_footer_end();
echo '</fieldset>';
echo '</div>';

$html->draw_footer();