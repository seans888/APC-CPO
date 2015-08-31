<?php
require_once 'CompanyBranch_dd.php';
class CompanyBranch_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'COMPANYBRANCH_REPORT_CUSTOM';
    var $report_title = 'CompanyBranch: Custom Reporting Tool';
    var $html_subclass = 'CompanyBranch_html';
    var $data_subclass = 'CompanyBranch';
    var $result_page = 'reporter_result_CompanyBranch.php';
    var $cancel_page = 'listview_CompanyBranch.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_CompanyBranch.php';

    function CompanyBranch_rpt()
    {
        $this->fields        = CompanyBranch_dd::load_dictionary();
        $this->relations     = CompanyBranch_dd::load_relationships();
        $this->subclasses    = CompanyBranch_dd::load_subclass_info();
        $this->table_name    = CompanyBranch_dd::$table_name;
        $this->tables        = CompanyBranch_dd::$table_name;
        $this->readable_name = CompanyBranch_dd::$readable_name;
        $this->get_report_fields();
    }
}
