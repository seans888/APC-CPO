<?php
require_once 'AlumniEmplMove_dd.php';
class AlumniEmplMove_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'ALUMNIEMPLMOVE_REPORT_CUSTOM';
    var $report_title = 'AlumniEmplMove: Custom Reporting Tool';
    var $html_subclass = 'AlumniEmplMove_html';
    var $data_subclass = 'AlumniEmplMove';
    var $result_page = 'reporter_result_AlumniEmplMove.php';
    var $cancel_page = 'listview_AlumniEmplMove.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_AlumniEmplMove.php';

    function AlumniEmplMove_rpt()
    {
        $this->fields        = AlumniEmplMove_dd::load_dictionary();
        $this->relations     = AlumniEmplMove_dd::load_relationships();
        $this->subclasses    = AlumniEmplMove_dd::load_subclass_info();
        $this->table_name    = AlumniEmplMove_dd::$table_name;
        $this->tables        = AlumniEmplMove_dd::$table_name;
        $this->readable_name = AlumniEmplMove_dd::$readable_name;
        $this->get_report_fields();
    }
}
