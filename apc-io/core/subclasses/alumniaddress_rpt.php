<?php
require_once 'alumniaddress_dd.php';
class alumniaddress_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'ALUMNIADDRESS_REPORT_CUSTOM';
    var $report_title = 'Alumniaddress: Custom Reporting Tool';
    var $html_subclass = 'alumniaddress_html';
    var $data_subclass = 'alumniaddress';
    var $result_page = 'reporter_result_alumniaddress.php';
    var $cancel_page = 'listview_alumniaddress.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_alumniaddress.php';

    function alumniaddress_rpt()
    {
        $this->fields        = alumniaddress_dd::load_dictionary();
        $this->relations     = alumniaddress_dd::load_relationships();
        $this->subclasses    = alumniaddress_dd::load_subclass_info();
        $this->table_name    = alumniaddress_dd::$table_name;
        $this->tables        = alumniaddress_dd::$table_name;
        $this->readable_name = alumniaddress_dd::$readable_name;
        $this->get_report_fields();
    }
}
