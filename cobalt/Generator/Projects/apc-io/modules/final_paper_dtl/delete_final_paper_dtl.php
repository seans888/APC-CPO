<?php
//******************************************************************
//This file was generated by Cobalt, a rapid application development 
//framework developed by JV Roig (jvroig@jvroig.com).
//
//Cobalt on the web: http://cobalt.jvroig.com
//******************************************************************
require 'path.php';
init_cobalt('Delete final paper dtl');

if(isset($_GET['id']))
{
    $id = urldecode($_GET['id']);
    require_once 'form_data_final_paper_dtl.php';
}

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_delete']);
    require 'components/query_string_standard.php';

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("listview_final_paper_dtl.php?$query_string");
    }

    elseif($_POST['btn_delete'])
    {
        log_action('Pressed delete button');
        require_once 'subclasses/final_paper_dtl.php';
        $dbh_final_paper_dtl = new final_paper_dtl;

        $object_name = 'dbh_final_paper_dtl';
        require 'components/create_form_data.php';

        $dbh_final_paper_dtl->delete($arr_form_data);


        redirect("listview_final_paper_dtl.php?$query_string");
    }
}
require 'subclasses/final_paper_dtl_html.php';
$html = new final_paper_dtl_html;
$html->draw_header('Delete Final Paper Dtl', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);

$html->draw_hidden('id');

$html->detail_view = TRUE;
$html->draw_controls('delete');

$html->draw_footer();