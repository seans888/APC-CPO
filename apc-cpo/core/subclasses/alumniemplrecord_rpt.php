<?php
require_once 'alumniemplrecord_dd.php';
class alumniemplrecord_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'ALUMNIEMPLRECORD_REPORT_CUSTOM';
    var $report_title = 'Alumniemplrecord: Custom Reporting Tool';
    var $html_subclass = 'alumniemplrecord_html';
    var $data_subclass = 'alumniemplrecord';
    var $result_page = 'reporter_result_alumniemplrecord.php';
    var $cancel_page = 'listview_alumniemplrecord.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_alumniemplrecord.php';

    function alumniemplrecord_rpt()
    {
        $this->fields        = alumniemplrecord_dd::load_dictionary();
        $this->relations     = alumniemplrecord_dd::load_relationships();
        $this->subclasses    = alumniemplrecord_dd::load_subclass_info();
        $this->table_name    = alumniemplrecord_dd::$table_name;
        $this->tables        = alumniemplrecord_dd::$table_name;
        $this->readable_name = alumniemplrecord_dd::$readable_name;
        $this->get_report_fields();
    }
}
