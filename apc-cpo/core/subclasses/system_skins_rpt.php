<?php
require_once 'system_skins_dd.php';
class system_skins_rpt extends reporter
{
    var $tables='system_skins';
    var $session_array_name = 'SYSTEM_SKINS_REPORT_CUSTOM';
    var $report_title = 'System Skins: Custom Reporting Tool';
    var $html_subclass = 'system_skins_html';
    var $data_subclass = 'system_skins';
    var $result_page = 'reporter_result_system_skins.php';
    var $cancel_page = 'listview_system_skins.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_system_skins.php';

    function system_skins_rpt()
    {
        $this->fields = system_skins_dd::load_dictionary();
        $this->relations = system_skins_dd::load_relationships();
        $this->subclasses = system_skins_dd::load_subclass_info();
        $this->get_report_fields();
    }
}
