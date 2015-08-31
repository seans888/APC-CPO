<?php
require_once 'Contact_dd.php';
class Contact_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'CONTACT_REPORT_CUSTOM';
    var $report_title = 'Contact: Custom Reporting Tool';
    var $html_subclass = 'Contact_html';
    var $data_subclass = 'Contact';
    var $result_page = 'reporter_result_Contact.php';
    var $cancel_page = 'listview_Contact.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_Contact.php';

    function Contact_rpt()
    {
        $this->fields        = Contact_dd::load_dictionary();
        $this->relations     = Contact_dd::load_relationships();
        $this->subclasses    = Contact_dd::load_subclass_info();
        $this->table_name    = Contact_dd::$table_name;
        $this->tables        = Contact_dd::$table_name;
        $this->readable_name = Contact_dd::$readable_name;
        $this->get_report_fields();
    }
}
