<?php
require_once 'contact_dd.php';
class contact_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'CONTACT_REPORT_CUSTOM';
    var $report_title = 'Contact: Custom Reporting Tool';
    var $html_subclass = 'contact_html';
    var $data_subclass = 'contact';
    var $result_page = 'reporter_result_contact.php';
    var $cancel_page = 'listview_contact.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_contact.php';

    function contact_rpt()
    {
        $this->fields        = contact_dd::load_dictionary();
        $this->relations     = contact_dd::load_relationships();
        $this->subclasses    = contact_dd::load_subclass_info();
        $this->table_name    = contact_dd::$table_name;
        $this->tables        = contact_dd::$table_name;
        $this->readable_name = contact_dd::$readable_name;
        $this->get_report_fields();
    }
}
