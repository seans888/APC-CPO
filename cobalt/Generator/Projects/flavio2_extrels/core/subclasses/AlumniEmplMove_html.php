<?php
require_once 'AlumniEmplMove_dd.php';
class AlumniEmplMove_html extends html
{
    function AlumniEmplMove_html()
    {
        $this->fields        = AlumniEmplMove_dd::load_dictionary();
        $this->relations     = AlumniEmplMove_dd::load_relationships();
        $this->subclasses    = AlumniEmplMove_dd::load_subclass_info();
        $this->table_name    = AlumniEmplMove_dd::$table_name;
        $this->readable_name = AlumniEmplMove_dd::$readable_name;
    }
}
