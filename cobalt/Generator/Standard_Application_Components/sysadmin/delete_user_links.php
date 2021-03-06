<?php
//******************************************************************
//This file was generated by Cobalt, a rapid application development
//framework developed by JV Roig (jvroig@jvroig.com).
//
//Cobalt on the web: http://cobalt.jvroig.com
//******************************************************************
require 'path.php';
init_cobalt('Delete user links');

if(isset($_GET['link_id']))
{
    $link_id = urldecode($_GET['link_id']);
    require 'form_data_user_links.php';
}

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_delete']);
    require 'components/query_string_standard.php';

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("listview_user_links.php?$query_string");
    }

    elseif($_POST['btn_delete'])
    {
        log_action('Pressed delete button');
        require 'subclasses/user_links.php';
        $dbh_user_links = new user_links;

        $object_name = 'dbh_user_links';
        require 'components/create_form_data.php';

        $dbh_user_links->delete($arr_form_data);


        redirect("listview_user_links.php?$query_string");
    }
}
require 'subclasses/user_links_html.php';
$html = new user_links_html;
$html->draw_header('Delete User Links', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);

$html->draw_hidden('link_id');

$html->detail_view = TRUE;

$html->draw_controls('delete');

$html->draw_footer();
