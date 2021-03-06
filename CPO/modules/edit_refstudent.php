<?php
//******************************************************************
//This file was generated by Cobalt, a rapid application development 
//framework developed by JV Roig (jvroig@jvroig.com).
//
//Cobalt on the web: http://cobalt.jvroig.com
//******************************************************************
require 'path.php';
init_cobalt('Edit refstudent');

if(isset($_GET['student_id']))
{
    $student_id = urldecode($_GET['student_id']);
    require 'form_data_refstudent.php';
    $orig_student_id = $student_id;
}
elseif(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_submit']);
    require 'components/query_string_standard.php';
    require 'subclasses/refstudent.php';
    $dbh_refstudent = new refstudent;

    $object_name = 'dbh_refstudent';
    require 'components/create_form_data.php';
    $arr_form_data['orig_student_id'] = $_POST['orig_student_id'];
    extract($arr_form_data);

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button', $_SERVER['PHP_SELF']);
        redirect("listview_refstudent.php?$query_string");
    }

    if($_POST['btn_submit'])
    {
        log_action('Pressed submit button', $_SERVER['PHP_SELF']);

        $message .= $dbh_refstudent->sanitize($arr_form_data)->lst_error;
        extract($arr_form_data);

        if($dbh_refstudent->check_uniqueness_for_editing($arr_form_data)->is_unique)
        {
            //Good, no duplicate in database
        }
        else
        {
            $message = "Record already exists with the same primary identifiers!";
        }

        if($message=="")
        {
            $dbh_refstudent->edit($arr_form_data);


            redirect("listview_refstudent.php?$query_string");
        }
    }
}
require 'subclasses/refstudent_html.php';
$html = new refstudent_html;
$html->draw_header('Edit Refstudent', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);

$html->draw_hidden('orig_student_id');
$html->draw_controls('edit');

$html->draw_footer();