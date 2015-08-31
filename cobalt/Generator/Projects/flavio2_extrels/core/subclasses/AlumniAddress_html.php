<?php
require_once 'AlumniAddress_dd.php';
class AlumniAddress_html extends html
{
    function AlumniAddress_html()
    {
        $this->fields        = AlumniAddress_dd::load_dictionary();
        $this->relations     = AlumniAddress_dd::load_relationships();
        $this->subclasses    = AlumniAddress_dd::load_subclass_info();
        $this->table_name    = AlumniAddress_dd::$table_name;
        $this->readable_name = AlumniAddress_dd::$readable_name;
    }
}
