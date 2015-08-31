<?php
require_once 'InternAssignment_dd.php';
class InternAssignment_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'INTERNASSIGNMENT_REPORT_CUSTOM';
    var $report_title = 'InternAssignment: Custom Reporting Tool';
    var $html_subclass = 'InternAssignment_html';
    var $data_subclass = 'InternAssignment';
    var $result_page = 'reporter_result_InternAssignment.php';
    var $cancel_page = 'listview_InternAssignment.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_InternAssignment.php';

    function InternAssignment_rpt()
    {
        $this->fields        = InternAssignment_dd::load_dictionary();
        $this->relations     = InternAssignment_dd::load_relationships();
        $this->subclasses    = InternAssignment_dd::load_subclass_info();
        $this->table_name    = InternAssignment_dd::$table_name;
        $this->tables        = InternAssignment_dd::$table_name;
        $this->readable_name = InternAssignment_dd::$readable_name;
        $this->get_report_fields();
    }
}
