<?php
require_once 'companybranch_dd.php';
class companybranch_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'COMPANYBRANCH_REPORT_CUSTOM';
    var $report_title = 'Companybranch: Custom Reporting Tool';
    var $html_subclass = 'companybranch_html';
    var $data_subclass = 'companybranch';
    var $result_page = 'reporter_result_companybranch.php';
    var $cancel_page = 'listview_companybranch.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_companybranch.php';

    function companybranch_rpt()
    {
        $this->fields        = companybranch_dd::load_dictionary();
        $this->relations     = companybranch_dd::load_relationships();
        $this->subclasses    = companybranch_dd::load_subclass_info();
        $this->table_name    = companybranch_dd::$table_name;
        $this->tables        = companybranch_dd::$table_name;
        $this->readable_name = companybranch_dd::$readable_name;
        $this->get_report_fields();
    }
}
