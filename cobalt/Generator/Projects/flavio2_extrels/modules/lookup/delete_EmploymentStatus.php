<?php
//******************************************************************
//This file was generated by Cobalt, a rapid application development 
//framework developed by JV Roig (jvroig@jvroig.com).
//
//Cobalt on the web: http://cobalt.jvroig.com
//******************************************************************
require 'path.php';
init_cobalt('Delete EmploymentStatus');

if(isset($_GET['Id']))
{
    $Id = urldecode($_GET['Id']);
    require_once 'form_data_EmploymentStatus.php';
}
elseif(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_delete']);
    require 'components/query_string_standard.php';

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button', $_SERVER['PHP_SELF']);
        redirect("listview_EmploymentStatus.php?$query_string");
    }

    elseif($_POST['btn_delete'])
    {
        log_action('Pressed delete button', $_SERVER['PHP_SELF']);
        require_once 'subclasses/EmploymentStatus.php';
        $dbh_EmploymentStatus = new EmploymentStatus;

        $object_name = 'dbh_EmploymentStatus';
        require 'components/create_form_data.php';

        $dbh_EmploymentStatus->del($arr_form_data);


        redirect("listview_EmploymentStatus.php?$query_string");
    }
}
require 'subclasses/EmploymentStatus_html.php';
$html = new EmploymentStatus_html;
$html->draw_header('Delete EmploymentStatus', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);

$html->draw_hidden('Id');

$html->detail_view = TRUE;
$html->draw_controls('delete');

$html->draw_footer();