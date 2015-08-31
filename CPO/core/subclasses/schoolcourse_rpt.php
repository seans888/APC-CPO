<?php
require_once 'schoolcourse_dd.php';
class schoolcourse_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'SCHOOLCOURSE_REPORT_CUSTOM';
    var $report_title = 'Schoolcourse: Custom Reporting Tool';
    var $html_subclass = 'schoolcourse_html';
    var $data_subclass = 'schoolcourse';
    var $result_page = 'reporter_result_schoolcourse.php';
    var $cancel_page = 'listview_schoolcourse.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_schoolcourse.php';

    function schoolcourse_rpt()
    {
        $this->fields        = schoolcourse_dd::load_dictionary();
        $this->relations     = schoolcourse_dd::load_relationships();
        $this->subclasses    = schoolcourse_dd::load_subclass_info();
        $this->table_name    = schoolcourse_dd::$table_name;
        $this->tables        = schoolcourse_dd::$table_name;
        $this->readable_name = schoolcourse_dd::$readable_name;
        $this->get_report_fields();
    }
}
