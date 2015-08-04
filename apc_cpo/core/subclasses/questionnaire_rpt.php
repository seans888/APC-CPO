<?php
require_once 'questionnaire_dd.php';
class questionnaire_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'QUESTIONNAIRE_REPORT_CUSTOM';
    var $report_title = 'Questionnaire: Custom Reporting Tool';
    var $html_subclass = 'questionnaire_html';
    var $data_subclass = 'questionnaire';
    var $result_page = 'reporter_result_questionnaire.php';
    var $cancel_page = 'listview_questionnaire.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_questionnaire.php';

    function questionnaire_rpt()
    {
        $this->fields        = questionnaire_dd::load_dictionary();
        $this->relations     = questionnaire_dd::load_relationships();
        $this->subclasses    = questionnaire_dd::load_subclass_info();
        $this->table_name    = questionnaire_dd::$table_name;
        $this->tables        = questionnaire_dd::$table_name;
        $this->readable_name = questionnaire_dd::$readable_name;
        $this->get_report_fields();
    }
}
