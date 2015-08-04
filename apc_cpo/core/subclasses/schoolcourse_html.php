<?php
require_once 'schoolcourse_dd.php';
class schoolcourse_html extends html
{
    function schoolcourse_html()
    {
        $this->fields        = schoolcourse_dd::load_dictionary();
        $this->relations     = schoolcourse_dd::load_relationships();
        $this->subclasses    = schoolcourse_dd::load_subclass_info();
        $this->table_name    = schoolcourse_dd::$table_name;
        $this->readable_name = schoolcourse_dd::$readable_name;
    }
}
