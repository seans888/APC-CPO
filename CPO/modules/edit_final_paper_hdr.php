<?php
//******************************************************************
//This file was generated by Cobalt, a rapid application development 
//framework developed by JV Roig (jvroig@jvroig.com).
//
//Cobalt on the web: http://cobalt.jvroig.com
//******************************************************************
require 'path.php';
init_cobalt('Edit final paper hdr');

if(isset($_GET['id']))
{
    $id = urldecode($_GET['id']);
    require 'form_data_final_paper_hdr.php';

}
elseif(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_submit']);
    require 'components/query_string_standard.php';
    require 'subclasses/final_paper_hdr.php';
    $dbh_final_paper_hdr = new final_paper_hdr;

    $object_name = 'dbh_final_paper_hdr';
    require 'components/create_form_data.php';

    extract($arr_form_data);

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button', $_SERVER['PHP_SELF']);
        redirect("listview_final_paper_hdr.php?$query_string");
    }

    if($_POST['btn_submit'])
    {
        log_action('Pressed submit button', $_SERVER['PHP_SELF']);

        $message .= $dbh_final_paper_hdr->sanitize($arr_form_data)->lst_error;
        extract($arr_form_data);

        if($dbh_final_paper_hdr->check_uniqueness_for_editing($arr_form_data)->is_unique)
        {
            //Good, no duplicate in database
        }
        else
        {
            $message = "Record already exists with the same primary identifiers!";
        }

        if($message=="")
        {
            $dbh_final_paper_hdr->edit($arr_form_data);


            redirect("listview_final_paper_hdr.php?$query_string");
        }
    }
}
require 'subclasses/final_paper_hdr_html.php';
$html = new final_paper_hdr_html;
$html->draw_header('Edit Final Paper Hdr', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
$html->draw_hidden('id');

$html->draw_controls('edit');

$html->draw_footer();