<?php
require_once 'alumniinfo_dd.php';
class alumniinfo_html extends html
{
    function alumniinfo_html()
    {
        $this->fields        = alumniinfo_dd::load_dictionary();
        $this->relations     = alumniinfo_dd::load_relationships();
        $this->subclasses    = alumniinfo_dd::load_subclass_info();
        $this->table_name    = alumniinfo_dd::$table_name;
        $this->readable_name = alumniinfo_dd::$readable_name;
    }
}
