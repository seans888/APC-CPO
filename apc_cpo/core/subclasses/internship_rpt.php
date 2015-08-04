<?php
require_once 'internship_dd.php';
class internship_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'INTERNSHIP_REPORT_CUSTOM';
    var $report_title = 'Internship: Custom Reporting Tool';
    var $html_subclass = 'internship_html';
    var $data_subclass = 'internship';
    var $result_page = 'reporter_result_internship.php';
    var $cancel_page = 'listview_internship.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_internship.php';

    function internship_rpt()
    {
        $this->fields        = internship_dd::load_dictionary();
        $this->relations     = internship_dd::load_relationships();
        $this->subclasses    = internship_dd::load_subclass_info();
        $this->table_name    = internship_dd::$table_name;
        $this->tables        = internship_dd::$table_name;
        $this->readable_name = internship_dd::$readable_name;
        $this->get_report_fields();
    }
}
