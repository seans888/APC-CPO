<?php
require_once 'Company_dd.php';
class Company_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'COMPANY_REPORT_CUSTOM';
    var $report_title = 'Company: Custom Reporting Tool';
    var $html_subclass = 'Company_html';
    var $data_subclass = 'Company';
    var $result_page = 'reporter_result_Company.php';
    var $cancel_page = 'listview_Company.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_Company.php';

    function Company_rpt()
    {
        $this->fields        = Company_dd::load_dictionary();
        $this->relations     = Company_dd::load_relationships();
        $this->subclasses    = Company_dd::load_subclass_info();
        $this->table_name    = Company_dd::$table_name;
        $this->tables        = Company_dd::$table_name;
        $this->readable_name = Company_dd::$readable_name;
        $this->get_report_fields();
    }
}
