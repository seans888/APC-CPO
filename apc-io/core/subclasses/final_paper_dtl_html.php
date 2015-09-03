<?php
require_once 'final_paper_dtl_dd.php';
class final_paper_dtl_html extends html
{
    function final_paper_dtl_html()
    {
        $this->fields        = final_paper_dtl_dd::load_dictionary();
        $this->relations     = final_paper_dtl_dd::load_relationships();
        $this->subclasses    = final_paper_dtl_dd::load_subclass_info();
        $this->table_name    = final_paper_dtl_dd::$table_name;
        $this->readable_name = final_paper_dtl_dd::$readable_name;
    }
}
