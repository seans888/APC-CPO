<?php
//******************************************************************
//This file was generated by Cobalt, a rapid application development 
//framework developed by JV Roig (jvroig@jvroig.com).
//
//Cobalt on the web: http://cobalt.jvroig.com
//******************************************************************
require 'path.php';
init_cobalt('Edit InternAssignment');

if(isset($_GET['Id']))
{
    $Id = urldecode($_GET['Id']);
    require 'form_data_InternAssignment.php';

}
elseif(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_submit']);
    require 'components/query_string_standard.php';
    require 'subclasses/InternAssignment.php';
    $dbh_InternAssignment = new InternAssignment;

    $object_name = 'dbh_InternAssignment';
    require 'components/create_form_data.php';

    extract($arr_form_data);

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button', $_SERVER['PHP_SELF']);
        redirect("listview_InternAssignment.php?$query_string");
    }

    if($_POST['btn_submit'])
    {
        log_action('Pressed submit button', $_SERVER['PHP_SELF']);

        $message .= $dbh_InternAssignment->sanitize($arr_form_data)->lst_error;
        extract($arr_form_data);

        if($dbh_InternAssignment->check_uniqueness_for_editing($arr_form_data)->is_unique)
        {
            //Good, no duplicate in database
        }
        else
        {
            $message = "Record already exists with the same primary identifiers!";
        }

        if($message=="")
        {
            $dbh_InternAssignment->edit($arr_form_data);


            redirect("listview_InternAssignment.php?$query_string");
        }
    }
}
require 'subclasses/InternAssignment_html.php';
$html = new InternAssignment_html;
$html->draw_header('Edit InternAssignment', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
$html->draw_hidden('Id');

$html->draw_controls('edit');

$html->draw_footer();