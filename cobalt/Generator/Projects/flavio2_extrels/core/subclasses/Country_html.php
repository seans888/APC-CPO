<?php
require_once 'Country_dd.php';
class Country_html extends html
{
    function Country_html()
    {
        $this->fields        = Country_dd::load_dictionary();
        $this->relations     = Country_dd::load_relationships();
        $this->subclasses    = Country_dd::load_subclass_info();
        $this->table_name    = Country_dd::$table_name;
        $this->readable_name = Country_dd::$readable_name;
    }
}
