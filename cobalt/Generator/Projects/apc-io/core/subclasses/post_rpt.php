<?php
require_once 'post_dd.php';
class post_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'POST_REPORT_CUSTOM';
    var $report_title = 'Post: Custom Reporting Tool';
    var $html_subclass = 'post_html';
    var $data_subclass = 'post';
    var $result_page = 'reporter_result_post.php';
    var $cancel_page = 'listview_post.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_post.php';

    function post_rpt()
    {
        $this->fields        = post_dd::load_dictionary();
        $this->relations     = post_dd::load_relationships();
        $this->subclasses    = post_dd::load_subclass_info();
        $this->table_name    = post_dd::$table_name;
        $this->tables        = post_dd::$table_name;
        $this->readable_name = post_dd::$readable_name;
        $this->get_report_fields();
    }
}
