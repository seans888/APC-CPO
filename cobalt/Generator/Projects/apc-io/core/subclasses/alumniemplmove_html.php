<?php
require_once 'alumniemplmove_dd.php';
class alumniemplmove_html extends html
{
    function alumniemplmove_html()
    {
        $this->fields        = alumniemplmove_dd::load_dictionary();
        $this->relations     = alumniemplmove_dd::load_relationships();
        $this->subclasses    = alumniemplmove_dd::load_subclass_info();
        $this->table_name    = alumniemplmove_dd::$table_name;
        $this->readable_name = alumniemplmove_dd::$readable_name;
    }
}
