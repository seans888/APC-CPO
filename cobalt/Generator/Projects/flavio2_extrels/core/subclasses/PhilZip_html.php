<?php
require_once 'PhilZip_dd.php';
class PhilZip_html extends html
{
    function PhilZip_html()
    {
        $this->fields        = PhilZip_dd::load_dictionary();
        $this->relations     = PhilZip_dd::load_relationships();
        $this->subclasses    = PhilZip_dd::load_subclass_info();
        $this->table_name    = PhilZip_dd::$table_name;
        $this->readable_name = PhilZip_dd::$readable_name;
    }
}
