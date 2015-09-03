<?php
require_once 'eval_hdr_dd.php';
class eval_hdr_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'EVAL_HDR_REPORT_CUSTOM';
    var $report_title = 'Eval Hdr: Custom Reporting Tool';
    var $html_subclass = 'eval_hdr_html';
    var $data_subclass = 'eval_hdr';
    var $result_page = 'reporter_result_eval_hdr.php';
    var $cancel_page = 'listview_eval_hdr.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_eval_hdr.php';

    function eval_hdr_rpt()
    {
        $this->fields        = eval_hdr_dd::load_dictionary();
        $this->relations     = eval_hdr_dd::load_relationships();
        $this->subclasses    = eval_hdr_dd::load_subclass_info();
        $this->table_name    = eval_hdr_dd::$table_name;
        $this->tables        = eval_hdr_dd::$table_name;
        $this->readable_name = eval_hdr_dd::$readable_name;
        $this->get_report_fields();
    }
}
