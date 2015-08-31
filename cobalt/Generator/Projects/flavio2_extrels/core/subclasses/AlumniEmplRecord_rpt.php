<?php
require_once 'AlumniEmplRecord_dd.php';
class AlumniEmplRecord_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'ALUMNIEMPLRECORD_REPORT_CUSTOM';
    var $report_title = 'AlumniEmplRecord: Custom Reporting Tool';
    var $html_subclass = 'AlumniEmplRecord_html';
    var $data_subclass = 'AlumniEmplRecord';
    var $result_page = 'reporter_result_AlumniEmplRecord.php';
    var $cancel_page = 'listview_AlumniEmplRecord.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_AlumniEmplRecord.php';

    function AlumniEmplRecord_rpt()
    {
        $this->fields        = AlumniEmplRecord_dd::load_dictionary();
        $this->relations     = AlumniEmplRecord_dd::load_relationships();
        $this->subclasses    = AlumniEmplRecord_dd::load_subclass_info();
        $this->table_name    = AlumniEmplRecord_dd::$table_name;
        $this->tables        = AlumniEmplRecord_dd::$table_name;
        $this->readable_name = AlumniEmplRecord_dd::$readable_name;
        $this->get_report_fields();
    }
}
