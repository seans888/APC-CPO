<?php
require_once 'AlumniContactDetails_dd.php';
class AlumniContactDetails_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'ALUMNICONTACTDETAILS_REPORT_CUSTOM';
    var $report_title = 'AlumniContactDetails: Custom Reporting Tool';
    var $html_subclass = 'AlumniContactDetails_html';
    var $data_subclass = 'AlumniContactDetails';
    var $result_page = 'reporter_result_AlumniContactDetails.php';
    var $cancel_page = 'listview_AlumniContactDetails.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_AlumniContactDetails.php';

    function AlumniContactDetails_rpt()
    {
        $this->fields        = AlumniContactDetails_dd::load_dictionary();
        $this->relations     = AlumniContactDetails_dd::load_relationships();
        $this->subclasses    = AlumniContactDetails_dd::load_subclass_info();
        $this->table_name    = AlumniContactDetails_dd::$table_name;
        $this->tables        = AlumniContactDetails_dd::$table_name;
        $this->readable_name = AlumniContactDetails_dd::$readable_name;
        $this->get_report_fields();
    }
}
