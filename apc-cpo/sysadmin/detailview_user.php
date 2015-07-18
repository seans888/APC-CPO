<?php
//******************************************************************
//This file was generated by Cobalt, a rapid application development 
//framework developed by JV Roig (jvroig@jvroig.com).
//
//Cobalt on the web: http://cobalt.jvroig.com
//******************************************************************
require 'path.php';
init_cobalt('View user');

if(isset($_GET['username']))
{
    $username = urldecode($_GET['username']);
    require 'form_data_user.php';
}
elseif(xsrf_guard())
{
    init_var($_POST['btn_back']);

    if($_POST['btn_back']) 
    {
        log_action('Pressed cancel button', $_SERVER['PHP_SELF']);
        require 'components/query_string_standard.php';
        redirect("listview_user.php?$query_string");
    }
}
require 'subclasses/user_html.php';
$html = new user_html;
$html->draw_header('Detail View: User', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
$html->detail_view = TRUE;

$html->draw_controls('view');

$html->draw_footer();
