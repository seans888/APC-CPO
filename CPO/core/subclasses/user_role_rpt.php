<?php
require_once 'user_role_dd.php';
class user_role_rpt extends reporter
{
    var $tables='user_role';
    var $session_array_name = 'USER_ROLE_REPORT_CUSTOM';
    var $report_title = 'User Role: Custom Reporting Tool';
    var $html_subclass = 'user_role_html';
    var $data_subclass = 'user_role';
    var $result_page = 'reporter_result_user_role.php';
    var $cancel_page = 'listview_user_role.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_user_role.php';

    function user_role_rpt()
    {
        $this->fields = user_role_dd::load_dictionary();
        $this->relations = user_role_dd::load_relationships();
        $this->subclasses = user_role_dd::load_subclass_info();
        $this->get_report_fields();
    }
}
