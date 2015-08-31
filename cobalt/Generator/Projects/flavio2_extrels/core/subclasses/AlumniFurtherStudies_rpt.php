<?php
require_once 'AlumniFurtherStudies_dd.php';
class AlumniFurtherStudies_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'ALUMNIFURTHERSTUDIES_REPORT_CUSTOM';
    var $report_title = 'AlumniFurtherStudies: Custom Reporting Tool';
    var $html_subclass = 'AlumniFurtherStudies_html';
    var $data_subclass = 'AlumniFurtherStudies';
    var $result_page = 'reporter_result_AlumniFurtherStudies.php';
    var $cancel_page = 'listview_AlumniFurtherStudies.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_AlumniFurtherStudies.php';

    function AlumniFurtherStudies_rpt()
    {
        $this->fields        = AlumniFurtherStudies_dd::load_dictionary();
        $this->relations     = AlumniFurtherStudies_dd::load_relationships();
        $this->subclasses    = AlumniFurtherStudies_dd::load_subclass_info();
        $this->table_name    = AlumniFurtherStudies_dd::$table_name;
        $this->tables        = AlumniFurtherStudies_dd::$table_name;
        $this->readable_name = AlumniFurtherStudies_dd::$readable_name;
        $this->get_report_fields();
    }
}
