<?php
require_once 'IndustrySector_dd.php';
class IndustrySector_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'INDUSTRYSECTOR_REPORT_CUSTOM';
    var $report_title = 'IndustrySector: Custom Reporting Tool';
    var $html_subclass = 'IndustrySector_html';
    var $data_subclass = 'IndustrySector';
    var $result_page = 'reporter_result_IndustrySector.php';
    var $cancel_page = 'listview_IndustrySector.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_IndustrySector.php';

    function IndustrySector_rpt()
    {
        $this->fields        = IndustrySector_dd::load_dictionary();
        $this->relations     = IndustrySector_dd::load_relationships();
        $this->subclasses    = IndustrySector_dd::load_subclass_info();
        $this->table_name    = IndustrySector_dd::$table_name;
        $this->tables        = IndustrySector_dd::$table_name;
        $this->readable_name = IndustrySector_dd::$readable_name;
        $this->get_report_fields();
    }
}
