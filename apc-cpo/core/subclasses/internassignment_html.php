<?php
require_once 'internassignment_dd.php';
class internassignment_html extends html
{
    function internassignment_html()
    {
        $this->fields        = internassignment_dd::load_dictionary();
        $this->relations     = internassignment_dd::load_relationships();
        $this->subclasses    = internassignment_dd::load_subclass_info();
        $this->table_name    = internassignment_dd::$table_name;
        $this->readable_name = internassignment_dd::$readable_name;
    }
}
