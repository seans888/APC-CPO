<?php
require_once 'InternalSchool_dd.php';
class InternalSchool_html extends html
{
    function InternalSchool_html()
    {
        $this->fields        = InternalSchool_dd::load_dictionary();
        $this->relations     = InternalSchool_dd::load_relationships();
        $this->subclasses    = InternalSchool_dd::load_subclass_info();
        $this->table_name    = InternalSchool_dd::$table_name;
        $this->readable_name = InternalSchool_dd::$readable_name;
    }
}
