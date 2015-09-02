<?php
require_once 'alumnifurtherstudies_dd.php';
class alumnifurtherstudies_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'ALUMNIFURTHERSTUDIES_REPORT_CUSTOM';
    var $report_title = 'Alumnifurtherstudies: Custom Reporting Tool';
    var $html_subclass = 'alumnifurtherstudies_html';
    var $data_subclass = 'alumnifurtherstudies';
    var $result_page = 'reporter_result_alumnifurtherstudies.php';
    var $cancel_page = 'listview_alumnifurtherstudies.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_alumnifurtherstudies.php';

    function alumnifurtherstudies_rpt()
    {
        $this->fields        = alumnifurtherstudies_dd::load_dictionary();
        $this->relations     = alumnifurtherstudies_dd::load_relationships();
        $this->subclasses    = alumnifurtherstudies_dd::load_subclass_info();
        $this->table_name    = alumnifurtherstudies_dd::$table_name;
        $this->tables        = alumnifurtherstudies_dd::$table_name;
        $this->readable_name = alumnifurtherstudies_dd::$readable_name;
        $this->get_report_fields();
    }
}
