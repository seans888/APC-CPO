<?php
require_once 'resume_dtl_dd.php';
class resume_dtl_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'RESUME_DTL_REPORT_CUSTOM';
    var $report_title = 'Resume Dtl: Custom Reporting Tool';
    var $html_subclass = 'resume_dtl_html';
    var $data_subclass = 'resume_dtl';
    var $result_page = 'reporter_result_resume_dtl.php';
    var $cancel_page = 'listview_resume_dtl.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_resume_dtl.php';

    function resume_dtl_rpt()
    {
        $this->fields        = resume_dtl_dd::load_dictionary();
        $this->relations     = resume_dtl_dd::load_relationships();
        $this->subclasses    = resume_dtl_dd::load_subclass_info();
        $this->table_name    = resume_dtl_dd::$table_name;
        $this->tables        = resume_dtl_dd::$table_name;
        $this->readable_name = resume_dtl_dd::$readable_name;
        $this->get_report_fields();
    }
}
