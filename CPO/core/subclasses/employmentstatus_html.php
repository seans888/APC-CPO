<?php
require_once 'employmentstatus_dd.php';
class employmentstatus_html extends html
{
    function employmentstatus_html()
    {
        $this->fields        = employmentstatus_dd::load_dictionary();
        $this->relations     = employmentstatus_dd::load_relationships();
        $this->subclasses    = employmentstatus_dd::load_subclass_info();
        $this->table_name    = employmentstatus_dd::$table_name;
        $this->readable_name = employmentstatus_dd::$readable_name;
    }
}
