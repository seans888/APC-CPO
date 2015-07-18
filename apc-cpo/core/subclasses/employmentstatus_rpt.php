<?php
require_once 'employmentstatus_dd.php';
class employmentstatus_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'EMPLOYMENTSTATUS_REPORT_CUSTOM';
    var $report_title = 'Employmentstatus: Custom Reporting Tool';
    var $html_subclass = 'employmentstatus_html';
    var $data_subclass = 'employmentstatus';
    var $result_page = 'reporter_result_employmentstatus.php';
    var $cancel_page = 'listview_employmentstatus.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_employmentstatus.php';

    function employmentstatus_rpt()
    {
        $this->fields        = employmentstatus_dd::load_dictionary();
        $this->relations     = employmentstatus_dd::load_relationships();
        $this->subclasses    = employmentstatus_dd::load_subclass_info();
        $this->table_name    = employmentstatus_dd::$table_name;
        $this->tables        = employmentstatus_dd::$table_name;
        $this->readable_name = employmentstatus_dd::$readable_name;
        $this->get_report_fields();
    }
}
