<?php
require_once 'alumniemplmove_dd.php';
class alumniemplmove_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'ALUMNIEMPLMOVE_REPORT_CUSTOM';
    var $report_title = 'Alumniemplmove: Custom Reporting Tool';
    var $html_subclass = 'alumniemplmove_html';
    var $data_subclass = 'alumniemplmove';
    var $result_page = 'reporter_result_alumniemplmove.php';
    var $cancel_page = 'listview_alumniemplmove.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_alumniemplmove.php';

    function alumniemplmove_rpt()
    {
        $this->fields        = alumniemplmove_dd::load_dictionary();
        $this->relations     = alumniemplmove_dd::load_relationships();
        $this->subclasses    = alumniemplmove_dd::load_subclass_info();
        $this->table_name    = alumniemplmove_dd::$table_name;
        $this->tables        = alumniemplmove_dd::$table_name;
        $this->readable_name = alumniemplmove_dd::$readable_name;
        $this->get_report_fields();
    }
}
