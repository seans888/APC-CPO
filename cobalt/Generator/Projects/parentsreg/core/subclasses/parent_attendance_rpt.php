<?php
require_once 'parent_attendance_dd.php';
class parent_attendance_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'PARENT_ATTENDANCE_REPORT_CUSTOM';
    var $report_title = 'Parent Attendance: Custom Reporting Tool';
    var $html_subclass = 'parent_attendance_html';
    var $data_subclass = 'parent_attendance';
    var $result_page = 'reporter_result_parent_attendance.php';
    var $cancel_page = 'listview_parent_attendance.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_parent_attendance.php';

    function parent_attendance_rpt()
    {
        $this->fields        = parent_attendance_dd::load_dictionary();
        $this->relations     = parent_attendance_dd::load_relationships();
        $this->subclasses    = parent_attendance_dd::load_subclass_info();
        $this->table_name    = parent_attendance_dd::$table_name;
        $this->tables        = parent_attendance_dd::$table_name;
        $this->readable_name = parent_attendance_dd::$readable_name;
        $this->get_report_fields();
    }
}
