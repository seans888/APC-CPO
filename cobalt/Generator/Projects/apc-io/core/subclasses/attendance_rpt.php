<?php
require_once 'attendance_dd.php';
class attendance_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'ATTENDANCE_REPORT_CUSTOM';
    var $report_title = 'Attendance: Custom Reporting Tool';
    var $html_subclass = 'attendance_html';
    var $data_subclass = 'attendance';
    var $result_page = 'reporter_result_attendance.php';
    var $cancel_page = 'listview_attendance.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_attendance.php';

    function attendance_rpt()
    {
        $this->fields        = attendance_dd::load_dictionary();
        $this->relations     = attendance_dd::load_relationships();
        $this->subclasses    = attendance_dd::load_subclass_info();
        $this->table_name    = attendance_dd::$table_name;
        $this->tables        = attendance_dd::$table_name;
        $this->readable_name = attendance_dd::$readable_name;
        $this->get_report_fields();
    }
}
