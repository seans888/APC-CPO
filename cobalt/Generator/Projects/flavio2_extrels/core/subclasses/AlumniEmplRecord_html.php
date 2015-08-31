<?php
require_once 'AlumniEmplRecord_dd.php';
class AlumniEmplRecord_html extends html
{
    function AlumniEmplRecord_html()
    {
        $this->fields        = AlumniEmplRecord_dd::load_dictionary();
        $this->relations     = AlumniEmplRecord_dd::load_relationships();
        $this->subclasses    = AlumniEmplRecord_dd::load_subclass_info();
        $this->table_name    = AlumniEmplRecord_dd::$table_name;
        $this->readable_name = AlumniEmplRecord_dd::$readable_name;
    }
}
