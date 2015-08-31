<?php
require_once 'Country_dd.php';
class Country_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'COUNTRY_REPORT_CUSTOM';
    var $report_title = 'Country: Custom Reporting Tool';
    var $html_subclass = 'Country_html';
    var $data_subclass = 'Country';
    var $result_page = 'reporter_result_Country.php';
    var $cancel_page = 'listview_Country.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_Country.php';

    function Country_rpt()
    {
        $this->fields        = Country_dd::load_dictionary();
        $this->relations     = Country_dd::load_relationships();
        $this->subclasses    = Country_dd::load_subclass_info();
        $this->table_name    = Country_dd::$table_name;
        $this->tables        = Country_dd::$table_name;
        $this->readable_name = Country_dd::$readable_name;
        $this->get_report_fields();
    }
}
