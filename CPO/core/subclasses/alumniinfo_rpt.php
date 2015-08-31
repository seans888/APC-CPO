<?php
require_once 'alumniinfo_dd.php';
class alumniinfo_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'ALUMNIINFO_REPORT_CUSTOM';
    var $report_title = 'Alumniinfo: Custom Reporting Tool';
    var $html_subclass = 'alumniinfo_html';
    var $data_subclass = 'alumniinfo';
    var $result_page = 'reporter_result_alumniinfo.php';
    var $cancel_page = 'listview_alumniinfo.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_alumniinfo.php';

    function alumniinfo_rpt()
    {
        $this->fields        = alumniinfo_dd::load_dictionary();
        $this->relations     = alumniinfo_dd::load_relationships();
        $this->subclasses    = alumniinfo_dd::load_subclass_info();
        $this->table_name    = alumniinfo_dd::$table_name;
        $this->tables        = alumniinfo_dd::$table_name;
        $this->readable_name = alumniinfo_dd::$readable_name;
        $this->get_report_fields();
    }
}
