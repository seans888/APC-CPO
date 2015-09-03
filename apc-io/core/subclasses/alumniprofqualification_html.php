<?php
require_once 'alumniprofqualification_dd.php';
class alumniprofqualification_html extends html
{
    function alumniprofqualification_html()
    {
        $this->fields        = alumniprofqualification_dd::load_dictionary();
        $this->relations     = alumniprofqualification_dd::load_relationships();
        $this->subclasses    = alumniprofqualification_dd::load_subclass_info();
        $this->table_name    = alumniprofqualification_dd::$table_name;
        $this->readable_name = alumniprofqualification_dd::$readable_name;
    }
}
