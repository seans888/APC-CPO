<?php
//******************************************************************
//This file was generated by Cobalt, a rapid application development 
//framework developed by JV Roig (jvroig@jvroig.com).
//
//Cobalt on the web: http://cobalt.jvroig.com
//******************************************************************
require 'path.php';
init_cobalt('Add user role');

$show_result = false;

if(isset($_GET['filter_field_used']) && isset($_GET['filter_used']) && isset($_GET['page_from']))
{
    $role_id = $_GET['role_id'];
    require 'components/get_listview_referrer.php';
    $role_name = cobalt_load_class('user_role')->get_role_name($role_id)->dump['role'];
}

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_back']);
    init_var($_POST['btn_submit']);
    init_var($_POST['find']);
    init_var($_POST['passportButton']);
    require 'components/query_string_standard.php';

    $role_id   = $_POST['role_id'];
    $role_name = $_POST['role_name'];

    if($_POST['btn_cancel'] || $_POST['btn_back']) 
    {
        log_action('Pressed cancel button', $_SERVER['PHP_SELF']);
        redirect("listview_user_role.php?$query_string");
    }
    
    if($_POST['btn_submit'])
    {
        //Get all users with the role
        require 'subclasses/user.php';
        $obj_user = new user;
        $obj_user->get_role_users($role_id);
        $lst_user = $obj_user->lst_user;
        if(isset($obj_user->dump['username']))
        {
            $arr_user = $obj_user->dump['username'];
        }
        
        $show_result=TRUE;
        if($lst_user == '')
        {
            //No users found, nothing to process
            $result_message = 'Role cascade update was not succesful. No users were found having this role.';
            $result_message_type = 'error';
        }
        else
        {
            //Delete passports of all users retreived
            $db = new data_abstraction();
            $db->execute_query('DELETE FROM user_passport WHERE username IN (' . $lst_user . ')');

            //Assign role privileges to each user
            foreach($arr_user as $username)
            {
                $db->execute_query("INSERT `user_passport` SELECT '" . quote_smart($username) . "', `link_id` FROM user_role_links WHERE role_id='" . quote_smart($role_id) . "'");
            }

            $result_message = 'Role cascade update was succesful.';
            $result_message_type = 'system';
        }
    }
}
$html = new html;
$html->draw_header('Role Cascade Update', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
$html->draw_hidden('role_id');
$html->draw_hidden('role_name');

echo '<div class="container">';
echo '<fieldset class="container_invisible">';
$html->draw_fieldset_header('Batch Process to Update "' . cobalt_htmlentities($role_name) . '" Users');
$html->draw_fieldset_body_start();
echo '<tr><td>';

if($show_result)
{
    if($result_message_type=='error')
    {
        $html->display_error($result_message);
    }
    else
    {
        $html->display_message($result_message);
    }
}
else
{
    $html->display_info('This process will update the permissions of all users that are assigned the role "' 
                       . cobalt_htmlentities($role_name). '"');
    $html->display_error('WARNING: If you have a large number of users assigned to this role (several hundred or more) , this process can take a long time and cause a sharp increase in server load. 
                        It would be advisable to trigger this process during off-peak hours to avoid inconveniencing your users.');
}   
echo '</td></tr>';
$html->draw_fieldset_body_end();
$html->draw_fieldset_footer_start();
if($show_result)
{
    $html->draw_button('BACK');
}
else
{
    $html->draw_submit_cancel(FALSE,2,'btn_submit','CASCADE UPDATE');
}
$html->draw_fieldset_footer_end();
echo '</fieldset>';
echo '</div>';

$html->draw_footer();
