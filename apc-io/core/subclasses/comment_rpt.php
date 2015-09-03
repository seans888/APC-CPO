<?php
require_once 'comment_dd.php';
class comment_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'COMMENT_REPORT_CUSTOM';
    var $report_title = 'Comment: Custom Reporting Tool';
    var $html_subclass = 'comment_html';
    var $data_subclass = 'comment';
    var $result_page = 'reporter_result_comment.php';
    var $cancel_page = 'listview_comment.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_comment.php';

    function comment_rpt()
    {
        $this->fields        = comment_dd::load_dictionary();
        $this->relations     = comment_dd::load_relationships();
        $this->subclasses    = comment_dd::load_subclass_info();
        $this->table_name    = comment_dd::$table_name;
        $this->tables        = comment_dd::$table_name;
        $this->readable_name = comment_dd::$readable_name;
        $this->get_report_fields();
    }
}
