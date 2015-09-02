<?php
require_once 'final_paper_dtl_dd.php';
class final_paper_dtl_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'FINAL_PAPER_DTL_REPORT_CUSTOM';
    var $report_title = 'Final Paper Dtl: Custom Reporting Tool';
    var $html_subclass = 'final_paper_dtl_html';
    var $data_subclass = 'final_paper_dtl';
    var $result_page = 'reporter_result_final_paper_dtl.php';
    var $cancel_page = 'listview_final_paper_dtl.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_final_paper_dtl.php';

    function final_paper_dtl_rpt()
    {
        $this->fields        = final_paper_dtl_dd::load_dictionary();
        $this->relations     = final_paper_dtl_dd::load_relationships();
        $this->subclasses    = final_paper_dtl_dd::load_subclass_info();
        $this->table_name    = final_paper_dtl_dd::$table_name;
        $this->tables        = final_paper_dtl_dd::$table_name;
        $this->readable_name = final_paper_dtl_dd::$readable_name;
        $this->get_report_fields();
    }
}
