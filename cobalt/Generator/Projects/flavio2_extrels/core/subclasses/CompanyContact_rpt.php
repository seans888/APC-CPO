<?php
require_once 'CompanyContact_dd.php';
class CompanyContact_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'COMPANYCONTACT_REPORT_CUSTOM';
    var $report_title = 'CompanyContact: Custom Reporting Tool';
    var $html_subclass = 'CompanyContact_html';
    var $data_subclass = 'CompanyContact';
    var $result_page = 'reporter_result_CompanyContact.php';
    var $cancel_page = 'listview_CompanyContact.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_CompanyContact.php';

    function CompanyContact_rpt()
    {
        $this->fields        = CompanyContact_dd::load_dictionary();
        $this->relations     = CompanyContact_dd::load_relationships();
        $this->subclasses    = CompanyContact_dd::load_subclass_info();
        $this->table_name    = CompanyContact_dd::$table_name;
        $this->tables        = CompanyContact_dd::$table_name;
        $this->readable_name = CompanyContact_dd::$readable_name;
        $this->get_report_fields();
    }
}
