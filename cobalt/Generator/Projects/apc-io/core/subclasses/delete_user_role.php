<?php
//******************************************************************
//This file was generated by Cobalt, a rapid application development
//framework developed by JV Roig (jvroig@jvroig.com).
//
//Cobalt on the web: http://cobalt.jvroig.com
//******************************************************************
require 'path.php';
init_cobalt('Delete user role');

if(isset($_GET['role_id']))
{
    $role_id = urldecode($_GET['role_id']);
    require 'form_data_user_role.php';
}
elseif(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_delete']);
    require 'components/query_string_standard.php';

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button', $_SERVER['PHP_SELF']);
        redirect("listview_user_role.php?$query_string");
    }

    elseif($_POST['btn_delete'])
    {
        log_action('Pressed delete button', $_SERVER['PHP_SELF']);
        require 'subclasses/user_role.php';
        $dbh_user_role = new user_role;

        $object_name = 'dbh_user_role';
        require 'components/create_form_data.php';

        $dbh_user_role->delete($arr_form_data);
        cobalt_load_class('user_role_links')->delete($arr_form_data);

        redirect("listview_user_role.php?$query_string");
    }
}
require 'subclasses/user_role_html.php';
$html = new user_role_html;
$html->draw_header('Delete User Role', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);

$html->draw_hidden('role_id');

$html->detail_view = TRUE;

$html->draw_controls('delete');

$html->draw_footer();
