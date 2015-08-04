<?php
//******************************************************************
//This file was generated by Cobalt, a rapid application development 
//framework developed by JV Roig (jvroig@jvroig.com).
//
//Cobalt on the web: http://cobalt.jvroig.com
//******************************************************************
require 'path.php';
init_cobalt('Edit companybranch');

if(isset($_GET['Id']))
{
    $Id = urldecode($_GET['Id']);
    require 'form_data_companybranch.php';

}
elseif(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_submit']);
    require 'components/query_string_standard.php';
    require 'subclasses/companybranch.php';
    $dbh_companybranch = new companybranch;

    $object_name = 'dbh_companybranch';
    require 'components/create_form_data.php';

    extract($arr_form_data);

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button', $_SERVER['PHP_SELF']);
        redirect("listview_companybranch.php?$query_string");
    }

    if($_POST['btn_submit'])
    {
        log_action('Pressed submit button', $_SERVER['PHP_SELF']);

        $message .= $dbh_companybranch->sanitize($arr_form_data)->lst_error;
        extract($arr_form_data);

        if($dbh_companybranch->check_uniqueness_for_editing($arr_form_data)->is_unique)
        {
            //Good, no duplicate in database
        }
        else
        {
            $message = "Record already exists with the same primary identifiers!";
        }

        if($message=="")
        {
            $dbh_companybranch->edit($arr_form_data);


            redirect("listview_companybranch.php?$query_string");
        }
    }
}
require 'subclasses/companybranch_html.php';
$html = new companybranch_html;
$html->draw_header('Edit Companybranch', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
$html->draw_hidden('Id');

$html->draw_controls('edit');

$html->draw_footer();