<?php
require_once 'InternAssignment_dd.php';
class InternAssignment_html extends html
{
    function InternAssignment_html()
    {
        $this->fields        = InternAssignment_dd::load_dictionary();
        $this->relations     = InternAssignment_dd::load_relationships();
        $this->subclasses    = InternAssignment_dd::load_subclass_info();
        $this->table_name    = InternAssignment_dd::$table_name;
        $this->readable_name = InternAssignment_dd::$readable_name;
    }
}
