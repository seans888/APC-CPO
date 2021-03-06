<?php
//******************************************************************
//This file was generated by Cobalt, a rapid application development 
//framework developed by JV Roig (jvroig@jvroig.com).
//
//Cobalt on the web: http://cobalt.jvroig.com
//******************************************************************
require 'path.php';
init_cobalt('Add post');

require 'components/get_listview_referrer.php';

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_submit']);
    require 'components/query_string_standard.php';
    require 'subclasses/post.php';
    $dbh_post = new post;

    $object_name = 'dbh_post';
    require 'components/create_form_data.php';
    extract($arr_form_data);

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("listview_post.php?$query_string");
    }

    $file_upload_control_name = 'attach_file';
    require 'components/upload_generic.php';

    if($_POST['btn_submit'])
    {
        log_action('Pressed submit button');

        $message .= $dbh_post->sanitize($arr_form_data)->lst_error;
        extract($arr_form_data);

        if($dbh_post->check_uniqueness($arr_form_data)->is_unique)
        {
            //Good, no duplicate in database
        }
        else
        {
            $message = "Record already exists with the same primary identifiers!";
        }

        if($message=="")
        {
            $dbh_post->add($arr_form_data);
            

            redirect("listview_post.php?$query_string");
        }
    }
}
require 'subclasses/post_html.php';
$html = new post_html;
$html->draw_header('Add Post', $message, $message_type, TRUE, TRUE);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
$html->draw_controls('add');

$html->draw_footer();