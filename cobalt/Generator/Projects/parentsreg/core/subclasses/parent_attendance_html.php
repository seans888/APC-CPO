<?php
require_once 'parent_attendance_dd.php';
class parent_attendance_html extends html
{
    function parent_attendance_html()
    {
        $this->fields        = parent_attendance_dd::load_dictionary();
        $this->relations     = parent_attendance_dd::load_relationships();
        $this->subclasses    = parent_attendance_dd::load_subclass_info();
        $this->table_name    = parent_attendance_dd::$table_name;
        $this->readable_name = parent_attendance_dd::$readable_name;
    }
}
