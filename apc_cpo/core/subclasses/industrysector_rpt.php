<?php
require_once 'industrysector_dd.php';
class industrysector_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'INDUSTRYSECTOR_REPORT_CUSTOM';
    var $report_title = 'Industrysector: Custom Reporting Tool';
    var $html_subclass = 'industrysector_html';
    var $data_subclass = 'industrysector';
    var $result_page = 'reporter_result_industrysector.php';
    var $cancel_page = 'listview_industrysector.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_industrysector.php';

    function industrysector_rpt()
    {
        $this->fields        = industrysector_dd::load_dictionary();
        $this->relations     = industrysector_dd::load_relationships();
        $this->subclasses    = industrysector_dd::load_subclass_info();
        $this->table_name    = industrysector_dd::$table_name;
        $this->tables        = industrysector_dd::$table_name;
        $this->readable_name = industrysector_dd::$readable_name;
        $this->get_report_fields();
    }
}
