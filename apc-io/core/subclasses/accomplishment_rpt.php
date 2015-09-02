<?php
require_once 'accomplishment_dd.php';
class accomplishment_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'ACCOMPLISHMENT_REPORT_CUSTOM';
    var $report_title = 'Accomplishment: Custom Reporting Tool';
    var $html_subclass = 'accomplishment_html';
    var $data_subclass = 'accomplishment';
    var $result_page = 'reporter_result_accomplishment.php';
    var $cancel_page = 'listview_accomplishment.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_accomplishment.php';

    function accomplishment_rpt()
    {
        $this->fields        = accomplishment_dd::load_dictionary();
        $this->relations     = accomplishment_dd::load_relationships();
        $this->subclasses    = accomplishment_dd::load_subclass_info();
        $this->table_name    = accomplishment_dd::$table_name;
        $this->tables        = accomplishment_dd::$table_name;
        $this->readable_name = accomplishment_dd::$readable_name;
        $this->get_report_fields();
    }
}
