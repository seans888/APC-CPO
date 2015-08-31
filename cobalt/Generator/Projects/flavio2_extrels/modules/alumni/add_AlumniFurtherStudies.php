<?php
//******************************************************************
//This file was generated by Cobalt, a rapid application development 
//framework developed by JV Roig (jvroig@jvroig.com).
//
//Cobalt on the web: http://cobalt.jvroig.com
//******************************************************************
require 'path.php';
init_cobalt('Add AlumniFurtherStudies');

require 'components/get_listview_referrer.php';

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_submit']);
    require 'components/query_string_standard.php';
    require 'subclasses/AlumniFurtherStudies.php';
    $dbh_AlumniFurtherStudies = new AlumniFurtherStudies;

    $object_name = 'dbh_AlumniFurtherStudies';
    require 'components/create_form_data.php';
    extract($arr_form_data);

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button', $_SERVER['PHP_SELF']);
        redirect("listview_AlumniFurtherStudies.php?$query_string");
    }

    if($_POST['btn_submit'])
    {
        log_action('Pressed submit button', $_SERVER['PHP_SELF']);

        $message .= $dbh_AlumniFurtherStudies->sanitize($arr_form_data)->lst_error;
        extract($arr_form_data);

        if($dbh_AlumniFurtherStudies->check_uniqueness($arr_form_data)->is_unique)
        {
            //Good, no duplicate in database
        }
        else
        {
            $message = "Record already exists with the same primary identifiers!";
        }

        if($message=="")
        {
            $dbh_AlumniFurtherStudies->add($arr_form_data);
            

            redirect("listview_AlumniFurtherStudies.php?$query_string");
        }
    }
}
require 'subclasses/AlumniFurtherStudies_html.php';
$html = new AlumniFurtherStudies_html;
$html->draw_header('Add AlumniFurtherStudies', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
$html->draw_controls('add');

$html->draw_footer();