<?php
require_once 'internassignment_dd.php';
class internassignment_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'INTERNASSIGNMENT_REPORT_CUSTOM';
    var $report_title = 'Internassignment: Custom Reporting Tool';
    var $html_subclass = 'internassignment_html';
    var $data_subclass = 'internassignment';
    var $result_page = 'reporter_result_internassignment.php';
    var $cancel_page = 'listview_internassignment.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_internassignment.php';

    function internassignment_rpt()
    {
        $this->fields        = internassignment_dd::load_dictionary();
        $this->relations     = internassignment_dd::load_relationships();
        $this->subclasses    = internassignment_dd::load_subclass_info();
        $this->table_name    = internassignment_dd::$table_name;
        $this->tables        = internassignment_dd::$table_name;
        $this->readable_name = internassignment_dd::$readable_name;
        $this->get_report_fields();
    }
}
