<?php
require_once 'SchoolCourse_dd.php';
class SchoolCourse_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'SCHOOLCOURSE_REPORT_CUSTOM';
    var $report_title = 'SchoolCourse: Custom Reporting Tool';
    var $html_subclass = 'SchoolCourse_html';
    var $data_subclass = 'SchoolCourse';
    var $result_page = 'reporter_result_SchoolCourse.php';
    var $cancel_page = 'listview_SchoolCourse.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_SchoolCourse.php';

    function SchoolCourse_rpt()
    {
        $this->fields        = SchoolCourse_dd::load_dictionary();
        $this->relations     = SchoolCourse_dd::load_relationships();
        $this->subclasses    = SchoolCourse_dd::load_subclass_info();
        $this->table_name    = SchoolCourse_dd::$table_name;
        $this->tables        = SchoolCourse_dd::$table_name;
        $this->readable_name = SchoolCourse_dd::$readable_name;
        $this->get_report_fields();
    }
}
