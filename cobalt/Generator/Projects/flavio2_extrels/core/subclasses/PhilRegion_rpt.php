<?php
require_once 'PhilRegion_dd.php';
class PhilRegion_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'PHILREGION_REPORT_CUSTOM';
    var $report_title = 'PhilRegion: Custom Reporting Tool';
    var $html_subclass = 'PhilRegion_html';
    var $data_subclass = 'PhilRegion';
    var $result_page = 'reporter_result_PhilRegion.php';
    var $cancel_page = 'listview_PhilRegion.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_PhilRegion.php';

    function PhilRegion_rpt()
    {
        $this->fields        = PhilRegion_dd::load_dictionary();
        $this->relations     = PhilRegion_dd::load_relationships();
        $this->subclasses    = PhilRegion_dd::load_subclass_info();
        $this->table_name    = PhilRegion_dd::$table_name;
        $this->tables        = PhilRegion_dd::$table_name;
        $this->readable_name = PhilRegion_dd::$readable_name;
        $this->get_report_fields();
    }
}
