<?php
require_once 'EmploymentStatus_dd.php';
class EmploymentStatus_html extends html
{
    function EmploymentStatus_html()
    {
        $this->fields        = EmploymentStatus_dd::load_dictionary();
        $this->relations     = EmploymentStatus_dd::load_relationships();
        $this->subclasses    = EmploymentStatus_dd::load_subclass_info();
        $this->table_name    = EmploymentStatus_dd::$table_name;
        $this->readable_name = EmploymentStatus_dd::$readable_name;
    }
}
