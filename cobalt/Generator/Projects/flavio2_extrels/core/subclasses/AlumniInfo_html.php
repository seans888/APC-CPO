<?php
require_once 'AlumniInfo_dd.php';
class AlumniInfo_html extends html
{
    function AlumniInfo_html()
    {
        $this->fields        = AlumniInfo_dd::load_dictionary();
        $this->relations     = AlumniInfo_dd::load_relationships();
        $this->subclasses    = AlumniInfo_dd::load_subclass_info();
        $this->table_name    = AlumniInfo_dd::$table_name;
        $this->readable_name = AlumniInfo_dd::$readable_name;
    }
}
