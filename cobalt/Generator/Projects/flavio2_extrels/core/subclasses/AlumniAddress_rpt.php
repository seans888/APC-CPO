<?php
require_once 'AlumniAddress_dd.php';
class AlumniAddress_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'ALUMNIADDRESS_REPORT_CUSTOM';
    var $report_title = 'AlumniAddress: Custom Reporting Tool';
    var $html_subclass = 'AlumniAddress_html';
    var $data_subclass = 'AlumniAddress';
    var $result_page = 'reporter_result_AlumniAddress.php';
    var $cancel_page = 'listview_AlumniAddress.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_AlumniAddress.php';

    function AlumniAddress_rpt()
    {
        $this->fields        = AlumniAddress_dd::load_dictionary();
        $this->relations     = AlumniAddress_dd::load_relationships();
        $this->subclasses    = AlumniAddress_dd::load_subclass_info();
        $this->table_name    = AlumniAddress_dd::$table_name;
        $this->tables        = AlumniAddress_dd::$table_name;
        $this->readable_name = AlumniAddress_dd::$readable_name;
        $this->get_report_fields();
    }
}
