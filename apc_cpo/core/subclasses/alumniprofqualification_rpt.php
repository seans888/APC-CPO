<?php
require_once 'alumniprofqualification_dd.php';
class alumniprofqualification_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'ALUMNIPROFQUALIFICATION_REPORT_CUSTOM';
    var $report_title = 'Alumniprofqualification: Custom Reporting Tool';
    var $html_subclass = 'alumniprofqualification_html';
    var $data_subclass = 'alumniprofqualification';
    var $result_page = 'reporter_result_alumniprofqualification.php';
    var $cancel_page = 'listview_alumniprofqualification.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_alumniprofqualification.php';

    function alumniprofqualification_rpt()
    {
        $this->fields        = alumniprofqualification_dd::load_dictionary();
        $this->relations     = alumniprofqualification_dd::load_relationships();
        $this->subclasses    = alumniprofqualification_dd::load_subclass_info();
        $this->table_name    = alumniprofqualification_dd::$table_name;
        $this->tables        = alumniprofqualification_dd::$table_name;
        $this->readable_name = alumniprofqualification_dd::$readable_name;
        $this->get_report_fields();
    }
}
