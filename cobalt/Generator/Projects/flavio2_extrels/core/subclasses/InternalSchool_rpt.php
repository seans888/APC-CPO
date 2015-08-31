<?php
require_once 'InternalSchool_dd.php';
class InternalSchool_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'INTERNALSCHOOL_REPORT_CUSTOM';
    var $report_title = 'InternalSchool: Custom Reporting Tool';
    var $html_subclass = 'InternalSchool_html';
    var $data_subclass = 'InternalSchool';
    var $result_page = 'reporter_result_InternalSchool.php';
    var $cancel_page = 'listview_InternalSchool.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_InternalSchool.php';

    function InternalSchool_rpt()
    {
        $this->fields        = InternalSchool_dd::load_dictionary();
        $this->relations     = InternalSchool_dd::load_relationships();
        $this->subclasses    = InternalSchool_dd::load_subclass_info();
        $this->table_name    = InternalSchool_dd::$table_name;
        $this->tables        = InternalSchool_dd::$table_name;
        $this->readable_name = InternalSchool_dd::$readable_name;
        $this->get_report_fields();
    }
}
