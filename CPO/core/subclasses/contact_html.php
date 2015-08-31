<?php
require_once 'contact_dd.php';
class contact_html extends html
{
    function contact_html()
    {
        $this->fields        = contact_dd::load_dictionary();
        $this->relations     = contact_dd::load_relationships();
        $this->subclasses    = contact_dd::load_subclass_info();
        $this->table_name    = contact_dd::$table_name;
        $this->readable_name = contact_dd::$readable_name;
    }
}
