<?php
require_once 'Company_dd.php';
class Company_html extends html
{
    function Company_html()
    {
        $this->fields        = Company_dd::load_dictionary();
        $this->relations     = Company_dd::load_relationships();
        $this->subclasses    = Company_dd::load_subclass_info();
        $this->table_name    = Company_dd::$table_name;
        $this->readable_name = Company_dd::$readable_name;
    }
}
