<?php
require_once 'PhilZip_dd.php';
class PhilZip_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'PHILZIP_REPORT_CUSTOM';
    var $report_title = 'PhilZip: Custom Reporting Tool';
    var $html_subclass = 'PhilZip_html';
    var $data_subclass = 'PhilZip';
    var $result_page = 'reporter_result_PhilZip.php';
    var $cancel_page = 'listview_PhilZip.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_PhilZip.php';

    function PhilZip_rpt()
    {
        $this->fields        = PhilZip_dd::load_dictionary();
        $this->relations     = PhilZip_dd::load_relationships();
        $this->subclasses    = PhilZip_dd::load_subclass_info();
        $this->table_name    = PhilZip_dd::$table_name;
        $this->tables        = PhilZip_dd::$table_name;
        $this->readable_name = PhilZip_dd::$readable_name;
        $this->get_report_fields();
    }
}
