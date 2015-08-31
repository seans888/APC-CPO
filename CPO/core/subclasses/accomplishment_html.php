<?php
require_once 'accomplishment_dd.php';
class accomplishment_html extends html
{
    function accomplishment_html()
    {
        $this->fields        = accomplishment_dd::load_dictionary();
        $this->relations     = accomplishment_dd::load_relationships();
        $this->subclasses    = accomplishment_dd::load_subclass_info();
        $this->table_name    = accomplishment_dd::$table_name;
        $this->readable_name = accomplishment_dd::$readable_name;
    }
}
