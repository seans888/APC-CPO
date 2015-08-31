<?php
require_once 'PhilRegion_dd.php';
class PhilRegion_html extends html
{
    function PhilRegion_html()
    {
        $this->fields        = PhilRegion_dd::load_dictionary();
        $this->relations     = PhilRegion_dd::load_relationships();
        $this->subclasses    = PhilRegion_dd::load_subclass_info();
        $this->table_name    = PhilRegion_dd::$table_name;
        $this->readable_name = PhilRegion_dd::$readable_name;
    }
}
