<?php
//******************************************************************
//This file was generated by Cobalt, a rapid application development 
//framework developed by JV Roig (jvroig@jvroig.com).
//
//Cobalt on the web: http://cobalt.jvroig.com
//******************************************************************
require 'path.php';
init_cobalt('Delete accomplishment');

if(isset($_GET['id']))
{
    $id = urldecode($_GET['id']);
    require_once 'form_data_accomplishment.php';
}

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_delete']);
    require 'components/query_string_standard.php';

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("listview_accomplishment.php?$query_string");
    }

    elseif($_POST['btn_delete'])
    {
        log_action('Pressed delete button');
        require_once 'subclasses/accomplishment.php';
        $dbh_accomplishment = new accomplishment;

        $object_name = 'dbh_accomplishment';
        require 'components/create_form_data.php';

        $dbh_accomplishment->delete($arr_form_data);


        redirect("listview_accomplishment.php?$query_string");
    }
}
require 'subclasses/accomplishment_html.php';
$html = new accomplishment_html;
$html->draw_header('Delete Accomplishment', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);

$html->draw_hidden('id');

$html->detail_view = TRUE;
$html->draw_controls('delete');

$html->draw_footer();