<?php
require_once 'resume_hdr_dd.php';
class resume_hdr_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'RESUME_HDR_REPORT_CUSTOM';
    var $report_title = 'Resume Hdr: Custom Reporting Tool';
    var $html_subclass = 'resume_hdr_html';
    var $data_subclass = 'resume_hdr';
    var $result_page = 'reporter_result_resume_hdr.php';
    var $cancel_page = 'listview_resume_hdr.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_resume_hdr.php';

    function resume_hdr_rpt()
    {
        $this->fields        = resume_hdr_dd::load_dictionary();
        $this->relations     = resume_hdr_dd::load_relationships();
        $this->subclasses    = resume_hdr_dd::load_subclass_info();
        $this->table_name    = resume_hdr_dd::$table_name;
        $this->tables        = resume_hdr_dd::$table_name;
        $this->readable_name = resume_hdr_dd::$readable_name;
        $this->get_report_fields();
    }
}
