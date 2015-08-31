<?php
require_once 'AlumniInfo_dd.php';
class AlumniInfo_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'ALUMNIINFO_REPORT_CUSTOM';
    var $report_title = 'AlumniInfo: Custom Reporting Tool';
    var $html_subclass = 'AlumniInfo_html';
    var $data_subclass = 'AlumniInfo';
    var $result_page = 'reporter_result_AlumniInfo.php';
    var $cancel_page = 'listview_AlumniInfo.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_AlumniInfo.php';

    function AlumniInfo_rpt()
    {
        $this->fields        = AlumniInfo_dd::load_dictionary();
        $this->relations     = AlumniInfo_dd::load_relationships();
        $this->subclasses    = AlumniInfo_dd::load_subclass_info();
        $this->table_name    = AlumniInfo_dd::$table_name;
        $this->tables        = AlumniInfo_dd::$table_name;
        $this->readable_name = AlumniInfo_dd::$readable_name;
        $this->get_report_fields();
    }
}
