<?php
require_once 'eval_dtl_dd.php';
class eval_dtl_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'EVAL_DTL_REPORT_CUSTOM';
    var $report_title = 'Eval Dtl: Custom Reporting Tool';
    var $html_subclass = 'eval_dtl_html';
    var $data_subclass = 'eval_dtl';
    var $result_page = 'reporter_result_eval_dtl.php';
    var $cancel_page = 'listview_eval_dtl.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_eval_dtl.php';

    function eval_dtl_rpt()
    {
        $this->fields        = eval_dtl_dd::load_dictionary();
        $this->relations     = eval_dtl_dd::load_relationships();
        $this->subclasses    = eval_dtl_dd::load_subclass_info();
        $this->table_name    = eval_dtl_dd::$table_name;
        $this->tables        = eval_dtl_dd::$table_name;
        $this->readable_name = eval_dtl_dd::$readable_name;
        $this->get_report_fields();
    }
}
