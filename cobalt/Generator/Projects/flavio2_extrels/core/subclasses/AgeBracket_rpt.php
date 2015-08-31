<?php
require_once 'AgeBracket_dd.php';
class AgeBracket_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'AGEBRACKET_REPORT_CUSTOM';
    var $report_title = 'AgeBracket: Custom Reporting Tool';
    var $html_subclass = 'AgeBracket_html';
    var $data_subclass = 'AgeBracket';
    var $result_page = 'reporter_result_AgeBracket.php';
    var $cancel_page = 'listview_AgeBracket.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_AgeBracket.php';

    function AgeBracket_rpt()
    {
        $this->fields        = AgeBracket_dd::load_dictionary();
        $this->relations     = AgeBracket_dd::load_relationships();
        $this->subclasses    = AgeBracket_dd::load_subclass_info();
        $this->table_name    = AgeBracket_dd::$table_name;
        $this->tables        = AgeBracket_dd::$table_name;
        $this->readable_name = AgeBracket_dd::$readable_name;
        $this->get_report_fields();
    }
}
