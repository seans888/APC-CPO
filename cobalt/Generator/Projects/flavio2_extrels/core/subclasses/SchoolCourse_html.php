<?php
require_once 'SchoolCourse_dd.php';
class SchoolCourse_html extends html
{
    function SchoolCourse_html()
    {
        $this->fields        = SchoolCourse_dd::load_dictionary();
        $this->relations     = SchoolCourse_dd::load_relationships();
        $this->subclasses    = SchoolCourse_dd::load_subclass_info();
        $this->table_name    = SchoolCourse_dd::$table_name;
        $this->readable_name = SchoolCourse_dd::$readable_name;
    }
}
