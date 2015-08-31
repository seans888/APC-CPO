<?php
require_once 'IndustrySector_dd.php';
class IndustrySector_html extends html
{
    function IndustrySector_html()
    {
        $this->fields        = IndustrySector_dd::load_dictionary();
        $this->relations     = IndustrySector_dd::load_relationships();
        $this->subclasses    = IndustrySector_dd::load_subclass_info();
        $this->table_name    = IndustrySector_dd::$table_name;
        $this->readable_name = IndustrySector_dd::$readable_name;
    }
}
