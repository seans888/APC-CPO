<?php
require_once 'internship_dd.php';
class internship_html extends html
{
    function internship_html()
    {
        $this->fields        = internship_dd::load_dictionary();
        $this->relations     = internship_dd::load_relationships();
        $this->subclasses    = internship_dd::load_subclass_info();
        $this->table_name    = internship_dd::$table_name;
        $this->readable_name = internship_dd::$readable_name;
    }
}
