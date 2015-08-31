<?php
//******************************************************************
//This file was generated by Cobalt, a rapid application development 
//framework developed by JV Roig (jvroig@jvroig.com).
//
//Cobalt on the web: http://cobalt.jvroig.com
//******************************************************************
require 'path.php';
init_cobalt('Delete AlumniEmplMove');

if(isset($_GET['Id']))
{
    $Id = urldecode($_GET['Id']);
    require_once 'form_data_AlumniEmplMove.php';
}
elseif(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_delete']);
    require 'components/query_string_standard.php';

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button', $_SERVER['PHP_SELF']);
        redirect("listview_AlumniEmplMove.php?$query_string");
    }

    elseif($_POST['btn_delete'])
    {
        log_action('Pressed delete button', $_SERVER['PHP_SELF']);
        require_once 'subclasses/AlumniEmplMove.php';
        $dbh_AlumniEmplMove = new AlumniEmplMove;

        $object_name = 'dbh_AlumniEmplMove';
        require 'components/create_form_data.php';

        $dbh_AlumniEmplMove->del($arr_form_data);


        redirect("listview_AlumniEmplMove.php?$query_string");
    }
}
require 'subclasses/AlumniEmplMove_html.php';
$html = new AlumniEmplMove_html;
$html->draw_header('Delete AlumniEmplMove', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);

$html->draw_hidden('Id');

$html->detail_view = TRUE;
$html->draw_controls('delete');

$html->draw_footer();