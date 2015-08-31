<?php
require_once 'AgeBracket_dd.php';
class AgeBracket_html extends html
{
    function AgeBracket_html()
    {
        $this->fields        = AgeBracket_dd::load_dictionary();
        $this->relations     = AgeBracket_dd::load_relationships();
        $this->subclasses    = AgeBracket_dd::load_subclass_info();
        $this->table_name    = AgeBracket_dd::$table_name;
        $this->readable_name = AgeBracket_dd::$readable_name;
    }
}
