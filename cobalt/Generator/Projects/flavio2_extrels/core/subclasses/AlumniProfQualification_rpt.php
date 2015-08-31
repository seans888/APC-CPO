<?php
require_once 'AlumniProfQualification_dd.php';
class AlumniProfQualification_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'ALUMNIPROFQUALIFICATION_REPORT_CUSTOM';
    var $report_title = 'AlumniProfQualification: Custom Reporting Tool';
    var $html_subclass = 'AlumniProfQualification_html';
    var $data_subclass = 'AlumniProfQualification';
    var $result_page = 'reporter_result_AlumniProfQualification.php';
    var $cancel_page = 'listview_AlumniProfQualification.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_AlumniProfQualification.php';

    function AlumniProfQualification_rpt()
    {
        $this->fields        = AlumniProfQualification_dd::load_dictionary();
        $this->relations     = AlumniProfQualification_dd::load_relationships();
        $this->subclasses    = AlumniProfQualification_dd::load_subclass_info();
        $this->table_name    = AlumniProfQualification_dd::$table_name;
        $this->tables        = AlumniProfQualification_dd::$table_name;
        $this->readable_name = AlumniProfQualification_dd::$readable_name;
        $this->get_report_fields();
    }
}
