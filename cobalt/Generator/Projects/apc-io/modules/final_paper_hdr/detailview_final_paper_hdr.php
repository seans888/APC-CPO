<?php
//******************************************************************
//This file was generated by Cobalt, a rapid application development 
//framework developed by JV Roig (jvroig@jvroig.com).
//
//Cobalt on the web: http://cobalt.jvroig.com
//******************************************************************
require 'path.php';
init_cobalt('View final paper hdr');

if(isset($_GET['id']))
{
    $id = urldecode($_GET['id']);
    require 'form_data_final_paper_hdr.php';
}

if(xsrf_guard())
{
    init_var($_POST['btn_back']);

    if($_POST['btn_back'])
    {
        log_action('Pressed cancel button');
        require 'components/query_string_standard.php';
        redirect("listview_final_paper_hdr.php?$query_string");
    }
}
require 'subclasses/final_paper_hdr_html.php';
$html = new final_paper_hdr_html;
$html->draw_header('Detail View: Final Paper Hdr', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
$html->detail_view = TRUE;
$html->draw_controls('view');

$html->draw_footer();