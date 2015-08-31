<?php
require_once 'AlumniContactDetails_dd.php';
class AlumniContactDetails_html extends html
{
    function AlumniContactDetails_html()
    {
        $this->fields        = AlumniContactDetails_dd::load_dictionary();
        $this->relations     = AlumniContactDetails_dd::load_relationships();
        $this->subclasses    = AlumniContactDetails_dd::load_subclass_info();
        $this->table_name    = AlumniContactDetails_dd::$table_name;
        $this->readable_name = AlumniContactDetails_dd::$readable_name;
    }
}
