<?php
require_once 'industrysector_dd.php';
class industrysector_html extends html
{
    function industrysector_html()
    {
        $this->fields        = industrysector_dd::load_dictionary();
        $this->relations     = industrysector_dd::load_relationships();
        $this->subclasses    = industrysector_dd::load_subclass_info();
        $this->table_name    = industrysector_dd::$table_name;
        $this->readable_name = industrysector_dd::$readable_name;
    }
}
