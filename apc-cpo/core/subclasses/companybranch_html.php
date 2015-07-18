<?php
require_once 'companybranch_dd.php';
class companybranch_html extends html
{
    function companybranch_html()
    {
        $this->fields        = companybranch_dd::load_dictionary();
        $this->relations     = companybranch_dd::load_relationships();
        $this->subclasses    = companybranch_dd::load_subclass_info();
        $this->table_name    = companybranch_dd::$table_name;
        $this->readable_name = companybranch_dd::$readable_name;
    }
}
