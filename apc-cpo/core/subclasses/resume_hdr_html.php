<?php
require_once 'resume_hdr_dd.php';
class resume_hdr_html extends html
{
    function resume_hdr_html()
    {
        $this->fields        = resume_hdr_dd::load_dictionary();
        $this->relations     = resume_hdr_dd::load_relationships();
        $this->subclasses    = resume_hdr_dd::load_subclass_info();
        $this->table_name    = resume_hdr_dd::$table_name;
        $this->readable_name = resume_hdr_dd::$readable_name;
    }
}
