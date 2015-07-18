<?php
//******************************************************************
//This file was generated by Cobalt, a rapid application development 
//framework developed by JV Roig (jvroig@jvroig.com).
//
//Cobalt on the web: http://cobalt.jvroig.com
//******************************************************************
require 'path.php';
init_cobalt('Edit user');

if(isset($_GET['username']))
{
    $username = urldecode($_GET['username']);
    require 'form_data_user.php';
    $orig_username = $username;
}
elseif(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_submit']);
    require 'components/query_string_standard.php';
    require 'subclasses/user.php';
    $dbh_user = new user;

    $object_name = 'dbh_user';
    require 'components/create_form_data.php';
    $arr_form_data['orig_username'] = $_POST['orig_username'];

    extract($arr_form_data);

    if($_POST['btn_cancel']) 
    {
        log_action('Pressed cancel button', $_SERVER['PHP_SELF']);
        redirect("listview_user.php?$query_string");
    }

    if($_POST['btn_submit'])
    {
        log_action('Pressed submit button', $_SERVER['PHP_SELF']);

        $message .= $dbh_user->sanitize($arr_form_data)->lst_error;
        extract($arr_form_data);

        if($dbh_user->check_uniqueness_for_editing($arr_form_data)->is_unique)
        {
            //Good, no duplicate in database
        }
        else
        {
            $message = "Record already exists with the same primary identifiers!";
        }

        if($message=="")
        {
            $dbh_user->edit($arr_form_data);

            //Permissions from role, if role was chosen
            if($role_id!='')
            {
                $db = new data_abstraction();
                $db->execute_query("DELETE FROM user_passport WHERE username = '" . quote_smart($username) . "'");
                $db->execute_query("INSERT `user_passport` SELECT '" . quote_smart($username) . "', `link_id` FROM user_role_links WHERE role_id='" . quote_smart($role_id) . "'");
            }

            redirect("listview_user.php?$query_string");
        }
    }
}
require 'subclasses/user_html.php';
$html = new user_html;
$html->draw_header('Edit User', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
$html->draw_hidden('orig_username');
$html->exception = array('password');
$html->draw_controls('edit');
$html->draw_footer();
