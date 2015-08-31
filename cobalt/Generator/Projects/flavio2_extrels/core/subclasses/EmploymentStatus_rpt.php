<?php
require_once 'EmploymentStatus_dd.php';
class EmploymentStatus_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'EMPLOYMENTSTATUS_REPORT_CUSTOM';
    var $report_title = 'EmploymentStatus: Custom Reporting Tool';
    var $html_subclass = 'EmploymentStatus_html';
    var $data_subclass = 'EmploymentStatus';
    var $result_page = 'reporter_result_EmploymentStatus.php';
    var $cancel_page = 'listview_EmploymentStatus.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_EmploymentStatus.php';

    function EmploymentStatus_rpt()
    {
        $this->fields        = EmploymentStatus_dd::load_dictionary();
        $this->relations     = EmploymentStatus_dd::load_relationships();
        $this->subclasses    = EmploymentStatus_dd::load_subclass_info();
        $this->table_name    = EmploymentStatus_dd::$table_name;
        $this->tables        = EmploymentStatus_dd::$table_name;
        $this->readable_name = EmploymentStatus_dd::$readable_name;
        $this->get_report_fields();
    }
}
