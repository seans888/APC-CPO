<?php
require_once 'resume_dtl_dd.php';
class resume_dtl_html extends html
{
    function resume_dtl_html()
    {
        $this->fields        = resume_dtl_dd::load_dictionary();
        $this->relations     = resume_dtl_dd::load_relationships();
        $this->subclasses    = resume_dtl_dd::load_subclass_info();
        $this->table_name    = resume_dtl_dd::$table_name;
        $this->readable_name = resume_dtl_dd::$readable_name;
    }
}
