<?php
require_once 'attendance_dd.php';
class attendance_html extends html
{
    function attendance_html()
    {
        $this->fields        = attendance_dd::load_dictionary();
        $this->relations     = attendance_dd::load_relationships();
        $this->subclasses    = attendance_dd::load_subclass_info();
        $this->table_name    = attendance_dd::$table_name;
        $this->readable_name = attendance_dd::$readable_name;
    }
}
