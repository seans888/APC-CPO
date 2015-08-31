<?php
require_once 'companycontact_dd.php';
class companycontact_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'COMPANYCONTACT_REPORT_CUSTOM';
    var $report_title = 'Companycontact: Custom Reporting Tool';
    var $html_subclass = 'companycontact_html';
    var $data_subclass = 'companycontact';
    var $result_page = 'reporter_result_companycontact.php';
    var $cancel_page = 'listview_companycontact.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_companycontact.php';

    function companycontact_rpt()
    {
        $this->fields        = companycontact_dd::load_dictionary();
        $this->relations     = companycontact_dd::load_relationships();
        $this->subclasses    = companycontact_dd::load_subclass_info();
        $this->table_name    = companycontact_dd::$table_name;
        $this->tables        = companycontact_dd::$table_name;
        $this->readable_name = companycontact_dd::$readable_name;
        $this->get_report_fields();
    }
}
